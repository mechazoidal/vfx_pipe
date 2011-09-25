require 'trollop'
require 'fssm'
# Binary As Straight-up Source Interpolation Tool

SUB_COMMANDS = %w{init watch}
global_opts = Trollop::options do
  banner 'Binary As Straight-up Source Interpolation Tool'
  opt :dry_run, "don't do anything", :default=>false, :short=>'-y'
  opt :verbose, 'say a lot', :default=>false
  opt :debug, "say a lot about bassit internals", :default=>false
  stop_on SUB_COMMANDS
end

cmd = ARGV.shift
cmd_opts = case cmd
           when 'init'
             Trollop::options do
               opt :dir, 'use another directory'
             end
           when 'watch'
             Trollop::options do
                opt :watch, 'directory to watch', :type=>:string, :required=>true
             end
           else
             Trollop::die "unknown subcommand #{cmd.inspect}"
           end

SCS_DIR = 'bss'

def init_bss(target_dir)
  orig_dir = File.join(target_dir, SCS_DIR, 'orig')
  FileUtils.mkdir_p(orig_dir) unless File.exists?(orig_dir)
  
  delta_dir = File.join(target_dir, SCS_DIR, 'delta')
  FileUtils.mkdir_p(delta_dir) unless File.exists?(delta_dir)
  
  Dir.open(target_dir) do |dir|
    dir.entries.grep(/\.blend$/).each do |file|
      FileUtils.cp(file, orig_dir)
    end
  end
end

def watch_dir(directory)
  FSSM.monitor do
    path directory do
      glob '**/*.blend'
      update do |base, relative|
        tStamp = Time.now
        patch_name = "#{File.basename(relative)}.#{tStamp.strftime('%Y%m%d')}#{tStamp.usec}.patch"
        cmd_line = "bsdiff #{File.join(orig_dir, relative)} #{File.join(base, relative)} #{File.join(delta_dir, patch_name)}"
        puts cmd_line if global_opts[:verbose]
        system(cmd_line)
      end
    end
  end
  
end

if(global_opts[:debug])
  puts "Global options: #{global_opts.inspect}"
  puts "Subcommand: #{cmd.inspect}"
  puts "Subcommand options: #{cmd_opts.inspect}"
  puts "Remaining arguments: #{ARGV.inspect}"
end

if(cmd == 'init')
  init_bss()
end
