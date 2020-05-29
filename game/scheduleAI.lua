MAYBE_AI = {
    --物品的挂
    item = function(playerIndex, it, type)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            local itId = hitem.getId(it)
            local itemSLK = hslk_global.id2Value.item[itId]
            hitem.del(it, 0)
            if (type == "book") then
                --学书
                local sites = {}
                if (itemSLK.ABILITY_COLOR == "yellow") then
                    sites = { "S", "D" }
                elseif (itemSLK.ABILITY_COLOR == "blue") then
                    sites = { "X", "C", "V" }
                elseif (itemSLK.ABILITY_COLOR == "purple") then
                    sites = { "F" }
                end
                local emptySite = nil
                for k, v in ipairs(sites) do
                    if (game.towersAbilities[playerIndex][v].ABILITY_LEVEL == nil) then
                        if (emptySite == nil) then
                            emptySite = v
                            break
                        end
                    end
                end
                if (emptySite == nil and math.random(1, 2) == 1) then
                    emptySite = table.random(sites)
                end
                if (emptySite ~= nil) then
                    delTowerSkillByBook(
                        game.playerTower[playerIndex],
                        emptySite,
                        game.towersAbilities[playerIndex][emptySite]
                    )
                    local abils = game.thisOptionAbility[itemSLK.INDEX]
                    addTowerSkillByBook(game.playerTower[playerIndex], emptySite, abils[emptySite])
                    if (itemSLK.ABILITY_COLOR == "yellow") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "blue") then
                        heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "purple") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
                    end
                else
                    hplayer.addGold(hplayer.players[playerIndex], 100)
                end
            elseif (type == "stone") then
                local linkSite = nil
                for i = 1, 4, 1 do
                    local n = hunit.getName(game.playerTowerLink[playerIndex][i].unit)
                    if (n == "空位") then
                        linkSite = i
                        break
                    end
                end
                if (linkSite ~= nil) then
                    --补充空位
                    local u = createMyTowerLink(playerIndex, linkSite, game.towers[itemSLK.INDEX].UNIT_ID)
                    echo(
                        hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                            "召唤了辅塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                else
                    local marks = {
                        hunit.getSlk(game.playerTower[playerIndex]).MARK or 0,
                        game.playerTowerLink[playerIndex][1].mark or 0,
                        game.playerTowerLink[playerIndex][2].mark or 0,
                        game.playerTowerLink[playerIndex][3].mark or 0,
                        game.playerTowerLink[playerIndex][4].mark or 0
                    }
                    local min = game.towers[itemSLK.INDEX].MARK
                    local mini = -1
                    for k, v in ipairs(marks) do
                        if (v < min) then
                            min = v
                            mini = k
                            break
                        end
                    end
                    if (mini >= 1 and mini <= 5) then
                        mini = mini - 1
                        if (mini == 0) then
                            local u = createMyTower(playerIndex, game.towers[itemSLK.INDEX].UNIT_ID)
                            echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "召唤了主塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        else
                            local u = createMyTowerLink(playerIndex, mini, game.towers[itemSLK.INDEX].UNIT_ID)
                            echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "召唤了辅塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        end
                    else
                        --吃石头升级
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            2 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    end
                end
            end
        end
    end,
    --信使的挂(不需要考虑计时器重复，因为AI不会换信使)
    courier = function(playerIndex)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            --装扮
            htime.setTimeout(
                math.random(4, 20),
                function(t)
                    htime.delTimer(t)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        return
                    end
                    if (game.playerTowerEffectModel[playerIndex] == nil) then
                        game.playerTowerEffectModel[playerIndex] = {}
                    end
                    local models = {
                        "青龙碧翼套装",
                        "炎炎焚烧套装",
                        "邪鬼怨灵套装",
                        "金碧辉煌套装",
                        "迷幻黑紫套装",
                        "血色炽热套装",
                        "出云剑仙套装"
                    }
                    local turn = math.random(1, #models)
                    hplayer.addGoldRatio(hplayer.players[playerIndex], (8 - turn) * 8, 0)
                    local btnIdx = models[turn]
                    local tips
                    if (btnIdx == "金碧辉煌套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀公正特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀天堂特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀精灵特效"].ABILITY_ID)
                        tips = "金耀翅膀、公正光辉、天堂圣音、金色精灵"
                    elseif (btnIdx == "迷幻黑紫套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷紫特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷阵特效"].ABILITY_ID)
                        tips = "幻黑翅膀、迷紫幻象、迷惑雾阵"
                    elseif (btnIdx == "血色炽热套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色漩涡特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色符文特效"].ABILITY_ID)
                        tips = "血色翅膀、赤红漩涡、祭奠符文"
                    elseif (btnIdx == "青龙碧翼套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青空之翼特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["游龙欢悦特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青龙吐息特效"].ABILITY_ID)
                        tips = "青空之翼、游龙欢悦、龙腾吐息"
                    elseif (btnIdx == "邪鬼怨灵套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼怨灵特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼阵法特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼符文特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼之眼特效"].ABILITY_ID)
                        tips = "邪鬼怨灵、邪鬼阵法、超度符文、逗趣鬼眼"
                    elseif (btnIdx == "炎炎焚烧套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎旋风特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎领域特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎燃烧特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎三球特效"].ABILITY_ID)
                        tips = "炎炎旋风、烧灼圈圈、焚烧之火、鬼马火球"
                    elseif (btnIdx == "出云剑仙套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞剑特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云气场特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞龙特效"].ABILITY_ID)
                        tips = "盘旋飞剑、灵剑气场、飞龙在天"
                    end
                    if (#game.playerTowerEffectModel[playerIndex] > 0) then
                        for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                            hskill.add(game.playerTower[playerIndex], v, 0)
                        end
                    end
                end
            )
            --到处乱走
            htime.setInterval(
                math.random(15, 25),
                function(t)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delTimer(t)
                        return
                    end
                    if (htime.count > 120) then
                        hplayer.addGold(hplayer.players[playerIndex], 3 * htime.count)
                    end
                    local dist = math.getDistanceBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                    local deg = math.random(0, 360)
                    local dis = math.random(100, 300)
                    if (dist > 1200) then
                        deg = math.getDegBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                        dis = math.random(500, 1000)
                        hplayer.addGold(hplayer.players[playerIndex], 12 * htime.count)
                    end
                    local xy = math.polarProjection(
                        cj.GetUnitX(game.playerCourier[playerIndex]),
                        cj.GetUnitY(game.playerCourier[playerIndex]),
                        dis,
                        deg
                    )
                    cj.IssuePointOrderById(game.playerCourier[playerIndex], 851986, xy.x, xy.y)
                end
            )
            --技能
            htime.setInterval(
                3,
                function(t)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delTimer(t)
                        return
                    end
                    local stone = 750
                    local gold = hplayer.getGold(hplayer.players[playerIndex])
                    if (gold >= 50000 and math.random(1, 8) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 50000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            math.floor(50000 / stone) + 10 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= 30000 and math.random(1, 10) == 6) then
                        hplayer.subGold(hplayer.players[playerIndex], 30000)
                        local typei = math.random(1, 3)
                        local ts = {}
                        if (typei == 1) then
                            echo(hplayer.getName(hplayer.players[playerIndex]) .. "发动了" .. hColor.red("剑敕令!"))
                            for pi = 1, 4, 1 do
                                if
                                (playerIndex ~= pi and
                                    hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming)
                                then
                                    table.insert(ts, game.playerTower[pi])
                                    for i = 1, 4, 1 do
                                        if (his.alive(game.playerTowerLink[pi][i].unit) == true) then
                                            table.insert(ts, game.playerTowerLink[pi][i].unit)
                                        end
                                        if (his.alive(game.playerCourier[pi]) == true) then
                                            table.insert(ts, game.playerCourier[pi])
                                        end
                                    end
                                end
                            end
                            for _, u in ipairs(ts) do
                                hskill.swim(
                                    {
                                        whichUnit = u,
                                        during = 10,
                                        odds = 999,
                                        effect = "war3mapImported\\eff_flame_Great_Sword_Falls.mdl"
                                    }
                                )
                            end
                        elseif (typei == 2) then
                            echo(hplayer.getName(hplayer.players[playerIndex]) .. "发动了" .. hColor.red("斧敕令!"))
                            for pi = 1, 4, 1 do
                                if
                                (playerIndex ~= pi and
                                    hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming)
                                then
                                    table.insert(ts, game.playerTower[pi])
                                end
                            end
                            for _, u in ipairs(ts) do
                                hunit.setCurLife(u, hunit.getCurLife(u) * 0.8)
                                heffect.toUnit("war3mapImported\\eff_black_chain_flash.mdl", u, 0)
                            end
                        elseif (typei == 3) then
                            echo(hplayer.getName(hplayer.players[playerIndex]) .. "发动了" .. hColor.red("锤敕令!"))
                            local hummarDur = 10 / 0.75
                            htime.setInterval(
                                0.75,
                                function(t)
                                    hummarDur = hummarDur - 1
                                    if (hummarDur < 0 or game.runing == false) then
                                        htime.delTimer(t)
                                        return
                                    end
                                    for pi = 1, 4, 1 do
                                        if (hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming) then
                                            local dmg = 0
                                            if (playerIndex == pi) then
                                                dmg = math.random(50, 38 * htime.min)
                                            else
                                                dmg = math.random(100, 76 * htime.min)
                                            end
                                            hunit.subCurLife(game.playerTower[pi], dmg)
                                            echo(
                                                hColor.sky(cj.GetPlayerName(hplayer.players[pi])) ..
                                                    "被黑色悍马雷劈掉了" .. hColor.red(dmg) .. "血"
                                            )
                                            heffect.toUnit(
                                                "war3mapImported\\eff_lighting_black.mdl",
                                                game.playerTower[pi],
                                                0
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    elseif (gold >= 10000 and math.random(1, 6) == 4) then
                        --物品叠加
                        local tarTower
                        if (hitem.getEmptySlot(game.playerTower[playerIndex]) <= 5) then
                            for i = 0, 5, 1 do
                                local it = cj.UnitItemInSlot(game.playerTower[playerIndex], i)
                                if (it ~= nil and hitem.getCharges(it) < 3) then
                                    local itid = hitem.getId(it)
                                    hitem.setCharges(it, 1 + hitem.getCharges(it))
                                    hitem.addAttribute(game.playerTower[playerIndex], itid, 1)
                                    hplayer.subGold(hplayer.players[playerIndex], 5 * hitem.getGoldCost(itid))
                                    break
                                end
                            end
                        else
                            for li = 1, 4 do
                                if (hitem.getEmptySlot(game.playerTowerLink[playerIndex][li].unit) <= 5) then
                                    for i = 0, 5, 1 do
                                        local it = cj.UnitItemInSlot(game.playerTowerLink[playerIndex][li].unit, i)
                                        if (it ~= nil and hitem.getCharges(it) < 3) then
                                            local itid = hitem.getId(it)
                                            hitem.setCharges(it, 1 + hitem.getCharges(it))
                                            hitem.addAttribute(game.playerTowerLink[playerIndex][li].unit, itid, 1)
                                            hplayer.subGold(hplayer.players[playerIndex], 5 * hitem.getGoldCost(itid))
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    elseif (gold >= 10000 and math.random(1, 7) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 10000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            math.floor(10000 / stone) + 10 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= 4 * stone and math.random(1, 3) == 2) then
                        local curWave
                        if (game.rule.cur == "yb") then
                            curWave = game.rule.yb.wave
                        elseif (game.rule.cur == "hz") then
                            curWave = game.rule.hz.wave
                        elseif (game.rule.cur == "dk") then
                            curWave = game.rule.dk.wave[playerIndex]
                        end
                        if (curWave ~= nil) then
                            hplayer.subGold(hplayer.players[playerIndex], stone / 2)
                            local targetTPow = getTowerPowLevel(curWave)
                            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                                local it = hitem.create(
                                    {
                                        itemId = rand.ITEM_ID,
                                        x = cj.GetUnitX(game.playerCourier[playerIndex]),
                                        y = cj.GetUnitY(game.playerCourier[playerIndex])
                                    }
                                )
                                MAYBE_AI.item(playerIndex, it, "stone")
                            end
                        end
                    elseif (gold >= 8000 and math.random(1, 6) == 4) then
                        --物品
                        local tarTower
                        if (hitem.getEmptySlot(game.playerTower[playerIndex]) > 0) then
                            tarTower = game.playerTower[playerIndex]
                        else
                            for li = 1, 4 do
                                if (hitem.getEmptySlot(game.playerTowerLink[playerIndex][li].unit) > 0) then
                                    tarTower = game.playerTowerLink[playerIndex][li].unit
                                    break
                                end
                            end
                        end
                        if (tarTower == nil) then
                            return
                        end
                        local lvT = math.floor(gold / 2000)
                        local lvB = 4
                        local comboIt = {}
                        for cbi = lvB, lvT, 1 do
                            if (tarTower == game.playerTower[playerIndex]) then
                                if (game.thisEquipItem[cbi] ~= nil) then
                                    for _, civ in ipairs(game.thisEquipItem[cbi]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                                if (game.thisComboItem[cbi + 3] ~= nil) then
                                    for _, civ in ipairs(game.thisComboItem[cbi + 3]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                            else
                                if (game.thisEquipItemNODK[cbi] ~= nil) then
                                    for _, civ in ipairs(game.thisEquipItemNODK[cbi]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                                if (game.thisComboItemNODK[cbi + 3] ~= nil) then
                                    for _, civ in ipairs(game.thisComboItemNODK[cbi + 3]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                            end
                        end
                        if (#comboIt <= 0) then
                            return
                        end
                        local randIt = table.random(comboIt)
                        local tarLv = randIt.LEVEL
                        comboIt = nil
                        hitem.create(
                            {
                                itemId = randIt.ITEM_ID,
                                charges = 1,
                                whichUnit = tarTower
                            }
                        )
                        hplayer.subGold(hplayer.players[playerIndex], tarLv * 1500)
                        tarTower = nil
                    end
                end
            )
        end
    end,
    --锤子兵
    hammer = function(czb)
        local czbPlayer = cj.GetOwningPlayer(czb)
        if (game.rule.dk.ai == true and his.playing(czbPlayer) == false) then
            htime.setInterval(
                math.random(14, 18),
                function(t)
                    if (game.runing == false) then
                        htime.delTimer(t)
                        return
                    end
                    local ps = {}
                    hplayer.loop(
                        function(p, pi)
                            if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                                table.insert(ps, pi)
                            end
                        end
                    )
                    local psi = table.random(ps)
                    if (math.random(1, 2) == 1) then
                        cj.IssueTargetOrder(czb, "thunderbolt", game.playerTower[psi])
                    else
                        cj.IssueTargetOrder(czb, "thunderbolt", game.playerCourier[psi])
                    end
                    ps = nil
                end
            )
        end
    end
}
