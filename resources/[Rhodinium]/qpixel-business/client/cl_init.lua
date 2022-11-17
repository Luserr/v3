Citizen.CreateThread(function()
  -- quickfix
  exports["qpixel-polyzone"]:AddBoxZone("business_stash", vector3(952.2, -115.63, 75.0), 1.8, 2.4, {
    heading = 314,
    minZ = 74.0,
    maxZ = 76.4,
    data = {
      id = "quickfix",
    },
  })
  exports["qpixel-polyzone"]:AddBoxZone("business_craft", vector3(963.63, -103.55, 74.36), 1.8, 2.4, {
    heading = 44,
    minZ = 73.36,
    maxZ = 75.76,
    data = {
      id = "quickfix",
    },
  })
  -- haromy
  exports["qpixel-polyzone"]:AddBoxZone("business_stash", vector3(1189.45, 2636.6, 38.4), 2.4, 2.4, {
    heading = 89,
    minZ = 37.4,
    maxZ = 39.8,
    data = {
      id = "harmony_repairs",
    },
  })
  exports["qpixel-polyzone"]:AddBoxZone("business_craft", vector3(1172.67, 2635.41, 37.79), 2.6, 2.4, {
    heading = 91,
    minZ = 36.79,
    maxZ = 39.19,
    data = {
      id = "harmony_repairs",
    },
  })
end)
