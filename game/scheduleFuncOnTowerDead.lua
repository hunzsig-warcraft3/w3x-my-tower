-- 兵塔挂了
onTowerDead = function(evtData)
    local u = evtData.triggerUnit
    local index = hplayer.index(cj.GetOwningPlayer(u))
    htexture.mark("war3mapImported\\mark_defeat.blp", 4.00, hplayer.players[index])
    hsound.sound(cg.gg_snd_tluo)
    hplayer.setStatus(hplayer.players[index], "战败")
    hplayer.clearUnit(hplayer.players[index])
    local czb = hunit.create(
        {
            register = false,
            whichPlayer = cj.GetOwningPlayer(u),
            unitId = game.couriersDefeat,
            x = game.towerPoint[index][1],
            y = game.towerPoint[index][2]
        }
    )
    --锤子兵AI
    MAYBE_AI.hammer(czb)
    --检查是否胜利
    local isWin = 0
    local winner
    hplayer.loop(
        function(p, pi)
            if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                isWin = isWin + 1
                winner = p
            end
        end
    )
    if (isWin == 1) then
        game.runing = false
        dzSetPrestige(winner, false, true)
        htexture.mark("war3mapImported\\mark_win.blp", 4.00, winner)
        hplayer.setStatus(winner, "胜利")
        htime.setTimeout(
            10.00,
            function(t)
                htime.delTimer(t)
                for i = 1, hplayer.qty_max, 1 do
                    if (hplayer.players[i] == winner) then
                        hplayer.victory(winner)
                    else
                        hplayer.defeat(hplayer.players[i], "战败~")
                    end
                end
            end
        )
    end
end
