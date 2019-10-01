-- TODO
-- validation:
-- confirm whether a Primitive instance contains a complete, correct array configuration for specific Schema
-- Primitive contains every Table defined by Schema
-- structure and attribute Table objects with matching names are the same length
-- each Table contains arrays required by Schema(?)
-- each array stores values of the correct type (out-of-scope for lua)
-- each array contains expected metadata
-- length of each array is consistent with rest of data
-- array indices are not OOB
-- Geometry should contain point data if any of its Primitives contain point indices
local Table = {}
function Table:new(o)
  o = o or {}
  setmetatable(o,self)
  self.__index = self
  return o
end

local Primitive = {
  structure = {},
  attributes = {}
}
function Primitive:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

local Geometry = {
  points = {},
  point_selection = {},
  point_attributes = {},
  primitives = {}
}
function Geometry:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return {Table = Table,
        Primitive = Primitive,
        Geometry = Geometry}
