-- 兵塔挂了
onTowerDead = function(evtData)
    local u = evtData.triggerUnit
    local index = hplayer.index(cj.GetOwningPlayer(u))
    hmark.create("war3mapImported\\mark_defeat.blp", 4.00, hplayer.players[index])
    hplayer.setStatus(hplayer.players[index], "战败")
    hplayer.clearUnit(hplayer.players[index])
    hunit.create(
        {
            whichPlayer = cj.GetOwningPlayer(u),
            unitId = game.couriers_defeat,
            x = game.towerPoint[index][1],
            y = game.towerPoint[index][2]
        }
    )
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
        hmark.create("war3mapImported\\mark_win.blp", 4.00, winner)
        hplayer.setStatus(winner, "胜利")
        htime.setTimeout(
            10.00,
            function(t, td)
                htime.delDialog(td)
                htime.delTimer(t)
                for i = 1, hplayer.qty_max, 1 do
                    if (hplayer.players[i] == winner) then
                        hplayer.victory(winner)
                    else
                        hplayer.defeat(hplayer.players[index], "战败~")
                    end
                end
            end
        )
    end
end
