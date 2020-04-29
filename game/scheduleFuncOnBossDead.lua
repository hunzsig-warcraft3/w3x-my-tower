-- boss死亡
bossDead = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        local p = cj.GetOwningPlayer(u)
        local playerIndex = hplayer.index(p)
        local curWave = 0
        if (game.rule.cur == "yb") then
            haward.forGroupExp(u, 350 * game.rule.yb.wave)
            curWave = game.rule.yb.wave
        elseif (game.rule.cur == "hz") then
            haward.forGroupExp(u, 300 * game.rule.hz.wave)
            curWave = game.rule.hz.wave
        else
            haward.forGroupExp(u, 1200)
            curWave = game.rule.dk.wave[playerIndex]
        end
        local killerName = cj.GetPlayerName(p)
        local bossName = hunit.getName(evtData.triggerUnit)
        if (killerName ~= nil) then
            echo(hColor.sky(killerName) .. "干掉了" .. hColor.yellow(bossName))
        end
        -- 掉落兵塔
        local x = cj.GetUnitX(evtData.triggerUnit)
        local y = cj.GetUnitY(evtData.triggerUnit)
        for i = 1, 3 do
            local targetTPow = getTowerPowLevel(curWave)
            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                hitem.create(
                    {
                        itemId = rand.ITEM_ID,
                        x = x,
                        y = y,
                        during = 60
                    }
                )
            end
        end
    end
    hunit.del(evtData.triggerUnit, 3)
end
