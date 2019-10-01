require "lpeg"

--?get /filter/gain 
--:get /filter/gain 90
--?get /filter/gain:rangeBounds 
--:get /filter/gain:rangeBounds 0 127
--/filter/gain 90
--TODO: must start with a query or path operator, a word is an error

lpeg.locale(lpeg)   -- adds locale entries into 'lpeg' table
local space = lpeg.P(" ")
local word = lpeg.C(lpeg.alpha^1)
local integer = lpeg.R("09")^1 / tonumber
local path = lpeg.P("/" * word)
local operator = lpeg.S(":?!")^1
local query = lpeg.C(operator) * word
local attribute = lpeg.P(":") * word
local values = lpeg.C(lpeg.alnum^1) * space^0
grammar = lpeg.P((query * space)^0 * lpeg.Ct(path^0) * lpeg.Ct(attribute^0 * space^0 * values^0))
