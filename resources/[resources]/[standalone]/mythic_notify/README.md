# Mythic Notifications for nchub

A simple FiveM notification system for use with the QBCore Framework, based off mythic_notify

https://github.com/maej20/mythic_notify

Forked from https://github.com/JayMontana36/mythic_notify

## Customizing

_**./mythic_notify/config.js**_:

- **_enabled_** - Enable/Disable flashing emergency notifications (default: true)
- **_numFlashes_** - Set the number of flashes (default: 5)

## Installation

- **YouTube Tutorial**: https://www.youtube.com/watch?v=yrojMFfJeEo

- **Clone or extract** this repository into your _**./resources/[standalone]**_ directory.

- **Replace** the `QBCore.Functions.Notify()` function in _**./nchub/client/functions.lua:128**_ with the function below.

```lua
function QBCore.Functions.Notify(text, textype, length)
    if textype == "primary" then textype = "inform" end
    if type(text) == "table" then
        local ttext = text.text or 'Placeholder'
        local caption = text.caption or 'Placeholder'
        local ttype = textype or 'inform'
        local length = length or 5000
        exports['mythic_notify']:DoCustomHudText(ttype, ttext, length, caption)
    else
        local ttype = textype or 'inform'
        local length = length or 5000
        exports['mythic_notify']:DoCustomHudText(ttype, text, length)
    end
end
```
