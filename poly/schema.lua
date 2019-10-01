local polyhedron = Schema{
  ["structure"] = {
    Table("edge", {
      "clockwise_edges",
      "edge_selectors"
    }),
    Table("face",{
      "face_first_loops",
      "face_loop_counts",
      "face_materials",
      "face_selections",
      "face_shells"
    }),
    Table("loop",
      {"loop_first_edges"}),
    Table("vertex",{
      "vertex_points",
      "vertex_selections"
    })
  }
}
