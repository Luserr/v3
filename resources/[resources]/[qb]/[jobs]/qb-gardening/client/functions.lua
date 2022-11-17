QBCore = exports['qb-core']:GetCoreObject()

function loc1()
    exports['qb-target']:AddBoxZone("loc1", vector3(-529.02, -201.53, 37.65), 0.6, 2.8, {
      name = "loc1",
      heading = 30,
      minZ=33.65,
      maxZ=37.65,
    }, {
      options = {
          {
            event = "nc-gardening:workbushes1",
            icon = 'fa fa-scissors',
            label = "Start Working",
          },
      },
      distance = 1.5
    })
end

function loc2()
  exports['qb-target']:AddBoxZone("loc2", vector3(-527.45, -202.06, 37.65), 0.6, 2.4, {
    name = "loc2",
    heading = 30,
    minZ=33.45,
    maxZ=37.45,
  }, {
    options = {
        {
          event = "nc-gardening:workbushes2",
          icon = 'fa fa-scissors',
          label = "Start Working",
        },
    },
    distance = 1.5
  })
end

function loc3()
  exports['qb-target']:AddBoxZone("loc3", vector3(-528.22, -205.03, 38.18), 4.0, 1, {
    name = "loc3",
    heading = 255,
    minZ=33.58,
    maxZ=37.58,
  }, {
    options = {
        {
          event = "nc-gardening:workbushes3",
          icon = 'fa fa-scissors',
          label = "Start Working",
        },
    },
    distance = 1.5
  })
end

function loc4()
  exports['qb-target']:AddBoxZone("loc4", vector3(-522.46, -210.7, 37.65), 0.6, 3.0, {
    name = "loc4",
    heading = 120,
    minZ=33.45,
    maxZ=37.45,
  }, {
    options = {
        {
          event = "nc-gardening:workbushes4",
          icon = 'fa fa-scissors',
          label = "Start Working",
        },
    },
    distance = 1.5
  })
end

function loc5()
    exports['qb-target']:AddBoxZone("loc5", vector3(-523.07, -212.23, 37.7), 0.6, 2.6, {
      name = "loc5",
      heading = 30,
      minZ=33.5,
      maxZ=37.5,
    }, {
      options = {
          {
            event = "nc-gardening:workbushes5",
            icon = 'fa fa-scissors',
            label = "Start Working",
          },
      },
      distance = 1.5
    })
end

function loc6()
    exports['qb-target']:AddBoxZone("loc6", vector3(-525.27, -210.11, 37.7), 4.2, 0.8, {
      name = "loc6",
      heading = 350,
      minZ=33.7,
      maxZ=37.7,
    }, {
      options = {
          {
            event = "nc-gardening:workbushes6",
            icon = 'fa fa-scissors',
            label = "Start Working",
          },
      },
      distance = 1.5
    })
end

function loc7()
    exports['qb-target']:AddBoxZone("loc7", vector3(-530.36, -213.53, 37.68), 3.2, 0.8, {
      name = "loc7",
      heading = 80,
      minZ=33.48,
      maxZ=37.48,
    }, {
      options = {
          {
            event = "nc-gardening:workbushes7",
            icon = 'fa fa-scissors',
            label = "Start Working",
          },
      },
      distance = 1.5
    })
end

function loc8()
    exports['qb-target']:AddBoxZone("loc8", vector3(-530.2, -216.53, 37.6), 0.6, 2.2, {
      name = "loc8",
      heading = 30,
      minZ=33.6,
      maxZ=37.6,
    }, {
      options = {
          {
            event = "nc-gardening:workbushes8",
            icon = 'fa fa-scissors',
            label = "Start Working",
          },
      },
      distance = 1.5
    })
end

function loc9()
    exports['qb-target']:AddBoxZone("loc9", vector3(-531.9, -215.97, 37.65), 2.4, 0.6, {
      name = "loc9",
      heading = 30,
      minZ=33.65,
      maxZ=37.65,
    }, {
      options = {
          {
            event = "nc-gardening:workbushes9",
            icon = 'fa fa-scissors',
            label = "Start Working",
          },
      },
      distance = 1.5
    })
end