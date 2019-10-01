require "tamale"
local V = tamale.var
local M = tamale.matcher {
  { { {}, {}, {} }, V"X"}
}

local cube = dofile("cube.lua")

print(M(cube))
