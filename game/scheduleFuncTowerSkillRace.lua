addTowerSkillsRaceAbility = {}
addTowerSkillsRaceAttr = {}
addTowerSkillsRaceAttrPlayer = {}

handleTowerSkillsRaceAttr = function(old, new)
    if (new == nil) then
        return
    end
    local tempDiff = {
        add = {},
        sub = {}
    }
    local tempNew = {}
    for k, v in pairs(new) do
        if (k == "attack_damage_type") then
            if (#v > 0) then
                tempNew[k] = "+" .. string.implode(",", v)
                if (old ~= nil) then
                    if (old[k] == nil or #old[k] == 0) then
                        tempDiff.add[k] = "+" .. string.implode(",", v)
                    elseif (old[k] ~= v) then
                        tempDiff.sub[k] = "-" .. string.implode(",", old[k])
                        tempDiff.add[k] = "+" .. string.implode(",", v)
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and #old[k] > 0) then
                        tempDiff.sub[k] = "-" .. string.implode(",", old[k])
                    end
                end
            end
        elseif (k == "attack_debuff" or k == "attack_effect") then
            if (#v > 0) then
                tempNew[k] = {add = v}
                if (old ~= nil) then
                    if (old[k] == nil or #old[k] == 0) then
                        tempDiff.add[k] = {add = v}
                    elseif (old[k] ~= v) then
                        tempDiff.sub[k] = {sub = old[k]}
                        tempDiff.add[k] = {add = v}
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and #old[k] > 0) then
                        tempDiff.sub[k] = {sub = old[k]}
                    end
                end
            end
        else
            if (v > 0) then
                tempNew[k] = "+" .. v
                if (old ~= nil) then
                    if (old[k] == nil) then
                        tempDiff.add[k] = "+" .. v
                    elseif (old[k] ~= v) then
                        v = v - old[k]
                        if (v > 0) then
                            tempDiff.add[k] = "+" .. v
                        else
                            tempDiff.sub[k] = "-" .. math.abs(v)
                        end
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and old[k] ~= 0) then
                        tempDiff.sub[k] = "-" .. old[k]
                    end
                end
            end
        end
    end
    return {
        diff = tempDiff,
        new = tempNew
    }
end

addTowerSkillsRaceSingleAttr = function(u)
    local currentId = hunit.getId(u)
    local slk = hslk_global.id2Value.unit[currentId]
    if (slk == nil) then
        return
    end
    local race = slk.RACE
    if (race == "人类") then
        local val = 0.03
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人杰") then
        local val = 0.04
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人王") then
        local val = 0.05
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "矮人") then
        hattr.set(
            u,
            0,
            {
                aim = "+40"
            }
        )
    elseif (race == "血精灵") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "violence",
                            odds = 15,
                            percent = 12
                        }
                    }
                }
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.075 * slk.ATTACK_WHITE)
            }
        )
    elseif (race == "巨魔") then
        hattr.set(
            u,
            0,
            {
                attack_speed = "+10"
            }
        )
    elseif (race == "牛头人") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "knocking",
                            odds = 10,
                            percent = 25
                        }
                    }
                }
            }
        )
    elseif (race == "暗夜精灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dark"
            }
        )
    elseif (race == "德鲁伊") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+wood"
            }
        )
    elseif (race == "亡灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ice",
                attack_debuff = {
                    add = {
                        {
                            attr = "move",
                            odds = 100,
                            val = 30,
                            during = 3.0,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    }
                }
            }
        )
    elseif (race == "娜迦") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+water",
                natural_fire_oppose = "+30"
            }
        )
    elseif (race == "元素") then
        local vv = "+10"
        hattr.set(
            u,
            0,
            {
                natural_fire_oppose = vv,
                natural_soil_oppose = vv,
                natural_water_oppose = vv,
                natural_ice_oppose = vv,
                natural_wind_oppose = vv,
                natural_light_oppose = vv,
                natural_dark_oppose = vv,
                natural_wood_oppose = vv,
                natural_thunder_oppose = vv,
                natural_poison_oppose = vv,
                natural_ghost_oppose = vv,
                natural_metal_oppose = vv,
                natural_dragon_oppose = vv,
                natural_insect_oppose = vv,
                natural_god_oppose = vv
            }
        )
    elseif (race == "恶魔") then
        hattr.set(
            u,
            0,
            {
                damage_extent = "+6.66",
                attack_speed = "+6.66",
                natural_god_oppose = "-66.66"
            }
        )
    elseif (race == "神族") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+god"
            }
        )
    elseif (race == "昆虫") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+insect"
            }
        )
    elseif (race == "异兽") then
        hattr.set(
            u,
            0,
            {
                resistance = "+15",
                toughness = "+1000"
            }
        )
    elseif (race == "幽魂") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ghost"
            }
        )
    elseif (race == "食人魔") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {attr = "swim", odds = 10, val = 0, during = 0.3}
                    }
                }
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_green = "+" .. (0.15 * slk.INT)
            }
        )
    elseif (race == "龙人") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dragon"
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                life_back = "+0.5",
                str_green = "+" .. (0.08 * slk.STR)
            }
        )
    end
end

--全体种族
addTowerSkillsRaceTeam = function(playerIndex)
    local towers = {
        game.playerTower[playerIndex]
    }
    for i = 1, 4 do
        if
            (game.playerTowerLink[playerIndex] ~= nil and game.playerTowerLink[playerIndex][i] ~= nil and
                game.playerTowerLink[playerIndex][i].tower_level ~= nil)
         then
            table.insert(towers, game.playerTowerLink[playerIndex][i].unit)
        end
    end
    local qtys = {}
    local races = {}
    local attr = {
        life = 0,
        attack_green = 0,
        attack_speed = 0,
        aim = 0,
        defend = 0,
        resistance = 0,
        toughness = 0,
        avoid = 0,
        damage_extent = 0,
        natural_dark = 0,
        natural_god = 0,
        natural_fire_oppose = 0,
        natural_soil_oppose = 0,
        natural_water_oppose = 0,
        natural_ice_oppose = 0,
        natural_wind_oppose = 0,
        natural_light_oppose = 0,
        natural_dark_oppose = 0,
        natural_wood_oppose = 0,
        natural_thunder_oppose = 0,
        natural_poison_oppose = 0,
        natural_ghost_oppose = 0,
        natural_metal_oppose = 0,
        natural_dragon_oppose = 0,
        natural_insect_oppose = 0,
        natural_god_oppose = 0,
        attack_damage_type = {},
        attack_debuff = {},
        attack_effect = {}
    }
    local attrPlayer = {
        gold_ratio = 0,
        exp_ratio = 0
    }
    for k, v in pairs(towers) do
        local cid = hunit.getId(v)
        local r = hslk_global.id2Value.unit[cid].RACE
        if (r ~= nil) then
            if (qtys[r] == nil) then
                qtys[r] = 0
            end
            qtys[r] = qtys[r] + 1
            --继承型种族的特殊阶级
            if (r == "人杰") then
                if (qtys["人类"] == nil) then
                    qtys["人类"] = 0
                end
                qtys["人类"] = qtys["人类"] + 1
            elseif (r == "人王") then
                if (qtys["人类"] == nil) then
                    qtys["人类"] = 0
                end
                if (qtys["人杰"] == nil) then
                    qtys["人杰"] = 0
                end
                qtys["人类"] = qtys["人类"] + 1
                qtys["人杰"] = qtys["人杰"] + 1
            end
            races[v] = r
            if (r == "人类") then
                if (qtys[r] == 2) then
                    attr.defend = attr.defend + 10
                elseif (qtys[r] == 3) then
                    attr.defend = attr.defend + 25
                elseif (qtys[r] == 4) then
                    attr.defend = attr.defend + 40
                elseif (qtys[r] == 5) then
                    attr.defend = attr.defend + 75
                end
            elseif (r == "人杰") then
                if (qtys[r] == 2) then
                    attr.defend = attr.defend + 100
                elseif (qtys[r] == 4) then
                    attr.attack_green = attr.attack_green + 1000
                end
            elseif (r == "人王") then
                if (qtys[r] == 2) then
                    attr.defend = attr.defend + 250
                    attr.attack_green = attr.attack_green + 2500
                end
            elseif (r == "矮人") then
                if (qtys[r] == 1) then
                    attrPlayer.exp_ratio = attrPlayer.exp_ratio + 5
                elseif (qtys[r] == 2) then
                    attrPlayer.exp_ratio = attrPlayer.exp_ratio + 7
                elseif (qtys[r] == 4) then
                    attrPlayer.exp_ratio = attrPlayer.exp_ratio + 11
                end
            elseif (r == "血精灵") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "violence",
                            odds = 15,
                            percent = 18
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "violence",
                            odds = 20,
                            percent = 25
                        }
                    )
                elseif (qtys[r] == 5) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "violence",
                            odds = 20,
                            percent = 40
                        }
                    )
                end
            elseif (r == "兽人") then
                if (qtys[r] == 2) then
                    attr.attack_green = attr.attack_green + 40
                elseif (qtys[r] == 3) then
                    attr.attack_green = attr.attack_green + 65
                elseif (qtys[r] == 4) then
                    attr.attack_green = attr.attack_green + 125
                elseif (qtys[r] == 5) then
                    attr.attack_green = attr.attack_green + 325
                    table.insert(attr.attack_damage_type, "fire")
                end
            elseif (r == "巨魔") then
                if (qtys[r] == 2) then
                    attr.attack_speed = attr.attack_speed + 10
                elseif (qtys[r] == 3) then
                    attr.attack_speed = attr.attack_speed + 13
                elseif (qtys[r] == 4) then
                    attr.attack_speed = attr.attack_speed + 16
                elseif (qtys[r] == 5) then
                    attr.attack_speed = attr.attack_speed + 21
                end
            elseif (r == "牛头人") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 8,
                            percent = 13
                        }
                    )
                elseif (qtys[r] == 3) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 11,
                            percent = 16
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 14,
                            percent = 19
                        }
                    )
                elseif (qtys[r] == 5) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 25,
                            percent = 25
                        }
                    )
                end
            elseif (r == "暗夜精灵") then
                if (qtys[r] == 2) then
                    attr.natural_dark = attr.natural_dark + 16
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "dark")
                end
            elseif (r == "德鲁伊") then
                if (qtys[r] == 2) then
                    attr.attack_speed = attr.attack_speed + 25
                elseif (qtys[r] == 4) then
                    attr.attack_speed = attr.attack_speed + 40
                    attr.natural_wind_oppose = attr.natural_wind_oppose + 50
                end
            elseif (r == "亡灵") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_debuff,
                        {
                            attr = "move",
                            odds = 100,
                            val = 4,
                            during = 2.5,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    )
                elseif (qtys[r] == 3) then
                    table.insert(
                        attr.attack_debuff,
                        {
                            attr = "move",
                            odds = 100,
                            val = 5,
                            during = 3,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(attr.attack_damage_type, "wind")
                end
            elseif (r == "娜迦") then
                if (qtys[r] == 1) then
                    attr.natural_water_oppose = attr.natural_water_oppose + 7
                    attr.natural_ice_oppose = attr.natural_ice_oppose + 7
                elseif (qtys[r] == 3) then
                    attr.natural_water_oppose = attr.natural_water_oppose + 13
                    attr.natural_ice_oppose = attr.natural_ice_oppose + 13
                elseif (qtys[r] == 4) then
                    attr.natural_water_oppose = attr.natural_water_oppose + 25
                    attr.natural_ice_oppose = attr.natural_ice_oppose + 25
                end
            elseif (r == "元素") then
                if (qtys[r] == 5) then
                    local vv = 10
                    attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                    attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                    attr.natural_water_oppose = attr.natural_water_oppose + vv
                    attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                    attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                    attr.natural_light_oppose = attr.natural_light_oppose + vv
                    attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                    attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                    attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                    attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                    attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                    attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                    attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                    attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                    attr.natural_god_oppose = attr.natural_god_oppose + vv
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "dark")
                    table.insert(attr.attack_damage_type, "light")
                elseif (qtys[r] == 4) then
                    table.insert(attr.attack_damage_type, "fire")
                    table.insert(attr.attack_damage_type, "soil")
                elseif (qtys[r] == 5) then
                    local vv = 28
                    attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                    attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                    attr.natural_water_oppose = attr.natural_water_oppose + vv
                    attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                    attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                    attr.natural_light_oppose = attr.natural_light_oppose + vv
                    attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                    attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                    attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                    attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                    attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                    attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                    attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                    attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                    attr.natural_god_oppose = attr.natural_god_oppose + vv
                end
            elseif (r == "恶魔") then
                if (qtys[r] == 1) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 2) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 3) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 4) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 5) then
                    attr.damage_extent = attr.damage_extent + 6.66
                end
            elseif (r == "神族") then
                if (qtys[r] == 1) then
                    attr.attack_speed = attr.attack_speed + 30
                elseif (qtys[r] == 2) then
                    attr.natural_god = attr.natural_god + 30
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "god")
                end
            elseif (r == "昆虫") then
                if (qtys[r] == 1) then
                    attr.defend = attr.defend + 50
                elseif (qtys[r] == 2) then
                    attr.resistance = attr.resistance + 30
                elseif (qtys[r] == 3) then
                    attr.toughness = attr.toughness + 3000
                end
            elseif (r == "异兽") then
                if (qtys[r] == 2) then
                    attr.toughness = "+1000"
                elseif (qtys[r] == 3) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "split",
                            odds = 100,
                            range = 400,
                            percent = 10
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "split",
                            odds = 100,
                            range = 500,
                            percent = 10
                        }
                    )
                end
            elseif (r == "幽魂") then
                if (qtys[r] == 2) then
                    attr.avoid = attr.avoid + 10
                elseif (qtys[r] == 2) then
                    attr.avoid = attr.avoid + 20
                elseif (qtys[r] == 3) then
                    attr.avoid = attr.avoid + 25
                end
            elseif (r == "食人魔") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "swim",
                            odds = 10,
                            during = 0.75
                        }
                    )
                elseif (qtys[r] == 5) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "swim",
                            odds = 20,
                            during = 1.25
                        }
                    )
                end
            elseif (r == "地精") then
                if (qtys[r] == 1) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 7
                elseif (qtys[r] == 2) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 10
                elseif (qtys[r] == 3) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 13
                elseif (qtys[r] == 4) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 15
                end
            elseif (r == "龙人") then
                if (qtys[r] == 1) then
                    attr.attack_green = attr.attack_green + 1200
                elseif (qtys[r] == 2) then
                    table.insert(attr.attack_damage_type, "thunder")
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "wind")
                end
            elseif (r == "熊猫") then
                if (qtys[r] == 1) then
                    attr.life = attr.life + 2500
                elseif (qtys[r] == 2) then
                    attr.life = attr.life + 5000
                elseif (qtys[r] == 3) then
                    attr.life = attr.life + 15000
                elseif (qtys[r] == 4) then
                    attr.life = attr.life + 30000
                end
            end
        end
    end
    if (addTowerSkillsRaceAttr[playerIndex] == nil) then
        addTowerSkillsRaceAttr[playerIndex] = {}
        addTowerSkillsRaceAttrPlayer[playerIndex] = {}
    else
        --玩家扣除
        if (addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio > 0) then
            hplayer.subGoldRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio, 0)
        end
        if (addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio > 0) then
            hplayer.subExpRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio, 0)
        end
    end
    --整理旧属性
    local mixAttrs = handleTowerSkillsRaceAttr(addTowerSkillsRaceAttr[playerIndex], attr)
    --新旧交替
    addTowerSkillsRaceAttr[playerIndex] = attr
    addTowerSkillsRaceAttrPlayer[playerIndex] = attrPlayer
    attr = nil
    attrPlayer = nil
    --玩家增加
    if (addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio > 0) then
        hplayer.addGoldRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio, 0)
    end
    if (addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio > 0) then
        hplayer.addExpRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio, 0)
    end
    if (addTowerSkillsRaceAbility[playerIndex] == nil) then
        addTowerSkillsRaceAbility[playerIndex] = {}
    end
    for k, v in pairs(towers) do
        if (addTowerSkillsRaceAbility[playerIndex][k] ~= nil) then
            hskill.del(v, addTowerSkillsRaceAbility[playerIndex][k], 0)
        end
        local index = races[v] .. qtys[races[v]]
        addTowerSkillsRaceAbility[playerIndex][k] = game.thisUnitRaceAbilities[index].ABILITY_ID
        hskill.add(v, addTowerSkillsRaceAbility[playerIndex][k], 0)
        if (hRuntime.unit[v] == nil) then
            hRuntime.unit[v] = {}
        end
        if (hRuntime.unit[v]["raceTeamInit"] == nil) then
            hRuntime.unit[v]["raceTeamInit"] = 1
            if (mixAttrs.new ~= nil) then
                if (his.alive(v)) then
                    hattr.set(v, 0, mixAttrs.new)
                end
            end
        else
            if (mixAttrs.diff.add ~= nil) then
                if (his.alive(v)) then
                    hattr.set(v, 0, mixAttrs.diff.add)
                end
            end
            if (mixAttrs.diff.sub ~= nil) then
                if (his.alive(v)) then
                    hattr.set(v, 0, mixAttrs.diff.sub)
                end
            end
        end
    end
    races = nil
end
