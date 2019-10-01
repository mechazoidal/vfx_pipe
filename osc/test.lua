local osc = require 'osc'
table.inspect = require 'inspect'

local message = {
  address="/foo/bar",
  typestring=",f",
  value=440.12
}

local message2 = {
  address="/bar/bar",
  typestring=",s",
  value="oh noes"
}

local encoded = osc.encode_message(message2)
--print(table.inspect(encoded))
print(table.inspect(osc.decode_message(encoded)))
print(osc.ntp_time())
