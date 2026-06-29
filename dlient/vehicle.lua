VehicleData = {
    Ped = nil,
    Vehicle = nil,

    InVehicle = false,

    IsDriver = false,

    IsCar = false,
    IsBike = false,
    IsBoat = false,
    IsPlane = false,
    IsHelicopter = false,

    Speed = 0,
    RPM = 0,
    Gear = 0,

    EngineHealth = 1000.0,
    BodyHealth = 1000.0,

    EngineRunning = false,

    Plate = ""
}

local function ResetVehicleData()
    VehicleData.Vehicle = nil

    VehicleData.InVehicle = false
    
    VehicleData.IsDriver = false

    VehicleData.IsCar = false
    VehicleData.IsBike = false
    VehicleData.IsBoat = false
    VehicleData.IsPlane = false
    VehicleData.IsHelicopter = false

    VehicleData.Speed = 0
    VehicleData.RPM = 0
    VehicleData.Gear = 0

    VehicleData.EngineHealth = 1000.0
    VehicleData.BodyHealth = 1000.0

    VehicleData.EngineRunning = false

    VehicleData.Plate = ""
end

CreateThread(function()
    while true do
        VehicleData.Ped = PlayerPedId()

        if IsPedInAnyVehicle(VehicleData.Ped, false) then
            local vehicle = GetVehiclePedIsIn(VehicleData.Ped, false)

            VehicleData.Vehicle = vehicle
            VehicleData.InVehicle = true

            VehicleData.IsDriver = GetPedInVehicleSeat(vehicle, -1) == VehicleData.Ped

            VehicleData.IsCar = IsThisModelACar(GetEntityModel(vehicle))

            VehicleData.IsBike = IsThisModelABike(GetEntityModel(vehicle))

            VehicleData.IsBoat = IsThisModelABoat(GetEntityModel(vehicle))

            VehicleData.IsPlane = IsThisModelAPlane(GetEntityModel(vehicle))

            VehicleData.IsHeli = IsThisModelAHeli(GetEntityModel(vehicle))

            VehicleData.Speed = GetEntitySpeed(vehicle)

            VehicleData.RPM = GetVehicleCurrentRpm(vehicle)

            VehicleData.Gear = GetVehicleCurrentGear(vehicle)

            VehicleData.EngineHealth = GetVehicleEngineHealth(vehicle)

            VehicleData.BodyHealth = GetVehicleBodyHealth(vehicle)

            VehicleData.EngineRunning = GetIsVehicleEngineRunning(vehicle)

            VehicleData.Plate = GetVehicleNumberPlateText(vehicle)
        else
            ResetVehicleData()
        end

        Wait(Config.Update.Vehicle)
    end
)

CreateThread(function()
    while true do
        if VehicleData.InVehicle then
            print(string.format("Speed: %.1f | Gear: %d | RPM: %.2f", VehicleData.Speed, VehicleData.Gear, VehicleData.RPM))
        end

        Wait(1000)
    end
end)