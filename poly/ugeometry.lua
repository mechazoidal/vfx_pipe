local Geometry = {
  points = {},
  point_selection = {},
  point_attributes = {},
  --primitives = Primitive:new()
}
function Geometry:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

return Geometry
