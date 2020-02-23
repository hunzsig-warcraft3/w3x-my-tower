-- 加载h-lua
require "h-lua"

-- 加载本地图的global
require "game.global"

-- 加载本地图的SLK系统
require "game.slk"

-- 加载test
require "game.test"

-- 预读 preread（为了有效您需要注意hRuntime.register.ability的初始化 abilitiesKV）
local u = cj.CreateUnit(hplayer.player_passive, hslk_global.unit_token, 0, 0, 0)
for id, _ in pairs(hslk_global.abilitiesKV) do
    cj.UnitAddAbility(u, id)
    cj.UnitRemoveAbility(u, id)
end
hunit.del(u)

-- 镜头模式
hcamera.setModel("normal")

-- 设定玩家
hplayer.qty_max = 4 -- 最大玩家数
hplayer.convert_ratio = 100 -- 换算比率，100金 -> 1木

-- 设定友军
game.ALLY_PLAYER = hplayer.players[12]

-- 设定敌军
henemy.setName("拆塔小能手")
-- henemy.setShareSight(true)
henemy.setColor(cj.ConvertPlayerColor(12)) -- black
henemy.setPlayer(hplayer.players[5])
henemy.setPlayer(hplayer.players[6])
henemy.setPlayer(hplayer.players[7])
henemy.setPlayer(hplayer.players[8])
henemy.setPlayer(hplayer.players[9])
henemy.setPlayer(hplayer.players[10])
henemy.setPlayer(hplayer.players[11])
cj.SetPlayerColor(hplayer.players[2], CONST_PLAYER_COLOR.YELLOW)
cj.SetPlayerColor(hplayer.players[4], CONST_PLAYER_COLOR.GREEN)

-- 写点任务提醒玩家
hquest.create(
    {
        title = "群1040851943",
        content = "有什么建议或者bug都可以来群反馈！",
        icon = "ReplaceableTextures\\CommandButtons\\BTNPenguin.blp"
    }
)
hquest.create(
    {
        title = "我塔非凡极速入门",
        content = {
            " - 打怪捡石头，换塔学技能书",
            " - 设置4座辅助塔，可以帮助主塔攻防",
            " - 5个兵塔可以组成种族联动，实现更强的能力",
            " - 天赋9级最高，越高基础攻击和生命越强",
            " - 对战模式有AI，尽管去玩！一样有奖励"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNTomeRed.blp"
    }
)
hquest.create(
    {
        title = "木头哪里来?",
        content = {
            " - 木头是免费的，不需要充钱，良心作者的我",
            " - 每一局结束，下一局都可以获得当前通关等级的木头数（任何模式）",
            " - “对战”模式胜者额外得到100木！(AI模式也可以有哦~)",
            " - 地图等级也可以在下一局获得木头，例如你5级，下一局获得的木头会+5",
            " - 如果你此局的木头不使用，会全部留存到下一局",
            " - 木头使用就是永久消失哦~"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNBundleOfLumber.blp"
    }
)
hquest.create(
    {
        title = "对战AI的能力",
        content = {
            " - 极速捡东西",
            " - 智能判断兵塔石能力替换塔位",
            " - 自动学技能、不抽书",
            " - 信使会抽兵塔石、买装备和升华",
            " - 最终的最终只会同种族战略",
            " - 兵塔会使用剑、斧敕令"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNGlyph.blp"
    }
)
hquest.create(
    {
        title = "隐藏攻略！",
        content = {
            " - 兵塔石除了可以换塔还可以吃掉升级",
            " - 天赋抽到9之后，同一个单位不会洗掉",
            " - 有些技能只有对战有用，注意看物品说明",
            " - 种族的“队伍”效果根据情况你的能力会延时生效",
            " - 辅助塔的天赋比主塔好用"
        },
        icon = "ReplaceableTextures\\CommandButtons\\BTNTomeBrown.blp"
    }
)

-- 商店
THIS_SHOPS = {}
for spi, sp in ipairs(game.shopsConfig) do
    THIS_SHOPS[spi] =
        hunit.create(
        {
            register = false,
            whichPlayer = game.ALLY_PLAYER,
            unitId = game.shops[sp[1]].UNIT_ID,
            qty = 1,
            x = sp[2][1],
            y = sp[2][2]
        }
    )
end

-- game start(这里需要用时间事件延时N秒，不然很多动作会在初始化失效)
require "game.schedule"
