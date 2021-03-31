--- ${title}

---@author ${author}
---@version r_version_r
---@date 16/03/2021

InitRoyalMod(Utils.getFilename("rmod/", g_currentModDirectory))
InitRoyalUtility(Utils.getFilename("utility/", g_currentModDirectory))

---@class SlowPlayer : RoyalMod
SlowPlayer = RoyalMod.new(r_debug_r, false)

function SlowPlayer:initialize()
    Utility.overwrittenFunction(Player, "getDesiredSpeed", SlowPlayer.player_getDesiredSpeed)
end

---@param player Player
---@param superFunc function
---@vararg any
---@return number
function SlowPlayer.player_getDesiredSpeed(player, superFunc, ...)
    local speed = superFunc(player, ...)
    if player.isCarryingObject and speed > player.motionInformation.maxIdleSpeed then
        speed = 1
        if player.inputInformation.runAxis > 0 then
            speed = 8
        end
    end
    return speed
end
