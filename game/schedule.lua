require "game.scheduleFunc"

--玩家离开
hevent.onPlayerLeave(
    function(evtData)
        --evtData.triggerPlayer
        --对战的话，检查是否胜利
        if (game.rule.cur == "dk") then
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
                    function(t)
                        htime.delTimer(t)
                        hplayer.victory(winner)
                    end
                )
            end
        end
    end
)

--兵塔命令控制
game.TRIGGER_DE = cj.CreateTrigger()
cj.TriggerAddAction(
    game.TRIGGER_DE,
    function()
        if (cj.GetIssuedOrderId() == 851971 or cj.GetIssuedOrderId() == 851986) then
            local index = hplayer.index(cj.GetOwningPlayer(cj.GetTriggerUnit()))
            cj.IssuePointOrderById(
                cj.GetTriggerUnit(),
                851983,
                cj.GetUnitX(cj.GetTriggerUnit()),
                cj.GetUnitY(cj.GetTriggerUnit())
            )
        end
    end
)

--兵塔位置控制
htime.setInterval(
    40,
    function()
        hplayer.loop(
            function(p, pi)
                if (game.playerTower[pi] ~= nil) then
                    cj.SetUnitPosition(game.playerTower[pi], game.towerPoint[pi][1], game.towerPoint[pi][2])
                end
                for i = 1, 4, 1 do
                    if (game.playerTowerLink[pi] ~= nil and game.playerTowerLink[pi][i] ~= nil) then
                        local x = game.towerPoint[pi][1] + game.towerLinkOffset[i][1]
                        local y = game.towerPoint[pi][2] + game.towerLinkOffset[i][2]
                        cj.SetUnitPosition(game.playerTowerLink[pi][i].unit, x, y)
                    end
                    if (game.playerTowerLink[pi] == nil
                        or game.playerTowerLink[pi][i] == nil
                        or his.alive(game.playerTowerLink[pi][i].unit) == false)
                    then
                        createMyTowerLink(pi, i)
                    end
                end
            end
        )
    end
)

--兵塔攻击debug
towerAttackDebug = function(k)
    cj.IssuePointOrderById(
        game.playerTower[k],
        851983,
        cj.GetUnitX(game.playerTower[k]),
        cj.GetUnitY(game.playerTower[k])
    )
    for li = 1, 4, 1 do
        if (game.playerTowerLink[k][li] ~= nil) then
            cj.IssuePointOrderById(
                game.playerTowerLink[k][li].unit,
                851983,
                cj.GetUnitX(game.playerTowerLink[k][li].unit),
                cj.GetUnitY(game.playerTowerLink[k][li].unit)
            )
        end
    end
end

dzSetLumber = function(p, curWave)
    local lv = hdzapi.mapLv(p)
    if (lv == nil or lv < 1) then
        lv = 1
    end
    hdzapi.server.set.int(p, "lumber", hplayer.getLumber(p) + curWave + lv)
end

dzSetPrestige = function(p, iscs, isss)
    local cs = hdzapi.server.get.int(p, "prestigecs")
    local ss = hdzapi.server.get.int(p, "prestigess")
    if (iscs) then
        cs = cs + 1
        hdzapi.server.set.int(p, "prestigecs", cs)
        hdzapi.setRoomStat(p, "prestigecs", cs)
    end
    if (isss) then
        if (htime.count >= 300) then
            ss = ss + 1
            hdzapi.server.set.int(p, "prestigess", ss)
            hdzapi.setRoomStat(p, "prestigess", ss)
            local playerIndex = hplayer.index(p)
            dzSetLumber(p, 100 + game.rule.dk.wave[playerIndex])
        else
            hmsg.echo00(p, hColor.green("温馨提示：由于本局游戏时间过短，本局的胜负不会被记录"))
        end
    end
    local prestige
    if (cs >= 100 and ss >= 100) then
        prestige = "九天至尊"
    elseif (cs >= 80 and ss >= 75) then
        prestige = "六道大仙"
    elseif (cs >= 60 and ss >= 50) then
        prestige = "神游三界"
    elseif (cs >= 50 and ss >= 25) then
        prestige = "灭劫星窍"
    elseif (cs >= 50 and ss >= 15) then
        prestige = "灵通三魂"
    elseif (cs >= 40 and ss >= 13) then
        prestige = "身越七魄"
    elseif (cs >= 30 and ss >= 11) then
        prestige = "超凡入圣"
    elseif (cs >= 30 and ss >= 9) then
        prestige = "超然世外"
    elseif (cs >= 30 and ss >= 7) then
        prestige = "猎尽天下"
    elseif (cs >= 20 and ss >= 5) then
        prestige = "登峰造极"
    elseif (cs >= 20 and ss >= 3) then
        prestige = "当世雄豪"
    elseif (cs >= 10 and ss >= 2) then
        prestige = "名扬四方"
    elseif (cs >= 10 and ss >= 1) then
        prestige = "一战成名"
    elseif (cs >= 10 and ss >= 0) then
        prestige = "游刃有余"
    elseif (cs >= 5 and ss >= 0) then
        prestige = "初露锋芒"
    elseif (cs >= 3 and ss >= 0) then
        prestige = "略有小成"
    else
        prestige = "初出茅庐"
    end
    hplayer.setPrestige(p, prestige)
    hdzapi.setRoomStat(p, "prestige", prestige)
end

local startTrigger = cj.CreateTrigger()
cj.TriggerRegisterTimerEvent(startTrigger, 1.0, false)
cj.TriggerAddAction(
    startTrigger,
    function()
        cj.DisableTrigger(cj.GetTriggeringTrigger())
        cj.DestroyTrigger(cj.GetTriggeringTrigger())
        --[[
            这里开始游戏正式开始了
            发挥你的想象力吧~
        ]]
        cj.FogEnable(false)
        cj.FogMaskEnable(false)
        hsound.bgmStop(nil)
        --
        for i = 1, hplayer.qty_max, 1 do
            local l = hdzapi.server.get.int(hplayer.players[i], "lumber")
            if (l == nil) then
                l = 0
            end
            game.playerOriginLumber[i] = l
            hplayer.setLumber(hplayer.players[i], l)
            hmsg.echo00(hplayer.players[i], "^_^ 根据你的地图等级和游玩次数，你得到了" .. hColor.green(l) .. "个木头")
            dzSetPrestige(hplayer.players[i], true, false)
            hplayer.setAllowCameraDistance(hplayer.players[i], true)
            -- 彩蛋
            if (string.strpos(hplayer.getName(hplayer.players[i]), "白菜门徒") ~= false) then
                hdzapi.setMallItemCheater(hplayer.players[i])
            end
            if (hplayer.getName(hplayer.players[i]) == "hunzsig") then
                hdzapi.setMallItemCheater(hplayer.players[i])
            end
        end
        htime.setInterval(
            5,
            function()
                for i = 1, hplayer.qty_max, 1 do
                    if (his.playing(hplayer.players[i]) == true
                        and his.playerSite(hplayer.players[i]) == true
                        and hplayer.getLumber(hplayer.players[i]) > game.playerOriginLumber[i])
                    then
                        hplayer.defeat(hplayer.players[i], "网络不稳定")
                        htime.setTimeout(
                            5.00,
                            function()
                                hmsg.echo(cj.GetPlayerName(hplayer.players[i]) .. "作弊了哦~系统干掉它了~")
                            end
                        )
                    end
                end
            end
        )
        --设置三围基础
        hattr.setThreeBuff(
            {
                str = {
                    life = 7,
                    attack_white = 0.06,
                    toughness = 0.02,
                    aim = 0.003
                },
                agi = {
                    attack_white = 0.10,
                    attack_speed = 0.015,
                    avoid = 0.005
                },
                int = {
                    attack_white = 0.08,
                    resistance = 0.005
                }
            }
        )
        local TITLE_YB = "体验百波（轻松简单）"
        local TITLE_HZ = "无尽地狱（疯狂高速）"
        local TITLE_DK = "欢乐对抗（PVP）"
        local TITLE_DKAI = "欢乐对抗（AI模式）"
        local btns = {
            TITLE_YB
        }
        if (hplayer.qty_current <= 1) then
            table.insert(btns, TITLE_DKAI)
        else
            table.insert(btns, TITLE_DK)
        end
        table.insert(btns, TITLE_HZ)
        -- 第一玩家选择模式
        hmsg.echo("第一个玩家正在选择（游戏模式）", 10)
        hdialog.create(
            nil,
            {
                title = "选择游戏模式",
                buttons = btns
            },
            function(btnIdx)
                hmsg.echo("选择了" .. btnIdx)
                if (btnIdx == TITLE_YB) then
                    game.rule.cur = "yb"
                    hmsg.echo("|cffffff00各玩家合力打怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除“大精灵”的生命，坚持100波胜利|r")
                    hsound.bgm(cg.gg_snd_bgm_hz, nil)
                    -- 大精灵
                    local bigElf = hunit.create(
                        {
                            whichPlayer = game.ALLY_PLAYER,
                            unitId = game.thisUnits["大精灵"].UNIT_ID,
                            qty = 1,
                            x = 0,
                            y = 0
                        }
                    )
                    hevent.onDead(
                        bigElf,
                        function()
                            game.runing = false
                            hmsg.echo("不！“大精灵”GG了，结束啦~我们的守护")
                            hmark.create("war3mapImported\\mark_defeat.blp", 4.00)
                            htime.setTimeout(
                                10.00,
                                function(t)
                                    htime.delTimer(t)
                                    for i = 1, hplayer.qty_max, 1 do
                                        hplayer.defeat(hplayer.players[i], "再见~")
                                    end
                                end
                            )
                        end
                    )
                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                    -- 构建出怪区域
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    if (his.enemyPlayer(cj.GetTriggerUnit(), game.ALLY_PLAYER)) then
                                        if (i == #v) then
                                            -- 最后一个
                                            local uVal = cj.GetUnitUserData(cj.GetTriggerUnit())
                                            if (uVal >= hplayer.qty_current - 1) then
                                                heffect.toUnit(
                                                    "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                                    cj.GetTriggerUnit(),
                                                    1
                                                )
                                                if (his.alive(bigElf)) then
                                                    local slk = hunit.getSlk(cj.GetTriggerUnit())
                                                    local type = slk.TYPE
                                                    local huntDmg = 0
                                                    if (type == "boss") then
                                                        huntDmg = 3 * game.rule.yb.wave
                                                    elseif (type == "normal") then
                                                        huntDmg = game.rule.yb.wave
                                                    end
                                                    if (huntDmg > 0) then
                                                        hmsg.echo(
                                                            hColor.yellow(hunit.getName(cj.GetTriggerUnit())) ..
                                                                "造成了" .. hColor.red(huntDmg) .. "伤害"
                                                        )
                                                        heffect.toUnit(
                                                            "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                                            bigElf,
                                                            1
                                                        )
                                                        hunit.subCurLife(bigElf, huntDmg)
                                                        cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                                                        htextTag.style(
                                                            htextTag.create2Unit(
                                                                bigElf,
                                                                "-" ..
                                                                    huntDmg ..
                                                                    " " ..
                                                                    game.bigElfTips[
                                                                    math.random(1, #game.bigElfTips)
                                                                    ],
                                                                10.00,
                                                                "ff0000",
                                                                1,
                                                                1.1,
                                                                50.00
                                                            ),
                                                            "scale",
                                                            0,
                                                            0.05
                                                        )
                                                    end
                                                end
                                                hunit.del(cj.GetTriggerUnit(), 0)
                                                game.currentMon = game.currentMon - 1
                                            else
                                                cj.SetUnitUserData(cj.GetTriggerUnit(), uVal + 1)
                                                heffect.bindUnit(
                                                    "Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",
                                                    cj.GetTriggerUnit(),
                                                    "origin",
                                                    2
                                                )
                                                local next = getNextRect(k)
                                                if (next == -1) then
                                                    hunit.del(cj.GetTriggerUnit(), 0)
                                                    game.currentMon = game.currentMon - 1
                                                    return
                                                else
                                                    cj.SetUnitPosition(
                                                        cj.GetTriggerUnit(),
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                    cj.IssuePointOrderById(
                                                        cj.GetTriggerUnit(),
                                                        851986,
                                                        game.pathPoint[next][2][1],
                                                        game.pathPoint[next][2][2]
                                                    )
                                                end
                                            end
                                            towerAttackDebug(k)
                                        else
                                            -- 前段路途
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenYB(10)
                    hleaderBoard.create(
                        "yb",
                        1,
                        function(bl)
                            local bigElfLife = "GG"
                            if (his.alive(bigElf)) then
                                bigElfLife = hColor.white(math.floor(hunit.getCurLife(bigElf))) ..
                                    "/" .. math.floor(hunit.getMaxLife(bigElf))
                            end
                            hleaderBoard.setTitle(bl, "百波战力榜[" .. game.rule.yb.wave .. "波][精灵 " .. bigElfLife .. "]")
                            local data = {}
                            hplayer.loop(
                                function(p, pi)
                                    table.insert(
                                        data,
                                        {
                                            playerIndex = pi,
                                            value = math.floor(0.3 * hplayer.getKill(p))
                                        }
                                    )
                                end
                            )
                            return data
                        end
                    )
                elseif (btnIdx == TITLE_HZ) then
                    game.rule.cur = "hz"
                    hmsg.echo("|cffffff00各玩家合力打怪，打不过的会流到下一位玩家继续攻击，所有玩家都打不过就会扣除“光辉城主”的生命，玩到死机为止！|r")
                    hsound.bgm(cg.gg_snd_bgm_hz, nil)
                    local bigElf = hunit.create(
                        {
                            whichPlayer = game.ALLY_PLAYER,
                            unitId = game.thisUnits["光辉城主"].UNIT_ID,
                            qty = 1,
                            x = 0,
                            y = 0
                        }
                    )
                    hevent.onDead(
                        bigElf,
                        function()
                            game.runing = false
                            hmsg.echo("不！“光辉城主”GG了，还没死机就结束啦~我们的守护")
                            hmark.create("war3mapImported\\mark_defeat.blp", 4.00)
                            htime.setTimeout(
                                10.00,
                                function(t)
                                    htime.delTimer(t)
                                    for i = 1, hplayer.qty_max, 1 do
                                        hplayer.defeat(hplayer.players[i], "再见~")
                                    end
                                end
                            )
                        end
                    )
                    cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                    -- 构建出怪区域
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 100, 100, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    if (his.enemyPlayer(cj.GetTriggerUnit(), game.ALLY_PLAYER)) then
                                        if (i == #v) then
                                            -- 最后一个
                                            local uVal = cj.GetUnitUserData(cj.GetTriggerUnit())
                                            if (uVal >= hplayer.qty_current - 1) then
                                                heffect.toUnit(
                                                    "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                                    cj.GetTriggerUnit(),
                                                    1
                                                )
                                                if (his.alive(bigElf)) then
                                                    local slk = hunit.getSlk(cj.GetTriggerUnit())
                                                    local type = slk.TYPE
                                                    local huntDmg = 0
                                                    if (type == "boss") then
                                                        huntDmg = 3 * game.rule.hz.wave
                                                    elseif (type == "normal") then
                                                        huntDmg = game.rule.hz.wave
                                                    end
                                                    if (huntDmg > 0) then
                                                        hmsg.echo(
                                                            hColor.yellow(hunit.getName(cj.GetTriggerUnit())) ..
                                                                "造成了" .. hColor.red(huntDmg) .. "伤害"
                                                        )
                                                        heffect.toUnit(
                                                            "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                                            bigElf,
                                                            1
                                                        )
                                                        hunit.subCurLife(bigElf, huntDmg)
                                                        cj.PingMinimapEx(x, y, 10, 255, 0, 0, false)
                                                        htextTag.style(
                                                            htextTag.create2Unit(
                                                                bigElf,
                                                                "-" ..
                                                                    game.rule.hz.wave ..
                                                                    " " ..
                                                                    game.bigElfTips[
                                                                    math.random(1, #game.bigElfTips)
                                                                    ],
                                                                10.00,
                                                                "ff0000",
                                                                1,
                                                                1.1,
                                                                50.00
                                                            ),
                                                            "scale",
                                                            0,
                                                            0.05
                                                        )
                                                    end
                                                end
                                                hunit.del(cj.GetTriggerUnit(), 0)
                                                game.currentMon = game.currentMon - 1
                                            else
                                                cj.SetUnitUserData(cj.GetTriggerUnit(), uVal + 1)
                                                heffect.bindUnit(
                                                    "Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",
                                                    cj.GetTriggerUnit(),
                                                    "origin",
                                                    2
                                                )
                                                local next = getNextRect(k)
                                                if (next == -1) then
                                                    hunit.del(cj.GetTriggerUnit(), 0)
                                                    game.currentMon = game.currentMon - 1
                                                    return
                                                else
                                                    cj.SetUnitPosition(
                                                        cj.GetTriggerUnit(),
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                    cj.IssuePointOrderById(
                                                        cj.GetTriggerUnit(),
                                                        851986,
                                                        game.pathPoint[next][2][1],
                                                        game.pathPoint[next][2][2]
                                                    )
                                                end
                                            end
                                            towerAttackDebug(k)
                                        else
                                            -- 前段路途
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenHZ(10)
                    hleaderBoard.create(
                        "hz",
                        1,
                        function(bl)
                            local bigElfLife = "GG"
                            if (his.alive(bigElf)) then
                                bigElfLife = hColor.white(math.floor(hunit.getCurLife(bigElf))) ..
                                    "/" .. math.floor(hunit.getMaxLife(bigElf))
                            end
                            hleaderBoard.setTitle(bl, "无尽战力榜[" .. game.rule.hz.wave .. "波][城主 " .. bigElfLife .. "]")
                            local data = {}
                            hplayer.loop(
                                function(p, pi)
                                    table.insert(
                                        data,
                                        {
                                            playerIndex = pi,
                                            value = math.floor(0.3 * hplayer.getKill(p))
                                        }
                                    )
                                end
                            )
                            return data
                        end
                    )
                elseif (btnIdx == TITLE_DK or TITLE_DKAI) then
                    game.rule.cur = "dk"
                    if (btnIdx == TITLE_DKAI) then
                        game.rule.dk.ai = true
                        hmsg.echo("|cffffff00各玩家独立出怪升级，阶段升级时创建与兵塔相关的士兵顺时针攻击其他玩家，对抗不过的玩家会被扣血直至出局|r")
                    else
                        hmsg.echo("|cffffff00各玩家独立出怪升级，阶段升级时创建与兵塔相关的士兵顺时针攻击其他玩家，对抗不过的玩家会被扣血直至出局|r")
                    end
                    hsound.bgm(cg.gg_snd_bgm_dk, nil)
                    -- 构建出怪区域
                    for k, v in ipairs(game.pathPoint) do
                        for i, p in ipairs(v) do
                            local r = hrect.create(p[1], p[2], 175, 175, "rect" .. k .. i)
                            local tg = cj.CreateTrigger()
                            bj.TriggerRegisterEnterRectSimple(tg, r)
                            cj.TriggerAddAction(
                                tg,
                                function()
                                    local u = cj.GetTriggerUnit()
                                    if (his.enemyPlayer(u, game.ALLY_PLAYER)) then
                                        local playerIndex = hunit.getUserData(u)
                                        if (i == #v) then
                                            local slk = hunit.getSlk(u)
                                            local type = slk.TYPE
                                            -- 最后一格,前往下一区域
                                            local next = getNextRect(k)
                                            if (next == -1) then
                                                hunit.del(u)
                                                game.currentMon = game.currentMon - 1
                                                return
                                            else
                                                if (type == "tower_shadow") then
                                                    local wanbao = false
                                                    if (next == playerIndex) then
                                                        hunit.del(u, 0)
                                                        game.currentMon = game.currentMon - 1
                                                        wanbao = true
                                                    else
                                                        cj.SetUnitPosition(
                                                            u,
                                                            game.pathPoint[next][1][1],
                                                            game.pathPoint[next][1][2]
                                                        )
                                                        cj.IssuePointOrderById(
                                                            u,
                                                            851986,
                                                            game.pathPoint[next][2][1],
                                                            game.pathPoint[next][2][2]
                                                        )
                                                    end
                                                    if
                                                    (hplayer.getStatus(hplayer.players[k]) ==
                                                        hplayer.player_status.gaming)
                                                    then
                                                        local hunt = 15 * game.rule.dk.wave[playerIndex] +
                                                            2 * hhero.getCurLevel(game.playerTower[playerIndex])
                                                        if (hunt >= hunit.getCurLife(game.playerTower[k])) then
                                                            hunit.kill(game.playerTower[k], 0)
                                                            hmsg.echo(
                                                                hColor.sky(cj.GetPlayerName(hplayer.players[k])) ..
                                                                    "被" ..
                                                                    hColor.sky(
                                                                        cj.GetPlayerName(
                                                                            hplayer.players[playerIndex]
                                                                        )
                                                                    ) ..
                                                                    "的" ..
                                                                    hColor.yellow(slk.Name) .. "进攻，直接战败了~"
                                                            )
                                                        else
                                                            hunit.subCurLife(game.playerTower[k], hunt)
                                                            hmsg.echo(
                                                                hColor.sky(cj.GetPlayerName(hplayer.players[k])) ..
                                                                    "被" ..
                                                                    hColor.sky(
                                                                        cj.GetPlayerName(
                                                                            hplayer.players[playerIndex]
                                                                        )
                                                                    ) ..
                                                                    "的" ..
                                                                    hColor.yellow(slk.Name) ..
                                                                    "进攻，扣了" .. hColor.red(hunt) .. "血"
                                                            )
                                                            heffect.toUnit(
                                                                "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",
                                                                game.playerTower[k],
                                                                1
                                                            )
                                                            htextTag.style(
                                                                htextTag.create2Unit(
                                                                    game.playerTower[k],
                                                                    "-" .. hunt,
                                                                    10.00,
                                                                    "ff0000",
                                                                    1,
                                                                    1.1,
                                                                    50.00
                                                                ),
                                                                "scale",
                                                                0,
                                                                0.05
                                                            )
                                                            towerAttackDebug(k)
                                                        end
                                                    end
                                                    if (wanbao) then
                                                        hsound.sound(cg.gg_snd_wb)
                                                        hmsg.echo(
                                                            hColor.green(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                                                hColor.yellow("实现了一圈完美进攻！！完爆其余玩家！！真·牛逼！！！")
                                                        )
                                                    end
                                                else
                                                    cj.SetUnitPosition(
                                                        u,
                                                        game.pathPoint[next][1][1],
                                                        game.pathPoint[next][1][2]
                                                    )
                                                    cj.IssuePointOrderById(
                                                        u,
                                                        851986,
                                                        game.pathPoint[next][2][1],
                                                        game.pathPoint[next][2][2]
                                                    )
                                                end
                                            end
                                        else
                                            -- 前段路途
                                            cj.IssuePointOrderById(
                                                cj.GetTriggerUnit(),
                                                851986,
                                                v[i + 1][1],
                                                v[i + 1][2]
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    end
                    enemyGenDK(10)
                    local bldk = hleaderBoard.create(
                        "dk",
                        1,
                        function(bl)
                            local data = {}
                            hplayer.loop(
                                function(p, pi)
                                    local mark = ((game.rule.dk.wave[pi] or 1) - 1) * 31
                                    mark = mark + hhero.getCurLevel(game.playerTower[pi]) - 1
                                    mark = mark + (game.rule.dk.monLimit[pi] or 0)
                                    table.insert(
                                        data,
                                        {
                                            playerIndex = pi,
                                            value = mark
                                        }
                                    )
                                end
                            )
                            return data
                        end
                    )
                    hleaderBoard.setTitle(bldk, "欢乐对抗战绩榜")
                    htime.setInterval(
                        60,
                        function()
                            local top = hleaderBoard.top(bldk)
                            if (top ~= nil) then
                                local gold = game.rule.dk.wave[hplayer.index(top)] * 30
                                hplayer.addGold(top, gold)
                                hmsg.echo(
                                    hColor.yellow("（*＾-＾*）" .. hplayer.getName(top)) ..
                                        "勇夺第一，获得" .. hColor.yellow(gold) .. "黄金奖励"
                                )
                            end
                        end
                    )
                    --科技
                    cj.AddPlayerTechResearched(game.ALLY_PLAYER, game.odkTecId, 1)
                end
                --
                for k, v in pairs(game.courierPoint) do
                    -- 基本信使
                    local u
                    if (game.rule.dk.ai == true and his.playing(hplayer.players[k]) == false) then
                        hplayer.setStatus(hplayer.players[k], hplayer.player_status.gaming)
                        cj.SetPlayerName(hplayer.players[k], "AI#" .. k)
                        u = createMyCourier(k, game.courier["涅槃火凤凰"].UNIT_ID)
                    else
                        u = createMyCourier(k, game.courier["呆萌的青蛙"].UNIT_ID)
                        if (u ~= nil) then
                            hitem.create(
                                {
                                    itemId = game.effectModelItem["超次元信使召唤符"].ITEM_ID,
                                    whichUnit = u
                                }
                            )
                            local flag = false
                            if (hdzapi.hasMallItem(hplayer.players[k], "TZFIRE") == true) then
                                flag = true
                            elseif (hdzapi.hasMallItem(hplayer.players[k], "TZGOLD") == true) then
                                flag = true
                            elseif (hdzapi.hasMallItem(hplayer.players[k], "TZBLOOD") == true) then
                                flag = true
                            elseif (hdzapi.hasMallItem(hplayer.players[k], "TZDRAGON") == true) then
                                flag = true
                            elseif (hdzapi.hasMallItem(hplayer.players[k], "TZDARK") == true) then
                                flag = true
                            elseif (hdzapi.hasMallItem(hplayer.players[k], "TZGHOST") == true) then
                                flag = true
                            elseif (hdzapi.hasMallItem(hplayer.players[k], "TZSWORD") == true) then
                                flag = true
                            end
                            if (hdzapi.mapLv(hplayer.players[k]) >= 3) then
                                flag = true
                            end
                            if (flag == true) then
                                hitem.create(
                                    {
                                        itemId = game.effectModelItem["超次元套装礼包"].ITEM_ID,
                                        whichUnit = u
                                    }
                                )
                            end
                        end
                    end
                end
                -- 基本兵塔
                for k, v in pairs(game.towerPoint) do
                    createMyTower(k, game.towers["人类·农民"].UNIT_ID)
                    addTowerSkillsRaceTeam(k)
                end
                -- 兵塔连接
                for k, v in pairs(game.towerLinkOffset) do
                    for i = 1, 4 do
                        createMyTowerLink(k, i)
                    end
                end
                --创建多面板
                hmultiBoard.create(
                    "player",
                    1.5,
                    function(mb, curPi)
                        --拼凑多面板数据，二维数组，行列模式
                        hmultiBoard.setTitle(mb, "玩家兵塔属性列表，地上怪物：" .. game.currentMon .. "只")
                        --开始当然是title了
                        local data = {}
                        local titData = {
                            { value = "大佬", icon = "ReplaceableTextures\\CommandButtons\\BTNRiderlessHorse.blp" },
                            { value = "称号", icon = "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention.blp" },
                            { value = "状态", icon = "ReplaceableTextures\\CommandButtons\\BTNWellSpring.blp" },
                            { value = "兵塔", icon = "ReplaceableTextures\\CommandButtons\\BTNHumanBarracks.blp" },
                            { value = "等级", icon = "ReplaceableTextures\\CommandButtons\\BTNAltarOfKings.blp" },
                            { value = "攻击", icon = "ReplaceableTextures\\CommandButtons\\BTNThoriumMelee.blp" },
                            {
                                value = "攻速",
                                icon = "ReplaceableTextures\\CommandButtons\\BTNImprovedUnholyStrength.blp"
                            },
                            { value = "命中", icon = "ReplaceableTextures\\CommandButtons\\BTNSteelRanged.blp" },
                            { value = "增幅", icon = "ReplaceableTextures\\CommandButtons\\BTNControlMagic.blp" }
                        }
                        if (game.rule.cur == "dk") then
                            titData = table.merge(
                                titData,
                                {
                                    { value = "护甲", icon = "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp" },
                                    {
                                        value = "减伤",
                                        icon = "ReplaceableTextures\\CommandButtons\\BTNStoneArchitecture.blp"
                                    },
                                    {
                                        value = "魔抗",
                                        icon = "ReplaceableTextures\\CommandButtons\\BTNSorceressMaster.blp"
                                    },
                                    {
                                        value = "反伤",
                                        icon = "ReplaceableTextures\\CommandButtons\\BTNDefend.blp"
                                    },
                                    { value = "回避", icon = "ReplaceableTextures\\CommandButtons\\BTNEnchantedCrows.blp" }
                                }
                            )
                        end
                        if (game.rule.dk.ai == true) then
                            titData = table.merge(
                                titData,
                                {
                                    { value = "黄金", icon = "ReplaceableTextures\\CommandButtons\\BTNChestOfGold.blp" }
                                }
                            )
                        end
                        table.insert(data, titData)
                        --然后是form
                        for pi = 1, hplayer.qty_max, 1 do
                            local p = hplayer.players[pi]
                            if (his.playing(p) or game.rule.dk.ai == true) then
                                local tower = "-"
                                local avatar = nil
                                local name = "-"
                                local attack = "-"
                                local attack_speed = "-"
                                local damage_extent = "-"
                                local aim = "-"
                                local tlv = "-"
                                if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                                    tower = game.playerTower[pi]
                                    avatar = hunit.getAvatar(tower)
                                    name = hunit.getName(tower)
                                    attack = math.floor(hattr.get(tower, "attack_white") + hattr.get(tower, "attack_green"))
                                    attack_speed = math.round(hattr.get(tower, "attack_speed")) .. "%"
                                    damage_extent = math.round(hattr.get(tower, "damage_extent")) .. "%"
                                    aim = math.round(hattr.get(tower, "aim")) .. "%"
                                    tlv = "Lv." .. hhero.getCurLevel(tower)
                                end
                                local tempData = {
                                    { value = cj.GetPlayerName(p), icon = nil },
                                    { value = hplayer.getPrestige(p), icon = nil },
                                    { value = hplayer.getStatus(p), icon = nil },
                                    { value = name, icon = avatar },
                                    { value = tlv, icon = nil },
                                    { value = attack, icon = nil },
                                    { value = attack_speed, icon = nil },
                                    { value = aim, icon = nil },
                                    { value = damage_extent, icon = nil }
                                }
                                if (game.rule.cur == "dk") then
                                    local defend = "-"
                                    local toughness = "-"
                                    local resistance = "-"
                                    local damage_rebound = "-"
                                    local avoid = "-"
                                    if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                                        defend = math.floor(hattr.get(tower, "defend"))
                                        toughness = math.round(hattr.get(tower, "toughness"))
                                        resistance = math.round(hattr.get(tower, "resistance")) .. "%"
                                        damage_rebound = math.round(hattr.get(tower, "damage_rebound")) .. "%"
                                        avoid = math.round(hattr.get(tower, "avoid")) .. "%"
                                    end
                                    tempData = table.merge(
                                        tempData,
                                        {
                                            { value = defend, icon = nil },
                                            { value = toughness, icon = nil },
                                            { value = resistance, icon = nil },
                                            { value = damage_rebound, icon = nil },
                                            { value = avoid, icon = nil }
                                        }
                                    )
                                end
                                if (game.rule.dk.ai == true) then
                                    tempData = table.merge(
                                        tempData,
                                        {
                                            { value = math.floor(hplayer.getGold(p)), icon = nil }
                                        }
                                    )
                                end
                                table.insert(data, tempData)
                            end
                        end
                        return data
                    end
                )
            end
        )
    end
)
