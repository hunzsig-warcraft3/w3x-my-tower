-- 受到伤害
awardBeDamage = function(evtData)
    local u = evtData.triggerUnit
    local sourceUnit = evtData.sourceUnit
    htextTag.style(htextTag.create2Unit(u, "哎呀~", 10.00, "", 1, 1.1, 11.00), "scale", math.random(-0.05, 0.05, true), 0)
    if (sourceUnit ~= nil) then
        local name = hunit.getName(u)
        local damage = evtData.damage
        if (name == "[AWARD]大金币") then
            haward.forUnitGold(sourceUnit, math.floor(damage * 0.14))
        elseif (name == "[AWARD]大本书") then
            haward.forGroupExp(sourceUnit, math.floor(damage * 0.28))
        end
    end
end
