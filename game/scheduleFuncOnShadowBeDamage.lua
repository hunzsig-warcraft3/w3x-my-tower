-- 受到伤害
towerShadowTtgCount = 1
towerShadowTtg = function(u, string)
    htextTag.style(
        htextTag.create2Unit(u, string, 6.9 + onTowerAttackTtgCount * 0.1, "FFFF00", 1, 2, 10),
        "scale",
        0,
        towerShadowTtgCount * 0.05
    )
    towerShadowTtgCount = towerShadowTtgCount + 1
    htime.setTimeout(
        2,
        function(t)
            htime.delTimer(t)
            towerShadowTtgCount = towerShadowTtgCount - 1
        end
    )
end
towerShadowBeDamage = function(evtData)
    local u = evtData.triggerUnit
    local sourceUnit = evtData.sourceUnit
    local playerIndex = hunit.getUserData(u)
    local shadow = game.playerTower[playerIndex]
    local hasShadowCloatItem = false
    for _, itid in ipairs(game.thisShadowCloatItems) do
        if (his.ownItem(u, itid)) then
            hasShadowCloatItem = true
            break
        end
    end
    if (hasShadowCloatItem == true and math.random(1, 10) == 4) then
        towerShadowTtg(u, "影子风衣")
        hskill.invisible(u, 2)
    end
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(shadow, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            local val = v.Val
            level = level * 2 - 1
            if (Name ~= nil) then
                if (Name == "恶心粘液") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        sourceUnit,
                        5,
                        {
                            attack_speed = "-" .. val[1] * level
                        }
                    )
                end
                if (Name == "降格打击") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        sourceUnit,
                        6,
                        {
                            str_green = "-" .. val[1] * level,
                            agi_green = "-" .. val[1] * level,
                            int_green = "-" .. val[1] * level
                        }
                    )
                end
                if (Name == "变相移动") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        4,
                        {
                            move = "+" .. val[1] * level
                        }
                    )
                end
                if (Name == "钢铁身躯") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        6,
                        {
                            defend = "+" .. val[1] * level
                        }
                    )
                end
                if (Name == "回音击" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.swim(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * val[1]
                        }
                    )
                end
                if (Name == "寂静督视" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.unarm(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * val[1]
                        }
                    )
                end
                if (Name == "巫术") then
                    if (math.random(1, 100) <= val[2]) then
                        towerShadowTtg(u, Name)
                        hskill.invulnerable(u, val[3], "Abilities\\Spells\\Orc\\Voodoo\\VoodooAura.mdl")
                    end
                end
                if (Name == "不朽传说") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hskill.invulnerable(u, val[2], "Abilities\\Spells\\Demon\\ReviveDemon\\ReviveDemon.mdl")
                    end
                end
                if (Name == "回光返照" or Name == "自然之力") then
                    if (hunit.getCurLifePercent(u) < 75) then
                        towerShadowTtg(u, Name)
                        hattr.set(u, val[2], {life_back = val[1]})
                    end
                end
                if (Name == "逃命" or Name == "着草" or Name == "加速") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hattr.set(
                            u,
                            val[3],
                            {
                                move = "+" .. val[2]
                            }
                        )
                    end
                end
                if (Name == "潜行" or Name == "隐术") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hskill.invisible(u, val[2])
                    end
                end
                if (Name == "复命" or Name == "涅槃") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hunit.addCurLife(u, val[2])
                    end
                end
            end
        end
    end
end
