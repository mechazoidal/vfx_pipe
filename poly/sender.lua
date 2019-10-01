
require "zhelpers"
local zmq = require "lzmq"
local cbor = require "CBOR"
--cbor.set_float'single'
--cbor.set_nil'null'
--cbor.set_array'with_hole'
--cbor.set_string'text_string'

local signal = require 'signal'

zmq.TCP_KEEPALIVE = 1
zmq.TCP_KEEPALIVE_IDLE = 30
zmq.TCP_KEEPALIVE_INTVL = 5
zmq.TCP_KEEPALIVE_CNT = 6

local context = zmq.context()
local function sigint()
  print("got sigint")
  local success = context:shutdown()
  print("zmq shutdown: " .. tostring(success))
  os.exit()
end
signal.signal(signal.SIGINT, sigint)

local cube = dofile("cube.lua")

local responder, err = context:socket{zmq.REP, bind = "tcp://*:5555"}

zassert(responder, err)
print("serving cube...")
while true do
  --local buffer = zassert(responder:recv())
  --local msg, err = zassert(responder:recv_all())
  local msg, err = zassert(responder:recv())
  print("Received " .. msg)
  --print
  --zassert(responder:send("OK"))
  zassert(responder:send(cbor.encode(cube)))
end
