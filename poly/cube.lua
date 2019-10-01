local cube = {
  edges = { {
      faces = { {
          face = 1,
          next = 2,
          prev = 3
        } },
      vertices = { 1, 2 }
    }, {
      faces = { {
          face = 1,
          next = 3,
          prev = 1
        }, {
          face = 2,
          next = 4,
          prev = 5
        } },
      vertices = { 2, 3 }
    }, {
      faces = { {
          face = 1,
          next = 1,
          prev = 2
        } },
      vertices = { 3, 1 }
    }, {
      faces = { {
          face = 2,
          next = 5,
          prev = 2
        } },
      vertices = { 3, 4 }
    }, {
      faces = { {
          face = 2,
          next = 2,
          prev = 4
        } },
      vertices = { 4, 2 }
    } },
  faces = { {
      edges = { 1, 2, 3 },
      vertices = { 1, 2, 3 }
    }, {
      edges = { 2, 4, 5 },
      vertices = { 2, 3, 4 }
    } },
  vertices = { {
      edges = { 1, 3 },
      --position = { -- (+0.000,+0.000,+0.000)
        --x = 0,
        --y = 0,
        --z = 0,
        --<metatable> = <1>{
          --__add = <function 1>,
          --__call = <function 2>,
          --__div = <function 3>,
          --__eq = <function 4>,
          --__index = {
            --add = <function 5>,
            --clone = <function 6>,
            --component_max = <function 7>,
            --component_min = <function 8>,
            --cross = <function 9>,
            --dist = <function 10>,
            --dist2 = <function 11>,
            --div = <function 12>,
            --dot = <function 13>,
            --is_vec3 = <function 14>,
            --is_zero = <function 15>,
            --len = <function 16>,
            --len2 = <function 17>,
            --lerp = <function 18>,
            --mul = <function 19>,
            --new = <function 20>,
            --normalize = <function 21>,
            --perpendicular = <function 22>,
            --rotate = <function 23>,
            --scale = <function 24>,
            --sub = <function 25>,
            --to_string = <function 26>,
            --trim = <function 27>,
            --unit_x = { -- (+1.000,+0.000,+0.000)
              --x = 1,
              --y = 0,
              --z = 0,
              --<metatable> = <table 1>
            --},
            --unit_y = { -- (+0.000,+1.000,+0.000)
              --x = 0,
              --y = 1,
              --z = 0,
              --<metatable> = <table 1>
            --},
            --unit_z = { -- (+0.000,+0.000,+1.000)
              --x = 0,
              --y = 0,
              --z = 1,
              --<metatable> = <table 1>
            --},
            --unpack = <function 28>,
            --zero = { -- (+0.000,+0.000,+0.000)
              --x = 0,
              --y = 0,
              --z = 0,
              --<metatable> = <table 1>
            --}
          --},
          --__mul = <function 29>,
          --__sub = <function 30>,
          --__tostring = <function 26>,
          --__unm = <function 31>
        --}
      --}
    --},
    {
      edges = { 1, 2, 5 },
      position = { -- (+1.000,+0.000,+0.000)
        x = 1,
        y = 0,
        z = 0,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 2, 3, 4 },
      position = { -- (+0.000,+1.000,+0.000)
        x = 0,
        y = 1,
        z = 0,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 4, 5 },
      position = { -- (+1.000,+1.000,+0.000)
        x = 1,
        y = 1,
        z = 0,
        --<metatable> = <table 1>
      }
    } }
}}

return cube


--print(cube.edges[1].faces[1].face)
