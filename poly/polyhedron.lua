local ustorage = require "ustorage"
local Table = ustorage.Table
local Primitive = ustorage.Primitive
local Geometry = ustorage.Geometry
--local geo = Geometry:new{
--local geo = Geometry:new{
local polyhedron = Primitive:new({
  name = "polyhedron",
  structure = {
    edge = Table:new({
      ["clockwise_edges"] = {
        1, 3, 4
      },
      ["edge_selectors"] = { 1.0, 1.0}
    }),
    face = Table:new{
      ["face_first_loops"] = {},
      ["face_loop_counts"] = {},
      ["face_materials"] = {},
      ["face_selections"] = {},
      ["face_shells"] = {}
    },

    loop = Table:new{
      ["loop_first_edges"] = {}
    },

    vertex = Table:new{
      ["vertex_points"] = {},
      ["vertex_selections"] = {}
    }
  }
})

table.inspect = require 'inspect'

--vertex = Table:new{
--["vertex_points"] = {},
--["vertex_selections"] = {}
--}
--print(table.inspect(vertex))
--prim = Primitive.new{}
print(table.inspect(polyhedron))
--print(table.inspect(prim))

