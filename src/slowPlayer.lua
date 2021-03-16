--- ${title}

---@author ${author}
---@version r_version_r
---@date 16/03/2021

InitRoyalMod(Utils.getFilename("rmod/", g_currentModDirectory))

SlowPlayer = RoyalMod.new(r_debug_r, false)

function SlowPlayer:initialize()
end

function SlowPlayer:onMissionInitialize(baseDirectory, missionCollaborators)
end

function SlowPlayer:onSetMissionInfo(missionInfo, missionDynamicInfo)
end

function SlowPlayer:onLoad()
end

function SlowPlayer:onPreLoadMap(mapFile)
end

function SlowPlayer:onCreateStartPoint(startPointNode)
end

function SlowPlayer:onLoadMap(mapNode, mapFile)
end

function SlowPlayer:onPostLoadMap(mapNode, mapFile)
end

function SlowPlayer:onLoadSavegame(savegameDirectory, savegameIndex)
end

function SlowPlayer:onPreLoadVehicles(xmlFile, resetVehicles)
end

function SlowPlayer:onPreLoadItems(xmlFile)
end

function SlowPlayer:onPreLoadOnCreateLoadedObjects(xmlFile)
end

function SlowPlayer:onLoadFinished()
end

function SlowPlayer:onStartMission()
end

function SlowPlayer:onMissionStarted()
end

function SlowPlayer:onWriteStream(streamId)
end

function SlowPlayer:onReadStream(streamId)
end

function SlowPlayer:onUpdate(dt)
end

function SlowPlayer:onUpdateTick(dt)
end

function SlowPlayer:onWriteUpdateStream(streamId, connection, dirtyMask)
end

function SlowPlayer:onReadUpdateStream(streamId, timestamp, connection)
end

function SlowPlayer:onMouseEvent(posX, posY, isDown, isUp, button)
end

function SlowPlayer:onKeyEvent(unicode, sym, modifier, isDown)
end

function SlowPlayer:onDraw()
end

function SlowPlayer:onPreSaveSavegame(savegameDirectory, savegameIndex)
end

function SlowPlayer:onPostSaveSavegame(savegameDirectory, savegameIndex)
end

function SlowPlayer:onPreDeleteMap()
end

function SlowPlayer:onDeleteMap()
end

function SlowPlayer:onLoadHelpLine()
    --return self.directory .. "gui/helpLine.xml"
end
