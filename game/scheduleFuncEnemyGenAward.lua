require "game.scheduleFuncOnAwardDead"
require "game.scheduleFuncOnAwardBeDamage"
-- 出兵(award)
awardGenForOne = function(curWave, pi, awardMon)
    if (awardMon == nil) then
        awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    end
    local u =
        henemy.create(
        {
            unitId = awardMon.UNIT_ID,
            qty = 1,
            x = game.pathPoint[pi][1][1],
            y = game.pathPoint[pi][1][2],
            facing = pi * -90 + 180
        }
    )
    cj.SetUnitPathing(u, false)
    cj.IssuePointOrderById(u, 851986, game.pathPoint[pi][2][1], game.pathPoint[pi][2][2])
    hattr.set(
        u,
        0,
        {
            life = "=99999",
            move = "=200",
            defend = "=" .. curWave * 3,
            toughness = "=" .. curWave * 10,
            resistance = "=" .. curWave * 1,
            avoid = "=" .. curWave * 0.25,
            swim_oppose = "=" .. curWave * 0.2,
            fetter_oppose = "=" .. curWave * 0.2,
            lightning_chain_oppose = "=" .. curWave * 0.1,
            natural_fire_oppose = "=" .. curWave * 0.06,
            natural_water_oppose = "=" .. curWave * 0.06,
            natural_ice_oppose = "=" .. curWave * 0.06,
            natural_wind_oppose = "=" .. curWave * 0.06,
            natural_light_oppose = "=" .. curWave * 0.05,
            natural_dark_oppose = "=" .. curWave * 0.05,
            natural_wood_oppose = "=" .. curWave * 0.05,
            natural_thunder_oppose = "=" .. curWave * 0.05,
            natural_soil_oppose = "=" .. curWave * 0.04,
            natural_poison_oppose = "=" .. curWave * 0.04,
            natural_ghost_oppose = "=" .. curWave * 0.04,
            natural_metal_oppose = "=" .. curWave * 0.04,
            natural_dragon_oppose = "=" .. curWave * 0.03,
            natural_insect_oppose = "=" .. curWave * 0.02,
            natural_god_oppose = "=" .. curWave * 0.01
        }
    )
    if (game.rule.cur == "dk") then
        if (game.rule.dk.ai == true) then
            hunit.setPeriod(u, 100)
        else
            hunit.setPeriod(u, 25 * hplayer.qty_current)
        end
    else
        hunit.setPeriod(u, 30)
    end
    game.currentMon = game.currentMon + 1
    hevent.onDead(u, awardDead)
    hevent.onBeDamage(u, awardBeDamage)
    if (awardMon.Name == "大金币") then
        hmark.create("war3mapImported\\mark_award_gold.blp", 4.00, hplayer.players[pi])
    elseif (awardMon.Name == "大本书") then
        hmark.create("war3mapImported\\mark_award_exp.blp", 4.00, hplayer.players[pi])
    end
end
awardGen = function(curWave)
    local awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    for k, v in pairs(game.pathPoint) do
        if (hplayer.getStatus(hplayer.players[k]) == hplayer.player_status.gaming) then
            awardGenForOne(curWave, k, awardMon)
        end
    end
end
