-- towers

--兵塔变敌军单位
local createTowerShadowUnit = function(v,towersTi,tlv)
    local obj = slk.unit.hfoo:new("this_tower_shadow_" .. v.Name)
    obj.Name = "[影子兵塔]["..tlv.."阶]" .. v.Name
    obj.upgrades = ""
    obj.file = v.file
    obj.Art = v.Art
    obj.modelScale = v.modelScale or 1.00
    obj.scale = v.scale or 1.00
    obj.HP = 100
    obj.spd = 100
    obj.sight = 500
    obj.nsight = 500
    obj.unitSound = v.unitSound or ""
    obj.weapsOn = 0
    local movetp = v.movetp or "foot"
    local moveHeight = v.moveHeight or 0
    if(movetp == 'fly')then
        moveHeight = 250
    end
    obj.movetp = movetp --移动类型
    obj.moveHeight = moveHeight --移动高度
    obj.moveFloor = moveHeight * 0.25 --最低高度
    obj.regenHP = 0
    obj.regenType = ""
    obj.def = 0
    local abl = v.abilList
    if(abl ~= nil)then
        if(type(abl) == "string")then
            abl = string.explode(',', abl)
        elseif(type(abl) ~= "table")then
            abl = {}
        end
    end
    if(abl == nil or #abl ==0)then
        abl = {
            towerSpxKV["封印枷锁之一"],
            towerSpxKV["封印枷锁之二"]
        }
    elseif(#abl == 1)then
        table.insert( abl, towerSpxKV["封印枷锁之二"] )
    end
    obj.abilList = string.implode(",",abl)
    v.TYPE = "tower_shadow"
    v.UNIT_ID = obj:get_id()
    ?>
    call SaveStr(hash_myslk, StringHash("towers_shadow"), <?=towersTi?>, "<?=string.addslashes(json.stringify(v))?>")
    <?
end

--
towers = {
    E = towers_e,
    D = towers_d,
    C = towers_c,
    B = towers_b,
    A = towers_a,
    S = towers_s,
    SS = towers_ss,
    SSS = towers_sss
}
local towersTi = 0
for j=1,1,1 do
    for tlv, tow in pairs(towers) do
        if tow ~= nil then
            for i, v in pairs(tow) do
                towersTi = towersTi + 1
                local thisIndex = v.Name .. '_' .. j
                -- 处理塔基数据
                local Ubertip = v.Ubertip
                local obj = slk.unit.Hpal:new("towers_" .. thisIndex)
    
                Primary = v.Primary or "STR"
                v.STR = v.STR or 1
                v.AGI = v.AGI or 1
                v.INT = v.INT or 1
                local tempPower = 0
                local tempAttack = 0
                local tempAttackWhite = 0
                local tempAttackGreen = 0
                if (tlv == "E") then
                    tempPower = 20 + math.random(-2,3)
                    tempAttack = 30 + math.random(-1,4)
                elseif (tlv == "D") then
                    tempPower = 30 + math.random(-3,4)
                    tempAttack = 60 + math.random(-2,6)
                elseif (tlv == "C") then
                    tempPower = 45 + math.random(-4,6)
                    tempAttack = 90 + math.random(-4,8)
                elseif (tlv == "B") then
                    tempPower = 60 + math.random(-4,6)
                    tempAttack = 150 + math.random(-6,10)
                elseif (tlv == "A") then
                    tempPower = 80 + math.random(-5,8)
                    tempAttack = 220 + math.random(-8,13)
                elseif (tlv == "S") then
                    tempPower = 100 + math.random(-6,9)
                    tempAttack = 350 + math.random(-10,15)
                elseif (tlv == "SS") then
                    tempPower = 140 + math.random(-7,11)
                    tempAttack = 450 + math.random(-15,20)
                elseif (tlv == "SSS") then
                    tempPower = 180 + math.random(-8,15)
                    tempAttack = 600 + math.random(-25,75)
                end
                if(Primary == "STR")then
                    v.STR = math.floor(tempPower * 0.06 * math.random(7,12))
                    v.AGI = math.floor(tempPower * 0.025 * math.random(5,9))
                    v.INT = math.floor(tempPower * 0.025 * math.random(5,9))
                    tempAttackWhite = tempPower * 0.1 *math.random(7,11) + 10 * math.random()
                    tempAttackGreen = tempPower - tempAttackWhite + 10 * math.random()
                elseif(Primary == "AGI")then
                    v.STR = math.floor(tempPower * 0.035 * math.random(5,8))
                    v.AGI = math.floor(tempPower * 0.06 * math.random(7,11))
                    v.INT = math.floor(tempPower * 0.025 * math.random(3,8))
                    tempAttackWhite = tempPower * 0.1 *math.random(9,12) + 20 * math.random()
                    tempAttackGreen = tempPower - tempAttackWhite
                elseif(Primary == "INT")then
                    v.STR = math.floor(tempPower * 0.03 * math.random(7,10))
                    v.AGI = math.floor(tempPower * 0.02 * math.random(5,9))
                    v.INT = math.floor(tempPower * 0.06 * math.random(8,12))
                    tempAttackGreen = tempPower * 0.1 *math.random(9,13) + 10 * math.random()
                    tempAttackWhite = tempPower - tempAttackGreen
                end
                tempAttackWhite = tempAttackWhite * 1.1 * ((v.cool1 or 2.00) / (1.30+math.random()))
                tempAttackGreen = tempAttackGreen * 1.1 * ((v.cool1 or 2.00) / (1.30+math.random()))
                if(tempAttackWhite < 0)then
                    tempAttackWhite = 0
                end
                if(tempAttackGreen < 0)then
                    tempAttackGreen = 0
                end
                v.STRplus = v.STR * 0.30
                v.AGIplus = v.AGI * 0.30
                v.INTplus = v.INT * 0.30
                v.ATTACK_WHITE = math.floor(tempAttackWhite)
                v.ATTACK_GREEN = math.floor(tempAttackGreen)
                v.RACE = string.explode("·",v.Name)[1]
                local ThreeTotal = v.STR + v.AGI + v.INT
                local coolMark = math.floor(100 / (v.cool1 or 2.00))
                local TowerMark = math.floor(
                    v.STR + v.AGI + v.INT 
                    + v.ATTACK_WHITE + v.ATTACK_GREEN 
                    + coolMark
                ) --评定
                --
                Ubertip = Ubertip .. "|n|cffccffcc阶级：" .. tlv .. "|r"
                Ubertip = Ubertip .. "|n|cffff0000攻击类型：" .. CONST_WEAPON_TYPE[v.weapTp1] .. "(" .. v.cool1 .. "秒/击)|r"
                Ubertip = Ubertip .. "|n|cffff8080物攻点数：" .. v.ATTACK_WHITE.."|r"
                Ubertip = Ubertip .. "|n|cffccffff魔攻点数：" .. v.ATTACK_GREEN.."|r"
                if (Primary == "STR") then
                    Ubertip = Ubertip .. "|n|cffffff00力量：" .. v.STR .. "(+" .. v.STRplus .. ") *|r"
                else
                    Ubertip = Ubertip .. "|n|cffffffcc力量：" .. v.STR .. "(+" .. v.STRplus .. ")|r"
                end
                if (Primary == "AGI") then
                    Ubertip = Ubertip .. "|n|cffffff00敏捷：" .. v.AGI .. "(+" .. v.AGIplus .. ") *|r"
                else
                    Ubertip = Ubertip .. "|n|cffffffcc敏捷：" .. v.AGI .. "(+" .. v.AGIplus .. ")|r"
                end
                if (Primary == "INT") then
                    Ubertip = Ubertip .. "|n|cffffff00智力：" .. v.INT .. "(+" .. v.INTplus .. ") *|r"
                else
                    Ubertip = Ubertip .. "|n|cffffffcc智力：" .. v.INT .. "(+" .. v.INTplus .. ")|r"
                end
                Ubertip = Ubertip .. "|n|cffcc99ff评定："..TowerMark.."分|r"
                obj.Hotkey = ""
                obj.tilesets = 1
                obj.hostilePal = 0
                obj.Requires = "" --需求,全部无限制，用代码限制
                obj.Requirescount = 1
                obj.Requires1 = ""
                obj.Requires2 = ""
                obj.upgrade = ""
                obj.collision = 0.00
                obj.unitShadow = "ShadowFlyer"
                obj.Buttonpos1 = 0
                obj.Buttonpos2 = 0
                obj.death = 0.10
                obj.turnRate = 1.00
                obj.acquire = v.acquire or 749.00
                obj.weapsOn = 1
                obj.race = "human"
                obj.deathType = 0
                obj.fused = 0
                obj.sides1 = 5 --骰子面
                obj.dice1 = 1 --骰子数量
                obj.regenMana = 0.00
                obj.regenHP = 0.00
                obj.stockStart = 0
                obj.stockRegen = 0
                obj.stockMax = 1
                obj.collision = 16 --接触体积
                obj.def = v.def or 0.00 -- 护甲
                obj.sight = v.sight or 1000 -- 白天视野
                obj.nsight = v.nsight or 1000 -- 夜晚视野
                local targs1 = "vulnerable,ground,ward,structure,organic,mechanical,tree,debris,air" --攻击目标
                obj.targs1 = targs1
                obj.EditorSuffix = "#" .. tlv
                obj.Propernames = tlv .. "级兵塔"
                local abl = v.abilList
                if(abl ~= nil)then
                    if(type(abl) == "string")then
                        abl = string.explode(',', abl)
                    elseif(type(abl) ~= "table")then
                        abl = {}
                    end
                end
                if(abl == nil or #abl ==0)then
                    abl = {
                        towerSpxKV["封印枷锁之一"],
                        towerSpxKV["封印枷锁之二"]
                    }
                elseif(#abl == 1)then
                    table.insert( abl, towerSpxKV["封印枷锁之二"] )
                end
                obj.abilList = string.implode(",",abl)
                obj.heroAbilList = ""
                obj.nameCount = v.nameCount or 1
                if (v.weapTp1 == "msplash" or v.weapTp1 == "artillery") then
                    --溅射/炮火
                    obj.Farea1 = v.Farea1 or 1
                    obj.Qfact1 = v.Qfact1 or 0.1
                    obj.Qarea1 = v.Qarea1 or 350
                    obj.Hfact1 = v.Hfact1 or 0.25
                    obj.Harea1 = v.Harea1 or 200
                    obj.splashTargs1 = targs1 .. ",enemies"
                end
                if (v.weapTp1 == "mbounce") then
                    --弹射
                    obj.Farea1 = v.Farea1 or 350
                    obj.targCount1 = v.targCount1 or 4
                    obj.damageLoss1 = v.damageLoss1 or 0.10
                    obj.splashTargs1 = targs1 .. ",enemies"
                end
                if (v.weapTp1 == "mline") then
                    --穿透
                    obj.spillRadius = v.spillRadius or 150
                    obj.spillDist1 = v.spillDist1 or 300
                    obj.damageLoss1 = v.damageLoss1 or 0.10
                    obj.splashTargs1 = targs1 .. ",enemies"
                end
                if (v.weapTp1 == "aline") then
                    --炮火穿透
                    obj.Farea1 = v.Farea1 or 1
                    obj.Qfact1 = v.Qfact1 or 0.1
                    obj.Qarea1 = v.Qarea1 or 350
                    obj.Hfact1 = v.Hfact1 or 0.25
                    obj.Harea1 = v.Harea1 or 200
                    obj.spillRadius = v.spillRadius or 150
                    obj.spillDist1 = v.spillDist1 or 300
                    obj.damageLoss1 = v.damageLoss1 or 0.10
                    obj.splashTargs1 = targs1 .. ",enemies"
                end
                obj.Tip = "选择 " .. v.Name
                obj.Name = v.Name
                obj.Awakentip = "复活 " .. v.Name
                obj.Revivetip = "复活 " .. v.Name
                obj.Tip = "召唤 " .. v.Name
                obj.Ubertip = Ubertip
                obj.unitSound = v.unitSound -- 声音
                obj.modelScale = v.modelScale --模型缩放
                obj.file = v.file --模型
                obj.fileVerFlags = v.fileVerFlags or 0
                obj.Art = v.Art --头像
                obj.scale = v.scale or 1.00 --选择圈
                local movetp = v.movetp or "foot"
                local moveHeight = v.moveHeight or 0
                if(movetp == 'fly')then
                    moveHeight = 250
                end
                obj.movetp = movetp --移动类型
                obj.moveHeight = moveHeight --移动高度
                obj.moveFloor = moveHeight * 0.25 --最低高度
                obj.spd = 100
                obj.backSw1 = v.backSw1 or 0.500
                obj.dmgpt1 = v.dmgpt1 or 0.500
                obj.rangeN1 = v.rangeN1 or 750
                obj.cool1 = v.cool1 or 2.00
                obj.armor = "Flesh" -- 被击声音
                obj.targType = "ground" --作为目标类型
                obj.Missileart = v.Missileart -- 箭矢模型
                obj.Missilespeed = 1100 -- 箭矢速度
                obj.Missilearc = v.Missilearc or 0.05
                obj.weapTp1 = v.weapTp1 or "normal" --攻击类型
                obj.weapType1 = "" --攻击声音
                obj.Primary = Primary
                obj.dmgplus1 = 1 -- 基础攻击
                obj.showUI1 = 0 -- 不显示攻击按钮
                obj.STR = v.STR
                obj.AGI = v.AGI
                obj.INT = v.INT
                obj.STRplus = v.STRplus
                obj.AGIplus = v.AGIplus
                obj.INTplus = v.INTplus
                v.INDEX = thisIndex
                v.TOWER_POWER = tlv
                v.UNIT_ID = obj:get_id()
                -- 塔基物品
                local iobj = slk.item.gold:new("towers_items_" .. thisIndex)
                iobj.Name = "[" .. tlv .. "][" .. v.Name .. "]"
                iobj.Tip = "点击替换兵塔：[" .. v.Name .. "]"
                iobj.UberTip = Ubertip .. "|n * 无论兵种是否一致，使用后兵塔会较前提升1级！"
                iobj.Description = Ubertip
                iobj.Art = v.Art
                iobj.scale = 1.10
                iobj.selSize = 80
                iobj.goldcost = math.floor(TowerMark * 0.7)
                iobj.lumbercost = 0
                iobj.sellable = 1
                iobj.cooldownID = UsedID.Tower
                iobj.file = "war3mapImported\\item_Stone.mdl"
                iobj.abilList = UsedID.Tower
                iobj.perishable = 1
                iobj.powerup = 0
                local hitem = {
                    INDEX = thisIndex,
                    Name = v.Name,
                    Art = v.Art,
                    goldcost = 0,
                    lumbercost = 0,
                    perishable = 1,
                    powerup = 0,
                    WEIGHT = 0,
                    OVERLIE = 999,
                    ITEM_ID = iobj:get_id(),
                    UNIT_ID = v.unitID,
                    TOWER_POWER = tlv,
                }
                ?>
                call SaveStr(hash_myslk, StringHash("towers"), <?=towersTi?>, "<?=string.addslashes(json.stringify(v))?>")
                call SaveStr(hash_myslk, StringHash("towersItems"), <?=towersTi?>, "<?=string.addslashes(json.stringify(hitem))?>")
                <?
                --shadow
                createTowerShadowUnit(v,towersTi,tlv)
                --塔基的属性说明
                local obj = slk.ability.Aamk:new("towerOriginAbli_" .. thisIndex)
                local Name = "[兵塔参数]" .. v.Name
                local Tip = v.Name
                obj.Name = Name
                obj.Tip = Tip
                obj.Ubertip = Ubertip
                obj.Buttonpos1 = 0
                obj.Buttonpos2 = 0
                obj.hero = 0
                obj.levels = 1
                obj.DataA1 = 0
                obj.DataB1 = 0
                obj.DataC1 = 0
                obj.Art = v.Art
                local ab = {
                    ABILITY_ID = obj:get_id(),
                    INDEX = thisIndex,
                }
                ?>
                call SaveStr(hash_myslk, StringHash("abilitiies_tower_origins"), <?=towersTi?>, "<?=string.addslashes(json.stringify(ab))?>")
                <?
            end
        end
    end
end

?>
call SaveInteger(hash_myslk, StringHash("towers"), -1, <?=towersTi?>)
<?