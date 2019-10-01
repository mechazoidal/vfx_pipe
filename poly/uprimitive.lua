local Primitive = {
  structure = {},
  attributes = {}
}
function Primitive:new(o)
  o = o or {}
  setmetatable(o,self)
  self.__index = self
  return o
end

return Primitive
