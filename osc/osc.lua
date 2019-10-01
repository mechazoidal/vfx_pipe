require "struct" -- lua-struct
require 'socket'
require 'lpeg'
local osc = {}

--http://opensoundcontrol.org/spec-1_0
lpeg.locale(lpeg)

--TODO add address as a grammar
--Remember that it has multi: /second/[1-2] , /third/* , etc.

--test with https://github.com/attwad/python-osc
--http://opensoundcontrol.org/spec-1_0-examples#typetagstrings
--https://joearms.github.io/published/2016-01-28-A-Badass-Way-To-Connect-Programs-Together.html
local types = lpeg.S('ifsb')
local osc_typestring = lpeg.P(',' * lpeg.C(types)^1)


--TODO bundles
--TODO make sure address string is padded to 32

function osc.encode_message(msg_table)
  local v_t_string = ""
  if type(msg_table.value) == "number"
    then
      -- numbers in lua are always floats
      v_t_string = "f"
  end
  if type(msg_table.value) == "string"
    then
      v_t_string = "s"
  end
  return struct.pack('>ss'..v_t_string, msg_table.address, ","..v_t_string , msg_table.value)
end

function osc.decode_message(msg_string)
  local _, ty = struct.unpack('>ss', msg_string)
  local ty_s = lpeg.match(osc_typestring, ty)

  local add, _, data = struct.unpack('>ss'..ty_s, msg_string)
  return {add, data}
end

-- 70 years + 17 leap years between Unix and NTP time
local ntp_offset = (70*365 + 17)*86400

function osc.ntp_time()
  local seconds = os.time() + ntp_offset
  --TODO work this out using socket.gettime or something
  --local fraction = 0
  --local fraction = socket.gettime()
  --return struct.pack('>d', seconds * 10)
  return seconds * 10
end

function osc.encode_bundle(msg_table)
  local header = {"#bundle", osc.ntp_time}
end

return osc
