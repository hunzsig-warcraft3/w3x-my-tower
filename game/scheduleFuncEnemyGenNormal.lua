require "game.scheduleFuncOnEnemyBeDamage"
require "game.scheduleFuncOnEnemyDead"
require "game.scheduleFuncEnemyGenBoss"
require "game.scheduleFuncEnemyGenAward"

-- 出兵
enemyGenYB = function(waiting)
    htime.setTimeout(
        waiting,
        function(t)
            htime.delTimer(t)
            hsound.sound(cg.gg_snd_effect_0004)
            local count = game.rule.yb.perWaveQty
            game.rule.yb.mon = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            htime.setInterval(
                game.rule.yb.fresh,
                function(t2, td2)
                    count = count - 1
                    if (game.runing == false) then
                        htime.delTimer(t2)
                        return
                    end
                    if (count <= 0) then
                        local nextWaitTime = game.rule.yb.waitTime
                        --5波一个boss,7波一个奖励
                        if (math.fmod(game.rule.yb.wave, 5) == 0) then
                            bossGen(game.rule.yb.wave)
                            nextWaitTime = 18
                            game.rule.yb.monLife = game.rule.yb.monLife + game.rule.yb.monLifeInc + hplayer.qty_current
                        end
                        if (game.rule.yb.wave > 2 and math.fmod((game.rule.yb.wave - 2), 5) == 0) then
                            awardGen(game.rule.yb.wave)
                            nextWaitTime = 18
                        end
                        htime.delTimer(t2)
                        if (game.rule.yb.wave >= game.rule.yb.waveEnd) then
                            htime.setInterval(
                                1,
                                function(t3)
                                    if (game.currentMon <= 0) then
                                        htime.delTimer(t3)
                                        hmark.create("war3mapImported\\mark_win.blp", 4.00)
                                        hmsg.echo("通过了" .. game.rule.yb.waveEnd .. "波!|cffffff00恭喜！欢乐！|r，10秒后会退出游戏")
                                        htime.setTimeout(
                                            10,
                                            function(t)
                                                htime.delTimer(t)
                                                hplayer.loop(
                                                    function(p)
                                                        hplayer.victory(p)
                                                    end
                                                )
                                            end
                                        )
                                    end
                                end
                            )
                            return
                        end
                        local gold = game.rule.yb.wave * 75
                        hplayer.loop(
                            function(p, pi)
                                if (his.playing(p)) then
                                    hsound.sound2Player(cg.gg_snd_coin_1, p)
                                    hmsg.echo(hplayer.getSelection(p))
                                    dzSetLumber(p, game.rule.yb.wave)
                                    hplayer.addGold(p, gold, game.playerTower[pi])
                                    local tempGold = cj.R2I(gold * hplayer.getGoldRatio(p) / 100)
                                    hmsg.echo00(
                                        p,
                                        "通过了|cffffff00第" ..
                                            game.rule.yb.wave .. "波|r，你获得了|cffffff00" .. tempGold .. "金|r奖励"
                                    )
                                end
                            end
                        )
                        game.rule.yb.wave = game.rule.yb.wave + 1
                        enemyGenYB(nextWaitTime)
                        return
                    end
                    for k, v in pairs(game.pathPoint) do
                        if (his.playing(hplayer.players[k])) then
                            local u = henemy.create(
                                {
                                    unitId = game.rule.yb.mon,
                                    qty = 1,
                                    x = v[1][1],
                                    y = v[1][2],
                                    facing = k * -90 + 180
                                }
                            )
                            cj.SetUnitPathing(u, false)
                            hattr.set(
                                u,
                                0,
                                {
                                    life = "=" .. (game.rule.yb.monLife * game.rule.yb.wave),
                                    move = "=180"
                                }
                            )
                            game.currentMon = game.currentMon + 1
                            hevent.onBeDamage(u, enemyBeDamage)
                            hevent.onDead(u, enemyDeadYB)
                            cj.IssuePointOrderById(u, 851986, v[2][1], v[2][2])
                        end
                    end
                end
            )
        end
    )
end
enemyGenHZ = function(waiting)
    htime.setTimeout(
        waiting,
        function(t)
            htime.delTimer(t)
            hsound.sound(cg.gg_snd_effect_0004)
            local count = game.rule.hz.perWaveQty
            game.rule.hz.mon = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            htime.setInterval(
                game.rule.hz.fresh,
                function(t2, td2)
                    count = count - 1
                    if (game.runing == false) then
                        htime.delTimer(t2)
                        return
                    end
                    if (count <= 0) then
                        local nextWaitTime = game.rule.hz.waitTime
                        --10波一个boss,13波一个奖励
                        if (math.fmod(game.rule.hz.wave, 10) == 0) then
                            bossGen(game.rule.hz.wave)
                            nextWaitTime = 18
                            game.rule.hz.monLife = game.rule.hz.monLife + game.rule.hz.monLifeInc + hplayer.qty_current
                            if (game.rule.hz.fresh > 0.25) then
                                game.rule.hz.fresh = game.rule.hz.fresh - 0.1
                            end
                        end
                        if (game.rule.hz.wave > 3 and math.fmod((game.rule.hz.wave - 3), 10) == 0) then
                            awardGen(game.rule.hz.wave)
                            nextWaitTime = 18
                            game.rule.hz.monLife = game.rule.hz.monLife + math.floor(0.20 * game.rule.hz.wave)
                            if (game.rule.hz.fresh > 0.25) then
                                game.rule.hz.fresh = game.rule.hz.fresh - 0.05
                            end
                        end
                        htime.delTimer(t2)
                        local gold = game.rule.hz.wave * 100
                        if (gold > 20000) then
                            gold = 20000
                        end
                        game.rule.hz.wave = game.rule.hz.wave + 1
                        hplayer.loop(
                            function(p, pi)
                                if (his.playing(p)) then
                                    hsound.sound2Player(cg.gg_snd_coin_1, p)
                                    hmsg.echo(hplayer.getSelection(p))
                                    dzSetLumber(p, game.rule.hz.wave)
                                    hplayer.addGold(p, gold, game.playerTower[pi])
                                    local tempGold = cj.R2I(gold * hplayer.getGoldRatio(p) / 100)
                                    hmsg.echo00(
                                        p,
                                        "通过了|cffffff00第" ..
                                            game.rule.hz.wave .. "波|r，你获得了|cffffff00" .. tempGold .. "金|r奖励"
                                    )
                                end
                            end
                        )
                        enemyGenHZ(nextWaitTime)
                        return
                    end
                    for k, v in pairs(game.pathPoint) do
                        if (his.playing(hplayer.players[k])) then
                            local u = henemy.create(
                                {
                                    unitId = game.rule.hz.mon,
                                    qty = 1,
                                    x = v[1][1],
                                    y = v[1][2],
                                    facing = k * -90 + 180
                                }
                            )
                            cj.SetUnitPathing(u, false)
                            hattr.set(
                                u,
                                0,
                                {
                                    life = "=" .. (game.rule.hz.monLife * game.rule.hz.wave),
                                    move = "=190"
                                }
                            )
                            game.currentMon = game.currentMon + 1
                            hevent.onBeDamage(u, enemyBeDamage)
                            hevent.onDead(u, enemyDeadHZ)
                            cj.IssuePointOrderById(u, 851986, v[2][1], v[2][2])
                        end
                    end
                end
            )
        end
    )
end
enemyGenDK = function(waiting)
    htime.setTimeout(
        waiting,
        function(t)
            htime.delTimer(t)
            hsound.sound(cg.gg_snd_effect_0004)
            for i = 1, hplayer.qty_max, 1 do
                if (hplayer.getStatus(hplayer.players[i]) == hplayer.player_status.gaming) then
                    game.rule.dk.playerQty[i] = 0
                    game.rule.dk.wave[i] = 1
                    game.rule.dk.mon[i] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
                    game.rule.dk.monLimit[i] = 0
                end
            end
            htime.setInterval(
                game.rule.dk.fresh,
                function(t2, td2)
                    if (game.runing == false) then
                        htime.delTimer(t2)
                        return
                    end
                    for k, v in pairs(game.pathPoint) do
                        if (hplayer.getStatus(hplayer.players[k]) == hplayer.player_status.gaming) then
                            if (game.rule.dk.monLimit[k] < game.rule.dk.perWaveQty) then
                                game.rule.dk.monLimit[k] = game.rule.dk.monLimit[k] + 1
                                local u = henemy.create(
                                    {
                                        unitId = game.rule.dk.mon[k],
                                        qty = 1,
                                        x = v[1][1],
                                        y = v[1][2],
                                        facing = k * -90 + 180
                                    }
                                )
                                cj.SetUnitPathing(u, false)
                                hattr.set(
                                    u,
                                    0,
                                    {
                                        life = "=" .. (game.rule.dk.monLife[k] * game.rule.dk.wave[k]),
                                        move = "=190"
                                    }
                                )
                                game.rule.dk.monData[u] = {
                                    pathIndex = k
                                }
                                game.currentMon = game.currentMon + 1
                                hevent.onBeDamage(u, enemyBeDamage)
                                hevent.onDead(u, enemyDeadDK)
                                cj.IssuePointOrderById(u, 851986, v[2][1], v[2][2])
                            end
                        end
                    end
                end
            )
        end
    )
end
