-- client.lua
RegisterNetEvent("updateRealTime")
AddEventHandler("updateRealTime", function(hour, minute, second)
    NetworkOverrideClockTime(hour, minute, second)
end)

RegisterNetEvent("updateWeather")
AddEventHandler("updateWeather", function(weather)
    local weatherTypes = {
        ["Clear"] = "CLEAR",
        ["Clouds"] = "CLOUDS",
        ["Rain"] = "RAIN",
        ["Thunderstorm"] = "THUNDER",
        ["Snow"] = "SNOW",
        ["Fog"] = "FOGGY",
    }

    local weatherType = weatherTypes[weather] or "CLEAR"
    SetWeatherTypeOvertimePersist(weatherType, 60.0)
end)
