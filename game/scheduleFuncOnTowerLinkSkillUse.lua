onTowerLinkSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.id2Value.ability[skillid]
    if (abilitiesSLK == nil) then
        return
    end
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK.Name == "上场") then
        local linkIndex = hunit.getUserData(u)
        local linkTowerId = game.playerTowerLink[playerIndex][linkIndex].tower_id
        local linkTowerLevel = game.playerTowerLink[playerIndex][linkIndex].tower_level
        local currentTowerId = hunit.getId(game.playerTower[playerIndex])
        local currentTowerLevel = game.playerTowerLevel[playerIndex]
        game.playerTowerLevel[playerIndex] = linkTowerLevel
        game.playerTowerLink[playerIndex][linkIndex].tower_level = currentTowerLevel
        --换主塔
        createMyTower(playerIndex, linkTowerId, linkTowerLevel)
        --换辅塔
        createMyTowerLink(playerIndex, linkIndex, currentTowerId, currentTowerLevel)
        --刷新种族队伍
        addTowerSkillsRaceTeam(playerIndex)
        --
        echo(hColor.yellow(hunit.getName(u)) .. "上场了！", p)
    end
end
