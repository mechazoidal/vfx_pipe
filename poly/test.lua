--package.path = ";../?.lua" .. package.path
--package.path = "../?.lua;" .. package.path
--https://github.com/karai17/Lua-Winged-Edge
package.path = "./?.lua;" .. package.path
local we = require "winged-edge"
table.inspect = require 'inspect'

local data = {
    v = {
        { x=0, y=0, z=0 },
        { x=1, y=0, z=0 },
        { x=0, y=1, z=0 },
        { x=1, y=1, z=0 },
    },
    f = {
        { { v=1 }, { v=2 }, { v=3 } },
        { { v=2 }, { v=3 }, { v=4 } },
    },
}

local object = {}
--print(table.inspect(data.v))
we.parse_vertices(object, data )
we.parse_faces(object, data )

--print(table.inspect(object))
--print(object.edges[1].faces[1].face)
--local obj = we.new("cube.obj", object)
local obj = we.new("diamond.obj", object)
print(table.inspect(obj))
