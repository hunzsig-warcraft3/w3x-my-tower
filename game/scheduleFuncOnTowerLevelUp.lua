subTowerLevel = function(playerIndex)
    local oldLevel = game.playerTowerLevel[playerIndex]
    if (oldLevel ~= nil) then
        hskill.del(game.playerTower[playerIndex], game.thisUnitLevelAbilities[oldLevel].ABILITY_ID, 0)
        if (oldLevel > 0) then
            local towerId = hunit.getId(game.playerTower[playerIndex])
            hattr.set(
                game.playerTower[playerIndex],
                0,
                {
                    str_white = "-" .. math.floor(oldLevel * 0.28 * hslk_global.id2Value.unit[towerId].STR),
                    agi_white = "-" .. math.floor(oldLevel * 0.28 * hslk_global.id2Value.unit[towerId].AGI),
                    int_white = "-" .. math.floor(oldLevel * 0.28 * hslk_global.id2Value.unit[towerId].INT),
                    attack_white = "-" .. math.floor(oldLevel * 0.35 * hslk_global.id2Value.unit[towerId].ATTACK_WHITE)
                }
            )
        end
    end
end

addTowerLevel = function(playerIndex, lockLv)
    local unitLv = 0
    if (lockLv ~= nil) then
        unitLv = lockLv
    else
        if (math.random(1, 5) == 1) then
            unitLv = 0
        elseif (math.random(1, 4) == 1) then
            unitLv = 1
        elseif (math.random(1, 3) == 1) then
            unitLv = 2
        elseif (math.random(1, 2) == 1) then
            unitLv = 3
        elseif (math.random(1, 2) == 1) then
            unitLv = 4
        else
            unitLv = 5
        end
    end
    local oldLv = game.playerTowerLevel[playerIndex] or -1
    if (lockLv == nil or unitLv > oldLv) then
        echo("主塔天赋变为：" .. hColor.yellow(unitLv) .. "级", hplayer.players[playerIndex])
        if (unitLv == 9) then
            hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
            echo(
                hColor.sky("(>▽<)" .. cj.GetPlayerName(hplayer.players[playerIndex])) ..
                    "得到了" .. hColor.yellow(unitLv) .. "级天赋主塔，大家祝贺TA！"
            )
        end
        game.playerTowerLevel[playerIndex] = unitLv
    else
        unitLv = oldLv
        echo("主塔天赋没有得到提升", hplayer.players[playerIndex])
    end
    hskill.add(game.playerTower[playerIndex], game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    --计算
    if (unitLv > 0) then
        local towerId = hunit.getId(game.playerTower[playerIndex])
        hattr.set(
            game.playerTower[playerIndex],
            0,
            {
                str_white = "+" .. math.floor(unitLv * 0.28 * hslk_global.id2Value.unit[towerId].STR),
                agi_white = "+" .. math.floor(unitLv * 0.28 * hslk_global.id2Value.unit[towerId].AGI),
                int_white = "+" .. math.floor(unitLv * 0.28 * hslk_global.id2Value.unit[towerId].INT),
                attack_white = "+" .. math.floor(unitLv * 0.35 * hslk_global.id2Value.unit[towerId].ATTACK_WHITE)
            }
        )
    end
end

subTowerLinkLevel = function(playerIndex, targetLi)
    local oldLevel = game.playerTowerLink[playerIndex][targetLi].tower_level
    if (oldLevel ~= nil) then
        hskill.del(
            game.playerTowerLink[playerIndex][targetLi].unit,
            game.thisUnitLevelAbilities[oldLevel].ABILITY_ID,
            0
        )
        if (oldLevel > 0) then
            local towerId = hunit.getId(game.playerTowerLink[playerIndex][targetLi].unit)
            hattr.set(
                game.playerTowerLink[playerIndex][targetLi].unit,
                0,
                {
                    attack_white = "-" .. math.floor(oldLevel * 0.5 * hslk_global.id2Value.unit[towerId].ATTACK_WHITE)
                }
            )
        end
    end
end

addTowerLinkLevel = function(playerIndex, targetLi, lockLv)
    local unitLv = 0
    if (lockLv ~= nil) then
        unitLv = lockLv
    else
        if (math.random(1, 5) == 1) then
            unitLv = 0
        elseif (math.random(1, 4) == 1) then
            unitLv = 1
        elseif (math.random(1, 3) == 1) then
            unitLv = 2
        elseif (math.random(1, 2) == 1) then
            unitLv = 3
        elseif (math.random(1, 2) == 1) then
            unitLv = 4
        else
            unitLv = 5
        end
    end
    local oldLv = game.playerTowerLink[playerIndex][targetLi].tower_level or -1
    if (lockLv == nil or unitLv > oldLv) then
        echo("辅塔天赋变为：" .. hColor.yellow(unitLv) .. "级", hplayer.players[playerIndex])
        if (unitLv == 9) then
            hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
            echo(
                hColor.sky("(>▽<)" .. cj.GetPlayerName(hplayer.players[playerIndex])) ..
                    "得到了" .. hColor.yellow(unitLv) .. "级天赋辅塔，大家祝贺TA！"
            )
        end
        game.playerTowerLink[playerIndex][targetLi].tower_level = unitLv
    else
        unitLv = oldLv
        echo("辅塔天赋没有得到提升", hplayer.players[playerIndex])
    end
    hskill.add(game.playerTowerLink[playerIndex][targetLi].unit, game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    --计算
    if (unitLv > 0) then
        local towerId = hunit.getId(game.playerTowerLink[playerIndex][targetLi].unit)
        hattr.set(
            game.playerTowerLink[playerIndex][targetLi].unit,
            0,
            {
                attack_white = "+" .. math.floor(unitLv * 0.5 * hslk_global.id2Value.unit[towerId].ATTACK_WHITE)
            }
        )
    end
end
