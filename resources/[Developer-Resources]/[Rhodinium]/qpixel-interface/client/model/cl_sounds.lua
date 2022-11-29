-- sounds go in ui/src/assets/sounds - .ogg format
RegisterCommand('sounds:playall', function()
  for i = 1, 5 do
    SendUIMessage({
      source = "qpixel-nui",
      app = "sounds",
      data = {
        action = 'play',
        id = i,
        name = 'demo',
        loop = true,
        volume = 0.5 -- 0 to 1
      }
    })
    Wait(300)
  end
end)

RegisterCommand('sounds:stopall', function()
  for i = 1, 5 do
    SendUIMessage({
      source = "qpixel-nui",
      app = "sounds",
      data = {
        action = 'stop',
        id = i
      }
    });
    Wait(300)
  end
end)

RegisterCommand("sounds:play", function()
  exports["qpixel-interface"]:soundPlay(1, "demo", 0.5)
end, false)

RegisterCommand("sounds:stop", function()
  exports["qpixel-interface"]:soundStop(1)
end, false)

RegisterCommand("sounds:volume", function()
  exports["qpixel-interface"]:soundVolume(1, 0.1)
end, false)
