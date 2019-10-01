
require "zhelpers"
local zmq = require "lzmq"
local cbor = require "CBOR"

local storage = {}

local signal = require 'signal'
local function sigint()
  print("got sigint")
  os.exit()
end
signal.signal(signal.SIGINT, sigint)

zmq.TCP_KEEPALIVE = 1
zmq.TCP_KEEPALIVE_IDLE = 30
zmq.TCP_KEEPALIVE_INTVL = 5
zmq.TCP_KEEPALIVE_CNT = 6

local context = zmq.context()

local responder, err = context:socket{zmq.REP, bind = "tcp://*:5555"}

zassert(responder, err)
print("serving...")
-- GET
-- PUT

while true do
  local buffer = zassert(responder:recv())
  print("Received " .. buffer)
  --zassert(responder:send("World"))
  zassert(responder:send(cbor.encode(cube)))
end
