local Translations = {
    notify = {
        ["no_money"] = "Du har ikke nok penger",
        ["refuel_cancel"] = "Drivstoffpåfylling avbrutt",
        ["jerrycan_full"] = "Denne bensinkannen er allerede full",
        ["jerrycan_empty"] = "Denne bensinkannen er tom",
        ["vehicle_full"] = "Dette kjøretøyet er allerede fullt",
        ["already_full"] = "Gassbeholderen er allerede full",
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
