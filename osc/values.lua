--iscore reaches out
--i-score?namespace /
--Jamoma:namespace / Application nodes={ filter input recorder } attributes={ debug version type name author }
--i-score?namespace /filter
--Jamoma:namespace /filter Container nodes={ gain q } attributes={ tag service description priority }
--i-score?namespace /filter/gain
--Jamoma:namespace /filter/gain Data attributes={ rangeBounds service active tag type repetitionsFilter description priority valueDefault value }

--i-score?get /filter/gain
--Jamoma:get /filter/gain 90
--i-score?get /filter/gain:rangeBounds
--Jamoma:get /filter/gain:rangeBounds 0 127

--i-score?listen /filter/gain enable
--Jamoma:listen /filter/gain:value 53
--Jamoma:listen /filter/gain:value 54
--Jamoma:listen /filter/gain:value 55

--i-score?get /foo
--Jamoma!get /foo
table.inspect = require("inspect")

--from PiL , it would be nice to be able to use this constructor syntax
--Jamoma{
  --filter{
    --gain=90
  --}
  --namespace{
    --Application{
      --nodes{
        --"filter",
        --"input",
        --"recorder"
      --}
    --}
  --}
--}


local Jamoma = {
  ["filter"] = {
    ["gain"]= {
      value = 90,
      rangeBounds = {0, 127},
      type = "type",
      service = "service",
      priority = "priority",
      description = "gain"
    }
  },
  ["namespace"] = {
    ["Application"] = {
      ["nodes"] = {
        "filter",
        "input",
        "recorder"
      }
    },
    --["Container"] = {},
    --["Data"] = {}
  }
}

print(table.inspect(Jamoma))
