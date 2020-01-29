onTowerLinkSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK.Name == "上场") then
        local linkIndex = hunit.getUserData(u)
        local linkTowerId = game.playerTowerLink[playerIndex][linkIndex].tower_id
        local linkTowerLevel = game.playerTowerLink[playerIndex][linkIndex].tower_level
        local currentTowerId = hunit.getId(game.playerTower[playerIndex])
        local currentTowerLevel = game.playerTowerLevel[playerIndex]
        --换兵塔
        createMyTower(playerIndex, linkTowerId, linkTowerLevel)
        --进核心
        createMyTowerLink(playerIndex, linkIndex, currentTowerId, currentTowerLevel)
        --刷新种族队伍
        addTowerSkillsRaceTeam(playerIndex)
        --
        hmsg.echo00(p, hColor.yellow(hunit.getName(u)) .. "上场了！")
    end
end
