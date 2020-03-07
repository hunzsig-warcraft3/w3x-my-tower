-- 敌军boss受到伤害
bossBeDamage = function(evtData)
    local u = evtData.triggerUnit
    if (his.alive(u) and cj.GetRandomInt(1, 5) == 3) then
        htextTag.style(
            htextTag.create2Unit(u, game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)], 10.00, "", 1, 1.1, 11.00),
            "scale",
            cj.GetRandomReal(-0.05, 0.05),
            0
        )
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        if (game.rule.cur == "yb") then
            hattr.set(
                u,
                1.50,
                {
                    move = "+" .. math.random(60, 90)
                }
            )
        elseif (game.rule.cur == "hz") then
            hattr.set(
                u,
                1.50,
                {
                    move = "+" .. math.random(120, 150)
                }
            )
        end
    end
    if (game.rule.cur == "hz") then
        local sourceUnit = evtData.sourceUnit
        if (sourceUnit ~= nil) then
            if (game.rule.hz.wave >= 60 and cj.GetRandomInt(1, 30) == 7) then
                towerShadowTtg(u, "回音击")
                hskill.swim(
                    {
                        odds = 100,
                        whichUnit = sourceUnit,
                        during = 0.5 + 0.01 * game.rule.hz.wave
                    }
                )
            end
            if (game.rule.hz.wave >= 90 and cj.GetRandomInt(1, 40) == 7) then
                towerShadowTtg(u, "降格打击")
                hattr.set(
                    sourceUnit,
                    10,
                    {
                        str_green = "-" .. math.floor(game.rule.hz.wave / 6),
                        agi_green = "-" .. math.floor(game.rule.hz.wave / 6),
                        int_green = "-" .. math.floor(game.rule.hz.wave / 6)
                    }
                )
            end
            if (game.rule.hz.wave >= 140 and cj.GetRandomInt(1, 50) == 7) then
                towerShadowTtg(u, "恶心粘液")
                hattr.set(
                    sourceUnit,
                    5,
                    {
                        attack_speed = "-" .. (15 + 0.02 * game.rule.hz.wave)
                    }
                )
            end
            if (game.rule.hz.wave >= 180 and cj.GetRandomInt(1, 60) == 7) then
                towerShadowTtg(u, "寂静督视")
                hskill.unarm(
                    {
                        odds = 100,
                        whichUnit = sourceUnit,
                        during = 2 + 0.02 * game.rule.hz.wave
                    }
                )
            end
        end
    end
end
