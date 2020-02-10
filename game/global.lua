game = {
    ALLY_PLAYER = nil,
    TRIGGER_DE_POINT = nil,
    bigElfTips = {
        "给点力撒~",
        "哎哟好痛~",
        "痛阿痛~",
        "守住呀~",
        "咋回事~",
        "奥力给~",
        "噢不~",
        "又失守了~",
        "不敢相信~"
    },
    enemyTips = {
        "大力点~",
        "不痛~",
        "嘿嘿没死~",
        "大难不死",
        "我浪故我在~",
        "我走啦~",
        "奥力给~",
        "噢不~",
        "我逃~",
        "我逃走~",
        "逃走~",
        "老是打我~",
        "lucky~",
        "飞毛腿~",
        "留得青山在...",
        "求心理阴影...",
        "加速~",
        "加速加速~",
        "可以可以~",
        "习惯就好~",
        "不痛不痒~",
        "WTF~"
    },
    runing = true,
    rule = {
        yb = {
            perWaveQty = 18,
            wave = 1,
            waveEnd = 100,
            fresh = 1.2,
            waitTime = 8,
            mon = nil,
            monLife = 50,
            monLifeInc = 10
        },
        hz = {
            perWaveQty = 18,
            wave = 1,
            fresh = 0.9,
            waitTime = 10,
            mon = nil,
            monLife = 50,
            monLifeInc = 11
        },
        dk = {
            perWaveQty = 10,
            playerQty = {},
            wave = {},
            fresh = 2.5,
            mon = {},
            monLimit = {},
            monData = {},
            ai = false,
            monLife = {
                25,
                25,
                25,
                25
            }
        },
        cur = "yb"
    },
    currentMon = 0,
    playerOriginLumber = {},
    playerTower = {},
    playerTowerLink = {},
    playerTowerLevel = {},
    playerTowerEffectModel = {},
    playerCourier = {},
    towersLen = 0,
    towers = {},
    towersShadow = {},
    towersItems = {},
    towersItemsKV = {},
    towersAbilities = {},
    towersSummon = {},
    towersOriginSkill = {},
    thisUnits = {},
    thisEnemys = {},
    thisEnemysLen = 0,
    thisEnemysBoss = {},
    thisEnemysBossLen = 0,
    thisEnemysAward = {},
    thisEnemysAwardLen = 0,
    shops = {},
    courierLen = 0,
    courier = {},
    courierItem = {},
    effectModel = {},
    effectModelItem = {},
    thisUnitPowerAbilities = {},
    thisUnitPowerAbilitiesLen = 0,
    thisUnitLevelAbilities = {},
    thisUnitLevelAbilitiesLen = 0,
    thisUnitRaceAbilities = {},
    thisUnitRaceAbilitiesLen = 0,
    thisEmptyLink = {},
    thisEmptyAbilities = {},
    thisEmptyAbilitiesLen = 0,
    thisOptionAbility = {},
    thisOptionAbilityItem = {},
    thisOptionItem2Abli = {},
    thisOptionTowerPowerItem = {},
    thisComboItem = {},
    -- 左上第一顺时针设定的
    towerPoint = {
        {-1536, 1536},
        {1536, 1536},
        {1536, -1536},
        {-1536, -1536}
    },
    towerLinkOffset = {
        {-192, -192},
        {-192, 192},
        {192, 192},
        {192, -192}
    },
    courierPoint = {
        {-1280, 1280},
        {1280, 1280},
        {1280, -1280},
        {-1280, -1280}
    },
    pathPoint = {
        {{-1408, 256}, {-1408, 1024}, {-2048, 1024}, {-2048, 2048}, {-1024, 2048}, {-1024, 1408}, {-256, 1408}},
        {{256, 1408}, {1024, 1408}, {1024, 2048}, {2048, 2048}, {2048, 1024}, {1408, 1024}, {1408, 128}},
        {{1408, -384}, {1408, -1024}, {2048, -1024}, {2048, -2048}, {1024, -2048}, {1024, -1408}, {256, -1408}},
        {{-256, -1408}, {-1024, -1408}, {-1024, -2048}, {-2048, -2048}, {-2048, -1024}, {-1408, -1024}, {-1408, -256}}
    },
    shopsConfig = {
        {"稀奇古怪黑科技", {-1088, 1088}},
        {"稀奇古怪黑科技", {1088, 1088}},
        {"稀奇古怪黑科技", {1088, -1088}},
        {"稀奇古怪黑科技", {-1088, -1088}},
        {"神秘之地", {0, -512}},
        {"信使之笼", {0, 512}},
        {"冷兵器磨坊", {-512, 512}},
        {"火器铁铺", {-512, 0}},
        {"科技车间", {-512, -512}},
        {"奇异屋", {512, 512}},
        {"铁箱子", {512, 0}},
        {"营地", {512, -512}}
    }
}
