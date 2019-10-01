local diamond = {
  edges = { {
      faces = { {
          face = 1,
          next = 2,
          prev = 4
        }, {
          face = 3,
          next = 9,
          prev = 10
        } },
      vertices = { 1, 2 }
    }, {
      faces = { {
          face = 1,
          next = 3,
          prev = 1
        }, {
          face = 4,
          next = 10,
          prev = 11
        } },
      vertices = { 2, 3 }
    }, {
      faces = { {
          face = 1,
          next = 4,
          prev = 2
        }, {
          face = 5,
          next = 11,
          prev = 12
        } },
      vertices = { 3, 4 }
    }, {
      faces = { {
          face = 1,
          next = 1,
          prev = 3
        }, {
          face = 6,
          next = 12,
          prev = 9
        } },
      vertices = { 4, 1 }
    }, {
      faces = { {
          face = 2,
          next = 6,
          prev = 8
        }, {
          face = 6,
          next = 9,
          prev = 12
        } },
      vertices = { 5, 8 }
    }, {
      faces = { {
          face = 2,
          next = 7,
          prev = 5
        }, {
          face = 5,
          next = 12,
          prev = 11
        } },
      vertices = { 8, 7 }
    }, {
      faces = { {
          face = 2,
          next = 8,
          prev = 6
        }, {
          face = 4,
          next = 11,
          prev = 10
        } },
      vertices = { 7, 6 }
    }, {
      faces = { {
          face = 2,
          next = 5,
          prev = 7
        }, {
          face = 3,
          next = 10,
          prev = 9
        } },
      vertices = { 6, 5 }
    }, {
      faces = { {
          face = 3,
          next = 8,
          prev = 1
        }, {
          face = 6,
          next = 4,
          prev = 5
        } },
      vertices = { 1, 5 }
    }, {
      faces = { {
          face = 3,
          next = 1,
          prev = 8
        }, {
          face = 4,
          next = 7,
          prev = 2
        } },
      vertices = { 6, 2 }
    }, {
      faces = { {
          face = 4,
          next = 2,
          prev = 7
        }, {
          face = 5,
          next = 6,
          prev = 3
        } },
      vertices = { 7, 3 }
    }, {
      faces = { {
          face = 5,
          next = 3,
          prev = 6
        }, {
          face = 6,
          next = 5,
          prev = 4
        } },
      vertices = { 8, 4 }
    } },
  faces = { {
      edges = { 1, 2, 3, 4 },
      vertices = { 1, 2, 3, 4 }
    }, {
      edges = { 5, 6, 7, 8 },
      vertices = { 5, 8, 7, 6 }
    }, {
      edges = { 9, 8, 10, 1 },
      vertices = { 1, 5, 6, 2 }
    }, {
      edges = { 10, 7, 11, 2 },
      vertices = { 2, 6, 7, 3 }
    }, {
      edges = { 11, 6, 12, 3 },
      vertices = { 3, 7, 8, 4 }
    }, {
      edges = { 9, 4, 12, 5 },
      vertices = { 5, 1, 4, 8 }
    } },
  vertices = { {
      edges = { 1, 4, 9 },
      --position = { -- (+0.162,-1.138,+0.319)
        --x = 0.162428,
        --y = -1.138492,
        --z = 0.31931,
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
      edges = { 1, 2, 10 },
      position = { -- (+1.404,-3.042,+4.707)
        x = 1.403754,
        y = -3.041505,
        z = 4.707049,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 2, 3, 11 },
      position = { -- (-1.838,-1.138,+2.319)
        x = -1.837572,
        y = -1.138492,
        z = 2.31931,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 3, 4, 12 },
      position = { -- (-1.838,-1.138,+0.319)
        x = -1.837571,
        y = -1.138492,
        z = 0.319309,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 5, 8, 9 },
      position = { -- (-1.523,+2.837,-2.862)
        x = -1.522811,
        y = 2.837105,
        z = -2.861744,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 7, 8, 10 },
      position = { -- (+2.300,+0.862,+2.319)
        x = 2.30002,
        y = 0.861508,
        z = 2.31931,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 6, 7, 11 },
      position = { -- (-1.838,+0.862,+2.319)
        x = -1.837572,
        y = 0.861508,
        z = 2.319309,
        --<metatable> = <table 1>
      }
    }, {
      edges = { 5, 6, 12 },
      position = { -- (-1.838,+0.862,+0.319)
        x = -1.837572,
        y = 0.861508,
        z = 0.31931,
        --<metatable> = <table 1>
      }
    } }
}}
return diamond
