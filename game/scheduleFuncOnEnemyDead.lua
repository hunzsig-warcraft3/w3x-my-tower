require "game.scheduleFuncEnemyGenShadow"

enemyDeadTowerDrop = {}

-- 死亡的触发奖励
enemyDeadAward = function(triggerUnit, killer)
    local x = cj.GetUnitX(triggerUnit)
    local y = cj.GetUnitY(triggerUnit)
    hunit.del(triggerUnit, 2)
    -- 坟头草
    if (cj.GetRandomInt(1, 15) == 13) then
        hunit.create(
            {
                register = false,
                whichPlayer = hplayer.player_passive,
                unitId = game.thisUnits["河草"].UNIT_ID,
                qty = 1,
                x = x,
                y = y,
                during = cj.GetRandomReal(20, 45)
            }
        )
    end
    local playerIndex = 0
    if (killer ~= nil) then
        playerIndex = hplayer.index(cj.GetOwningPlayer(killer))
    end
    --curWave
    local curWave = 1
    if (game.rule.cur == "yb") then
        curWave = game.rule.yb.wave
    elseif (game.rule.cur == "hz") then
        curWave = game.rule.hz.wave
    elseif (game.rule.cur == "dk" and killer ~= nil) then
        curWave = game.rule.dk.wave[playerIndex]
    end
    --
    if (cj.GetRandomInt(1, 30) == 13 and curWave >= 2) then
        -- 掉落蓝技能书
        local tarBLv = getBookPowLevel(curWave)
        if (game.rule.cur == "dk") then
            if (#game.thisOptionAbilityItem["blue"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItem["blue"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "book")
            end
        else
            if (#game.thisOptionAbilityItemNODK["blue"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItemNODK["blue"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "book")
            end
        end
    end
    if (cj.GetRandomInt(1, 60) == 27 and curWave >= 7) then
        -- 掉落黄技能书
        local tarBLv = getBookPowLevel(curWave)
        if (game.rule.cur == "dk") then
            if (#game.thisOptionAbilityItem["yellow"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItem["yellow"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "book")
            end
        else
            if (#game.thisOptionAbilityItemNODK["yellow"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItemNODK["yellow"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "book")
            end
        end
    end
    if (cj.GetRandomInt(1, 90) == 46 and curWave >= 19) then
        -- 掉落紫技能书
        local tarBLv = getBookPowLevel(curWave)
        if (game.rule.cur == "dk") then
            if (#game.thisOptionAbilityItem["purple"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItem["purple"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "book")
            end
        else
            if (#game.thisOptionAbilityItemNODK["purple"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItemNODK["purple"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "book")
            end
        end
    end
    --
    if (playerIndex > 0) then
        if (enemyDeadTowerDrop[playerIndex] == nil) then
            enemyDeadTowerDrop[playerIndex] = 2
        end
        if (enemyDeadTowerDrop[playerIndex] < 10 or cj.GetRandomInt(1, enemyDeadTowerDrop[playerIndex]) == 1) then
            -- 掉落兵塔
            local targetTPow = getTowerPowLevel(curWave)
            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                local it =
                    hitem.create(
                    {
                        itemId = rand.ITEM_ID,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                --如果是AI模式
                MAYBE_AI.item(playerIndex, it, "stone")
            end
            if (enemyDeadTowerDrop[playerIndex] < 25) then
                enemyDeadTowerDrop[playerIndex] = enemyDeadTowerDrop[playerIndex] + 1
            end
        end
    end
end

-- 敌军死亡YB
enemyDeadYB = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forUnitGold(evtData.killer, 1)
        haward.forGroupExp(evtData.killer, 27 * game.rule.yb.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end

-- 敌军死亡HZ
enemyDeadHZ = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forUnitGold(evtData.killer, 1)
        haward.forGroupExp(evtData.killer, 23 * game.rule.hz.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end

-- 敌军死亡DK
enemyDeadDK = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 25 * game.rule.dk.wave[pi]
        local gold = 3 * game.rule.dk.wave[pi]
        haward.forUnitGold(u, gold)
        haward.forGroupExp(u, exp)
        game.rule.dk.playerQty[pi] = game.rule.dk.playerQty[pi] + 1
        if (game.rule.dk.playerQty[pi] >= game.rule.dk.perWaveQty) then
            game.rule.dk.playerQty[pi] = 0
            game.rule.dk.wave[pi] = game.rule.dk.wave[pi] + 1
            game.rule.dk.mon[pi] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            --奖励的东东
            if (math.fmod(game.rule.dk.wave[pi], 10) == 0) then
                awardGenForOne(game.rule.dk.wave[pi], pi)
            end
            --我的兵塔，进攻！
            if (math.fmod(game.rule.dk.wave[pi], game.rule.dk.shadowMod[pi]) == 0) then
                towerShadowGen(pi)
                if (game.rule.dk.shadowMod[pi] > 1) then
                    game.rule.dk.shadowMod[pi] = game.rule.dk.shadowMod[pi] - 1
                elseif (game.rule.dk.shadowMod[pi] == 1) then
                    game.rule.dk.shadowMod[pi] = 4
                end
            end
        end
    end
    local ui = game.rule.dk.monData[cj.GetTriggerUnit()].pathIndex
    game.rule.dk.monLimit[ui] = game.rule.dk.monLimit[ui] - 1
    enemyDeadAward(evtData.triggerUnit, u)
end
