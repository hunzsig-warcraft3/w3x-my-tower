-- 信使使用技能
onCourierSkillUesdTTG = function(u, text)
    htextTag.style(htextTag.create2Unit(u, text, 8, "ccffff", 1, 1.5, 50), "scale", 0, 0.05)
end
onCourierSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    if (his.silent(u) == true) then
        return
    end
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK == nil or abilitiesSLK.Name == nil) then
        return
    end
    --curWave
    local curWave = 1
    if (game.rule.cur == "yb") then
        curWave = game.rule.yb.wave
    elseif (game.rule.cur == "hz") then
        curWave = game.rule.hz.wave
    elseif (game.rule.cur == "dk") then
        curWave = game.rule.dk.wave[hplayer.index(cj.GetOwningPlayer(u))]
    end
    --
    if (abilitiesSLK.Name == "拾取") then
        hitem.pickRound(u, cj.GetUnitX(u), cj.GetUnitY(u), 1500)
    elseif (abilitiesSLK.Name == "火焰吐息") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_damage_type = "+fire",
                natural_fire = "+10"
            }
        )
        heffect.bindUnit(
            "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl",
            game.playerTower[playerIndex],
            "weapon",
            45
        )
    elseif (abilitiesSLK.Name == "霜寒脚步") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_damage_type = "+ice",
                natural_ice = "+10",
                attack_debuff = {
                    add = {
                        {
                            attr = "move",
                            odds = 50,
                            val = 45,
                            during = 2.2,
                            effect = "war3mapImported\\eff_icing.mdl"
                        }
                    }
                }
            }
        )
        heffect.bindUnit("Abilities\\Spells\\Items\\AIob\\AIobTarget.mdl", game.playerTower[playerIndex], "weapon", 45)
    elseif (abilitiesSLK.Name == "兵塔石吞噬") then
        local lvUpQty = 0
        for ti = 0, 5, 1 do
            local it = cj.UnitItemInSlot(u, ti)
            if (it ~= nil) then
                local itemSLK = hslk_global.itemsKV[hitem.getId(it)]
                if (itemSLK.I_TYPE == "tower") then
                    lvUpQty = lvUpQty + hitem.getCharges(it)
                    hitem.del(it, 0)
                end
            end
        end
        if (lvUpQty > 0) then
            hhero.setCurLevel(
                game.playerTower[playerIndex],
                lvUpQty + hhero.getCurLevel(game.playerTower[playerIndex]),
                false
            )
            hmsg.echo00(p, "通过吞噬兵塔石,兵塔提升了" .. hColor.yellow(lvUpQty) .. "级")
        else
            htextTag.style(htextTag.create2Unit(u, "找不到兵塔石~", 7, "ffff00", 1, 1.5, 50), "scale", 0, 0.05)
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·蓝") then
        if (hplayer.getGold(p) < 750) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 750)
            local tarBLv = getBookPowLevel(curWave)
            local bookID
            if (game.rule.cur == "dk") then
                bookID = table.random(game.thisOptionAbilityItem["blue"][tarBLv]).ITEM_ID
            else
                bookID = table.random(game.thisOptionAbilityItemNODK["blue"][tarBLv]).ITEM_ID
            end
            hitem.create(
                {
                    itemId = bookID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·黄") then
        if (hplayer.getGold(p) < 1250) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 1250)
            local tarBLv = getBookPowLevel(curWave)
            local bookID
            if (game.rule.cur == "dk") then
                bookID = table.random(game.thisOptionAbilityItem["yellow"][tarBLv]).ITEM_ID
            else
                bookID = table.random(game.thisOptionAbilityItemNODK["yellow"][tarBLv]).ITEM_ID
            end
            hitem.create(
                {
                    itemId = bookID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·紫") then
        if (hplayer.getGold(p) < 2500) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 2500)
            local tarBLv = getBookPowLevel(curWave)
            local bookID
            if (game.rule.cur == "dk") then
                bookID = table.random(game.thisOptionAbilityItem["purple"][tarBLv]).ITEM_ID
            else
                bookID = table.random(game.thisOptionAbilityItemNODK["purple"][tarBLv]).ITEM_ID
            end
            hitem.create(
                {
                    itemId = bookID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "召唤新兵塔") then
        if (hplayer.getGold(p) < 750) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 750)
            local tarBLv = getTowerPowLevel(curWave)
            hitem.create(
                {
                    itemId = table.random(game.thisOptionTowerPowerItem[tarBLv]).ITEM_ID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "技能吞噬") then
        local lvUpQty = 0
        for ti = 0, 5, 1 do
            local it = cj.UnitItemInSlot(u, ti)
            if (it ~= nil) then
                local itemSLK = hslk_global.itemsKV[hitem.getId(it)]
                if (itemSLK.I_TYPE == "ability") then
                    lvUpQty = lvUpQty + hitem.getCharges(it)
                    hitem.del(it, 0)
                end
            end
        end
        if (lvUpQty > 0) then
            local full9 = true
            local target
            local targetLi = 0
            if (game.playerTowerLevel[playerIndex] < 9) then
                full9 = false
                target = game.playerTower[playerIndex]
            end
            if (target == nil) then
                for li = 1, 4, 1 do
                    local linkUnit = game.playerTowerLink[playerIndex][li].unit
                    if
                        (linkUnit ~= nil and his.locust(linkUnit) == false and
                            game.playerTowerLink[playerIndex][li].tower_level < 9)
                     then
                        full9 = false
                        target = game.playerTowerLink[playerIndex][li].unit
                        targetLi = li
                        break
                    end
                end
            end
            if (full9 == true) then
                htextTag.style(htextTag.create2Unit(u, "全队已满9级天赋，技能书已被售卖~", 7, "ccffcc", 1, 1.5, 50), "scale", 0, 0.05)
                hplayer.addGold(p, 30 * lvUpQty)
            else
                local lockLv = 0
                for vi = 1, lvUpQty, 1 do
                    local l = 0
                    if (math.random(1, 6) == 1) then
                        l = 0
                    elseif (math.random(1, 5) == 1) then
                        l = 1
                    elseif (math.random(1, 4) == 1) then
                        l = 2
                    elseif (math.random(1, 3) == 1) then
                        l = 3
                    elseif (math.random(1, 3) == 1) then
                        l = 4
                    elseif (math.random(1, 3) == 1) then
                        l = 5
                    elseif (math.random(1, 2) == 1) then
                        l = 6
                    elseif (math.random(1, 2) == 1) then
                        l = 7
                    elseif (math.random(1, 2) == 1) then
                        l = 8
                    else
                        l = 9
                    end
                    if (l > lockLv) then
                        lockLv = l
                    end
                end
                if (target == game.playerTower[playerIndex]) then
                    --主塔
                    subTowerLevel(playerIndex)
                    addTowerLevel(playerIndex, lockLv)
                else
                    --link
                    subTowerLinkLevel(playerIndex, targetLi)
                    addTowerLinkLevel(playerIndex, targetLi, lockLv)
                end
            end
        else
            htextTag.style(htextTag.create2Unit(u, "找不到技能书~", 7, "ffff00", 1, 1.5, 50), "scale", 0, 0.05)
        end
    elseif (abilitiesSLK.Name == "开心金箱子") then
        if (hplayer.getLumber(p) < 30) then
            htextTag.style(htextTag.create2Unit(u, "不够30木头呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subLumber(p, 30)
            local gold = 0
            local label = "谢谢惠顾"
            local color = "ffffff"
            local randg = math.random(1, 100)
            if (randg >= 1 and randg < 54) then
                gold = 388
                label = "三等赏！"
                color = "80ffff"
            elseif (randg >= 55 and randg < 84) then
                gold = 888
                label = "二等赏！！"
                color = "ffffcc"
            elseif (randg >= 85 and randg <= 90) then
                gold = 1888
                label = "一等赏！！！"
                color = "ffcc00"
            elseif (randg == 54) then
                gold = 8888
                label = "特等赏！！！！"
                color = "ff3939"
            end
            if (gold > 0) then
                hsound.sound2Player(cg.gg_snd_coin_1, p)
                hplayer.addGold(p, gold)
                htextTag.style(
                    htextTag.create2Unit(u, label .. "+ " .. gold, 7, color, 1, 1.70, 60.00),
                    "toggle",
                    0,
                    0.25
                )
                if (gold >= 1888) then
                    hmsg.echo(hColor.sky(cj.GetPlayerName(p)) .. "抽到了|cff" .. color .. label .. "|r，大家祝贺TA！")
                end
            else
                hsound.sound2Player(cg.gg_snd_sell_item, p)
                htextTag.style(htextTag.create2Unit(u, label, 7, color, 1, 1.70, 60.00), "toggle", 0, 0.25)
            end
        end
    elseif (abilitiesSLK.Name == "装备升华") then
        local itemQty = 0
        local itemLv = 0
        local itemSlkCache = {}
        for si = 0, 5, 1 do
            local tempIt = cj.UnitItemInSlot(u, si)
            if (tempIt ~= nil) then
                local tslk = hitem.getSlk(tempIt)
                if (tslk ~= nil and (tslk.I_TYPE == "combo" or tslk.I_TYPE == "equip")) then
                    itemQty = itemQty + hitem.getCharges(tempIt)
                    itemLv = itemLv + tslk.LEVEL
                    table.insert(itemSlkCache, tempIt)
                end
            end
            tempIt = nil
        end
        if (itemQty < 2) then
            htextTag.style(htextTag.create2Unit(u, "至少要2件装备", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        end
        local downLv = math.floor(itemLv * 0.8)
        if (downLv < 1) then
            downLv = 1
        elseif (downLv > 200) then
            downLv = 200
        end
        local comboIt = {}
        for cbi = downLv, itemLv, 1 do
            if (game.rule.cur == "dk") then
                if (game.thisComboItem[cbi] ~= nil) then
                    for _, civ in ipairs(game.thisComboItem[cbi]) do
                        table.insert(comboIt, civ)
                    end
                end
            else
                if (game.thisComboItemNODK[cbi] ~= nil) then
                    for _, civ in ipairs(game.thisComboItemNODK[cbi]) do
                        table.insert(comboIt, civ)
                    end
                end
            end
        end
        if (#comboIt <= 0) then
            htextTag.style(htextTag.create2Unit(u, "升华失败了", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            itemSlkCache = nil
            return
        end
        local need = 500 * itemQty
        if (hplayer.getGold(p) < need) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, need)
            for _, v in ipairs(itemSlkCache) do
                hitem.del(v, 0)
            end
            itemSlkCache = nil
            local randIt = table.random(comboIt)
            comboIt = nil
            hitem.create(
                {
                    itemId = randIt.ITEM_ID,
                    charges = 1,
                    whichUnit = u
                }
            )
            hmsg.echo(
                hColor.sky(cj.GetPlayerName(p)) ..
                    "利用" .. hColor.yellow(itemQty) .. "件装备升华出了" .. hColor.green(randIt.Name) .. "！"
            )
            randIt = nil
        end
    end
end
