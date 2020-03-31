-- 敌军受到伤害
enemyBeDamage = function(evtData)
    local u = evtData.triggerUnit
    if (his.alive(u) and math.random(1, 10) == 5) then
        htextTag.style(
            htextTag.create2Unit(u, game.enemyTips[math.random(1, #game.enemyTips)], 10.00, "", 1, 1.1, 11.00),
            "scale",
            math.random(-0.05, 0.05),
            0
        )
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        if (game.rule.cur == "hz") then
            hattr.set(
                u,
                2.50,
                {
                    move = "+" .. math.random(50, 100)
                }
            )
        end
    end
end
