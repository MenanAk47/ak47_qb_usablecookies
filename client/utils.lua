QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('ak47_qb_usablecookies:notify')
AddEventHandler('ak47_qb_usablecookies:notify', function(msg)
    QBCore.Functions.Notify(msg)
end)

RegisterNetEvent('ak47_qb_usablecookies:progress')
AddEventHandler('ak47_qb_usablecookies:progress', function(msg, time)
    QBCore.Functions.Progressbar(msg, msg, time, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done

    end, function()

    end)
end)

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

function tofloat(value)
    return tonumber(string.format("%.2f", value))
end

Locales = {}

function _(str, ...)  -- Translate string

    if Locales[Config.Locale] ~= nil then

        if Locales[Config.Locale][str] ~= nil then
            return string.format(Locales[Config.Locale][str], ...)
        else
            return 'Translation [' .. Config.Locale .. '][' .. str .. '] does not exist'
        end

    else
        return 'Locale [' .. Config.Locale .. '] does not exist'
    end

end

function _U(str, ...) -- Translate string first char uppercase
    return tostring(_(str, ...):gsub("^%l", string.upper))
end

--If you want to add some effect on smoke then make events like this and add your effect inside

function effectJoint()
    SetTimecycleModifierStrength(0.0)
    SetTimecycleModifier('spectator6')
    SetPedMotionBlur(playerPed, true)
    Citizen.Wait(5000)
    SetTimecycleModifierStrength(0.66)
    Citizen.Wait(3000)
    ShakeGameplayCam('DRUNK_SHAKE', 2.5)
    Citizen.Wait(3000)
    RequestClipSet('MOVE_M@DRUNK@SLIGHTLYDRUNK')
    while not HasClipSetLoaded('MOVE_M@DRUNK@SLIGHTLYDRUNK') do
        Citizen.Wait(0)
    end
    SetPedMovementClipset(GetPlayerPed(-1), 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    while effectTime > 0 do
        Citizen.Wait(1000)
    end
    Citizen.Wait(15000)
    ClearTimecycleModifier()
    Citizen.Wait(15000)
    ShakeGameplayCam('DRUNK_SHAKE', 0.0)
    SetPedMotionBlur(GetPlayerPed(-1), false)
    Citizen.Wait(15000)
    ResetPedMovementClipset(GetPlayerPed(-1), 0)
end

AddEventHandler('ak47_qb_usablecookies:onsmoke:cake_mix_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:cereal_milk_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:cheetah_piss_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:gary_payton_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:gelatti_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:georgia_pie_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:jefe_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:snow_man_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:white_runtz_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:blueberry_cruffin_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:whitecherry_gelato_joint', function()
    effectJoint()
end)

AddEventHandler('ak47_qb_usablecookies:onsmoke:grabba_leaf_joint', function()
    effectJoint()
end)