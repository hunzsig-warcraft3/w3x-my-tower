local AB_HOTKEY_KV = {
    A = { 0, 1 },
    S = { 1, 1 },
    D = { 2, 1 },
    F = { 3, 1 },
    Z = { 0, 2 },
    X = { 1, 2 },
    C = { 2, 2 },
    V = { 3, 2 },
}

local blue = {
    "X", "C", "V",
}
local yellow = {
    "S", "D",
}
local purple = {
    "F",
}

--link单位的技能
LINK_ABILITY_STACK = {}
local LINK_ABILITY = {
    {
        Name = "辅塔",
        Ubertip = "这是一个辅助兵塔，协助C位主塔作战，失去了英雄的身份",
        Art = "war3mapImported\\icon_pas_Ability_Warrior_ShieldGuard.blp",
        BUTTON = { 1, 1 },
        TYPE = "desc",
    },
    {
        Name = "等级说明",
        Ubertip = "辅塔没有提升等级的收益，只有基础攻击和天赋加成",
        Art = "war3mapImported\\icon_pas_Holy_ArdentDefender.blp",
        BUTTON = { 2, 1 },
        TYPE = "desc",
    },
    {
        Name = "上场",
        Ubertip = hColor.yellow("换他上场！"),
        Art = "war3mapImported\\icon_ability_Holy_SealOfFury.blp",
        BUTTON = { 3, 1 },
        TYPE = "action",
        ORDER = "webon",
    },
    {
        Name = "天赋说明",
        Ubertip = "辅塔的天赋影响辅塔的攻击力，越高越给力",
        Art = "war3mapImported\\icon_pas_Helmet_69.blp",
        BUTTON = { 1, 2 },
        TYPE = "desc",
    },
    {
        Name = "技能说明",
        Ubertip = "辅塔不能共享技能书的效果，但拥有自身的技能",
        Art = "war3mapImported\\icon_pas_Holy_ProclaimChampion.blp",
        BUTTON = { 2, 2 },
        TYPE = "desc",
    },
    {
        Name = "进攻说明",
        Ubertip = "辅塔不会在对战时进攻，只会在自己区域作战",
        Art = "war3mapImported\\icon_pas_Holy_LastingDefense.blp",
        BUTTON = { 3, 2 },
        TYPE = "desc",
    },
}
for k, v in ipairs(LINK_ABILITY) do
    local obj
    if(v.TYPE == "desc")then
        obj = slk.ability.Aamk:new("link_ability_" .. v.Name)
        obj.hero = 0
        obj.levels = 1
        obj.DataA1 = 0
        obj.DataB1 = 0
        obj.DataC1 = 0
    elseif(v.TYPE == "action")then
        obj = slk.ability.ANcl:new("link_ability_" .. v.Name)
        obj.Order = v.ORDER
        obj.DataF1 = v.ORDER
        obj.Hotkey = ""
        obj.hero = 0
        obj.levels = 1
        obj.DataA1 = 0
        obj.DataB1 = 0
        obj.DataC1 = 1
        obj.DataD1 = 0.01
        obj.Cool1 = 0
        obj.Cost1 = 0
        obj.CasterArt = ""
        obj.EffectArt = ""
        obj.TargetArt = ""  
    end
    obj.Name = v.Name
    obj.Tip = v.Name
    obj.Ubertip = v.Ubertip
    obj.Art = v.Art
    obj.Buttonpos1 = v.BUTTON[1]
    obj.Buttonpos2 = v.BUTTON[2]
    v.ABILITY_ID = obj:get_id()
    table.insert(LINK_ABILITY_STACK,v.ABILITY_ID)
    ?>
    call SaveStr(hash_myslk, StringHash("link_ability"), <?=k?>, "<?=string.addslashes(json.stringify(v))?>")
    <?
end
?>
call SaveInteger(hash_myslk, StringHash("link_ability"), -1, <?=#LINK_ABILITY?>)
<?

-- abilities
-- 处理空技能槽
for _, v in ipairs(blue) do
    local obj = slk.ability.Aamk:new("abilities_empty_" .. v)
    local Name = "蓝技能槽 - [" .. hColor.sky(v) .. "]"
    local Tip = "蓝技能槽 - [" .. hColor.sky(v) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = "使用技能书可以习得新的蓝点技能"
    obj.Buttonpos1 = AB_HOTKEY_KV[v][1]
    obj.Buttonpos2 = AB_HOTKEY_KV[v][2]
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = "war3mapImported\\icon_pas_Skillz_Blue.blp"
    local ab = {
        Name = Name,
        ABILITY_ID = obj:get_id(),
        ABILITY_BTN = v,
    }
    ?>
    call SaveStr(hash_myslk, StringHash("abilities_empty"), StringHash("<?=v?>"), "<?=string.addslashes(json.stringify(ab))?>")
    <?
end
for _, v in ipairs(yellow) do
    local obj = slk.ability.Aamk:new("abilities_empty_" .. v)
    local Name = "黄技能槽 - [" .. hColor.yellow(v) .. "]"
    local Tip = "黄技能槽 - [" .. hColor.yellow(v) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = "使用技能书可以习得新的黄点技能"
    obj.Buttonpos1 = AB_HOTKEY_KV[v][1]
    obj.Buttonpos2 = AB_HOTKEY_KV[v][2]
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp"
    local ab = {
        Name = Name,
        ABILITY_ID = obj:get_id(),
        ABILITY_BTN = v,
    }
    ?>
call SaveStr(hash_myslk, StringHash("abilities_empty"), StringHash("<?=v?>"), "<?=string.addslashes(json.stringify(ab))?>")
<?
end
for _, v in ipairs(purple) do
    local obj = slk.ability.Aamk:new("abilities_empty_" .. v)
    local Name = "紫技能槽 - [" .. hColor.purple(v) .. "]"
    local Tip = "紫技能槽 - [" .. hColor.purple(v) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = "使用技能书可以习得新的紫点技能"
    obj.Buttonpos1 = AB_HOTKEY_KV[v][1]
    obj.Buttonpos2 = AB_HOTKEY_KV[v][2]
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = "war3mapImported\\icon_pas_Skillz_Purple.blp"
    local ab = {
        Name = Name,
        ABILITY_ID = obj:get_id(),
        ABILITY_BTN = v,
    }
    ?>
call SaveStr(hash_myslk, StringHash("abilities_empty"), StringHash("<?=v?>"), "<?=string.addslashes(json.stringify(ab))?>")
<?
end

local level_limit = 4
local ab_index = 0
local ab_item_index = 0
local abilities = {}
for _,v in ipairs(abilitiesBlue) do
    v.ABILITY_COLOR = "blue"
    table.insert(abilities,v)
end
for _,v in ipairs(abilitiesYellow) do
    v.ABILITY_COLOR = "yellow"
    table.insert(abilities,v)
end
for _,v in ipairs(abilitiesPurple) do
    v.ABILITY_COLOR = "purple"
    table.insert(abilities,v)
end
-- 处理技能(书)数据
for _, v in ipairs(abilities) do
    -- 这一轮是技能等级的
    for level = 1, level_limit, 1 do
        -- 这一轮是处理类型的
        local ABILITY_COLOR = blue
        if (v.ABILITY_COLOR == "yellow") then
            ABILITY_COLOR = yellow
        elseif (v.ABILITY_COLOR == "purple") then
            ABILITY_COLOR = purple
        elseif (v.ABILITY_COLOR == "blue") then
            ABILITY_COLOR = blue
        end
        local Ubertip = v.Ubertip or ""
        v.Val = v.Val or {}
        if (Ubertip ~= "") then
            for vali = 1, 5, 1 do
                local valmatch = "{val#" .. vali .. "}"
                if (v.Val[vali] == nil) then
                    v.Val[vali] = 0
                end
                if (string.find(Ubertip, valmatch) ~= nil) then
                    Ubertip = string.gsub(Ubertip, valmatch, "|cffffcc00" .. (v.Val[vali]*(level*2-1)) .. "|r")
                else
                    vali = 99
                end
            end
        end
        if(v.ODK == nil)then
            v.ODK = false
        end
        if(v.ODK == true)then
            Ubertip = Ubertip .. hColor.red("|n！此技能仅在对抗有明显效果")
        end
        for _, s in ipairs(ABILITY_COLOR) do
            ab_index = ab_index + 1
            local obj = slk.ability.Aamk:new("abilities_" .. v.Name .. "_" .. level .. "_" .. s)
            local Name = v.Name .. "[Lv" .. level .. "]" .. "[" .. s .. "]"
            local Tip
            if (v.ABILITY_COLOR == "yellow") then
                Tip = v.Name .. " - [|cffffcc00等级 " .. level .. "|r]" .. " - [" .. hColor.yellow(s) .. "]"
            elseif (v.ABILITY_COLOR == "blue") then
                Tip = v.Name .. " - [|cffffcc00等级 " .. level .. "|r]" .. " - [" .. hColor.sky(s) .. "]"
            elseif (v.ABILITY_COLOR == "purple") then
                Tip = v.Name .. " - [|cffffcc00等级 " .. level .. "|r]" .. " - [" .. hColor.purple(s) .. "]"
            end
            obj.Name = Name
            obj.Tip = Tip
            obj.Ubertip = Ubertip
            obj.Buttonpos1 = AB_HOTKEY_KV[s][1]
            obj.Buttonpos2 = AB_HOTKEY_KV[s][2]
            obj.hero = 0
            obj.levels = 1
            obj.DataA1 = 0
            obj.DataB1 = 0
            obj.DataC1 = 0
            obj.Art = v.Art
            v.INDEX = v.Name .."#".. level
            v.ABILITY_ID = obj:get_id()
            v.ABILITY_BTN = s
            v.ABILITY_LEVEL = level
            ?>
            call SaveStr(hash_myslk, StringHash("abilities"), <?=ab_index?>, "<?=string.addslashes(json.stringify(v))?>")
            <?
        end
        -- 物品
        if (v.ABILITY_COLOR ~= "all") then
            ab_item_index = ab_item_index + 1
            local iobj = slk.item.gold:new("abilities_items_" .. v.Name .. "_" .. level)
            if (v.ABILITY_COLOR == 'blue') then
                iobj.Name = "[技能书·蓝]《" .. level .. "级" .. v.Name .. "》"
                iobj.Tip = "点击学习蓝技能书：|cffffcc00《" .. level .. "级" .. v.Name .. "》|r"
                iobj.file = "Objects\\InventoryItems\\tomeBlue\\tomeBlue.mdl"
                iobj.abilList = UsedID[3][2]
                iobj.cooldownID = UsedID[3][2]
            elseif (v.ABILITY_COLOR == 'yellow') then
                iobj.Name = "[技能书·黄]《" .. level .. "级" .. v.Name .. "》"
                iobj.Tip = "点击学习黄技能书：|cffffcc00《" .. level .. "级" .. v.Name .. "》|r"
                iobj.file = "Objects\\InventoryItems\\tomeBrown\\tomeBrown.mdl"
                iobj.abilList = UsedID[4][2]
                iobj.cooldownID = UsedID[4][2]
            elseif (v.ABILITY_COLOR == 'purple') then
                iobj.Name = "[技能书·紫]《" .. level .. "级" .. v.Name .. "》"
                iobj.Tip = "点击学习紫技能书：|cffffcc00《" .. level .. "级" .. v.Name .. "》|r"
                iobj.file = "Objects\\InventoryItems\\tome\\tome.mdl"
                iobj.abilList = UsedID[5][2]
                iobj.cooldownID = UsedID[5][2]
            end
            iobj.UberTip = "能学习到技能：|n" .. Ubertip
            iobj.Description = "技能书：" .. Ubertip
            iobj.Art = v.Art
            iobj.scale = 1.00
            iobj.goldcost = 60
            iobj.lumbercost = 0
            iobj.sellable = 1
            iobj.class = "Charged"
            iobj.powerup = 0
            iobj.perishable = 1
            local hitem = {
                INDEX = v.Name .."#".. level,
                Name = v.Name .."#".. level,
                DIALOG_TITLE = "选位置学习:"..v.Name.."["..level.."级]",
                Art = v.Art,
                goldcost = goldcost,
                lumbercost = 0,
                perishable = 1,
                ITEM_ID = iobj:get_id(),
                ABILITY_ID = v.ABILITY_ID,
                ABILITY_COLOR = v.ABILITY_COLOR,
                ABILITY_LEVEL = level,
                WEIGHT = 0,
                OVERLIE = 999,
                TRIGGER_CALL = v.TRIGGER_CALL or nil,
                ODK = v.ODK,
            }
            ?>
            call SaveStr(hash_myslk, StringHash("abilitiesItems"), <?=ab_item_index?>, "<?=string.addslashes(json.stringify(hitem))?>")
            <?
        end
    end
end
?>
call SaveInteger(hash_myslk, StringHash("abilities_qty"), 0, <?=ab_index?>)
call SaveInteger(hash_myslk, StringHash("abilities_item_qty"), 0, <?=ab_item_index?>)
<?