require 'vstruct'
require 'lpeg'

local osc = {}

lpeg.locale(lpeg)
local types = lpeg.S('ifsb')
local osc_typestring = lpeg.P(',' * lpeg.C(types)^1)



function osc.encode_message(msg_table)
  local v_t_string = ""
  if type(msg_table.value) == "number"
    then
      -- numbers in lua are always floats
      v_t_string = "f4"
  end
  if type(msg_table.value) == "string"
    then
      v_t_string = "s"
  end
  return struct.pack('> s s '..v_t_string, msg_table.address, ","..v_t_string , msg_table.value)
end

function osc.decode_message(msg_string)
  local _, ty = struct.unpack('> s s', msg_string)
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
