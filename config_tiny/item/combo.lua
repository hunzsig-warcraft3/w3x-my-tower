items_combo = {}
items_combo_pre = "升华"

table.insert(
    items_combo,
    {
        Name = items_combo_pre .. "绿之石",
        Description = "green",
        Art = "war3mapImported\\icon_item_Jewelcrafting_Gem_01.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        lv = 140,
        ATTR = {
            natural_poison = "+150",
            natural_poison_oppose = "+150"
        },
        ODK = true
    }
)
table.insert(
    items_combo,
    {
        Name = items_combo_pre .. "橘之石",
        Description = "orange",
        Art = "war3mapImported\\icon_item_Jewelcrafting_Gem_02.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        lv = 140,
        ATTR = {
            natural_insect = "+150",
            natural_insect_oppose = "+150"
        },
        ODK = true
    }
)
table.insert(
    items_combo,
    {
        Name = items_combo_pre .. "黄之石",
        Description = "yellow",
        Art = "war3mapImported\\icon_item_Jewelcrafting_Gem_03.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        lv = 140,
        ATTR = {
            natural_dragon = "+150",
            natural_dragon_oppose = "+150"
        },
        ODK = true
    }
)
table.insert(
    items_combo,
    {
        Name = items_combo_pre .. "红之石",
        Description = "red",
        Art = "war3mapImported\\icon_item_Jewelcrafting_Gem_04.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        lv = 140,
        ATTR = {
            natural_fire = "+150",
            natural_fire_oppose = "+150"
        },
        ODK = true
    }
)
table.insert(
    items_combo,
    {
        Name = items_combo_pre .. "蓝之石",
        Description = "red",
        Art = "war3mapImported\\icon_item_Jewelcrafting_Gem_05.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        lv = 140,
        ATTR = {
            natural_dark = "+150",
            natural_dark_oppose = "+150"
        },
        ODK = true
    }
)
table.insert(
    items_combo,
    {
        Name = items_combo_pre .. "紫之石",
        Description = "red",
        Art = "war3mapImported\\icon_item_Jewelcrafting_Gem_06.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        lv = 140,
        ATTR = {
            natural_ghost = "+150",
            natural_ghost_oppose = "+150"
        },
        ODK = true
    }
)
for ilv = 1, 1 do
    local clv = ilv * 4 - 3
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "空瓶[提炼" .. ilv .. "次]",
            Description = "没什么用的空瓶",
            Art = "ReplaceableTextures\\CommandButtons\\BTNVialEmpty.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = clv,
            ATTR = {
                luck = "+" .. ilv
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "勇气勋章[提炼" .. ilv .. "次]",
            Description = "做人是需要勇气的！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNMedalionOfCourage.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 1 + clv,
            ATTR = {
                defend = "+" .. (15 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "水瓶[提炼" .. ilv .. "次]",
            Description = "没什么用的有水的瓶子",
            Art = "ReplaceableTextures\\CommandButtons\\BTNVialFull.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 2 + clv,
            ATTR = {
                invincible = "+" .. (0.05 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "能量垂饰[提炼" .. ilv .. "次]",
            Description = "古老种族的玩具",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPendantOfMana.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 3 + clv,
            ATTR = {
                life = "+" .. (500 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "匕首[提炼" .. ilv .. "次]",
            Description = "朴实无华的小刀",
            Art = "war3mapImported\\icon_item_ThrowingKnife_02.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 4 + clv,
            ATTR = {
                attack_green = "+" .. (444 * ilv),
                agi_green = "+" .. (105 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "水晶球[提炼" .. ilv .. "次]",
            Description = "用于占卜是不可能的",
            Art = "ReplaceableTextures\\CommandButtons\\BTNCrystalBall.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 4 + clv,
            ATTR = {
                aim = "+" .. (12 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "古尔丹之颅[提炼" .. ilv .. "次]",
            Description = "假的古尔丹的假的头颅",
            Art = "ReplaceableTextures\\CommandButtons\\BTNGuldanSkull.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 5 + clv,
            ATTR = {
                attack_green = "+" .. (330 * ilv),
                toughness = "+" .. (100 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "回避鞋子[提炼" .. ilv .. "次]",
            Description = "穿上鞋子逃得快",
            Art = "ReplaceableTextures\\CommandButtons\\BTNBootsOfSpeed.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 6 + clv,
            ATTR = {
                avoid = "+" .. (8 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "神秘腰带[提炼" .. ilv .. "次]",
            Description = "魔法学徒的腰带！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNRunedBracers.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 7 + clv,
            ATTR = {
                resistance = "+" .. (10 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "艺人面具[提炼" .. ilv .. "次]",
            Description = "滑稽树下你和我",
            Art = "ReplaceableTextures\\CommandButtons\\BTNSobiMask.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 8 + clv,
            ATTR = {
                str_green = "+" .. (180 * ilv),
                agi_green = "+" .. (180 * ilv),
                int_green = "+" .. (180 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "卡嘉长萧[提炼" .. ilv .. "次]",
            Description = "来点斯莫克",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPipeOfInsight.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 9 + clv,
            ATTR = {
                defend = "+" .. (30 * ilv),
                resistance = "+" .. (5.5 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "英勇面具[提炼" .. ilv .. "次]",
            Description = "戴上的基本都是胆小鬼",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHelmOfValor.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 10 + clv,
            ATTR = {
                life = "+" .. (1000 * ilv),
                str_green = "+" .. (220 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "天灾骨钟[提炼" .. ilv .. "次]",
            Description = "叮....咚.....",
            Art = "ReplaceableTextures\\CommandButtons\\BTNBoneChimes.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 11 + clv,
            ATTR = {
                attack_green = "+" .. (520 * ilv),
                attack_speed = "+" .. (7 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "影子风衣[提炼" .. ilv .. "次]",
            Description = "你看不到我",
            Art = "ReplaceableTextures\\CommandButtons\\BTNCloak.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 12 + clv,
            PASSIVE = "被攻击时有10%几率隐身2秒",
            ATTR = {
                avoid = "+" .. (8.5 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "勉强之页[提炼" .. ilv .. "次]",
            Description = "肯定都在背着我学习",
            Art = "ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 13 + clv,
            ATTR = {
                exp_ratio = "+" .. (15 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "风暴狮角[提炼" .. ilv .. "次]",
            Description = "号召风暴卷袭的呼啸狮子号角",
            Art = "ReplaceableTextures\\CommandButtons\\BTNLionHorn.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 14 + clv,
            ATTR = {
                attack_damage_type = "+wind",
                natural_wind = "+" .. (3.3 * ilv),
                attack_speed = "+" .. (7 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "乌云号角[提炼" .. ilv .. "次]",
            Description = "落雨啦~收衫啦~",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHornOfFog.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 15 + clv,
            ATTR = {
                attack_damage_type = "+wind,thunder",
                natural_wind = "+" .. (2.8 * ilv),
                natural_thunder = "+" .. (2.8 * ilv),
                attack_speed = "+" .. (7.5 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "闪光匕首[提炼" .. ilv .. "次]",
            Description = "发光的小刀",
            Art = "war3mapImported\\icon_item_ThrowingKnife_03.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 16 + clv,
            ATTR = {
                attack_green = "+" .. (777 * ilv),
                agi_green = "+" .. (235 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "钢甲[提炼" .. ilv .. "次]",
            Description = "精钢制成的强硬盔甲，很稳当",
            Art = "war3mapImported\\icon_item_Chest_Plate04.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 17 + clv,
            ATTR = {
                defend = "+" .. (50 * ilv),
                swim_oppose = "+" .. (10 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "冰冻碎片[提炼" .. ilv .. "次]",
            Description = "冰冻幽灵被冰冻而死的裂痕",
            Art = "ReplaceableTextures\\CommandButtons\\BTNIceShard.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 18 + clv,
            ATTR = {
                attack_damage_type = "+ice,ghost",
                natural_ice = "+" .. (4.8 * ilv),
                natural_ghost = "+" .. (3.2 * ilv),
                attack_effect = {
                    {
                        attr = "violence",
                        odds = 14 + ilv,
                        percent = 22 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "幻想法杖[提炼" .. ilv .. "次]",
            Description = "幻想的意思就是意淫",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWand.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 20 + clv,
            ATTR = {
                attack_green = "+" .. (900 * ilv),
                int_green = "+" .. (330 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "刺甲[提炼" .. ilv .. "次]",
            Description = "用刺布满盔甲，可伤害敌人",
            Art = "war3mapImported\\icon_item_Chest_Chain_14.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 21 + clv,
            ATTR = {
                defend = "+" .. (55 * ilv),
                damage_rebound = "+" .. (0.02 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "白丁灯[提炼" .. ilv .. "次]",
            Description = "简单，直接，明亮",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPotionOfRestoration.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 23 + clv,
            ATTR = {
                attack_damage_type = "+light",
                aim = "+" .. (10 * ilv),
                str_green = "+" .. (360 * ilv),
                int_green = "+" .. (380 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "刁钻魔法钥匙[提炼" .. ilv .. "次]",
            Description = "蛮狠无理的魔法钥匙",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWandOfManaSteal.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 25 + clv,
            ATTR = {
                attack_damage_type = "+physical",
                attack_effect = {
                    {
                        attr = "violence",
                        odds = 14 + ilv,
                        percent = 64 + ilv
                    },
                    {
                        attr = "violence",
                        odds = 24 + ilv,
                        percent = 54 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "出其不意龙卵石[提炼" .. ilv .. "次]",
            Description = "一个很普通的龙卵石",
            Art = "ReplaceableTextures\\CommandButtons\\BTNManaStone.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 26 + clv,
            ATTR = {
                attack_damage_type = "+magic,dragon",
                natural_dragon = "+" .. (7 * ilv),
                attack_effect = {
                    {
                        attr = "violence",
                        odds = 20 + ilv,
                        percent = 45 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "其貌不扬怪兽石[提炼" .. ilv .. "次]",
            Description = "一个很平凡的怪兽石",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHealthStone.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 27 + clv,
            ATTR = {
                attack_damage_type = "+magic,poison",
                natural_poison = "+" .. (5 * ilv),
                life = "+" .. (1800 * ilv),
                life_back = "+" .. (0.04 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "刃甲[提炼" .. ilv .. "次]",
            Description = "用刀片布满盔甲，可防御敌人的反伤，又可反伤敌人",
            Art = "war3mapImported\\icon_item_Chest_Plate06.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 28 + clv,
            ATTR = {
                defend = "+" .. (75 * ilv),
                damage_rebound = "+" .. (0.02 * ilv),
                damage_rebound_oppose = "+" .. (9 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "泥水[提炼" .. ilv .. "次]",
            Description = "真的是用泥泡出来的水，异常美味",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPotionOfDivinity.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 29 + clv,
            ATTR = {
                attack_damage_type = "+soil",
                natural_soil = "+" .. (6 * ilv),
                natural_soil_oppose = "+" .. (8.5 * ilv),
                defend = "+" .. (60 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "影子权杖[提炼" .. ilv .. "次]",
            Description = "长得像个弯曲的树藤",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWandOfShadowSight.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 31 + clv,
            ATTR = {
                attack_damage_type = "+dark,wind",
                natural_dark_oppose = "+" .. (8 * ilv),
                natural_wind_oppose = "+" .. (8 * ilv),
                toughness = "+" .. (230 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "国王之冠[提炼" .. ilv .. "次]",
            Description = "硬！很硬！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHelmutPurple.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 33 + clv,
            ATTR = {
                defend = "+" .. (110 * ilv),
                toughness = "+" .. (300 * ilv),
                resistance = "+" .. (5 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "奶酪[提炼" .. ilv .. "次]",
            Description = "发臭的玩意",
            Art = "ReplaceableTextures\\CommandButtons\\BTNCheese.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 36 + clv,
            ATTR = {
                life = "+" .. (4000 * ilv),
                life_back = "+" .. (0.03 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "盗贼匕首[提炼" .. ilv .. "次]",
            Description = "砍杀不骑马",
            Art = "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 40 + clv,
            ATTR = {
                attack_green = "+" .. (1550 * ilv),
                agi_green = "+" .. (405 * ilv),
                avoid = "+" .. (4 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "咒环印[提炼" .. ilv .. "次]",
            Description = "写满符文的奇异颈环",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_35.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 43 + clv,
            ATTR = {
                attack_damage_type = "+magic",
                resistance = "+" .. (8 * ilv),
                toughness = "+" .. (500 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "否决权杖[提炼" .. ilv .. "次]",
            Description = "我否决你否决我",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWandSkull.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 46 + clv,
            ATTR = {
                attack_green = "+" .. (1300 * ilv),
                int_green = "+" .. (1000 * ilv),
                attack_debuff = {
                    {
                        attr = "defend",
                        odds = 40 + ilv,
                        val = 5 + ilv,
                        during = 3
                    },
                    {
                        attr = "move",
                        odds = 40 + ilv,
                        val = 30 + ilv * 5,
                        during = 3
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "海王权杖[提炼" .. ilv .. "次]",
            Description = "海水不可以斗量",
            Art = "ReplaceableTextures\\CommandButtons\\BTNStaffOfNegation.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 50 + clv,
            ATTR = {
                attack_damage_type = "+water",
                natural_water = "+" .. (10 * ilv),
                natural_water_oppose = "+" .. (7.5 * ilv),
                int_green = "+" .. (880 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "魔法免疫项链[提炼" .. ilv .. "次]",
            Description = "免疫魔法的项链",
            Art = "ReplaceableTextures\\CommandButtons\\BTNNecklace.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 52 + clv,
            ATTR = {
                int_green = "+" .. (1100 * ilv),
                resistance = "+" .. (12 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "速水手环[提炼" .. ilv .. "次]",
            Description = "手环如水中鱼般灵动",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_57.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 54 + clv,
            ATTR = {
                attack_damage_type = "+water,magic",
                attack_speed = "+" .. (15 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "恶魔之钥[提炼" .. ilv .. "次]",
            Description = "恶魔的召唤",
            Art = "ReplaceableTextures\\CommandButtons\\BTNGhostKey.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 57 + clv,
            ATTR = {
                damage_extent = "+" .. (10 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "太阳之钥[提炼" .. ilv .. "次]",
            Description = "sunshine",
            Art = "ReplaceableTextures\\CommandButtons\\BTNSunKey.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 63 + clv,
            ATTR = {
                attack_damage_type = "+light",
                natural_light = "+" .. (16 * ilv),
                natural_light_oppose = "+" .. (8 * ilv),
                str_green = "+" .. (750 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "爆裂匕首[提炼" .. ilv .. "次]",
            Description = "承载着烈焰的力量",
            Art = "war3mapImported\\icon_item_ThrowingKnife_01.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 66 + clv,
            ATTR = {
                attack_damage_type = "+fire",
                natural_fire = "+" .. (13 * ilv),
                attack_speed = "+" .. (10 * ilv),
                attack_effect = {
                    {
                        attr = "knocking",
                        odds = 20 + ilv,
                        percent = 39 * ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "三珍宝戒[提炼" .. ilv .. "次]",
            Description = "三颗每秒宝石的混合精戒",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_02.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 68 + clv,
            ATTR = {
                str_green = "+" .. (999 * ilv),
                agi_green = "+" .. (999 * ilv),
                int_green = "+" .. (999 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "黄金剑[提炼" .. ilv .. "次]",
            Description = "用99纯金铸造的大剑",
            Art = "war3mapImported\\icon_item_Sword_25.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 71 + clv,
            ATTR = {
                attack_green = "+" .. (3000 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "将军戒[提炼" .. ilv .. "次]",
            Description = "赐予将军的象征",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_54.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 73 + clv,
            ATTR = {
                aim = "+" .. (7 * ilv),
                defend = "+" .. (230 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "帝王戒[提炼" .. ilv .. "次]",
            Description = "王权的象征",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_55.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 75 + clv,
            ATTR = {
                attack_damage_type = "+metal",
                aim = "+" .. (8 * ilv),
                defend = "+" .. (255 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "疾风之刃[提炼" .. ilv .. "次]",
            Description = "与风同舞",
            Art = "war3mapImported\\icon_item_Sword_11.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 77 + clv,
            ATTR = {
                attack_green = "+" .. (3500 * ilv),
                attack_speed = "+200",
                natural_wind = "+" .. (15 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "妙道火源[提炼" .. ilv .. "次]",
            Description = "只有与火有缘人才能得到增强",
            Art = "war3mapImported\\icon_item_SummerFest_FirePotion.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 85 + clv,
            ATTR = {
                natural_fire = "+" .. (33 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "银色子弹[提炼" .. ilv .. "次]",
            Description = "狼头银色的强烈爆量",
            Art = "war3mapImported\\icon_item_Shoulder_33.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 91 + clv,
            ATTR = {
                attack_damage_type = "+thunder",
                natural_thunder = "+" .. (15 * ilv),
                attack_effect = {
                    {
                        attr = "lightning_chain",
                        odds = 40,
                        qty = 3,
                        val = 3000 + (750 * ilv),
                        effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "魔神双头战刃[提炼" .. ilv .. "次]",
            Description = "我说左，你说右，死",
            Art = "war3mapImported\\icon_item_Axe_84.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 100 + clv,
            ATTR = {
                attack_green = "+" .. (4444 * ilv),
                damage_extent = "+" .. (16.66 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "小小霹雳棒[提炼" .. ilv .. "次]",
            Description = "滋滋滋滋滋~",
            Art = "war3mapImported\\icon_item_Battery_01.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 120 + clv,
            ATTR = {
                attack_damage_type = "+thunder",
                natural_thunder = "+" .. (19 + ilv),
                attack_green = "+" .. (2500 * ilv),
                attack_speed = "+" .. (23 + ilv),
                attack_effect = {
                    {
                        attr = "lightning_chain",
                        odds = 45,
                        qty = 3,
                        val = 4000 + (2000 * ilv),
                        effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "大大霹雳棒[提炼" .. ilv .. "次]",
            Description = "滋滋滋滋滋~滋滋滋滋滋~滋滋滋滋滋~",
            Art = "war3mapImported\\icon_item_Battery_02.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 140 + clv,
            ATTR = {
                attack_damage_type = "+thunder",
                natural_thunder = "+" .. (34 + ilv),
                attack_green = "+" .. (3500 * ilv),
                attack_speed = "+" .. (43 + ilv),
                attack_effect = {
                    {
                        attr = "lightning_chain",
                        odds = 50,
                        qty = 3,
                        val = 6500 + (2500 * ilv),
                        effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "雄狮斩火刀[提炼" .. ilv .. "次]",
            Description = "劈天裂地，火中取命",
            Art = "war3mapImported\\icon_item_Weapon_Shortblade_89.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 180 + clv,
            ATTR = {
                attack_damage_type = "+fire,physical",
                natural_fire = "+" .. (22.5 * ilv),
                attack_green = "+" .. (5266 * ilv),
                aim = "+100"
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "激爆猛虎[提炼" .. ilv .. "次]",
            Description = "力拔山河气盖世",
            Art = "war3mapImported\\icon_item_Axe_1H_BlackSmithing_03.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 210 + clv,
            ATTR = {
                attack_green = "+" .. (6101 * ilv),
                attack_effect = {
                    {
                        attr = "split",
                        odds = 90,
                        range = 600,
                        percent = 30 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "神木之杖[提炼" .. ilv .. "次]",
            Description = "充满生机的灵木",
            Art = "war3mapImported\\icon_item_Weapon_Shortblade_42.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 240 + clv,
            ATTR = {
                attack_damage_type = "+wood",
                natural_wood = "+" .. (25 * ilv),
                life = "+" .. (30000 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "平平无奇脚环[提炼" .. ilv .. "次]",
            Description = "一个看上去何其普通的脚环，并不牛逼",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_05.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 300 + clv,
            ATTR = {
                resistance = "+" .. (13 * ilv),
                toughness = "+" .. (3000 * ilv)
            },
            ODK = true
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "破坏神赤炼碎片[提炼" .. ilv .. "次]",
            Description = "被破坏到如此地步",
            Art = "war3mapImported\\icon_item_Weapon_Hand_20.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 400 + clv,
            ATTR = {
                aim = "+110",
                attack_green = "+" .. (9999 * ilv)
            }
        }
    )
end
