--SLK系统

-- tower 兵塔/兵塔物品/兵塔技能/shadow
game.towersLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("towers"), -1)
for i = 1, game.towersLen, 1 do
    --tower
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers"), i)
    local jv = json.parse(v)
    game.towers[jv.INDEX] = jv
    hRuntime.register.unit(jv)
    --item
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towersItems"), i)
    jv = json.parse(v)
    jv.I_TYPE = "tower"
    hRuntime.register.item(jv)
    game.towersItems[jv.INDEX] = jv
    if (game.thisOptionTowerPowerItem[jv.TOWER_POWER] == nil) then
        game.thisOptionTowerPowerItem[jv.TOWER_POWER] = {}
    end
    table.insert(game.thisOptionTowerPowerItem[jv.TOWER_POWER], jv)
    --shadow
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers_shadow"), i)
    jv = json.parse(v)
    game.towersShadow[jv.TOWER_ID] = jv
    hRuntime.register.unit(jv)
end
--tower abli
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_spx_ab"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_spx_ab"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    table.insert(game.towersOriginSkill, jv)
end
--tower summon
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_summon"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_summon"), i)
    local jv = json.parse(v)
    game.towersSummon[jv.Name] = jv
    hRuntime.register.unit(jv)
end

--shop
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("shops"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("shops"), i)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.shops[jv.Name] = jv
end

-- courier 信使
game.courierLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers"), -1)
for i = 1, game.courierLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers"), i)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.courier[jv.INDEX] = jv
end
--信使技能
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers_ab"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers_ab"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
end

--特效s
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_shadow_effect"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_shadow_effect"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.effectModel[jv.INDEX] = jv
end
len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_shadow_effect_item"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_shadow_effect_item"), i)
    local jv = json.parse(v)
    jv.I_TYPE = "effect_model"
    hRuntime.register.item(jv)
    game.effectModelItem[jv.INDEX] = jv
end

-- unit 其他单位
local thisUnitNames = {
    "大精灵",
    "河草",
    "光辉城主",
    "空位"
}
for _, name in ipairs(thisUnitNames) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisunit"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisUnits[name] = jv
end

-- enemy 敌人单位
game.thisEnemysLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemys"), -1)
for k = 1, game.thisEnemysLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemys"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemys[k] = jv
end

-- enemy boss 敌人BOSS
game.thisEnemysBossLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemysboss"), -1)
for k = 1, game.thisEnemysBossLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemysboss"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemysBoss[k] = jv
end

-- enemy boss 敌人AWRAD
game.thisEnemysAwardLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemysaward"), -1)
for k = 1, game.thisEnemysAwardLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemysaward"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemysAward[k] = jv
end

-- 等级技能
game.thisUnitLevelAbilitiesLen = 9
for i = 0, game.thisUnitLevelAbilitiesLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_unit_level"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisUnitLevelAbilities[i] = jv
end

-- 种族技能
game.thisUnitRaceAbilitiesLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_unit_race"), -1)
for i = 1, game.thisUnitRaceAbilitiesLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_unit_race"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisUnitRaceAbilities[jv.INDEX] = jv
end

-- 空技能
local thisEmptyAbilitiesName = {
    "S",
    "D",
    "F",
    "X",
    "C",
    "V"
}
game.thisEmptyAbilitiesLen = #thisEmptyAbilitiesName
for _, name in ipairs(thisEmptyAbilitiesName) do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_empty"), cj.StringHash(name))
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisEmptyAbilities[name] = jv
end

--link技能
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("link_ability"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("link_ability"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
end

-- 技能/技能书
local abilitiesQty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_qty"), 0)
local abilitiesItemQty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_item_qty"), 0)
for i = 1, abilitiesQty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    if (game.thisOptionAbility[jv.INDEX] == nil) then
        game.thisOptionAbility[jv.INDEX] = {}
    end
    game.thisOptionAbility[jv.INDEX][jv.ABILITY_BTN] = jv
end
for i = 1, abilitiesItemQty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilitiesItems"), i)
    local jv = json.parse(v)
    jv.I_TYPE = "ability"
    hRuntime.register.item(jv)
    if (game.thisOptionAbilityItem[jv.ABILITY_COLOR] == nil) then
        game.thisOptionAbilityItem[jv.ABILITY_COLOR] = {}
    end
    if (game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] == nil) then
        game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] = {}
    end
    if (game.thisOptionAbilityItemNODK[jv.ABILITY_COLOR] == nil) then
        game.thisOptionAbilityItemNODK[jv.ABILITY_COLOR] = {}
    end
    if (game.thisOptionAbilityItemNODK[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] == nil) then
        game.thisOptionAbilityItemNODK[jv.ABILITY_COLOR][jv.ABILITY_LEVEL] = {}
    end
    table.insert(game.thisOptionAbilityItem[jv.ABILITY_COLOR][jv.ABILITY_LEVEL], jv)
    if (jv.ODK ~= true) then
        table.insert(game.thisOptionAbilityItemNODK[jv.ABILITY_COLOR][jv.ABILITY_LEVEL], jv)
    end
end

--物品
local itemQty = cj.LoadInteger(cg.hash_myslk, cj.StringHash("items"), -1)
for i = 1, itemQty, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("items"), i)
    local jv = json.parse(v)
    hRuntime.register.item(jv)
    if (jv.I_TYPE == "combo") then
        if (game.thisComboItem[jv.LEVEL] == nil) then
            game.thisComboItem[jv.LEVEL] = {}
        end
        if (game.thisComboItemNODK[jv.LEVEL] == nil) then
            game.thisComboItemNODK[jv.LEVEL] = {}
        end
        table.insert(game.thisComboItem[jv.LEVEL], jv)
        if (jv.ODK ~= true) then
            table.insert(game.thisComboItemNODK[jv.LEVEL], jv)
        end
        if (string.strpos(jv.Name, "影子风衣") ~= false) then
            table.insert(game.thisShadowCloatItems, jv.ITEM_ID)
        end
    elseif (jv.I_TYPE == "equip") then
        if (game.thisEquipItem[jv.LEVEL] == nil) then
            game.thisEquipItem[jv.LEVEL] = {}
        end
        if (game.thisEquipItemNODK[jv.LEVEL] == nil) then
            game.thisEquipItemNODK[jv.LEVEL] = {}
        end
        table.insert(game.thisEquipItem[jv.LEVEL], jv)
        if (jv.ODK ~= true) then
            table.insert(game.thisEquipItemNODK[jv.LEVEL], jv)
        end
    end
end

--战败小兵
game.couriersDefeat = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers_defeat"), 0)

--ODK科技
game.odkTecId = cj.LoadInteger(cg.hash_myslk, cj.StringHash("odk_tec_id"), -1)

--
cj.FlushParentHashtable(cg.hash_myslk)
