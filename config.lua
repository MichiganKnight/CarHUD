config = {}

------------------------------
-- General
------------------------------

Config.SpeedUnit = "mph"

Config.ShowHUD = true
Config.ShowTopPanel = true
Config.ShowDamage = false
Config.ShowAircraftHUD = false

------------------------------
-- Vehicle Features
------------------------------

Config.Features = {
    CruiseControl = true,
    Seatbelt = true,
    EngineStatus = true,
    RPM = true,
    Gear = true
}

------------------------------
-- HUD Position
------------------------------

Config.Position = {
    X = 0.0,
    Y = 0.0
}

------------------------------
-- HUD Colors
------------------------------

Config.Colors = {
    White = { 255, 255, 255, 255 },
    Black = { 0, 0, 0, 180 },

    Green = { 60, 255, 60, 255 },
    Yellow = { 255, 255, 0, 255 },
    Red = { 255, 50, 50, 255 },

    Blue = { 60, 160, 255, 255 }
}

------------------------------
-- Update Rates (Milliseconds)
------------------------------

Config.Update = {
    Vehicle = 100,
    Damage = 250,
    Aircraft = 100
}