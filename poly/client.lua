require "zhelpers"
local zmq = require "lzmq"
local cbor = require "CBOR"

table.inspect = require "inspect"

local signal = require 'signal'
local function sigint()
  print("got sigint")
  os.exit()
end
signal.signal(signal.SIGINT, sigint)

--local function send_mmsg(sok, req)
  --return sok:sendx(req.command, req.payload or "")
--end

zmq.TCP_KEEPALIVE = 1
zmq.TCP_KEEPALIVE_IDLE = 30
zmq.TCP_KEEPALIVE_INTVL = 5
zmq.TCP_KEEPALIVE_CNT = 6



print("Connecting to cube server ...")
local context = zmq.context()
local requester, err = context:socket{zmq.REQ, 
  connect = "tcp://localhost:5555"
}
zassert(requester, err)

--for request_nbr = 0, 9 do
  --print ("Sending Hello " .. request_nbr .. "...")
  --requester:send("Hello")
  --local buffer = requester:recv()
  --print("Received World " .. request_nbr)
--end
--requester:send("Hello")
-- command, address, data
local cube = dofile("cube.lua")
requester:sendx("PUT", "cube", cbor.encode(cube))
--requester:send({"PUT", "cube", cbor.encode(cube)})
local buffer = requester:recv()
--print(string.len(buffer))
print("received " .. buffer)
--local cube = cbor.decode(buffer)
--print(table.inspect(cube))
