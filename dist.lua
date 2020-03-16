cj = require "jass.common"
cg = require "jass.globals"
JASS_MAX_ARRAY_SIZE = 8192
PLAYER_NEUTRAL_PASSIVE = 15
PLAYER_NEUTRAL_AGGRESSIVE = 12
PLAYER_COLOR_RED = cj.ConvertPlayerColor(0)
PLAYER_COLOR_BLUE = cj.ConvertPlayerColor(1)
PLAYER_COLOR_CYAN = cj.ConvertPlayerColor(2)
PLAYER_COLOR_PURPLE = cj.ConvertPlayerColor(3)
PLAYER_COLOR_YELLOW = cj.ConvertPlayerColor(4)
PLAYER_COLOR_ORANGE = cj.ConvertPlayerColor(5)
PLAYER_COLOR_GREEN = cj.ConvertPlayerColor(6)
PLAYER_COLOR_PINK = cj.ConvertPlayerColor(7)
PLAYER_COLOR_LIGHT_GRAY = cj.ConvertPlayerColor(8)
PLAYER_COLOR_LIGHT_BLUE = cj.ConvertPlayerColor(9)
PLAYER_COLOR_AQUA = cj.ConvertPlayerColor(10)
PLAYER_COLOR_BROWN = cj.ConvertPlayerColor(11)
RACE_HUMAN = cj.ConvertRace(1)
RACE_ORC = cj.ConvertRace(2)
RACE_UNDEAD = cj.ConvertRace(3)
RACE_NIGHTELF = cj.ConvertRace(4)
RACE_DEMON = cj.ConvertRace(5)
RACE_OTHER = cj.ConvertRace(7)
PLAYER_GAME_RESULT_VICTORY = cj.ConvertPlayerGameResult(0)
PLAYER_GAME_RESULT_DEFEAT = cj.ConvertPlayerGameResult(1)
PLAYER_GAME_RESULT_TIE = cj.ConvertPlayerGameResult(2)
PLAYER_GAME_RESULT_NEUTRAL = cj.ConvertPlayerGameResult(3)
ALLIANCE_PASSIVE = cj.ConvertAllianceType(0)
ALLIANCE_HELP_REQUEST = cj.ConvertAllianceType(1)
ALLIANCE_HELP_RESPONSE = cj.ConvertAllianceType(2)
ALLIANCE_SHARED_XP = cj.ConvertAllianceType(3)
ALLIANCE_SHARED_SPELLS = cj.ConvertAllianceType(4)
ALLIANCE_SHARED_VISION = cj.ConvertAllianceType(5)
ALLIANCE_SHARED_CONTROL = cj.ConvertAllianceType(6)
ALLIANCE_SHARED_ADVANCED_CONTROL = cj.ConvertAllianceType(7)
ALLIANCE_RESCUABLE = cj.ConvertAllianceType(8)
ALLIANCE_SHARED_VISION_FORCED = cj.ConvertAllianceType(9)
VERSION_REIGN_OF_CHAOS = cj.ConvertVersion(0)
VERSION_FROZEN_THRONE = cj.ConvertVersion(1)
ATTACK_TYPE_NORMAL = cj.ConvertAttackType(0)
ATTACK_TYPE_MELEE = cj.ConvertAttackType(1)
ATTACK_TYPE_PIERCE = cj.ConvertAttackType(2)
ATTACK_TYPE_SIEGE = cj.ConvertAttackType(3)
ATTACK_TYPE_MAGIC = cj.ConvertAttackType(4)
ATTACK_TYPE_CHAOS = cj.ConvertAttackType(5)
ATTACK_TYPE_HERO = cj.ConvertAttackType(6)
DAMAGE_TYPE_UNKNOWN = cj.ConvertDamageType(0)
DAMAGE_TYPE_NORMAL = cj.ConvertDamageType(4)
DAMAGE_TYPE_ENHANCED = cj.ConvertDamageType(5)
DAMAGE_TYPE_FIRE = cj.ConvertDamageType(8)
DAMAGE_TYPE_COLD = cj.ConvertDamageType(9)
DAMAGE_TYPE_LIGHTNING = cj.ConvertDamageType(10)
DAMAGE_TYPE_POISON = cj.ConvertDamageType(11)
DAMAGE_TYPE_DISEASE = cj.ConvertDamageType(12)
DAMAGE_TYPE_DIVINE = cj.ConvertDamageType(13)
DAMAGE_TYPE_MAGIC = cj.ConvertDamageType(14)
DAMAGE_TYPE_SONIC = cj.ConvertDamageType(15)
DAMAGE_TYPE_ACID = cj.ConvertDamageType(16)
DAMAGE_TYPE_FORCE = cj.ConvertDamageType(17)
DAMAGE_TYPE_DEATH = cj.ConvertDamageType(18)
DAMAGE_TYPE_MIND = cj.ConvertDamageType(19)
DAMAGE_TYPE_PLANT = cj.ConvertDamageType(20)
DAMAGE_TYPE_DEFENSIVE = cj.ConvertDamageType(21)
DAMAGE_TYPE_DEMOLITION = cj.ConvertDamageType(22)
DAMAGE_TYPE_SLOW_POISON = cj.ConvertDamageType(23)
DAMAGE_TYPE_SPIRIT_LINK = cj.ConvertDamageType(24)
DAMAGE_TYPE_SHADOW_STRIKE = cj.ConvertDamageType(25)
DAMAGE_TYPE_UNIVERSAL = cj.ConvertDamageType(26)
WEAPON_TYPE_WHOKNOWS = cj.ConvertWeaponType(0)
WEAPON_TYPE_METAL_LIGHT_CHOP = cj.ConvertWeaponType(1)
WEAPON_TYPE_METAL_MEDIUM_CHOP = cj.ConvertWeaponType(2)
WEAPON_TYPE_METAL_HEAVY_CHOP = cj.ConvertWeaponType(3)
WEAPON_TYPE_METAL_LIGHT_SLICE = cj.ConvertWeaponType(4)
WEAPON_TYPE_METAL_MEDIUM_SLICE = cj.ConvertWeaponType(5)
WEAPON_TYPE_METAL_HEAVY_SLICE = cj.ConvertWeaponType(6)
WEAPON_TYPE_METAL_MEDIUM_BASH = cj.ConvertWeaponType(7)
WEAPON_TYPE_METAL_HEAVY_BASH = cj.ConvertWeaponType(8)
WEAPON_TYPE_METAL_MEDIUM_STAB = cj.ConvertWeaponType(9)
WEAPON_TYPE_METAL_HEAVY_STAB = cj.ConvertWeaponType(10)
WEAPON_TYPE_WOOD_LIGHT_SLICE = cj.ConvertWeaponType(11)
WEAPON_TYPE_WOOD_MEDIUM_SLICE = cj.ConvertWeaponType(12)
WEAPON_TYPE_WOOD_HEAVY_SLICE = cj.ConvertWeaponType(13)
WEAPON_TYPE_WOOD_LIGHT_BASH = cj.ConvertWeaponType(14)
WEAPON_TYPE_WOOD_MEDIUM_BASH = cj.ConvertWeaponType(15)
WEAPON_TYPE_WOOD_HEAVY_BASH = cj.ConvertWeaponType(16)
WEAPON_TYPE_WOOD_LIGHT_STAB = cj.ConvertWeaponType(17)
WEAPON_TYPE_WOOD_MEDIUM_STAB = cj.ConvertWeaponType(18)
WEAPON_TYPE_CLAW_LIGHT_SLICE = cj.ConvertWeaponType(19)
WEAPON_TYPE_CLAW_MEDIUM_SLICE = cj.ConvertWeaponType(20)
WEAPON_TYPE_CLAW_HEAVY_SLICE = cj.ConvertWeaponType(21)
WEAPON_TYPE_AXE_MEDIUM_CHOP = cj.ConvertWeaponType(22)
WEAPON_TYPE_ROCK_HEAVY_BASH = cj.ConvertWeaponType(23)
PATHING_TYPE_ANY = cj.ConvertPathingType(0)
PATHING_TYPE_WALKABILITY = cj.ConvertPathingType(1)
PATHING_TYPE_FLYABILITY = cj.ConvertPathingType(2)
PATHING_TYPE_BUILDABILITY = cj.ConvertPathingType(3)
PATHING_TYPE_PEONHARVESTPATHING = cj.ConvertPathingType(4)
PATHING_TYPE_BLIGHTPATHING = cj.ConvertPathingType(5)
PATHING_TYPE_FLOATABILITY = cj.ConvertPathingType(6)
PATHING_TYPE_AMPHIBIOUSPATHING = cj.ConvertPathingType(7)
RACE_PREF_HUMAN = cj.ConvertRacePref(1)
RACE_PREF_ORC = cj.ConvertRacePref(2)
RACE_PREF_NIGHTELF = cj.ConvertRacePref(4)
RACE_PREF_UNDEAD = cj.ConvertRacePref(8)
RACE_PREF_DEMON = cj.ConvertRacePref(16)
RACE_PREF_RANDOM = cj.ConvertRacePref(32)
RACE_PREF_USER_SELECTABLE = cj.ConvertRacePref(64)
MAP_CONTROL_USER = cj.ConvertMapControl(0)
MAP_CONTROL_COMPUTER = cj.ConvertMapControl(1)
MAP_CONTROL_RESCUABLE = cj.ConvertMapControl(2)
MAP_CONTROL_NEUTRAL = cj.ConvertMapControl(3)
MAP_CONTROL_CREEP = cj.ConvertMapControl(4)
MAP_CONTROL_NONE = cj.ConvertMapControl(5)
GAME_TYPE_MELEE = cj.ConvertGameType(1)
GAME_TYPE_FFA = cj.ConvertGameType(2)
GAME_TYPE_USE_MAP_SETTINGS = cj.ConvertGameType(4)
GAME_TYPE_BLIZ = cj.ConvertGameType(8)
GAME_TYPE_ONE_ON_ONE = cj.ConvertGameType(16)
GAME_TYPE_TWO_TEAM_PLAY = cj.ConvertGameType(32)
GAME_TYPE_THREE_TEAM_PLAY = cj.ConvertGameType(64)
GAME_TYPE_FOUR_TEAM_PLAY = cj.ConvertGameType(128)
MAP_FOG_HIDE_TERRAIN = cj.ConvertMapFlag(1)
MAP_FOG_MAP_EXPLORED = cj.ConvertMapFlag(2)
MAP_FOG_ALWAYS_VISIBLE = cj.ConvertMapFlag(4)
MAP_USE_HANDICAPS = cj.ConvertMapFlag(8)
MAP_OBSERVERS = cj.ConvertMapFlag(16)
MAP_OBSERVERS_ON_DEATH = cj.ConvertMapFlag(32)
MAP_FIXED_COLORS = cj.ConvertMapFlag(128)
MAP_LOCK_RESOURCE_TRADING = cj.ConvertMapFlag(256)
MAP_RESOURCE_TRADING_ALLIES_ONLY = cj.ConvertMapFlag(512)
MAP_LOCK_ALLIANCE_CHANGES = cj.ConvertMapFlag(1024)
MAP_ALLIANCE_CHANGES_HIDDEN = cj.ConvertMapFlag(2048)
MAP_CHEATS = cj.ConvertMapFlag(4096)
MAP_CHEATS_HIDDEN = cj.ConvertMapFlag(8192)
MAP_LOCK_SPEED = cj.ConvertMapFlag(8192 * 2)
MAP_LOCK_RANDOM_SEED = cj.ConvertMapFlag(8192 * 4)
MAP_SHARED_ADVANCED_CONTROL = cj.ConvertMapFlag(8192 * 8)
MAP_RANDOM_HERO = cj.ConvertMapFlag(8192 * 16)
MAP_RANDOM_RACES = cj.ConvertMapFlag(8192 * 32)
MAP_RELOADED = cj.ConvertMapFlag(8192 * 64)
MAP_PLACEMENT_RANDOM = cj.ConvertPlacement(0)
MAP_PLACEMENT_FIXED = cj.ConvertPlacement(1)
MAP_PLACEMENT_USE_MAP_SETTINGS = cj.ConvertPlacement(2)
MAP_PLACEMENT_TEAMS_TOGETHER = cj.ConvertPlacement(3)
MAP_LOC_PRIO_LOW = cj.ConvertStartLocPrio(0)
MAP_LOC_PRIO_HIGH = cj.ConvertStartLocPrio(1)
MAP_LOC_PRIO_NOT = cj.ConvertStartLocPrio(2)
MAP_DENSITY_NONE = cj.ConvertMapDensity(0)
MAP_DENSITY_LIGHT = cj.ConvertMapDensity(1)
MAP_DENSITY_MEDIUM = cj.ConvertMapDensity(2)
MAP_DENSITY_HEAVY = cj.ConvertMapDensity(3)
MAP_DIFFICULTY_EASY = cj.ConvertGameDifficulty(0)
MAP_DIFFICULTY_NORMAL = cj.ConvertGameDifficulty(1)
MAP_DIFFICULTY_HARD = cj.ConvertGameDifficulty(2)
MAP_DIFFICULTY_INSANE = cj.ConvertGameDifficulty(3)
MAP_SPEED_SLOWEST = cj.ConvertGameSpeed(0)
MAP_SPEED_SLOW = cj.ConvertGameSpeed(1)
MAP_SPEED_NORMAL = cj.ConvertGameSpeed(2)
MAP_SPEED_FAST = cj.ConvertGameSpeed(3)
MAP_SPEED_FASTEST = cj.ConvertGameSpeed(4)
PLAYER_SLOT_STATE_EMPTY = cj.ConvertPlayerSlotState(0)
PLAYER_SLOT_STATE_PLAYING = cj.ConvertPlayerSlotState(1)
PLAYER_SLOT_STATE_LEFT = cj.ConvertPlayerSlotState(2)
SOUND_VOLUMEGROUP_UNITMOVEMENT = cj.ConvertVolumeGroup(0)
SOUND_VOLUMEGROUP_UNITSOUNDS = cj.ConvertVolumeGroup(1)
SOUND_VOLUMEGROUP_COMBAT = cj.ConvertVolumeGroup(2)
SOUND_VOLUMEGROUP_SPELLS = cj.ConvertVolumeGroup(3)
SOUND_VOLUMEGROUP_UI = cj.ConvertVolumeGroup(4)
SOUND_VOLUMEGROUP_MUSIC = cj.ConvertVolumeGroup(5)
SOUND_VOLUMEGROUP_AMBIENTSOUNDS = cj.ConvertVolumeGroup(6)
SOUND_VOLUMEGROUP_FIRE = cj.ConvertVolumeGroup(7)
GAME_STATE_DIVINE_INTERVENTION = cj.ConvertIGameState(0)
GAME_STATE_DISCONNECTED = cj.ConvertIGameState(1)
GAME_STATE_TIME_OF_DAY = cj.ConvertFGameState(2)
PLAYER_STATE_GAME_RESULT = cj.ConvertPlayerState(0)
PLAYER_STATE_RESOURCE_GOLD = cj.ConvertPlayerState(1)
PLAYER_STATE_RESOURCE_LUMBER = cj.ConvertPlayerState(2)
PLAYER_STATE_RESOURCE_HERO_TOKENS = cj.ConvertPlayerState(3)
PLAYER_STATE_RESOURCE_FOOD_CAP = cj.ConvertPlayerState(4)
PLAYER_STATE_RESOURCE_FOOD_USED = cj.ConvertPlayerState(5)
PLAYER_STATE_FOOD_CAP_CEILING = cj.ConvertPlayerState(6)
PLAYER_STATE_GIVES_BOUNTY = cj.ConvertPlayerState(7)
PLAYER_STATE_ALLIED_VICTORY = cj.ConvertPlayerState(8)
PLAYER_STATE_PLACED = cj.ConvertPlayerState(9)
PLAYER_STATE_OBSERVER_ON_DEATH = cj.ConvertPlayerState(10)
PLAYER_STATE_OBSERVER = cj.ConvertPlayerState(11)
PLAYER_STATE_UNFOLLOWABLE = cj.ConvertPlayerState(12)
PLAYER_STATE_GOLD_UPKEEP_RATE = cj.ConvertPlayerState(13)
PLAYER_STATE_LUMBER_UPKEEP_RATE = cj.ConvertPlayerState(14)
PLAYER_STATE_GOLD_GATHERED = cj.ConvertPlayerState(15)
PLAYER_STATE_LUMBER_GATHERED = cj.ConvertPlayerState(16)
PLAYER_STATE_NO_CREEP_SLEEP = cj.ConvertPlayerState(25)
UNIT_STATE_LIFE = cj.ConvertUnitState(0)
UNIT_STATE_MAX_LIFE = cj.ConvertUnitState(1)
UNIT_STATE_MANA = cj.ConvertUnitState(2)
UNIT_STATE_MAX_MANA = cj.ConvertUnitState(3)
AI_DIFFICULTY_NEWBIE = cj.ConvertAIDifficulty(0)
AI_DIFFICULTY_NORMAL = cj.ConvertAIDifficulty(1)
AI_DIFFICULTY_INSANE = cj.ConvertAIDifficulty(2)
PLAYER_SCORE_UNITS_TRAINED = cj.ConvertPlayerScore(0)
PLAYER_SCORE_UNITS_KILLED = cj.ConvertPlayerScore(1)
PLAYER_SCORE_STRUCT_BUILT = cj.ConvertPlayerScore(2)
PLAYER_SCORE_STRUCT_RAZED = cj.ConvertPlayerScore(3)
PLAYER_SCORE_TECH_PERCENT = cj.ConvertPlayerScore(4)
PLAYER_SCORE_FOOD_MAXPROD = cj.ConvertPlayerScore(5)
PLAYER_SCORE_FOOD_MAXUSED = cj.ConvertPlayerScore(6)
PLAYER_SCORE_HEROES_KILLED = cj.ConvertPlayerScore(7)
PLAYER_SCORE_ITEMS_GAINED = cj.ConvertPlayerScore(8)
PLAYER_SCORE_MERCS_HIRED = cj.ConvertPlayerScore(9)
PLAYER_SCORE_GOLD_MINED_TOTAL = cj.ConvertPlayerScore(10)
PLAYER_SCORE_GOLD_MINED_UPKEEP = cj.ConvertPlayerScore(11)
PLAYER_SCORE_GOLD_LOST_UPKEEP = cj.ConvertPlayerScore(12)
PLAYER_SCORE_GOLD_LOST_TAX = cj.ConvertPlayerScore(13)
PLAYER_SCORE_GOLD_GIVEN = cj.ConvertPlayerScore(14)
PLAYER_SCORE_GOLD_RECEIVED = cj.ConvertPlayerScore(15)
PLAYER_SCORE_LUMBER_TOTAL = cj.ConvertPlayerScore(16)
PLAYER_SCORE_LUMBER_LOST_UPKEEP = cj.ConvertPlayerScore(17)
PLAYER_SCORE_LUMBER_LOST_TAX = cj.ConvertPlayerScore(18)
PLAYER_SCORE_LUMBER_GIVEN = cj.ConvertPlayerScore(19)
PLAYER_SCORE_LUMBER_RECEIVED = cj.ConvertPlayerScore(20)
PLAYER_SCORE_UNIT_TOTAL = cj.ConvertPlayerScore(21)
PLAYER_SCORE_HERO_TOTAL = cj.ConvertPlayerScore(22)
PLAYER_SCORE_RESOURCE_TOTAL = cj.ConvertPlayerScore(23)
PLAYER_SCORE_TOTAL = cj.ConvertPlayerScore(24)
EVENT_GAME_VICTORY = cj.ConvertGameEvent(0)
EVENT_GAME_END_LEVEL = cj.ConvertGameEvent(1)
EVENT_GAME_VARIABLE_LIMIT = cj.ConvertGameEvent(2)
EVENT_GAME_STATE_LIMIT = cj.ConvertGameEvent(3)
EVENT_GAME_TIMER_EXPIRED = cj.ConvertGameEvent(4)
EVENT_GAME_ENTER_REGION = cj.ConvertGameEvent(5)
EVENT_GAME_LEAVE_REGION = cj.ConvertGameEvent(6)
EVENT_GAME_TRACKABLE_HIT = cj.ConvertGameEvent(7)
EVENT_GAME_TRACKABLE_TRACK = cj.ConvertGameEvent(8)
EVENT_GAME_SHOW_SKILL = cj.ConvertGameEvent(9)
EVENT_GAME_BUILD_SUBMENU = cj.ConvertGameEvent(10)
EVENT_PLAYER_STATE_LIMIT = cj.ConvertPlayerEvent(11)
EVENT_PLAYER_ALLIANCE_CHANGED = cj.ConvertPlayerEvent(12)
EVENT_PLAYER_DEFEAT = cj.ConvertPlayerEvent(13)
EVENT_PLAYER_VICTORY = cj.ConvertPlayerEvent(14)
EVENT_PLAYER_LEAVE = cj.ConvertPlayerEvent(15)
EVENT_PLAYER_CHAT = cj.ConvertPlayerEvent(16)
EVENT_PLAYER_END_CINEMATIC = cj.ConvertPlayerEvent(17)
EVENT_PLAYER_UNIT_ATTACKED = cj.ConvertPlayerUnitEvent(18)
EVENT_PLAYER_UNIT_RESCUED = cj.ConvertPlayerUnitEvent(19)
EVENT_PLAYER_UNIT_DEATH = cj.ConvertPlayerUnitEvent(20)
EVENT_PLAYER_UNIT_DECAY = cj.ConvertPlayerUnitEvent(21)
EVENT_PLAYER_UNIT_DETECTED = cj.ConvertPlayerUnitEvent(22)
EVENT_PLAYER_UNIT_HIDDEN = cj.ConvertPlayerUnitEvent(23)
EVENT_PLAYER_UNIT_SELECTED = cj.ConvertPlayerUnitEvent(24)
EVENT_PLAYER_UNIT_DESELECTED = cj.ConvertPlayerUnitEvent(25)
EVENT_PLAYER_UNIT_CONSTRUCT_START = cj.ConvertPlayerUnitEvent(26)
EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL = cj.ConvertPlayerUnitEvent(27)
EVENT_PLAYER_UNIT_CONSTRUCT_FINISH = cj.ConvertPlayerUnitEvent(28)
EVENT_PLAYER_UNIT_UPGRADE_START = cj.ConvertPlayerUnitEvent(29)
EVENT_PLAYER_UNIT_UPGRADE_CANCEL = cj.ConvertPlayerUnitEvent(30)
EVENT_PLAYER_UNIT_UPGRADE_FINISH = cj.ConvertPlayerUnitEvent(31)
EVENT_PLAYER_UNIT_TRAIN_START = cj.ConvertPlayerUnitEvent(32)
EVENT_PLAYER_UNIT_TRAIN_CANCEL = cj.ConvertPlayerUnitEvent(33)
EVENT_PLAYER_UNIT_TRAIN_FINISH = cj.ConvertPlayerUnitEvent(34)
EVENT_PLAYER_UNIT_RESEARCH_START = cj.ConvertPlayerUnitEvent(35)
EVENT_PLAYER_UNIT_RESEARCH_CANCEL = cj.ConvertPlayerUnitEvent(36)
EVENT_PLAYER_UNIT_RESEARCH_FINISH = cj.ConvertPlayerUnitEvent(37)
EVENT_PLAYER_UNIT_ISSUED_ORDER = cj.ConvertPlayerUnitEvent(38)
EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER = cj.ConvertPlayerUnitEvent(39)
EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER = cj.ConvertPlayerUnitEvent(40)
EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER = cj.ConvertPlayerUnitEvent(40)
EVENT_PLAYER_HERO_LEVEL = cj.ConvertPlayerUnitEvent(41)
EVENT_PLAYER_HERO_SKILL = cj.ConvertPlayerUnitEvent(42)
EVENT_PLAYER_HERO_REVIVABLE = cj.ConvertPlayerUnitEvent(43)
EVENT_PLAYER_HERO_REVIVE_START = cj.ConvertPlayerUnitEvent(44)
EVENT_PLAYER_HERO_REVIVE_CANCEL = cj.ConvertPlayerUnitEvent(45)
EVENT_PLAYER_HERO_REVIVE_FINISH = cj.ConvertPlayerUnitEvent(46)
EVENT_PLAYER_UNIT_SUMMON = cj.ConvertPlayerUnitEvent(47)
EVENT_PLAYER_UNIT_DROP_ITEM = cj.ConvertPlayerUnitEvent(48)
EVENT_PLAYER_UNIT_PICKUP_ITEM = cj.ConvertPlayerUnitEvent(49)
EVENT_PLAYER_UNIT_USE_ITEM = cj.ConvertPlayerUnitEvent(50)
EVENT_PLAYER_UNIT_LOADED = cj.ConvertPlayerUnitEvent(51)
EVENT_UNIT_DAMAGED = cj.ConvertUnitEvent(52)
EVENT_UNIT_DEATH = cj.ConvertUnitEvent(53)
EVENT_UNIT_DECAY = cj.ConvertUnitEvent(54)
EVENT_UNIT_DETECTED = cj.ConvertUnitEvent(55)
EVENT_UNIT_HIDDEN = cj.ConvertUnitEvent(56)
EVENT_UNIT_SELECTED = cj.ConvertUnitEvent(57)
EVENT_UNIT_DESELECTED = cj.ConvertUnitEvent(58)
EVENT_UNIT_STATE_LIMIT = cj.ConvertUnitEvent(59)
EVENT_UNIT_ACQUIRED_TARGET = cj.ConvertUnitEvent(60)
EVENT_UNIT_TARGET_IN_RANGE = cj.ConvertUnitEvent(61)
EVENT_UNIT_ATTACKED = cj.ConvertUnitEvent(62)
EVENT_UNIT_RESCUED = cj.ConvertUnitEvent(63)
EVENT_UNIT_CONSTRUCT_CANCEL = cj.ConvertUnitEvent(64)
EVENT_UNIT_CONSTRUCT_FINISH = cj.ConvertUnitEvent(65)
EVENT_UNIT_UPGRADE_START = cj.ConvertUnitEvent(66)
EVENT_UNIT_UPGRADE_CANCEL = cj.ConvertUnitEvent(67)
EVENT_UNIT_UPGRADE_FINISH = cj.ConvertUnitEvent(68)
EVENT_UNIT_TRAIN_START = cj.ConvertUnitEvent(69)
EVENT_UNIT_TRAIN_CANCEL = cj.ConvertUnitEvent(70)
EVENT_UNIT_TRAIN_FINISH = cj.ConvertUnitEvent(71)
EVENT_UNIT_RESEARCH_START = cj.ConvertUnitEvent(72)
EVENT_UNIT_RESEARCH_CANCEL = cj.ConvertUnitEvent(73)
EVENT_UNIT_RESEARCH_FINISH = cj.ConvertUnitEvent(74)
EVENT_UNIT_ISSUED_ORDER = cj.ConvertUnitEvent(75)
EVENT_UNIT_ISSUED_POINT_ORDER = cj.ConvertUnitEvent(76)
EVENT_UNIT_ISSUED_TARGET_ORDER = cj.ConvertUnitEvent(77)
EVENT_UNIT_HERO_LEVEL = cj.ConvertUnitEvent(78)
EVENT_UNIT_HERO_SKILL = cj.ConvertUnitEvent(79)
EVENT_UNIT_HERO_REVIVABLE = cj.ConvertUnitEvent(80)
EVENT_UNIT_HERO_REVIVE_START = cj.ConvertUnitEvent(81)
EVENT_UNIT_HERO_REVIVE_CANCEL = cj.ConvertUnitEvent(82)
EVENT_UNIT_HERO_REVIVE_FINISH = cj.ConvertUnitEvent(83)
EVENT_UNIT_SUMMON = cj.ConvertUnitEvent(84)
EVENT_UNIT_DROP_ITEM = cj.ConvertUnitEvent(85)
EVENT_UNIT_PICKUP_ITEM = cj.ConvertUnitEvent(86)
EVENT_UNIT_USE_ITEM = cj.ConvertUnitEvent(87)
EVENT_UNIT_LOADED = cj.ConvertUnitEvent(88)
EVENT_WIDGET_DEATH = cj.ConvertWidgetEvent(89)
EVENT_DIALOG_BUTTON_CLICK = cj.ConvertDialogEvent(90)
EVENT_DIALOG_CLICK = cj.ConvertDialogEvent(91)
EVENT_GAME_LOADED = cj.ConvertGameEvent(256)
EVENT_GAME_TOURNAMENT_FINISH_SOON = cj.ConvertGameEvent(257)
EVENT_GAME_TOURNAMENT_FINISH_NOW = cj.ConvertGameEvent(258)
EVENT_GAME_SAVE = cj.ConvertGameEvent(259)
EVENT_PLAYER_ARROW_LEFT_DOWN = cj.ConvertPlayerEvent(261)
EVENT_PLAYER_ARROW_LEFT_UP = cj.ConvertPlayerEvent(262)
EVENT_PLAYER_ARROW_RIGHT_DOWN = cj.ConvertPlayerEvent(263)
EVENT_PLAYER_ARROW_RIGHT_UP = cj.ConvertPlayerEvent(264)
EVENT_PLAYER_ARROW_DOWN_DOWN = cj.ConvertPlayerEvent(265)
EVENT_PLAYER_ARROW_DOWN_UP = cj.ConvertPlayerEvent(266)
EVENT_PLAYER_ARROW_UP_DOWN = cj.ConvertPlayerEvent(267)
EVENT_PLAYER_ARROW_UP_UP = cj.ConvertPlayerEvent(268)
EVENT_PLAYER_UNIT_SELL = cj.ConvertPlayerUnitEvent(269)
EVENT_PLAYER_UNIT_CHANGE_OWNER = cj.ConvertPlayerUnitEvent(270)
EVENT_PLAYER_UNIT_SELL_ITEM = cj.ConvertPlayerUnitEvent(271)
EVENT_PLAYER_UNIT_SPELL_CHANNEL = cj.ConvertPlayerUnitEvent(272)
EVENT_PLAYER_UNIT_SPELL_CAST = cj.ConvertPlayerUnitEvent(273)
EVENT_PLAYER_UNIT_SPELL_EFFECT = cj.ConvertPlayerUnitEvent(274)
EVENT_PLAYER_UNIT_SPELL_FINISH = cj.ConvertPlayerUnitEvent(275)
EVENT_PLAYER_UNIT_SPELL_ENDCAST = cj.ConvertPlayerUnitEvent(276)
EVENT_PLAYER_UNIT_PAWN_ITEM = cj.ConvertPlayerUnitEvent(277)
EVENT_UNIT_SELL = cj.ConvertUnitEvent(286)
EVENT_UNIT_CHANGE_OWNER = cj.ConvertUnitEvent(287)
EVENT_UNIT_SELL_ITEM = cj.ConvertUnitEvent(288)
EVENT_UNIT_SPELL_CHANNEL = cj.ConvertUnitEvent(289)
EVENT_UNIT_SPELL_CAST = cj.ConvertUnitEvent(290)
EVENT_UNIT_SPELL_EFFECT = cj.ConvertUnitEvent(291)
EVENT_UNIT_SPELL_FINISH = cj.ConvertUnitEvent(292)
EVENT_UNIT_SPELL_ENDCAST = cj.ConvertUnitEvent(293)
EVENT_UNIT_PAWN_ITEM = cj.ConvertUnitEvent(294)
LESS_THAN = cj.ConvertLimitOp(0)
LESS_THAN_OR_EQUAL = cj.ConvertLimitOp(1)
EQUAL = cj.ConvertLimitOp(2)
GREATER_THAN_OR_EQUAL = cj.ConvertLimitOp(3)
GREATER_THAN = cj.ConvertLimitOp(4)
NOT_EQUAL = cj.ConvertLimitOp(5)
UNIT_TYPE_HERO = cj.ConvertUnitType(0)
UNIT_TYPE_DEAD = cj.ConvertUnitType(1)
UNIT_TYPE_STRUCTURE = cj.ConvertUnitType(2)
UNIT_TYPE_FLYING = cj.ConvertUnitType(3)
UNIT_TYPE_GROUND = cj.ConvertUnitType(4)
UNIT_TYPE_ATTACKS_FLYING = cj.ConvertUnitType(5)
UNIT_TYPE_ATTACKS_GROUND = cj.ConvertUnitType(6)
UNIT_TYPE_MELEE_ATTACKER = cj.ConvertUnitType(7)
UNIT_TYPE_RANGED_ATTACKER = cj.ConvertUnitType(8)
UNIT_TYPE_GIANT = cj.ConvertUnitType(9)
UNIT_TYPE_SUMMONED = cj.ConvertUnitType(10)
UNIT_TYPE_STUNNED = cj.ConvertUnitType(11)
UNIT_TYPE_PLAGUED = cj.ConvertUnitType(12)
UNIT_TYPE_SNARED = cj.ConvertUnitType(13)
UNIT_TYPE_UNDEAD = cj.ConvertUnitType(14)
UNIT_TYPE_MECHANICAL = cj.ConvertUnitType(15)
UNIT_TYPE_PEON = cj.ConvertUnitType(16)
UNIT_TYPE_SAPPER = cj.ConvertUnitType(17)
UNIT_TYPE_TOWNHALL = cj.ConvertUnitType(18)
UNIT_TYPE_ANCIENT = cj.ConvertUnitType(19)
UNIT_TYPE_TAUREN = cj.ConvertUnitType(20)
UNIT_TYPE_POISONED = cj.ConvertUnitType(21)
UNIT_TYPE_POLYMORPHED = cj.ConvertUnitType(22)
UNIT_TYPE_SLEEPING = cj.ConvertUnitType(23)
UNIT_TYPE_RESISTANT = cj.ConvertUnitType(24)
UNIT_TYPE_ETHEREAL = cj.ConvertUnitType(25)
UNIT_TYPE_MAGIC_IMMUNE = cj.ConvertUnitType(26)
ITEM_TYPE_PERMANENT = cj.ConvertItemType(0)
ITEM_TYPE_CHARGED = cj.ConvertItemType(1)
ITEM_TYPE_POWERUP = cj.ConvertItemType(2)
ITEM_TYPE_ARTIFACT = cj.ConvertItemType(3)
ITEM_TYPE_PURCHASABLE = cj.ConvertItemType(4)
ITEM_TYPE_CAMPAIGN = cj.ConvertItemType(5)
ITEM_TYPE_MISCELLANEOUS = cj.ConvertItemType(6)
ITEM_TYPE_UNKNOWN = cj.ConvertItemType(7)
ITEM_TYPE_ANY = cj.ConvertItemType(8)
ITEM_TYPE_TOME = cj.ConvertItemType(2)
CAMERA_FIELD_TARGET_DISTANCE = cj.ConvertCameraField(0)
CAMERA_FIELD_FARZ = cj.ConvertCameraField(1)
CAMERA_FIELD_ANGLE_OF_ATTACK = cj.ConvertCameraField(2)
CAMERA_FIELD_FIELD_OF_VIEW = cj.ConvertCameraField(3)
CAMERA_FIELD_ROLL = cj.ConvertCameraField(4)
CAMERA_FIELD_ROTATION = cj.ConvertCameraField(5)
CAMERA_FIELD_ZOFFSET = cj.ConvertCameraField(6)
BLEND_MODE_NONE = cj.ConvertBlendMode(0)
BLEND_MODE_DONT_CARE = cj.ConvertBlendMode(0)
BLEND_MODE_KEYALPHA = cj.ConvertBlendMode(1)
BLEND_MODE_BLEND = cj.ConvertBlendMode(2)
BLEND_MODE_ADDITIVE = cj.ConvertBlendMode(3)
BLEND_MODE_MODULATE = cj.ConvertBlendMode(4)
BLEND_MODE_MODULATE_2X = cj.ConvertBlendMode(5)
RARITY_FREQUENT = cj.ConvertRarityControl(0)
RARITY_RARE = cj.ConvertRarityControl(1)
TEXMAP_FLAG_NONE = cj.ConvertTexMapFlags(0)
TEXMAP_FLAG_WRAP_U = cj.ConvertTexMapFlags(1)
TEXMAP_FLAG_WRAP_V = cj.ConvertTexMapFlags(2)
TEXMAP_FLAG_WRAP_UV = cj.ConvertTexMapFlags(3)
FOG_OF_WAR_MASKED = cj.ConvertFogState(1)
FOG_OF_WAR_FOGGED = cj.ConvertFogState(2)
FOG_OF_WAR_VISIBLE = cj.ConvertFogState(4)
CAMERA_MARGIN_LEFT = 0
CAMERA_MARGIN_RIGHT = 1
CAMERA_MARGIN_TOP = 2
CAMERA_MARGIN_BOTTOM = 3
EFFECT_TYPE_EFFECT = cj.ConvertEffectType(0)
EFFECT_TYPE_TARGET = cj.ConvertEffectType(1)
EFFECT_TYPE_CASTER = cj.ConvertEffectType(2)
EFFECT_TYPE_SPECIAL = cj.ConvertEffectType(3)
EFFECT_TYPE_AREA_EFFECT = cj.ConvertEffectType(4)
EFFECT_TYPE_MISSILE = cj.ConvertEffectType(5)
EFFECT_TYPE_LIGHTNING = cj.ConvertEffectType(6)
SOUND_TYPE_EFFECT = cj.ConvertSoundType(0)
SOUND_TYPE_EFFECT_LOOPED = cj.ConvertSoundType(1)
bj_PI = 3.14159265358979323846
bj_E = 2.71828182845904523536
bj_CELLWIDTH = 128.0
bj_CLIFFHEIGHT = 128.0
bj_UNIT_FACING = 270.0
bj_RADTODEG = 180.0 / bj_PI
bj_DEGTORAD = bj_PI / 180.0
bj_TEXT_DELAY_QUEST = 20.00
bj_TEXT_DELAY_QUESTUPDATE = 20.00
bj_TEXT_DELAY_QUESTDONE = 20.00
bj_TEXT_DELAY_QUESTFAILED = 20.00
bj_TEXT_DELAY_QUESTREQUIREMENT = 20.00
bj_TEXT_DELAY_MISSIONFAILED = 20.00
bj_TEXT_DELAY_ALWAYSHINT = 12.00
bj_TEXT_DELAY_HINT = 12.00
bj_TEXT_DELAY_SECRET = 10.00
bj_TEXT_DELAY_UNITACQUIRED = 15.00
bj_TEXT_DELAY_UNITAVAILABLE = 10.00
bj_TEXT_DELAY_ITEMACQUIRED = 10.00
bj_TEXT_DELAY_WARNING = 12.00
bj_QUEUE_DELAY_QUEST = 5.00
bj_QUEUE_DELAY_HINT = 5.00
bj_QUEUE_DELAY_SECRET = 3.00
bj_HANDICAP_EASY = 60.00
bj_GAME_STARTED_THRESHOLD = 0.01
bj_WAIT_FOR_COND_MIN_INTERVAL = 0.10
bj_POLLED_WAIT_INTERVAL = 0.10
bj_POLLED_WAIT_SKIP_THRESHOLD = 2.00
bj_MAX_INVENTORY = 6
bj_MAX_PLAYERS = 12
bj_PLAYER_NEUTRAL_VICTIM = 13
bj_PLAYER_NEUTRAL_EXTRA = 14
bj_MAX_PLAYER_SLOTS = 16
bj_MAX_SKELETONS = 25
bj_MAX_STOCK_ITEM_SLOTS = 11
bj_MAX_STOCK_UNIT_SLOTS = 11
bj_MAX_ITEM_LEVEL = 10
bj_TOD_DAWN = 6.00
bj_TOD_DUSK = 18.00
bj_MELEE_STARTING_TOD = 8.00
bj_MELEE_STARTING_GOLD_V0 = 750
bj_MELEE_STARTING_GOLD_V1 = 500
bj_MELEE_STARTING_LUMBER_V0 = 200
bj_MELEE_STARTING_LUMBER_V1 = 150
bj_MELEE_STARTING_HERO_TOKENS = 1
bj_MELEE_HERO_LIMIT = 3
bj_MELEE_HERO_TYPE_LIMIT = 1
bj_MELEE_MINE_SEARCH_RADIUS = 2000
bj_MELEE_CLEAR_UNITS_RADIUS = 1500
bj_MELEE_CRIPPLE_TIMEOUT = 120.00
bj_MELEE_CRIPPLE_MSG_DURATION = 20.00
bj_MELEE_MAX_TWINKED_HEROES_V0 = 3
bj_MELEE_MAX_TWINKED_HEROES_V1 = 1
bj_CREEP_ITEM_DELAY = 0.50
bj_STOCK_RESTOCK_INITIAL_DELAY = 120
bj_STOCK_RESTOCK_INTERVAL = 30
bj_STOCK_MAX_ITERATIONS = 20
bj_MAX_DEST_IN_REGION_EVENTS = 64
bj_CAMERA_MIN_FARZ = 100
bj_CAMERA_DEFAULT_DISTANCE = 1650
bj_CAMERA_DEFAULT_FARZ = 5000
bj_CAMERA_DEFAULT_AOA = 304
bj_CAMERA_DEFAULT_FOV = 70
bj_CAMERA_DEFAULT_ROLL = 0
bj_CAMERA_DEFAULT_ROTATION = 90
bj_RESCUE_PING_TIME = 2.00
bj_NOTHING_SOUND_DURATION = 5.00
bj_TRANSMISSION_PING_TIME = 1.00
bj_TRANSMISSION_IND_RED = 255
bj_TRANSMISSION_IND_BLUE = 255
bj_TRANSMISSION_IND_GREEN = 255
bj_TRANSMISSION_IND_ALPHA = 255
bj_TRANSMISSION_PORT_HANGTIME = 1.50
bj_CINEMODE_INTERFACEFADE = 0.50
bj_CINEMODE_GAMESPEED = MAP_SPEED_NORMAL
bj_CINEMODE_VOLUME_UNITMOVEMENT = 0.40
bj_CINEMODE_VOLUME_UNITSOUNDS = 0.00
bj_CINEMODE_VOLUME_COMBAT = 0.40
bj_CINEMODE_VOLUME_SPELLS = 0.40
bj_CINEMODE_VOLUME_UI = 0.00
bj_CINEMODE_VOLUME_MUSIC = 0.55
bj_CINEMODE_VOLUME_AMBIENTSOUNDS = 1.00
bj_CINEMODE_VOLUME_FIRE = 0.60
bj_SPEECH_VOLUME_UNITMOVEMENT = 0.25
bj_SPEECH_VOLUME_UNITSOUNDS = 0.00
bj_SPEECH_VOLUME_COMBAT = 0.25
bj_SPEECH_VOLUME_SPELLS = 0.25
bj_SPEECH_VOLUME_UI = 0.00
bj_SPEECH_VOLUME_MUSIC = 0.55
bj_SPEECH_VOLUME_AMBIENTSOUNDS = 1.00
bj_SPEECH_VOLUME_FIRE = 0.60
bj_SMARTPAN_TRESHOLD_PAN = 500
bj_SMARTPAN_TRESHOLD_SNAP = 3500
bj_MAX_QUEUED_TRIGGERS = 100
bj_QUEUED_TRIGGER_TIMEOUT = 180.00
bj_CAMPAIGN_INDEX_T = 0
bj_CAMPAIGN_INDEX_H = 1
bj_CAMPAIGN_INDEX_U = 2
bj_CAMPAIGN_INDEX_O = 3
bj_CAMPAIGN_INDEX_N = 4
bj_CAMPAIGN_INDEX_XN = 5
bj_CAMPAIGN_INDEX_XH = 6
bj_CAMPAIGN_INDEX_XU = 7
bj_CAMPAIGN_INDEX_XO = 8
bj_CAMPAIGN_OFFSET_T = 0
bj_CAMPAIGN_OFFSET_H = 1
bj_CAMPAIGN_OFFSET_U = 2
bj_CAMPAIGN_OFFSET_O = 3
bj_CAMPAIGN_OFFSET_N = 4
bj_CAMPAIGN_OFFSET_XN = 0
bj_CAMPAIGN_OFFSET_XH = 1
bj_CAMPAIGN_OFFSET_XU = 2
bj_CAMPAIGN_OFFSET_XO = 3
bj_MISSION_INDEX_T00 = bj_CAMPAIGN_OFFSET_T * 1000 + 0
bj_MISSION_INDEX_T01 = bj_CAMPAIGN_OFFSET_T * 1000 + 1
bj_MISSION_INDEX_H00 = bj_CAMPAIGN_OFFSET_H * 1000 + 0
bj_MISSION_INDEX_H01 = bj_CAMPAIGN_OFFSET_H * 1000 + 1
bj_MISSION_INDEX_H02 = bj_CAMPAIGN_OFFSET_H * 1000 + 2
bj_MISSION_INDEX_H03 = bj_CAMPAIGN_OFFSET_H * 1000 + 3
bj_MISSION_INDEX_H04 = bj_CAMPAIGN_OFFSET_H * 1000 + 4
bj_MISSION_INDEX_H05 = bj_CAMPAIGN_OFFSET_H * 1000 + 5
bj_MISSION_INDEX_H06 = bj_CAMPAIGN_OFFSET_H * 1000 + 6
bj_MISSION_INDEX_H07 = bj_CAMPAIGN_OFFSET_H * 1000 + 7
bj_MISSION_INDEX_H08 = bj_CAMPAIGN_OFFSET_H * 1000 + 8
bj_MISSION_INDEX_H09 = bj_CAMPAIGN_OFFSET_H * 1000 + 9
bj_MISSION_INDEX_H10 = bj_CAMPAIGN_OFFSET_H * 1000 + 10
bj_MISSION_INDEX_H11 = bj_CAMPAIGN_OFFSET_H * 1000 + 11
bj_MISSION_INDEX_U00 = bj_CAMPAIGN_OFFSET_U * 1000 + 0
bj_MISSION_INDEX_U01 = bj_CAMPAIGN_OFFSET_U * 1000 + 1
bj_MISSION_INDEX_U02 = bj_CAMPAIGN_OFFSET_U * 1000 + 2
bj_MISSION_INDEX_U03 = bj_CAMPAIGN_OFFSET_U * 1000 + 3
bj_MISSION_INDEX_U05 = bj_CAMPAIGN_OFFSET_U * 1000 + 4
bj_MISSION_INDEX_U07 = bj_CAMPAIGN_OFFSET_U * 1000 + 5
bj_MISSION_INDEX_U08 = bj_CAMPAIGN_OFFSET_U * 1000 + 6
bj_MISSION_INDEX_U09 = bj_CAMPAIGN_OFFSET_U * 1000 + 7
bj_MISSION_INDEX_U10 = bj_CAMPAIGN_OFFSET_U * 1000 + 8
bj_MISSION_INDEX_U11 = bj_CAMPAIGN_OFFSET_U * 1000 + 9
bj_MISSION_INDEX_O00 = bj_CAMPAIGN_OFFSET_O * 1000 + 0
bj_MISSION_INDEX_O01 = bj_CAMPAIGN_OFFSET_O * 1000 + 1
bj_MISSION_INDEX_O02 = bj_CAMPAIGN_OFFSET_O * 1000 + 2
bj_MISSION_INDEX_O03 = bj_CAMPAIGN_OFFSET_O * 1000 + 3
bj_MISSION_INDEX_O04 = bj_CAMPAIGN_OFFSET_O * 1000 + 4
bj_MISSION_INDEX_O05 = bj_CAMPAIGN_OFFSET_O * 1000 + 5
bj_MISSION_INDEX_O06 = bj_CAMPAIGN_OFFSET_O * 1000 + 6
bj_MISSION_INDEX_O07 = bj_CAMPAIGN_OFFSET_O * 1000 + 7
bj_MISSION_INDEX_O08 = bj_CAMPAIGN_OFFSET_O * 1000 + 8
bj_MISSION_INDEX_O09 = bj_CAMPAIGN_OFFSET_O * 1000 + 9
bj_MISSION_INDEX_O10 = bj_CAMPAIGN_OFFSET_O * 1000 + 10
bj_MISSION_INDEX_N00 = bj_CAMPAIGN_OFFSET_N * 1000 + 0
bj_MISSION_INDEX_N01 = bj_CAMPAIGN_OFFSET_N * 1000 + 1
bj_MISSION_INDEX_N02 = bj_CAMPAIGN_OFFSET_N * 1000 + 2
bj_MISSION_INDEX_N03 = bj_CAMPAIGN_OFFSET_N * 1000 + 3
bj_MISSION_INDEX_N04 = bj_CAMPAIGN_OFFSET_N * 1000 + 4
bj_MISSION_INDEX_N05 = bj_CAMPAIGN_OFFSET_N * 1000 + 5
bj_MISSION_INDEX_N06 = bj_CAMPAIGN_OFFSET_N * 1000 + 6
bj_MISSION_INDEX_N07 = bj_CAMPAIGN_OFFSET_N * 1000 + 7
bj_MISSION_INDEX_N08 = bj_CAMPAIGN_OFFSET_N * 1000 + 8
bj_MISSION_INDEX_N09 = bj_CAMPAIGN_OFFSET_N * 1000 + 9
bj_MISSION_INDEX_XN00 = bj_CAMPAIGN_OFFSET_XN * 1000 + 0
bj_MISSION_INDEX_XN01 = bj_CAMPAIGN_OFFSET_XN * 1000 + 1
bj_MISSION_INDEX_XN02 = bj_CAMPAIGN_OFFSET_XN * 1000 + 2
bj_MISSION_INDEX_XN03 = bj_CAMPAIGN_OFFSET_XN * 1000 + 3
bj_MISSION_INDEX_XN04 = bj_CAMPAIGN_OFFSET_XN * 1000 + 4
bj_MISSION_INDEX_XN05 = bj_CAMPAIGN_OFFSET_XN * 1000 + 5
bj_MISSION_INDEX_XN06 = bj_CAMPAIGN_OFFSET_XN * 1000 + 6
bj_MISSION_INDEX_XN07 = bj_CAMPAIGN_OFFSET_XN * 1000 + 7
bj_MISSION_INDEX_XN08 = bj_CAMPAIGN_OFFSET_XN * 1000 + 8
bj_MISSION_INDEX_XN09 = bj_CAMPAIGN_OFFSET_XN * 1000 + 9
bj_MISSION_INDEX_XN10 = bj_CAMPAIGN_OFFSET_XN * 1000 + 10
bj_MISSION_INDEX_XH00 = bj_CAMPAIGN_OFFSET_XH * 1000 + 0
bj_MISSION_INDEX_XH01 = bj_CAMPAIGN_OFFSET_XH * 1000 + 1
bj_MISSION_INDEX_XH02 = bj_CAMPAIGN_OFFSET_XH * 1000 + 2
bj_MISSION_INDEX_XH03 = bj_CAMPAIGN_OFFSET_XH * 1000 + 3
bj_MISSION_INDEX_XH04 = bj_CAMPAIGN_OFFSET_XH * 1000 + 4
bj_MISSION_INDEX_XH05 = bj_CAMPAIGN_OFFSET_XH * 1000 + 5
bj_MISSION_INDEX_XH06 = bj_CAMPAIGN_OFFSET_XH * 1000 + 6
bj_MISSION_INDEX_XH07 = bj_CAMPAIGN_OFFSET_XH * 1000 + 7
bj_MISSION_INDEX_XH08 = bj_CAMPAIGN_OFFSET_XH * 1000 + 8
bj_MISSION_INDEX_XH09 = bj_CAMPAIGN_OFFSET_XH * 1000 + 9
bj_MISSION_INDEX_XU00 = bj_CAMPAIGN_OFFSET_XU * 1000 + 0
bj_MISSION_INDEX_XU01 = bj_CAMPAIGN_OFFSET_XU * 1000 + 1
bj_MISSION_INDEX_XU02 = bj_CAMPAIGN_OFFSET_XU * 1000 + 2
bj_MISSION_INDEX_XU03 = bj_CAMPAIGN_OFFSET_XU * 1000 + 3
bj_MISSION_INDEX_XU04 = bj_CAMPAIGN_OFFSET_XU * 1000 + 4
bj_MISSION_INDEX_XU05 = bj_CAMPAIGN_OFFSET_XU * 1000 + 5
bj_MISSION_INDEX_XU06 = bj_CAMPAIGN_OFFSET_XU * 1000 + 6
bj_MISSION_INDEX_XU07 = bj_CAMPAIGN_OFFSET_XU * 1000 + 7
bj_MISSION_INDEX_XU08 = bj_CAMPAIGN_OFFSET_XU * 1000 + 8
bj_MISSION_INDEX_XU09 = bj_CAMPAIGN_OFFSET_XU * 1000 + 9
bj_MISSION_INDEX_XU10 = bj_CAMPAIGN_OFFSET_XU * 1000 + 10
bj_MISSION_INDEX_XU11 = bj_CAMPAIGN_OFFSET_XU * 1000 + 11
bj_MISSION_INDEX_XU12 = bj_CAMPAIGN_OFFSET_XU * 1000 + 12
bj_MISSION_INDEX_XU13 = bj_CAMPAIGN_OFFSET_XU * 1000 + 13
bj_MISSION_INDEX_XO00 = bj_CAMPAIGN_OFFSET_XO * 1000 + 0
bj_CINEMATICINDEX_TOP = 0
bj_CINEMATICINDEX_HOP = 1
bj_CINEMATICINDEX_HED = 2
bj_CINEMATICINDEX_OOP = 3
bj_CINEMATICINDEX_OED = 4
bj_CINEMATICINDEX_UOP = 5
bj_CINEMATICINDEX_UED = 6
bj_CINEMATICINDEX_NOP = 7
bj_CINEMATICINDEX_NED = 8
bj_CINEMATICINDEX_XOP = 9
bj_CINEMATICINDEX_XED = 10
bj_ALLIANCE_UNALLIED = 0
bj_ALLIANCE_UNALLIED_VISION = 1
bj_ALLIANCE_ALLIED = 2
bj_ALLIANCE_ALLIED_VISION = 3
bj_ALLIANCE_ALLIED_UNITS = 4
bj_ALLIANCE_ALLIED_ADVUNITS = 5
bj_ALLIANCE_NEUTRAL = 6
bj_ALLIANCE_NEUTRAL_VISION = 7
bj_KEYEVENTTYPE_DEPRESS = 0
bj_KEYEVENTTYPE_RELEASE = 1
bj_KEYEVENTKEY_LEFT = 0
bj_KEYEVENTKEY_RIGHT = 1
bj_KEYEVENTKEY_DOWN = 2
bj_KEYEVENTKEY_UP = 3
bj_TIMETYPE_ADD = 0
bj_TIMETYPE_SET = 1
bj_TIMETYPE_SUB = 2
bj_CAMERABOUNDS_ADJUST_ADD = 0
bj_CAMERABOUNDS_ADJUST_SUB = 1
bj_QUESTTYPE_REQ_DISCOVERED = 0
bj_QUESTTYPE_REQ_UNDISCOVERED = 1
bj_QUESTTYPE_OPT_DISCOVERED = 2
bj_QUESTTYPE_OPT_UNDISCOVERED = 3
bj_QUESTMESSAGE_DISCOVERED = 0
bj_QUESTMESSAGE_UPDATED = 1
bj_QUESTMESSAGE_COMPLETED = 2
bj_QUESTMESSAGE_FAILED = 3
bj_QUESTMESSAGE_REQUIREMENT = 4
bj_QUESTMESSAGE_MISSIONFAILED = 5
bj_QUESTMESSAGE_ALWAYSHINT = 6
bj_QUESTMESSAGE_HINT = 7
bj_QUESTMESSAGE_SECRET = 8
bj_QUESTMESSAGE_UNITACQUIRED = 9
bj_QUESTMESSAGE_UNITAVAILABLE = 10
bj_QUESTMESSAGE_ITEMACQUIRED = 11
bj_QUESTMESSAGE_WARNING = 12
bj_SORTTYPE_SORTBYVALUE = 0
bj_SORTTYPE_SORTBYPLAYER = 1
bj_SORTTYPE_SORTBYLABEL = 2
bj_CINEFADETYPE_FADEIN = 0
bj_CINEFADETYPE_FADEOUT = 1
bj_CINEFADETYPE_FADEOUTIN = 2
bj_REMOVEBUFFS_POSITIVE = 0
bj_REMOVEBUFFS_NEGATIVE = 1
bj_REMOVEBUFFS_ALL = 2
bj_REMOVEBUFFS_NONTLIFE = 3
bj_BUFF_POLARITY_POSITIVE = 0
bj_BUFF_POLARITY_NEGATIVE = 1
bj_BUFF_POLARITY_EITHER = 2
bj_BUFF_RESIST_MAGIC = 0
bj_BUFF_RESIST_PHYSICAL = 1
bj_BUFF_RESIST_EITHER = 2
bj_BUFF_RESIST_BOTH = 3
bj_HEROSTAT_STR = 0
bj_HEROSTAT_AGI = 1
bj_HEROSTAT_INT = 2
bj_MODIFYMETHOD_ADD = 0
bj_MODIFYMETHOD_SUB = 1
bj_MODIFYMETHOD_SET = 2
bj_UNIT_STATE_METHOD_ABSOLUTE = 0
bj_UNIT_STATE_METHOD_RELATIVE = 1
bj_UNIT_STATE_METHOD_DEFAULTS = 2
bj_UNIT_STATE_METHOD_MAXIMUM = 3
bj_GATEOPERATION_CLOSE = 0
bj_GATEOPERATION_OPEN = 1
bj_GATEOPERATION_DESTROY = 2
bj_GAMECACHE_BOOLEAN = 0
bj_GAMECACHE_INTEGER = 1
bj_GAMECACHE_REAL = 2
bj_GAMECACHE_UNIT = 3
bj_GAMECACHE_STRING = 4
bj_ITEM_STATUS_HIDDEN = 0
bj_ITEM_STATUS_OWNED = 1
bj_ITEM_STATUS_INVULNERABLE = 2
bj_ITEM_STATUS_POWERUP = 3
bj_ITEM_STATUS_SELLABLE = 4
bj_ITEM_STATUS_PAWNABLE = 5
bj_ITEMCODE_STATUS_POWERUP = 0
bj_ITEMCODE_STATUS_SELLABLE = 1
bj_ITEMCODE_STATUS_PAWNABLE = 2
bj_MINIMAPPINGSTYLE_SIMPLE = 0
bj_MINIMAPPINGSTYLE_FLASHY = 1
bj_MINIMAPPINGSTYLE_ATTACK = 2
bj_CORPSE_MAX_DEATH_TIME = 8.00
bj_CORPSETYPE_FLESH = 0
bj_CORPSETYPE_BONE = 1
bj_ELEVATOR_BLOCKER_CODE = "DTep"
bj_ELEVATOR_CODE01 = "DTrf"
bj_ELEVATOR_CODE02 = "DTrx"
bj_ELEVATOR_WALL_TYPE_ALL = 0
bj_ELEVATOR_WALL_TYPE_EAST = 1
bj_ELEVATOR_WALL_TYPE_NORTH = 2
bj_ELEVATOR_WALL_TYPE_SOUTH = 3
bj_ELEVATOR_WALL_TYPE_WEST = 4
bj_MELEE_MAX_TWINKED_HEROES = 0
bj_slotControlReady = false
bj_mapInitialPlayableArea = nil
bj_mapInitialCameraBounds = nil
bj_forLoopAIndex = 0
bj_forLoopBIndex = 0
bj_forLoopAIndexEnd = 0
bj_forLoopBIndexEnd = 0
bj_slotControlReady = false
bj_gameStartedTimer = nil
bj_gameStarted = false
bj_isSinglePlayer = false
bj_dncSoundsDay = nil
bj_dncSoundsNight = nil
bj_dayAmbientSound = nil
bj_nightAmbientSound = nil
bj_dncSoundsDawn = nil
bj_dncSoundsDusk = nil
bj_dawnSound = nil
bj_duskSound = nil
bj_useDawnDuskSounds = true
bj_dncIsDaytime = false
bj_rescueSound = nil
bj_questDiscoveredSound = nil
bj_questUpdatedSound = nil
bj_questCompletedSound = nil
bj_questFailedSound = nil
bj_questHintSound = nil
bj_questSecretSound = nil
bj_questItemAcquiredSound = nil
bj_questWarningSound = nil
bj_victoryDialogSound = nil
bj_defeatDialogSound = nil
bj_rescueUnitBehavior = nil
bj_rescueChangeColorUnit = true
bj_rescueChangeColorBldg = true
bj_cineSceneEndingTimer = nil
bj_cineSceneLastSound = nil
bj_cineSceneBeingSkipped = nil
bj_cineModePriorSpeed = MAP_SPEED_NORMAL
bj_cineModePriorFogSetting = false
bj_cineModePriorMaskSetting = false
bj_cineModeAlreadyIn = false
bj_cineModePriorDawnDusk = false
bj_cineModeSavedSeed = 0
bj_cineFadeFinishTimer = nil
bj_cineFadeContinueTimer = nil
bj_cineFadeContinueRed = 0
bj_cineFadeContinueGreen = 0
bj_cineFadeContinueBlue = 0
bj_cineFadeContinueTrans = 0
bj_cineFadeContinueDuration = 0
bj_cineFadeContinueTex = ""
bj = {}
bj.StartSoundForPlayerBJ = function(whichPlayer, soundHandle)
    if whichPlayer == cj.GetLocalPlayer() then
        cj.StartSound(soundHandle)
    end
end
bj.VolumeGroupSetVolumeForPlayerBJ = function(whichPlayer, vgroup, scale)
    if cj.GetLocalPlayer() == whichPlayer then
        cj.VolumeGroupSetVolume(vgroup, scale)
    end
end
bj.TriggerRegisterAnyUnitEventBJ = function(trig, whichEvent)
    for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
        cj.TriggerRegisterPlayerUnitEvent(trig, cj.Player(i - 1), whichEvent, nil)
    end
end
bj.TriggerRegisterPlayerSelectionEventBJ = function(trig, whichPlayer, selected)
    if (selected) then
        return cj.TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_SELECTED, nil)
    else
        return cj.TriggerRegisterPlayerUnitEvent(trig, whichPlayer, EVENT_PLAYER_UNIT_DESELECTED, nil)
    end
end
bj.TriggerRegisterPlayerKeyEventBJ = function(trig, whichPlayer, keType, keKey)
    if keType == bj_KEYEVENTTYPE_DEPRESS then
        
        if keKey == bj_KEYEVENTKEY_LEFT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_DOWN)
        elseif keKey == bj_KEYEVENTKEY_RIGHT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_DOWN)
        elseif keKey == bj_KEYEVENTKEY_DOWN then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_DOWN)
        elseif keKey == bj_KEYEVENTKEY_UP then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_DOWN)
        else
            
            return nil
        end
    elseif keType == bj_KEYEVENTTYPE_RELEASE then
        
        if keKey == bj_KEYEVENTKEY_LEFT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_LEFT_UP)
        elseif keKey == bj_KEYEVENTKEY_RIGHT then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_RIGHT_UP)
        elseif keKey == bj_KEYEVENTKEY_DOWN then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_DOWN_UP)
        elseif keKey == bj_KEYEVENTKEY_UP then
            return cj.TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ARROW_UP_UP)
        else
            
            return nil
        end
    else
        
        return nil
    end
end
bj.AllowVictoryDefeatBJ = function(gameResult)
    if (gameResult == PLAYER_GAME_RESULT_VICTORY) then
        return not cj.IsNoVictoryCheat()
    end
    if (gameResult == PLAYER_GAME_RESULT_DEFEAT) then
        return not cj.IsNoDefeatCheat()
    end
    if (gameResult == PLAYER_GAME_RESULT_NEUTRAL) then
        return (not cj.IsNoVictoryCheat()) and (not cj.IsNoDefeatCheat())
    end
    return true
end
bj.CustomDefeatDialogBJ = function(whichPlayer, message)
    local t = cj.CreateTrigger()
    local d = cj.DialogCreate()
    cj.DialogSetMessage(d, message)
    cj.TriggerRegisterDialogButtonEvent(
        t,
        cj.DialogAddButton(
            d,
            cj.GetLocalizedString("GAMEOVER_QUIT_MISSION"),
            cj.GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")
        )
    )
    cj.TriggerAddAction(
        t,
        function()
            cj.PauseGame(false)
            cj.RestartGame(true)
        end
    )
    if (cj.GetLocalPlayer() == whichPlayer) then
        cj.EnableUserControl(true)
        if cg.bj_isSinglePlayer then
            cj.PauseGame(true)
        end
        cj.EnableUserUI(false)
    end
    cj.DialogDisplay(whichPlayer, d, true)
    bj.VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
    bj.StartSoundForPlayerBJ(whichPlayer, cg.bj_defeatDialogSound)
end
bj.CustomDefeatQuitBJ = function()
    if cg.bj_isSinglePlayer then
        cj.PauseGame(false)
    end
    
    cj.SetGameDifficulty(cj.GetDefaultDifficulty())
    cj.EndGame(true)
end
bj.CustomVictoryDialogBJ = function(whichPlayer)
    local t
    local d = cj.DialogCreate()
    cj.DialogSetMessage(d, cj.GetLocalizedString("GAMEOVER_VICTORY_MSG"))
    t = cj.CreateTrigger()
    cj.TriggerRegisterDialogButtonEvent(
        t,
        cj.DialogAddButton(d, cj.GetLocalizedString("GAMEOVER_CONTINUE"), cj.GetLocalizedHotkey("GAMEOVER_CONTINUE"))
    )
    cj.TriggerAddAction(
        t,
        function()
            if cg.bj_isSinglePlayer then
                cj.PauseGame(false)
                
                cj.SetGameDifficulty(cj.GetDefaultDifficulty())
            end
            if cg.bj_changeLevelMapName == nil then
                cj.EndGame(cg.bj_changeLevelShowScores)
            else
                cj.ChangeLevel(cg.bj_changeLevelMapName, cg.bj_changeLevelShowScores)
            end
        end
    )
    t = cj.CreateTrigger()
    cj.TriggerRegisterDialogButtonEvent(
        t,
        cj.DialogAddButton(
            d,
            cj.GetLocalizedString("GAMEOVER_QUIT_MISSION"),
            cj.GetLocalizedHotkey("GAMEOVER_QUIT_MISSION")
        )
    )
    cj.TriggerAddAction(t, bj.CustomDefeatQuitBJ)
    if cj.GetLocalPlayer() == whichPlayer then
        cj.EnableUserControl(true)
        if cg.bj_isSinglePlayer then
            cj.PauseGame(true)
        end
        cj.EnableUserUI(false)
    end
    cj.DialogDisplay(whichPlayer, d, true)
    bj.VolumeGroupSetVolumeForPlayerBJ(whichPlayer, SOUND_VOLUMEGROUP_UI, 1.0)
    bj.StartSoundForPlayerBJ(whichPlayer, cg.bj_victoryDialogSound)
end
bj.CustomDefeatBJ = function(whichPlayer, message)
    if bj.AllowVictoryDefeatBJ(PLAYER_GAME_RESULT_DEFEAT) then
        cj.RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_DEFEAT)
        if not cg.bj_isSinglePlayer then
            cj.DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, cj.GetLocalizedString("PLAYER_DEFEATED"))
        end
        
        if (cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
            bj.CustomDefeatDialogBJ(whichPlayer, message)
        end
    end
end
bj.CustomVictorySkipBJ = function(whichPlayer)
    if cj.GetLocalPlayer() == whichPlayer then
        if cg.bj_isSinglePlayer then
            
            cj.SetGameDifficulty(cj.GetDefaultDifficulty())
        end
        if cg.bj_changeLevelMapName == nil then
            cj.EndGame(cg.bj_changeLevelShowScores)
        else
            cj.ChangeLevel(cg.bj_changeLevelMapName, cg.bj_changeLevelShowScores)
        end
    end
end
bj.CustomVictoryBJ = function(whichPlayer, showDialog, showScores)
    if bj.AllowVictoryDefeatBJ(PLAYER_GAME_RESULT_VICTORY) then
        cj.RemovePlayer(whichPlayer, PLAYER_GAME_RESULT_VICTORY)
        if not cg.bj_isSinglePlayer then
            cj.DisplayTimedTextFromPlayer(whichPlayer, 0, 0, 60, cj.GetLocalizedString("PLAYER_VICTORIOUS"))
        end
        
        if (cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER) then
            cg.bj_changeLevelShowScores = showScores
            if showDialog then
                bj.CustomVictoryDialogBJ(whichPlayer)
            else
                bj.CustomVictorySkipBJ(whichPlayer)
            end
        end
    end
end
bj.AbortCinematicFadeBJ = function()
    if cg.bj_cineFadeContinueTimer ~= nil then
        cj.DestroyTimer(cg.bj_cineFadeContinueTimer)
    end
    if cg.bj_cineFadeFinishTimer ~= nil then
        cj.DestroyTimer(cg.bj_cineFadeFinishTimer)
    end
end
bj.PercentToInt = function(percentage, max)
    local result = cj.R2I(percentage * cj.I2R(max) * 0.01)
    if result < 0 then
        result = 0
    elseif result > max then
        result = max
    end
    return result
end
bj.PercentTo255 = function(percentage)
    return bj.PercentToInt(percentage, 255)
end
bj.CinematicFilterGenericBJ = function(duration, bmode, tex, red0, green0, blue0, trans0, red1, green1, blue1, trans1)
    bj.AbortCinematicFadeBJ()
    cj.SetCineFilterTexture(tex)
    cj.SetCineFilterBlendMode(bmode)
    cj.SetCineFilterTexMapFlags(TEXMAP_FLAG_NONE)
    cj.SetCineFilterStartUV(0, 0, 1, 1)
    cj.SetCineFilterEndUV(0, 0, 1, 1)
    cj.SetCineFilterStartColor(
        bj.PercentTo255(red0),
        bj.PercentTo255(green0),
        bj.PercentTo255(blue0),
        bj.PercentTo255(100 - trans0)
    )
    cj.SetCineFilterEndColor(
        bj.PercentTo255(red1),
        bj.PercentTo255(green1),
        bj.PercentTo255(blue1),
        bj.PercentTo255(100 - trans1)
    )
    cj.SetCineFilterDuration(duration)
    cj.DisplayCineFilter(true)
end
bj.SetUnitVertexColorBJ = function(whichUnit, red, green, blue, transparency)
    cj.SetUnitVertexColor(
        whichUnit,
        bj.PercentTo255(red),
        bj.PercentTo255(green),
        bj.PercentTo255(blue),
        bj.PercentTo255(100.0 - transparency)
    )
end
bj.CreateQuestBJ = function(questType, title, description, iconPath)
    local required = questType == bj_QUESTTYPE_REQ_DISCOVERED or questType == bj_QUESTTYPE_REQ_UNDISCOVERED
    local discovered = questType == bj_QUESTTYPE_REQ_DISCOVERED or questType == bj_QUESTTYPE_OPT_DISCOVERED
    local cq = cj.CreateQuest()
    cj.QuestSetTitle(cq, title)
    cj.QuestSetDescription(cq, description)
    cj.QuestSetIconPath(cq, iconPath)
    cj.QuestSetRequired(cq, required)
    cj.QuestSetDiscovered(cq, discovered)
    cj.QuestSetCompleted(cq, false)
    return cq
end
bj.TriggerRegisterEnterRectSimple = function(trig, r)
    local rectRegion = cj.CreateRegion()
    cj.RegionAddRect(rectRegion, r)
    return cj.TriggerRegisterEnterRegion(trig, rectRegion, nil)
end
bj.TriggerRegisterLeaveRectSimple = function(trig, r)
    local rectRegion = cj.CreateRegion()
    cj.RegionAddRect(rectRegion, r)
    return cj.TriggerRegisterLeaveRegion(trig, rectRegion, nil)
end
bj.GetCameraBoundsMapRect = function()
    return bj_mapInitialCameraBounds
end
bj.GetPlayableMapRect = function()
    return bj_mapInitialPlayableArea
end
bj.GetCurrentCameraBoundsMapRectBJ = function()
    return cj.Rect(cj.GetCameraBoundMinX(), cj.GetCameraBoundMinY(), cj.GetCameraBoundMaxX(), cj.GetCameraBoundMaxY())
end
bj_mapInitialPlayableArea =
    cj.Rect(
    cj.GetCameraBoundMinX() - cj.GetCameraMargin(CAMERA_MARGIN_LEFT),
    cj.GetCameraBoundMinY() - cj.GetCameraMargin(CAMERA_MARGIN_BOTTOM),
    cj.GetCameraBoundMaxX() + cj.GetCameraMargin(CAMERA_MARGIN_RIGHT),
    cj.GetCameraBoundMaxY() + cj.GetCameraMargin(CAMERA_MARGIN_TOP)
)
bj_mapInitialCameraBounds = bj.GetCurrentCameraBoundsMapRectBJ()
bj.TriggerRegisterEnterRectSimple = function(trig, r)
    local rectRegion = cj.CreateRegion()
    cj.RegionAddRect(rectRegion, r)
    return cj.TriggerRegisterEnterRegion(trig, rectRegion, null)
end
CONST_ATTR = {
    life = "生命",
    mana = "魔法",
    move = "移动",
    defend = "护甲",
    attack_damage_type = "攻击伤害类型",
    physical = "物理",
    magic = "魔法",
    real = "真实",
    absolute = "绝对",
    fire = "火",
    soil = "土",
    water = "水",
    ice = "冰",
    wind = "风",
    light = "光",
    dark = "暗",
    wood = "木",
    thunder = "雷",
    poison = "毒",
    ghost = "鬼",
    metal = "金",
    dragon = "龙",
    insect = "虫",
    god = "神",
    attack_speed = "攻速",
    attack_speed_space = "攻击间隔",
    attack_white = "攻击力",
    attack_green = "附加攻击力",
    attack_range = "攻击范围",
    sight = "视野范围",
    str_green = "附加力量",
    agi_green = "附加敏捷",
    int_green = "附加智力",
    str_white = "本体力量",
    agi_white = "本体敏捷",
    int_white = "本体智力",
    life_back = "生命恢复",
    mana_back = "魔法恢复",
    resistance = "魔抗",
    toughness = "减伤",
    avoid = "回避",
    aim = "命中",
    punish = "僵直",
    punish_current = "当前僵直",
    meditative = "冥想力",
    help = "救助力",
    hemophagia = "吸血",
    hemophagia_skill = "技能吸血",
    luck = "幸运",
    invincible = "无敌",
    weight = "负重",
    weight_current = "当前负重",
    damage_extent = "伤害增幅",
    damage_rebound = "反弹伤害",
    damage_rebound_oppose = "反伤抵抗",
    cure = "治疗",
    knocking_oppose = "物理暴击抵抗",
    violence_oppose = "魔法暴击抵抗",
    hemophagia_oppose = "吸血抵抗",
    hemophagia_skill_oppose = "技能吸血抵抗",
    split_oppose = "分裂抵抗",
    punish_oppose = "僵直抵抗",
    swim_oppose = "眩晕抵抗",
    broken_oppose = "打断抵抗",
    silent_oppose = "沉默抵抗",
    unarm_oppose = "缴械抵抗",
    fetter_oppose = "缚足抵抗",
    bomb_oppose = "爆破抵抗",
    lightning_chain_oppose = "闪电链抵抗",
    crack_fly_oppose = "击飞抵抗",
    natural_fire = "自然火攻",
    natural_soil = "自然土攻",
    natural_water = "自然水攻",
    natural_ice = "自然冰攻",
    natural_wind = "自然风攻",
    natural_light = "自然光攻",
    natural_dark = "自然暗攻",
    natural_wood = "自然木攻",
    natural_thunder = "自然雷攻",
    natural_poison = "自然毒攻",
    natural_ghost = "自然鬼攻",
    natural_metal = "自然金攻",
    natural_dragon = "自然龙攻",
    natural_insect = "自然虫攻",
    natural_god = "自然神攻",
    natural_fire_oppose = "自然火抗",
    natural_soil_oppose = "自然土抗",
    natural_water_oppose = "自然水抗",
    natural_ice_oppose = "自然冰抗",
    natural_wind_oppose = "自然风抗",
    natural_light_oppose = "自然光抗",
    natural_dark_oppose = "自然暗抗",
    natural_wood_oppose = "自然风抗",
    natural_thunder_oppose = "自然雷抗",
    natural_poison_oppose = "自然毒抗",
    natural_ghost_oppose = "自然鬼抗",
    natural_metal_oppose = "自然金抗",
    natural_dragon_oppose = "自然龙抗",
    natural_insect_oppose = "自然虫抗",
    natural_god_oppose = "自然神抗",
    
    attack_buff = "攻击增益",
    attack_debuff = "负面攻击",
    skill_buff = "技能增益",
    skill_debuff = "负面技能",
    attack_effect = "攻击特效",
    skill_effect = "技能特效",
    
    knocking = "物理暴击",
    violence = "魔法暴击",
    split = "分裂",
    swim = "眩晕",
    broken = "打断",
    silent = "沉默",
    unarm = "缴械",
    fetter = "缚足",
    bomb = "爆破",
    lightning_chain = "闪电链",
    crack_fly = "击飞",
    
    odds = "几率",
    percent = "比例",
    val = "数值",
    during = "持续时间",
    qty = "数量",
    range = "范围",
    reduce = "衰减",
    distance = "距离",
    high = "高度",
    
    gold_ratio = "黄金获得率",
    lumber_ratio = "木头获得率",
    exp_ratio = "经验获得率",
    sell_ratio = "售卖比率"
}
CONST_ATTR_KEYS = {
    "life",
    "mana",
    "move",
    "defend",
    "attack_damage_type",
    "attack_speed",
    "attack_speed_space",
    "attack_white",
    "attack_green",
    "attack_range",
    "sight",
    "str_green",
    "agi_green",
    "int_green",
    "str_white",
    "agi_white",
    "int_white",
    "life_back",
    "mana_back",
    "resistance",
    "toughness",
    "avoid",
    "aim",
    "punish",
    "punish_current",
    "meditative",
    "help",
    "hemophagia",
    "hemophagia_skill",
    "luck",
    "invincible",
    "weight",
    "weight_current",
    "damage_extent",
    "damage_rebound",
    "damage_rebound_oppose",
    "cure",
    "knocking_oppose",
    "violence_oppose",
    "hemophagia_oppose",
    "hemophagia_skill_oppose",
    "split_oppose",
    "punish_oppose",
    "swim_oppose",
    "broken_oppose",
    "silent_oppose",
    "unarm_oppose",
    "fetter_oppose",
    "bomb_oppose",
    "lightning_chain_oppose",
    "crack_fly_oppose",
    "natural_fire",
    "natural_soil",
    "natural_water",
    "natural_ice",
    "natural_wind",
    "natural_light",
    "natural_dark",
    "natural_wood",
    "natural_thunder",
    "natural_poison",
    "natural_ghost",
    "natural_metal",
    "natural_dragon",
    "natural_insect",
    "natural_god",
    "natural_fire_oppose",
    "natural_soil_oppose",
    "natural_water_oppose",
    "natural_ice_oppose",
    "natural_wind_oppose",
    "natural_light_oppose",
    "natural_dark_oppose",
    "natural_wood_oppose",
    "natural_thunder_oppose",
    "natural_poison_oppose",
    "natural_ghost_oppose",
    "natural_metal_oppose",
    "natural_dragon_oppose",
    "natural_insect_oppose",
    "natural_god_oppose",
    "attack_buff",
    "attack_debuff",
    "skill_buff",
    "skill_debuff",
    "attack_effect",
    "skill_effect",
    "gold_ratio",
    "lumber_ratio",
    "exp_ratio",
    "sell_ratio"
}
CONST_ATTR_BUFF_KEYS = {
    "attr",
    "odds",
    "percent",
    "val",
    "during",
    "qty",
    "range",
    "reduce",
    "distance",
    "high"
}
CONST_DAMAGE_KIND = {
    attack = "attack",
    skill = "skill",
    special = "special",
    item = "item",
}
CONST_DAMAGE_KIND_LABEL = {
    attack = "攻击",
    skill = "技能",
    special = "特殊",
    item = "物品",
}
CONST_DAMAGE_TYPE = {
    common = "common",
    physical = "physical",
    magic = "magic",
    real = "real",
    absolute = "absolute",
    fire = "fire",
    soil = "soil",
    water = "water",
    ice = "ice",
    wind = "wind",
    light = "light",
    dark = "dark",
    wood = "wood",
    thunder = "thunder",
    poison = "poison",
    ghost = "ghost",
    metal = "metal",
    dragon = "dragon",
    insect = "insect",
    god = "god"
}
CONST_DAMAGE_TYPE_NATURE = {
    "fire",
    "soil",
    "water",
    "ice",
    "wind",
    "light",
    "dark",
    "wood",
    "thunder",
    "poison",
    "ghost",
    "metal",
    "dragon",
    "insect",
    "god",
}
CONST_DAMAGE_TYPE_MAP = {
    common = {
        label = "常规",
        color = "ffffff"
    },
    physical = {
        label = "物理",
        color = "d9d9d9"
    },
    magic = {
        label = "魔法",
        color = "4876ff"
    },
    real = {
        label = "真实",
        color = "ffd700"
    },
    absolute = {
        label = "绝对",
        color = "ee5c42"
    },
    fire = {
        label = "火",
        color = "f45454"
    },
    soil = {
        label = "土",
        color = "dbb745"
    },
    water = {
        label = "水",
        color = "85adee"
    },
    ice = {
        label = "冰",
        color = "85f4f4"
    },
    wind = {
        label = "风",
        color = "b6d7a8"
    },
    light = {
        label = "光",
        color = "f9f99c"
    },
    dark = {
        label = "暗",
        color = "696969"
    },
    wood = {
        label = "木",
        color = "7cbd60"
    },
    thunder = {
        label = "雷",
        color = "7cbd60"
    },
    poison = {
        label = "毒",
        color = "3cb371"
    },
    ghost = {
        label = "鬼",
        color = "383434"
    },
    metal = {
        label = "金",
        color = "f9f99c"
    },
    dragon = {
        label = "龙",
        color = "7cbd60"
    },
    insect = {
        label = "虫",
        color = "ba55d3"
    },
    god = {
        label = "神",
        color = "bf3eff"
    }
}
CONST_HERO_PRIMARY = {
    STR = "力量",
    AGI = "敏捷",
    INT = "智力",
}
CONST_HOTKEY = {
    { HotKey = "Q", Buttonpos1 = 0, Buttonpos2 = 0, },
    { HotKey = "W", Buttonpos1 = 1, Buttonpos2 = 0, },
    { HotKey = "E", Buttonpos1 = 2, Buttonpos2 = 0, },
    { HotKey = "R", Buttonpos1 = 3, Buttonpos2 = 0, },
    { HotKey = "A", Buttonpos1 = 0, Buttonpos2 = 1, },
    { HotKey = "S", Buttonpos1 = 1, Buttonpos2 = 1, },
    { HotKey = "D", Buttonpos1 = 2, Buttonpos2 = 1, },
    { HotKey = "F", Buttonpos1 = 3, Buttonpos2 = 1, },
    { HotKey = "Z", Buttonpos1 = 0, Buttonpos2 = 2, },
    { HotKey = "X", Buttonpos1 = 1, Buttonpos2 = 2, },
    { HotKey = "C", Buttonpos1 = 2, Buttonpos2 = 2, },
    { HotKey = "V", Buttonpos1 = 3, Buttonpos2 = 2, },
}
CONST_ITEM_CLASS = {
    Permanent = "永久",
    Charged = "可充",
    PowerUp = "力量提升",
    Artifact = "人造",
    Purchasable = "可购买",
    Campaign = "战役",
    Miscellaneous = "混杂",
}
CONST_WEAPON_TYPE = {
    missile = "箭矢",
    msplash = "箭矢(溅射)",
    mbounce = "箭矢(弹射)",
    mline = "箭矢(穿透)",
    normal = "近战",
    instant = "立即",
    artillery = "炮火",
    aline = "炮火(穿透)",
}
CONST_WEAPON_SOUND = {
    MetalHeavyBash = "金属重击",
    MetalMediumBash = "金属中击",
    MetalHeavyChop = "金属重砍",
    MetalMediumChop = "金属中砍",
    MetalLightChop = "金属轻砍",
    MetalHeavySlice = "金属重切",
    MetalMediumSlice = "金属中切",
    MetalLightSlice = "金属轻切",
    AxeMediumChop = "斧头中砍",
    RockHeavyBash = "岩石重击",
    WoodHeavyBash = "木头重击",
    WoodMediumBash = "木头中击",
    WoodLightBash = "木头轻击",
}
CONST_MOVE_TYPE = {
    foot = "步行",
    horse = "坐骑",
    fly = "飞行",
    hover = "浮空",
    float = "漂浮",
    amph = "两栖",
}
CONST_PLAYER_COLOR = {
    RED = cj.ConvertPlayerColor(0),
    BLUE = cj.ConvertPlayerColor(1),
    CYAN = cj.ConvertPlayerColor(2),
    PURPLE = cj.ConvertPlayerColor(3),
    YELLOW = cj.ConvertPlayerColor(4),
    ORANGE = cj.ConvertPlayerColor(5),
    GREEN = cj.ConvertPlayerColor(6),
    PINK = cj.ConvertPlayerColor(7),
    LIGHT_GRAY = cj.ConvertPlayerColor(8),
    LIGHT_BLUE = cj.ConvertPlayerColor(9),
    AQUA = cj.ConvertPlayerColor(10),
    BROWN = cj.ConvertPlayerColor(11)
}
CONST_EVENT = {
    attackDetect = "attackDetect",
    attackGetTarget = "attackGetTarget",
    attackReady = "attackReady",
    beAttackReady = "beAttackReady",
    attack = "attack",
    beAttack = "beAttack",
    skillStudy = "skillStudy",
    skillReady = "skillReady",
    skillStart = "skillStart",
    skillHappen = "skillHappen",
    skillStop = "skillStop",
    skillOver = "skillOver",
    itemUsed = "itemUsed",
    itemSell = "itemSell",
    itemDrop = "itemDrop",
    itemPawn = "itemPawn",
    itemGet = "itemGet",
    itemDestroy = "itemDestroy",
    itemMix = "itemMix",
    itemSeparate = "itemSeparate",
    itemOverWeight = "itemOverWeight",
    itemOverSlot = "itemOverSlot",
    damage = "damage",
    beDamage = "beDamage",
    avoid = "avoid",
    beAvoid = "beAvoid",
    breakArmor = "breakArmor",
    beBreakArmor = "beBreakArmor",
    swim = "swim",
    beSwim = "beSwim",
    broken = "broken",
    beBroken = "beBroken",
    silent = "silent",
    beSilent = "beSilent",
    unarm = "unarm",
    beUnarm = "beUnarm",
    fetter = "fetter",
    beFetter = "beFetter",
    bomb = "bomb",
    beBomb = "beBomb",
    lightningChain = "lightningChain",
    beLightningChain = "beLightningChain",
    crackFly = "crackFly",
    beCrackFly = "beCrackFly",
    rebound = "rebound",
    noAvoid = "noAvoid",
    beNoAvoid = "beNoAvoid",
    knocking = "knocking",
    beKnocking = "beKnocking",
    violence = "violence",
    beViolence = "beViolence",
    spilt = "spilt",
    beSpilt = "beSpilt",
    limitToughness = "limitToughness",
    hemophagia = "hemophagia",
    beHemophagia = "beHemophagia",
    skillHemophagia = "skillHemophagia",
    beSkillHemophagia = "beSkillHemophagia",
    punish = "punish",
    dead = "dead",
    kill = "kill",
    reborn = "reborn",
    levelUp = "levelUp",
    summon = "summon",
    enterUnitRange = "enterUnitRange",
    enterRect = "enterRect",
    leaveRect = "leaveRect",
    chat = "chat",
    esc = "esc",
    selection = "selection",
    unSelection = "unSelection",
    upgradeStart = "upgradeStart",
    upgradeCancel = "upgradeCancel",
    upgradeFinish = "upgradeFinish",
    constructStart = "constructStart",
    constructCancel = "constructCancel",
    constructFinish = "constructFinish",
    pickHero = "pickHero",
    playerLeave = "playerLeave",
}
if (HLUA_DEBUG == nil) then
    HLUA_DEBUG = false 
end
rem = function(key1, key2)
    if (HLUA_DEBUG == false) then
        return
    end
    if (type(key1) ~= "string") then
        return
    end
    if (key2 ~= nil and type(key2) ~= "string") then
        return
    end
    if (remStack == nil) then
        remStack = {}
    end
    remStack[key1] = os.clock()
    if (key2 ~= nil) then
        remStack[key2] = os.clock()
        print("[rem " .. key1 .. "->" .. key2 .. "]:" .. remStack[key2] - remStack[key1])
    end
end
print_stack = function(...)
    if (HLUA_DEBUG == false) then
        return
    end
    local out = { "[TRACE]" }
    local n = select("#", ...)
    for i = 1, n, 1 do
        local v = select(i, ...)
        out[#out + 1] = tostring(v)
    end
    out[#out + 1] = "\n"
    out[#out + 1] = debug.traceback("", 2)
    print(table.concat(out, " "))
    
end
print_mb = function(str)
    if (HLUA_DEBUG == false) then
        return
    end
    console.write(str)
end
print_err = function(val)
    if (HLUA_DEBUG == false) then
        return
    end
    print("========h-lua-err========")
    if (type(val) == "table") then
        print_mbr(val)
    else
        print_mb(val)
    end
    print_stack()
    print("=========================")
end
print_r = function(t, printMethod, showDetail)
    if (HLUA_DEBUG == false) then
        return
    end
    local print_r_cache = {}
    printMethod = printMethod or print
    if (showDetail == nil) then
        showDetail = true
    end
    local function sub_print_r(tt, indent)
        if (print_r_cache[tostring(tt)]) then
            printMethod(indent .. "*" .. tostring(tt))
        else
            print_r_cache[tostring(tt)] = true
            if (type(tt) == "table") then
                for pos, val in pairs(tt) do
                    if (type(pos) == "userdata") then
                        pos = "userdata"
                    end
                    if (type(val) == "table") then
                        print(indent .. "[" .. pos .. "](" .. table.len(val) .. ") => " .. tostring(tt) .. " {")
                        sub_print_r(val, indent .. string.rep(" ", string.len(pos) + 8))
                        print(indent .. string.rep(" ", string.len(pos) + 6) .. "}")
                    elseif (showDetail == true) then
                        if (type(val) == "string") then
                            printMethod(indent .. "[" .. pos .. '] => "' .. val .. '"')
                        else
                            print(indent .. "[" .. pos .. "] => " .. tostring(val))
                        end
                    end
                end
            else
                printMethod(indent .. tostring(tt))
            end
        end
    end
    if (type(t) == "table") then
        print(tostring(t) .. "(" .. table.len(t) .. ") {")
        sub_print_r(t, "  ")
        print("}")
    else
        sub_print_r(t, "  ")
    end
    print()
end
print_mbr = function(t)
    print_r(t, print_mb, true)
end
json = {}
local function kind_of(obj)
    if type(obj) ~= "table" then
        return type(obj)
    end
    local i = 1
    for _ in pairs(obj) do
        if obj[i] ~= nil then
            i = i + 1
        else
            return "table"
        end
    end
    if i == 1 then
        return "table"
    else
        return "array"
    end
end
local function escape_str(s)
    local in_char = {"\\", '"', "/", "\b", "\f", "\n", "\r", "\t"}
    local out_char = {"\\", '"', "/", "b", "f", "n", "r", "t"}
    for i, c in ipairs(in_char) do
        s = s:gsub(c, "\\" .. out_char[i])
    end
    return s
end
local function skip_delim(str, pos, delim, err_if_missing)
    pos = pos + #str:match("^%s*", pos)
    if str:sub(pos, pos) ~= delim then
        if err_if_missing then
            error("Expected " .. delim .. " near position " .. pos)
        end
        return pos, false
    end
    return pos + 1, true
end
local function parse_str_val(str, pos, val)
    val = val or ""
    local early_end_error = "End of input found while parsing string."
    if pos > #str then
        error(early_end_error)
    end
    local c = str:sub(pos, pos)
    if c == '"' then
        return val, pos + 1
    end
    if c ~= "\\" then
        return parse_str_val(str, pos + 1, val .. c)
    end
    
    local esc_map = {b = "\b", f = "\f", n = "\n", r = "\r", t = "\t"}
    local nextc = str:sub(pos + 1, pos + 1)
    if not nextc then
        error(early_end_error)
    end
    return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end
local function parse_num_val(str, pos)
    local num_str = str:match("^-?%d+%.?%d*[eE]?[+-]?%d*", pos)
    local val = tonumber(num_str)
    if not val then
        error("Error parsing number at position " .. pos .. ".")
    end
    return val, pos + #num_str
end
function json.stringify(obj, as_key)
    local s = {} 
    local kind = kind_of(obj) 
    if kind == "array" then
        if as_key then
            error("Can't encode array as key.")
        end
        s[#s + 1] = "["
        for i, val in ipairs(obj) do
            if i > 1 then
                s[#s + 1] = ", "
            end
            s[#s + 1] = json.stringify(val)
        end
        s[#s + 1] = "]"
    elseif kind == "table" then
        if as_key then
            error("Can't encode table as key.")
        end
        s[#s + 1] = "{"
        for k, v in pairs(obj) do
            if #s > 1 then
                s[#s + 1] = ", "
            end
            s[#s + 1] = json.stringify(k, true)
            s[#s + 1] = ":"
            s[#s + 1] = json.stringify(v)
        end
        s[#s + 1] = "}"
    elseif kind == "string" then
        return '"' .. escape_str(obj) .. '"'
    elseif kind == "number" then
        if as_key then
            return '"' .. tostring(obj) .. '"'
        end
        return tostring(obj)
    elseif kind == "boolean" then
        return tostring(obj)
    elseif kind == "nil" then
        return "null"
    else
        error("Unjsonifiable type: " .. kind .. ".")
    end
    return table.concat(s)
end
json.null = {} 
function json.parse(str, pos, end_delim)
    pos = pos or 1
    if str == nil then
        print_stack()
        error("json str is nil.")
    end
    if pos > #str then
        print_stack()
        error("Reached unexpected end of input.")
    end
    local pos = pos + #str:match("^%s*", pos) 
    local first = str:sub(pos, pos)
    if first == "{" then
        
        local obj, key, delim_found = {}, true, true
        pos = pos + 1
        while true do
            key, pos = json.parse(str, pos, "}")
            if key == nil then
                return obj, pos
            end
            if not delim_found then
                error("Comma missing between object items.")
            end
            pos = skip_delim(str, pos, ":", true) 
            obj[key], pos = json.parse(str, pos)
            pos, delim_found = skip_delim(str, pos, ",")
        end
    elseif first == "[" then
        
        local arr, val, delim_found = {}, true, true
        pos = pos + 1
        while true do
            val, pos = json.parse(str, pos, "]")
            if val == nil then
                return arr, pos
            end
            if not delim_found then
                error("Comma missing between array items.")
            end
            arr[#arr + 1] = val
            pos, delim_found = skip_delim(str, pos, ",")
        end
    elseif first == '"' then
        
        return parse_str_val(str, pos + 1)
    elseif first == "-" or first:match("%d") then
        
        return parse_num_val(str, pos)
    elseif first == end_delim then
        
        return nil, pos + 1
    else
        
        local literals = {["true"] = true, ["false"] = false, ["null"] = json.null}
        for lit_str, lit_val in pairs(literals) do
            local lit_end = pos + #lit_str - 1
            if str:sub(pos, lit_end) == lit_str then
                return lit_val, lit_end + 1
            end
        end
        local pos_info_str = "position " .. pos .. ": " .. str:sub(pos, pos + 10)
        error("Invalid json syntax starting at " .. pos_info_str)
    end
end
md5 = {
    _VERSION = "md5.lua 1.1.0",
    _DESCRIPTION = "MD5 computation in Lua (5.1-3, LuaJIT)",
    _URL = "https://github.com/kikito/md5.lua",
    _LICENSE = [[
    MIT LICENSE
    Copyright (c) 2013 Enrique García Cota + Adam Baldwin + hanzao + Equi 4 Software
    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  ]]
}
local char, byte, format, rep, sub = string.char, string.byte, string.format, string.rep, string.sub
local bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift
local ok, bit = pcall(require, "bit")
if ok then
    bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift = bit.bor,
    bit.band,
    bit.bnot,
    bit.bxor,
    bit.rshift,
    bit.lshift
else
    ok, bit = pcall(require, "bit32")
    if ok then
        bit_not = bit.bnot
        local tobit = function(n)
            return n <= 0x7fffffff and n or -(bit_not(n) + 1)
        end
        local normalize = function(f)
            return function(a, b)
                return tobit(f(tobit(a), tobit(b)))
            end
        end
        bit_or, bit_and, bit_xor = normalize(bit.bor), normalize(bit.band), normalize(bit.bxor)
        bit_rshift, bit_lshift = normalize(bit.rshift), normalize(bit.lshift)
    else
        local function tbl2number(tbl)
            local result = 0
            local power = 1
            for i = 1, #tbl do
                result = result + tbl[i] * power
                power = power * 2
            end
            return result
        end
        local function expand(t1, t2)
            local big, small = t1, t2
            if (#big < #small) then
                big, small = small, big
            end
            
            for i = #small + 1, #big do
                small[i] = 0
            end
        end
        local to_bits  
        bit_not = function(n)
            local tbl = to_bits(n)
            local size = math.max(#tbl, 32)
            for i = 1, size do
                if (tbl[i] == 1) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        
        to_bits = function(n)
            if (n < 0) then
                
                return to_bits(bit_not(math.abs(n)) + 1)
            end
            
            local tbl = {}
            local cnt = 1
            local last
            while n > 0 do
                last = n % 2
                tbl[cnt] = last
                n = (n - last) / 2
                cnt = cnt + 1
            end
            return tbl
        end
        bit_or = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] == 0 and tbl_n[i] == 0) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        bit_and = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] == 0 or tbl_n[i] == 0) then
                    tbl[i] = 0
                else
                    tbl[i] = 1
                end
            end
            return tbl2number(tbl)
        end
        bit_xor = function(m, n)
            local tbl_m = to_bits(m)
            local tbl_n = to_bits(n)
            expand(tbl_m, tbl_n)
            local tbl = {}
            for i = 1, #tbl_m do
                if (tbl_m[i] ~= tbl_n[i]) then
                    tbl[i] = 1
                else
                    tbl[i] = 0
                end
            end
            return tbl2number(tbl)
        end
        bit_rshift = function(n, bits)
            local high_bit = 0
            if (n < 0) then
                
                n = bit_not(math.abs(n)) + 1
                high_bit = 0x80000000
            end
            local floor = math.floor
            for i = 1, bits do
                n = n / 2
                n = bit_or(floor(n), high_bit)
            end
            return floor(n)
        end
        bit_lshift = function(n, bits)
            if (n < 0) then
                
                n = bit_not(math.abs(n)) + 1
            end
            for i = 1, bits do
                n = n * 2
            end
            return bit_and(n, 0xFFFFFFFF)
        end
    end
end
local function lei2str(i)
    local f = function(s)
        return char(bit_and(bit_rshift(i, s), 255))
    end
    return f(0) .. f(8) .. f(16) .. f(24)
end
local function str2bei(s)
    local v = 0
    for i = 1, #s do
        v = v * 256 + byte(s, i)
    end
    return v
end
local function str2lei(s)
    local v = 0
    for i = #s, 1, -1 do
        v = v * 256 + byte(s, i)
    end
    return v
end
local function cut_le_str(s, ...)
    local o, r = 1, {}
    local args = { ... }
    for i = 1, #args do
        table.insert(r, str2lei(sub(s, o, o + args[i] - 1)))
        o = o + args[i]
    end
    return r
end
local swap = function(w)
    return str2bei(lei2str(w))
end
local CONSTS = {
    0xd76aa478,
    0xe8c7b756,
    0x242070db,
    0xc1bdceee,
    0xf57c0faf,
    0x4787c62a,
    0xa8304613,
    0xfd469501,
    0x698098d8,
    0x8b44f7af,
    0xffff5bb1,
    0x895cd7be,
    0x6b901122,
    0xfd987193,
    0xa679438e,
    0x49b40821,
    0xf61e2562,
    0xc040b340,
    0x265e5a51,
    0xe9b6c7aa,
    0xd62f105d,
    0x02441453,
    0xd8a1e681,
    0xe7d3fbc8,
    0x21e1cde6,
    0xc33707d6,
    0xf4d50d87,
    0x455a14ed,
    0xa9e3e905,
    0xfcefa3f8,
    0x676f02d9,
    0x8d2a4c8a,
    0xfffa3942,
    0x8771f681,
    0x6d9d6122,
    0xfde5380c,
    0xa4beea44,
    0x4bdecfa9,
    0xf6bb4b60,
    0xbebfbc70,
    0x289b7ec6,
    0xeaa127fa,
    0xd4ef3085,
    0x04881d05,
    0xd9d4d039,
    0xe6db99e5,
    0x1fa27cf8,
    0xc4ac5665,
    0xf4292244,
    0x432aff97,
    0xab9423a7,
    0xfc93a039,
    0x655b59c3,
    0x8f0ccc92,
    0xffeff47d,
    0x85845dd1,
    0x6fa87e4f,
    0xfe2ce6e0,
    0xa3014314,
    0x4e0811a1,
    0xf7537e82,
    0xbd3af235,
    0x2ad7d2bb,
    0xeb86d391,
    0x67452301,
    0xefcdab89,
    0x98badcfe,
    0x10325476
}
local f = function(x, y, z)
    return bit_or(bit_and(x, y), bit_and(-x - 1, z))
end
local g = function(x, y, z)
    return bit_or(bit_and(x, z), bit_and(y, -z - 1))
end
local h = function(x, y, z)
    return bit_xor(x, bit_xor(y, z))
end
local i = function(x, y, z)
    return bit_xor(y, bit_or(x, -z - 1))
end
local z = function(ff, a, b, c, d, x, s, ac)
    a = bit_and(a + ff(b, c, d) + x + ac, 0xFFFFFFFF)
    
    return bit_or(bit_lshift(bit_and(a, bit_rshift(0xFFFFFFFF, s)), s), bit_rshift(a, 32 - s)) + b
end
local function transform(A, B, C, D, X)
    local a, b, c, d = A, B, C, D
    local t = CONSTS
    a = z(f, a, b, c, d, X[0], 7, t[1])
    d = z(f, d, a, b, c, X[1], 12, t[2])
    c = z(f, c, d, a, b, X[2], 17, t[3])
    b = z(f, b, c, d, a, X[3], 22, t[4])
    a = z(f, a, b, c, d, X[4], 7, t[5])
    d = z(f, d, a, b, c, X[5], 12, t[6])
    c = z(f, c, d, a, b, X[6], 17, t[7])
    b = z(f, b, c, d, a, X[7], 22, t[8])
    a = z(f, a, b, c, d, X[8], 7, t[9])
    d = z(f, d, a, b, c, X[9], 12, t[10])
    c = z(f, c, d, a, b, X[10], 17, t[11])
    b = z(f, b, c, d, a, X[11], 22, t[12])
    a = z(f, a, b, c, d, X[12], 7, t[13])
    d = z(f, d, a, b, c, X[13], 12, t[14])
    c = z(f, c, d, a, b, X[14], 17, t[15])
    b = z(f, b, c, d, a, X[15], 22, t[16])
    a = z(g, a, b, c, d, X[1], 5, t[17])
    d = z(g, d, a, b, c, X[6], 9, t[18])
    c = z(g, c, d, a, b, X[11], 14, t[19])
    b = z(g, b, c, d, a, X[0], 20, t[20])
    a = z(g, a, b, c, d, X[5], 5, t[21])
    d = z(g, d, a, b, c, X[10], 9, t[22])
    c = z(g, c, d, a, b, X[15], 14, t[23])
    b = z(g, b, c, d, a, X[4], 20, t[24])
    a = z(g, a, b, c, d, X[9], 5, t[25])
    d = z(g, d, a, b, c, X[14], 9, t[26])
    c = z(g, c, d, a, b, X[3], 14, t[27])
    b = z(g, b, c, d, a, X[8], 20, t[28])
    a = z(g, a, b, c, d, X[13], 5, t[29])
    d = z(g, d, a, b, c, X[2], 9, t[30])
    c = z(g, c, d, a, b, X[7], 14, t[31])
    b = z(g, b, c, d, a, X[12], 20, t[32])
    a = z(h, a, b, c, d, X[5], 4, t[33])
    d = z(h, d, a, b, c, X[8], 11, t[34])
    c = z(h, c, d, a, b, X[11], 16, t[35])
    b = z(h, b, c, d, a, X[14], 23, t[36])
    a = z(h, a, b, c, d, X[1], 4, t[37])
    d = z(h, d, a, b, c, X[4], 11, t[38])
    c = z(h, c, d, a, b, X[7], 16, t[39])
    b = z(h, b, c, d, a, X[10], 23, t[40])
    a = z(h, a, b, c, d, X[13], 4, t[41])
    d = z(h, d, a, b, c, X[0], 11, t[42])
    c = z(h, c, d, a, b, X[3], 16, t[43])
    b = z(h, b, c, d, a, X[6], 23, t[44])
    a = z(h, a, b, c, d, X[9], 4, t[45])
    d = z(h, d, a, b, c, X[12], 11, t[46])
    c = z(h, c, d, a, b, X[15], 16, t[47])
    b = z(h, b, c, d, a, X[2], 23, t[48])
    a = z(i, a, b, c, d, X[0], 6, t[49])
    d = z(i, d, a, b, c, X[7], 10, t[50])
    c = z(i, c, d, a, b, X[14], 15, t[51])
    b = z(i, b, c, d, a, X[5], 21, t[52])
    a = z(i, a, b, c, d, X[12], 6, t[53])
    d = z(i, d, a, b, c, X[3], 10, t[54])
    c = z(i, c, d, a, b, X[10], 15, t[55])
    b = z(i, b, c, d, a, X[1], 21, t[56])
    a = z(i, a, b, c, d, X[8], 6, t[57])
    d = z(i, d, a, b, c, X[15], 10, t[58])
    c = z(i, c, d, a, b, X[6], 15, t[59])
    b = z(i, b, c, d, a, X[13], 21, t[60])
    a = z(i, a, b, c, d, X[4], 6, t[61])
    d = z(i, d, a, b, c, X[11], 10, t[62])
    c = z(i, c, d, a, b, X[2], 15, t[63])
    b = z(i, b, c, d, a, X[9], 21, t[64])
    return bit_and(A + a, 0xFFFFFFFF), bit_and(B + b, 0xFFFFFFFF), bit_and(C + c, 0xFFFFFFFF), bit_and(
        D + d,
        0xFFFFFFFF
    )
end
local function md5_update(self, s)
    self.pos = self.pos + #s
    s = self.buf .. s
    for ii = 1, #s - 63, 64 do
        local X = cut_le_str(sub(s, ii, ii + 63), 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4)
        assert(#X == 16)
        X[0] = table.remove(X, 1) 
        self.a, self.b, self.c, self.d = transform(self.a, self.b, self.c, self.d, X)
    end
    self.buf = sub(s, math.floor(#s / 64) * 64 + 1, #s)
    return self
end
local function md5_finish(self)
    local msgLen = self.pos
    local padLen = 56 - msgLen % 64
    if msgLen % 64 > 56 then
        padLen = padLen + 64
    end
    if padLen == 0 then
        padLen = 64
    end
    local s = char(128) ..
        rep(char(0), padLen - 1) .. lei2str(bit_and(8 * msgLen, 0xFFFFFFFF)) .. lei2str(math.floor(msgLen / 0x20000000))
    md5_update(self, s)
    assert(self.pos % 64 == 0)
    return lei2str(self.a) .. lei2str(self.b) .. lei2str(self.c) .. lei2str(self.d)
end
function md5.new()
    return {
        a = CONSTS[65],
        b = CONSTS[66],
        c = CONSTS[67],
        d = CONSTS[68],
        pos = 0,
        buf = "",
        update = md5_update,
        finish = md5_finish
    }
end
function md5.tohex(s)
    return format(
        "%08x%08x%08x%08x",
        str2bei(sub(s, 1, 4)),
        str2bei(sub(s, 5, 8)),
        str2bei(sub(s, 9, 12)),
        str2bei(sub(s, 13, 16))
    )
end
function md5.sum(s)
    return md5.new():update(s):finish()
end
function md5.sumhexa(s)
    return md5.tohex(md5.sum(s))
end
hRuntime = {
    
    register = {
        unit = function(json)
            hslk_global.unitsKV[json.UNIT_ID] = json
        end,
        item = function(json)
            hslk_global.itemsKV[json.ITEM_ID] = json
            if (type(json.SHADOW_ID) == "string") then
                hslk_global.itemsShadowKV[json.ITEM_ID] = json.SHADOW_ID
                hslk_global.itemsFaceKV[json.SHADOW_ID] = json.ITEM_ID
            end
        end,
        ability = function(json)
            hslk_global.abilitiesKV[json.ABILITY_ID] = json
        end
    },
    is = {},
    sound = {},
    env = {},
    camera = {},
    event = {
        register = {},
        trigger = {}
    },
    textTag = {},
    rect = {},
    player = {},
    unit = {},
    hero = {},
    heroBuildSelection = {},
    skill = {},
    attribute = {},
    attributeDiff = {},
    attributeDamaging = {},
    attributeGroup = {
        life_back = {},
        mana_back = {},
        punish = {}
    },
    attributeThreeBuff = {
        
        
        str = {
            life = 10, 
            life_back = 0.1 
        },
        agi = {
            attack_white = 1, 
            defend = 0.01 
        },
        int = {
            attack_green = 1, 
            mana = 6, 
            mana_back = 0.05 
        }
    },
    item = {},
    itemPickPool = {},
    leaderBoard = {},
    multiBoard = {},
    dialog = {}
}
hRuntime.clear = function(handle)
    if (handle == nil) then
        return
    end
    if (hRuntime.is[handle] ~= nil) then
        hRuntime.is[handle] = nil
    end
    if (hRuntime.sound[handle] ~= nil) then
        hRuntime.sound[handle] = nil
    end
    if (hRuntime.env[handle] ~= nil) then
        hRuntime.env[handle] = nil
    end
    if (hRuntime.camera[handle] ~= nil) then
        hRuntime.camera[handle] = nil
    end
    if (hRuntime.event[handle] ~= nil) then
        hRuntime.event[handle] = nil
    end
    if (hRuntime.event.register[handle] ~= nil) then
        hRuntime.event.register[handle] = nil
    end
    if (hRuntime.event.trigger[handle] ~= nil) then
        hRuntime.event.trigger[handle] = nil
    end
    if (hRuntime.textTag[handle] ~= nil) then
        hRuntime.textTag[handle] = nil
    end
    if (hRuntime.rect[handle] ~= nil) then
        hRuntime.rect[handle] = nil
    end
    if (hRuntime.player[handle] ~= nil) then
        hRuntime.player[handle] = nil
    end
    if (hRuntime.unit[handle] ~= nil) then
        hRuntime.unit[handle] = nil
    end
    if (hRuntime.hero[handle] ~= nil) then
        hRuntime.hero[handle] = nil
    end
    if (hRuntime.heroBuildSelection[handle] ~= nil) then
        hRuntime.heroBuildSelection[handle] = nil
    end
    if (hRuntime.skill[handle] ~= nil) then
        hRuntime.skill[handle] = nil
    end
    if (hRuntime.attribute[handle] ~= nil) then
        hRuntime.attribute[handle] = nil
    end
    if (hRuntime.attributeDiff[handle] ~= nil) then
        hRuntime.attributeDiff[handle] = nil
    end
    if (hRuntime.attributeDamaging[handle] ~= nil) then
        hRuntime.attributeDamaging[handle] = nil
    end
    if (hRuntime.item[handle] ~= nil) then
        hRuntime.item[handle] = nil
    end
    if (hRuntime.leaderBoard[handle] ~= nil) then
        hRuntime.leaderBoard[handle] = nil
    end
    if (hRuntime.multiBoard[handle] ~= nil) then
        hRuntime.multiBoard[handle] = nil
    end
end
for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
    local p = cj.Player(i - 1)
    
    hRuntime.is[i] = {}
    hRuntime.is[i].isComputer = true
    hRuntime.is[i].isAutoConvertGoldToLumber = true
    
    hRuntime.sound[i] = {}
    hRuntime.sound[i].currentBgm = nil
    hRuntime.sound[i].bgmDelay = 3.00
    
    hRuntime.player[i] = {}
    
    hRuntime.camera[i] = {}
    hRuntime.camera[i].model = "normal" 
    hRuntime.camera[i].isShocking = false
end
table.len = function(table)
    local len = 0
    for _, _ in pairs(table) do
        len = len + 1
    end
    return len
end
table.random = function(arr)
    local val
    if (#arr > 0) then
        val = arr[math.random(1, #arr)]
    else
        print_err()
    end
    return val
end
table.clone = function(org)
    local function copy(org1, res)
        for _, v in ipairs(org1) do
            if type(v) ~= "table" then
                table.insert(res, v)
            else
                local rl = #res + 1
                res[rl] = {}
                copy(v, res[rl])
            end
        end
    end
    local res = {}
    copy(org, res)
    return res
end
table.merge = function(table1, table2)
    local tempTable
    if (table1 ~= nil) then
        tempTable = table1
    else
        tempTable = {}
    end
    if (table2 == nil) then
        return tempTable
    end
    for _, v in ipairs(table2) do
        table.insert(tempTable, v)
    end
    return tempTable
end
table.includes = function(val, arr)
    local isin = false
    if (val == nil or #arr <= 0) then
        return isin
    end
    for _, v in ipairs(arr) do
        if (v == val) then
            isin = true
            break
        end
    end
    return isin
end
table.delete = function(val, arr, qty)
    qty = qty or -1
    local q = 0
    for k, v in ipairs(arr) do
        if (v == val) then
            q = q + 1
            table.remove(arr, k)
            k = k - 1
            if (qty ~= -1 and q >= qty) then
                break
            end
        end
    end
end
table.obj2arr = function(obj, keyMap)
    if (keyMap == nil or type(keyMap) ~= "table" or #keyMap <= 0) then
        return {}
    end
    local arr = {}
    for _, a in ipairs(keyMap) do
        if (obj[a] ~= nil) then
            table.insert(
                arr,
                {
                    key = a,
                    value = obj[a]
                }
            )
        end
    end
    return arr
end
string.char2id = function(idChar)
    if (idChar == nil or type(idChar) ~= "string") then
        print_stack()
        return
    end
    local len = string.len(idChar)
    local id = 0
    for i = 1, len, 1 do
        if (i == 1) then
            id = string.byte(idChar, i)
        else
            id = id * 256 + string.byte(idChar, i)
        end
    end
    return id
end
string.id2char = function(id)
    if (id == nil or type(id) ~= "number") then
        print_stack()
        print(id)
        return
    end
    return string.char(id // 0x1000000) ..
        string.char(id // 0x10000 % 0x100) .. string.char(id // 0x100 % 0x100) .. string.char(id % 0x100)
end
string.mb_len = function(inputstr)
    local lenInByte = #inputstr
    local width = 0
    local i = 1
    while (i <= lenInByte) do
        local curByte = string.byte(inputstr, i)
        local byteCount = 1
        if curByte > 0 and curByte <= 127 then
            byteCount = 1 
        elseif curByte >= 192 and curByte < 223 then
            byteCount = 2 
        elseif curByte >= 224 and curByte < 239 then
            byteCount = 3 
        elseif curByte >= 240 and curByte <= 247 then
            byteCount = 4 
        end
        local char = string.sub(inputstr, i, i + byteCount - 1)
        i = i + byteCount 
        width = width + 1 
    end
    return width
end
string.md5 = function(t)
    if (type(t) == "string") then
        return md5.sumhexa(t)
    elseif (type(t) == "table") then
        table.sort(t)
        return md5.sumhexa(json.stringify(t))
    end
    print_err("MD5 fail!")
    return
end
string.vkey = function(t)
    if (type(t) == "string") then
        return t
    elseif (type(t) == "table") then
        local j = ""
        if (#t > 0) then
            for _, v in ipairs(t) do
                if (type(v) == "table") then
                    v = "_T_"
                else
                    v = tostring(v)
                end
                j = j .. v
            end
        else
            j = "_"
        end
        return j
    end
end
string.addslashes = function(s)
    local in_char = { "\\", '"', "/", "\b", "\f", "\n", "\r", "\t" }
    local out_char = { "\\", '"', "/", "b", "f", "n", "r", "t" }
    for i, c in ipairs(in_char) do
        s = s:gsub(c, "\\" .. out_char[i])
    end
    return s
end
string.stripslashes = function(s)
    local in_char = { "\\", '"', "/", "b", "f", "n", "r", "t" }
    local out_char = { "\\", '"', "/", "\b", "\f", "\n", "\r", "\t" }
    for i, c in ipairs(in_char) do
        s = s:gsub("\\" .. c, out_char[i])
    end
    return s
end
string.base64Encode = function(source_str)
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local s64 = ""
    local str = source_str
    while #str > 0 do
        local bytes_num = 0
        local buf = 0
        for byte_cnt = 1, 3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end
        for group_cnt = 1, (bytes_num + 1) do
            local b64char = math.fmod(math.floor(buf / 262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end
        for fill_cnt = 1, (3 - bytes_num) do
            s64 = s64 .. "="
        end
    end
    return s64
end
string.base64Decode = function(str64)
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local temp = {}
    for i = 1, 64 do
        temp[string.sub(b64chars, i, i)] = i
    end
    temp["="] = 0
    local str = ""
    for i = 1, #str64, 4 do
        if i > #str64 then
            break
        end
        local data = 0
        local str_count = 0
        for j = 0, 3 do
            local str1 = string.sub(str64, i + j, i + j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1] - 1
                str_count = str_count + 1
            end
        end
        for j = 16, 0, -8 do
            if str_count > 0 then
                str = str .. string.char(math.floor(data / math.pow(2, j)))
                data = math.mod(data, math.pow(2, j))
                str_count = str_count - 1
            end
        end
    end
    local last = tonumber(string.byte(str, string.len(str), string.len(str)))
    if last == 0 then
        str = string.sub(str, 1, string.len(str) - 1)
    end
    return str
end
string.explode = function(delimeter, str)
    local res = {}
    local start, start_pos, end_pos = 1, 1, 1
    while true do
        start_pos, end_pos = string.find(str, delimeter, start, true)
        if not start_pos then
            break
        end
        table.insert(res, string.sub(str, start, start_pos - 1))
        start = end_pos + 1
    end
    table.insert(res, string.sub(str, start))
    return res
end
string.implode = function(delimeter, table)
    local str
    for _, v in ipairs(table) do
        if (str == nil) then
            str = v
        else
            str = str .. delimeter .. v
        end
    end
    return str
end
string.strpos = function(str, pattern)
    if (str == nil or pattern == nil) then
        return false
    end
    local s = string.find(str, pattern, 0)
    if (type(s) == "number") then
        return s
    else
        return false
    end
end
string.findCount = function(str, pattern)
    if (str == nil or pattern == nil) then
        return
    end
    local s
    local e = 0
    local qty = 0
    while (true) do
        s, e = string.find(str, pattern, e + 1)
        if (s == nil) then
            break
        end
        qty = qty + 1
        if (e == nil) then
            break
        end
    end
    return qty
end
math.polarProjection = function(x, y, dist, angle)
    return {
        x = x + dist * math.cos(angle * bj_DEGTORAD),
        y = y + dist * math.sin(angle * bj_DEGTORAD)
    }
end
math.round = function(decimal)
    return math.floor((decimal * 100) + 0.5) * 0.01
end
math.numberFormat = function(value)
    local txt = ""
    if (value > 10000 * 10000 * 10000 * 10000) then
        txt = string.format("%.2f", value / 10000 * 10000 * 10000 * 10000) .. "亿亿"
    elseif (value > 10000 * 10000 * 10000) then
        txt = string.format("%.2f", value / 10000 * 10000 * 10000) .. "万亿"
    elseif (value > 10000 * 10000) then
        txt = string.format("%.2f", value / 10000 * 10000) .. "亿"
    elseif (value > 10000) then
        txt = string.format("%.2f", value / 10000) .. "万"
    elseif (value > 1000) then
        txt = string.format("%.2f", value / 1000) .. "千"
    else
        txt = string.format("%.2f", value)
    end
    return txt
end
math.getDegBetweenXY = function(x1, y1, x2, y2)
    return bj_RADTODEG * cj.Atan2(y2 - y1, x2 - x1)
end
math.getDegBetweenLoc = function(l1, l2)
    if (l1 == nil or l2 == nil) then
        return 0
    end
    return math.getDegBetweenXY(cj.GetLocationX(l1), cj.GetLocationY(l1), cj.GetLocationX(l2), cj.GetLocationY(l2))
end
math.getDegBetweenUnit = function(u1, u2)
    if (u1 == nil or u2 == nil) then
        return 0
    end
    return math.getDegBetweenXY(cj.GetUnitX(u1), cj.GetUnitY(u1), cj.GetUnitX(u2), cj.GetUnitY(u2))
end
math.getDistanceBetweenXY = function(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    return cj.SquareRoot(dx * dx + dy * dy)
end
math.getDistanceBetweenLoc = function(l1, l2)
    return math.getDistanceBetweenXY(cj.GetLocationX(l1), cj.GetLocationY(l1), cj.GetLocationX(l2), cj.GetLocationY(l2))
end
math.getDistanceBetweenUnit = function(u1, u2)
    return math.getDistanceBetweenXY(cj.GetUnitX(u1), cj.GetUnitY(u1), cj.GetUnitX(u2), cj.GetUnitY(u2))
end
math.getMaxDistanceInRect = function(w, h, deg)
    w = w or 0
    h = h or 0
    if (w <= 0 or h <= 0) then
        return
    end
    local distance = 0
    local lockDegA = (180 * cj.Atan(h / w)) / bj_PI
    local lockDegB = 90 - lockDegA
    if (deg == 0 or deg == 180 or deg == -180) then
        
        distance = w
    elseif (deg == 90 or deg == -90) then
        
        distance = h
    elseif (deg > 0 and deg <= lockDegA) then
        
        distance = w / 2 / math.cos(deg * bj_DEGTORAD)
    elseif (deg > lockDegA and deg < 90) then
        
        distance = h / 2 / math.cos(90 - deg * bj_DEGTORAD)
    elseif (deg > 90 and deg <= 90 + lockDegB) then
        
        distance = h / 2 / math.cos((deg - 90) * bj_DEGTORAD)
    elseif (deg > 90 + lockDegB and deg < 180) then
        
        distance = w / 2 / math.cos((180 - deg) * bj_DEGTORAD)
    elseif (deg < 0 and deg >= -lockDegA) then
        
        distance = w / 2 / math.cos(deg * bj_DEGTORAD)
    elseif (deg < lockDegA and deg > -90) then
        
        distance = h / 2 / math.cos((90 + deg) * bj_DEGTORAD)
    elseif (deg < -90 and deg >= -90 - lockDegB) then
        
        distance = h / 2 / math.cos((-deg - 90) * bj_DEGTORAD)
    elseif (deg < -90 - lockDegB and deg > -180) then
        
        distance = w / 2 / math.cos((180 + deg) * bj_DEGTORAD)
    end
    return distance
end
hColor = {
    mixed = function(str, color)
        if (str == nil or color == nil) then
            print_stack()
            return str
        end
        return "|cff" .. color .. str .. "|r"
    end
}
hColor.gold = function(str)
    return hColor.mixed(str, "ffcc00")
end
hColor.white = function(str)
    return hColor.mixed(str, "ffffff")
end
hColor.black = function(str)
    return hColor.mixed(str, "000000")
end
hColor.grey = function(str)
    return hColor.mixed(str, "c0c0c0")
end
hColor.redLight = function(str)
    return hColor.mixed(str, "ff8080")
end
hColor.red = function(str)
    return hColor.mixed(str, "ff3939")
end
hColor.greenLight = function(str)
    return hColor.mixed(str, "ccffcc")
end
hColor.green = function(str)
    return hColor.mixed(str, "80ff00")
end
hColor.yellowLight = function(str)
    return hColor.mixed(str, "ffffcc")
end
hColor.yellow = function(str)
    return hColor.mixed(str, "ffff00")
end
hColor.skyLight = function(str)
    return hColor.mixed(str, "ccffff")
end
hColor.sky = function(str)
    return hColor.mixed(str, "80ffff")
end
hColor.seaLight = function(str)
    return hColor.mixed(str, "99ccff")
end
hColor.sea = function(str)
    return hColor.mixed(str, "00ccff")
end
hColor.purpleLight = function(str)
    return hColor.mixed(str, "ee82ee")
end
hColor.purple = function(str)
    return hColor.mixed(str, "ff59ff")
end
local txt = ""
txt = txt .. "h-lua完全独立，不依赖任何游戏平台（如YDWE、JAPI、DzApi * 支持使用）"
txt = txt .. "|n包含多样丰富的属性系统，可以轻松做出平时难以甚至不能做出的地图效果"
txt = txt .. "|n内置多达几十种以上的自定义事件，轻松实现神奇的主动和被动效果"
txt = txt .. "|n自带物品合成，免去自行编写的困惑。丰富的自定义技能模板"
txt = txt .. "|n镜头、单位组、过滤器、背景音乐、天气等也应有尽有"
txt = txt .. "|n想要了解更多，官方QQ群：325338043 官网教程：hlua.book.hunzsig.org"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "h-lua",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
txt = ""
txt = txt .. "-random 随机选择"
txt = txt .. "|n-repick 重新选择"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "选择英雄指令",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
txt = ""
txt = txt .. "-apc 设定是否自动转换黄金为木头"
txt = txt .. "|n获得黄金超过100万时，自动按照比率转换多余的部分为木头"
txt = txt .. "|n如果超过时没有开启，会寄存下来，待开启再转换(上限1000万)"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "设定自动转金为木",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
txt = ""
txt = txt .. "-apm 查看你的APM数值"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "查看你的APM数值",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
txt = ""
txt = txt .. "+[number] 增加视距|n-[number] 减少视距"
txt = txt .. "|n * 视距自动设置上下限，请放心设置"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "调整你的视距",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
txt = ""
txt = txt .. "-eff 开关特效"
txt = txt .. "|n这个命令只有在单人时有效，可关闭大部分的特效"
bj.CreateQuestBJ(
    bj_QUESTTYPE_OPT_DISCOVERED,
    "开关特效[单人]",
    txt,
    "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
)
local HSK = {
    COMMON = 99,
    PLAYER_MAP_LEVEL_AWARD_MAX = 100,
    PLAYER_MAP_LEVEL_AWARD = 101,
    UNIT_TOKEN = 102,
    UNIT_TOKEN_LEAP = 103,
    UNIT_TREE = 104,
    SKILL_ITEM_SEPARATE = 105,
    SKILL_BREAK = 106,
    SKILL_SWIM_UNLIMIT = 107,
    SKILL_INVISIBLE = 108,
    SKILL_HERO_TAVERN_SELECTION = 109,
    UNIT_HERO_TAVERN = 110,
    UNIT_HERO_TAVERN_TOKEN = 111,
    UNIT_HERO_DEATH_TOKEN = 112,
    ITEM_MOMENT = 113,
    ATTR_STR_GREEN_ADD = 114,
    ATTR_STR_GREEN_SUB = 115,
    ATTR_AGI_GREEN_ADD = 116,
    ATTR_AGI_GREEN_SUB = 117,
    ATTR_INT_GREEN_ADD = 118,
    ATTR_INT_GREEN_SUB = 119,
    ATTR_ATTACK_GREEN_ADD = 120,
    ATTR_ATTACK_GREEN_SUB = 121,
    ATTR_ATTACK_WHITE_ADD = 122,
    ATTR_ATTACK_WHITE_SUB = 123,
    ATTR_ITEM_ATTACK_WHITE_ADD = 124,
    ATTR_ITEM_ATTACK_WHITE_SUB = 125,
    ATTR_ATTACK_SPEED_ADD = 126,
    ATTR_ATTACK_SPEED_SUB = 127,
    ATTR_DEFEND_ADD = 128,
    ATTR_DEFEND_SUB = 129,
    ATTR_MANA_ADD = 130,
    ATTR_MANA_SUB = 131,
    ATTR_LIFE_ADD = 132,
    ATTR_LIFE_SUB = 133,
    ATTR_AVOID_ADD = 134,
    ATTR_AVOID_SUB = 135,
    ATTR_SIGHT_ADD = 136,
    ATTR_SIGHT_SUB = 137,
    ENV_MODEL_NAME = 138,
    ENV_MODEL = 139,
    EX_SHAPESHIFT = 200
}
hslk_global = {
    dzapi_map_level_award = {},
    item_moment = {},
    env_model = {},
    skill_item_separate = 0,
    skill_break = {},
    skill_swim_unlimit = 0,
    skill_hero_tavern_selection = 0,
    skill_shapeshift = {},
    unit_token = 0,
    unit_token_leap = 0,
    unit_hero_tavern = 0, 
    unit_hero_tavern_token = 0, 
    unit_hero_death_token = 0,
    heroesLen = 0,
    heroes = {},
    heroesKV = {},
    heroesItems = {},
    heroesItemsKV = {},
    unitsKV = {},
    itemsKV = {},
    itemsShadowKV = {},
    itemsFaceKV = {},
    abilitiesKV = {},
    attr = {
        agi_green = {
            add = {},
            sub = {}
        },
        int_green = {
            add = {},
            sub = {}
        },
        str_green = {
            add = {},
            sub = {}
        },
        attack_green = {
            add = {},
            sub = {}
        },
        attack_white = {
            add = {},
            sub = {}
        },
        item_attack_white = {
            add = {},
            sub = {}
        },
        attack_speed = {
            add = {},
            sub = {}
        },
        defend = {
            add = {},
            sub = {}
        },
        life = {
            add = {},
            sub = {}
        },
        mana = {
            add = {},
            sub = {}
        },
        avoid = {
            add = 0,
            sub = 0
        },
        sight = {
            add = {},
            sub = {}
        },
        ablisGradient = {},
        sightGradient = {}
    }
}
hslk_global.skill_item_separate = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_ITEM_SEPARATE)
for dur = 1, 10, 1 do
    local swDur = dur * 0.05
    hslk_global.skill_break[swDur] = cj.LoadInteger(cg.hash_hslk, HSK.SKILL_BREAK, dur)
end
hslk_global.skill_swim_unlimit = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_SWIM_UNLIMIT)
hslk_global.skill_invisible = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_INVISIBLE)
hslk_global.skill_hero_tavern_selection = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.SKILL_HERO_TAVERN_SELECTION)
hslk_global.unit_token = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_TOKEN)
hslk_global.unit_token_leap = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_TOKEN_LEAP)
hslk_global.unit_tree = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_TREE)
hslk_global.unit_hero_tavern = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_HERO_TAVERN)
hslk_global.unit_hero_tavern_token = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_HERO_TAVERN_TOKEN)
hslk_global.unit_hero_death_token = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.UNIT_HERO_DEATH_TOKEN)
local qty = cj.LoadInteger(cg.hash_hslk, HSK.PLAYER_MAP_LEVEL_AWARD, -1)
for i = 1, qty do
    table.insert(hslk_global.dzapi_map_level_award, cj.LoadInteger(cg.hash_hslk, HSK.PLAYER_MAP_LEVEL_AWARD, i))
end
qty = cj.LoadInteger(cg.hash_hslk, HSK.ITEM_MOMENT, -1)
for i = 1, qty do
    table.insert(hslk_global.item_moment, cj.LoadInteger(cg.hash_hslk, HSK.ITEM_MOMENT, i))
end
qty = cj.LoadInteger(cg.hash_hslk, HSK.COMMON, HSK.ENV_MODEL)
for i = 1, qty do
    local key = cj.LoadStr(cg.hash_hslk, HSK.ENV_MODEL_NAME, i)
    local val = cj.LoadInteger(cg.hash_hslk, HSK.ENV_MODEL, i)
    hslk_global.env_model[key] = val
end
for i = 1, 9 do
    local val = math.floor(10 ^ (i - 1))
    table.insert(hslk_global.attr.ablisGradient, val)
    hslk_global.attr.str_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_STR_GREEN_ADD, val)
    hslk_global.attr.str_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_STR_GREEN_SUB, val)
    hslk_global.attr.agi_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AGI_GREEN_ADD, val)
    hslk_global.attr.agi_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AGI_GREEN_SUB, val)
    hslk_global.attr.int_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_INT_GREEN_ADD, val)
    hslk_global.attr.int_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_INT_GREEN_SUB, val)
    hslk_global.attr.attack_green.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_GREEN_ADD, val)
    hslk_global.attr.attack_green.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_GREEN_SUB, val)
    hslk_global.attr.attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_WHITE_ADD, val)
    hslk_global.attr.attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_WHITE_SUB, val)
    hslk_global.attr.item_attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ITEM_ATTACK_WHITE_ADD, val)
    hslk_global.attr.item_attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ITEM_ATTACK_WHITE_SUB, val)
    hslk_global.attr.attack_speed.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_SPEED_ADD, val)
    hslk_global.attr.attack_speed.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_ATTACK_SPEED_SUB, val)
    hslk_global.attr.defend.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_DEFEND_ADD, val)
    hslk_global.attr.defend.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_DEFEND_SUB, val)
    hslk_global.attr.life.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_LIFE_ADD, val)
    hslk_global.attr.life.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_LIFE_SUB, val)
    hslk_global.attr.mana.add[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_MANA_ADD, val)
    hslk_global.attr.mana.sub[val] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_MANA_SUB, val)
end
hslk_global.attr.avoid.add = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AVOID_ADD, 0)
hslk_global.attr.avoid.sub = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_AVOID_SUB, 0)
local sightBase = {1, 2, 3, 4, 5}
local si = 1
while (si <= 10000) do
    for _, v in ipairs(sightBase) do
        v = math.floor(v * si)
        table.insert(hslk_global.attr.sightGradient, v)
        hslk_global.attr.sight.add[v] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_SIGHT_ADD, v)
        hslk_global.attr.sight.sub[v] = cj.LoadInteger(cg.hash_hslk, HSK.ATTR_SIGHT_SUB, v)
    end
    si = si * 10
end
table.sort(
    hslk_global.attr.sightGradient,
    function(a, b)
        return a > b
    end
)
local toUnitId = cj.LoadInteger(cg.hash_hslk, HSK.EX_SHAPESHIFT, 1)
local toAbilityId = cj.LoadInteger(cg.hash_hslk, HSK.EX_SHAPESHIFT, 2)
local backAbilityId = cj.LoadInteger(cg.hash_hslk, HSK.EX_SHAPESHIFT, 3)
hslk_global.skill_shapeshift[toUnitId] = {
    toAbilityId = toAbilityId,
    backAbilityId = backAbilityId
}
cj.FlushParentHashtable(cg.hash_hslk)
hdzapi = {
    enable = false,
    commandHashCache = {},
    mallItemCheater = {},
    commandHash = function(command)
        if (hdzapi.commandHashCache[command] == nil) then
            hdzapi.commandHashCache[command] = cj.StringHash(command)
        end
        return hdzapi.commandHashCache[command]
    end,
    exec = function(command, ...)
        if (hdzapi.enable ~= true) then
            print_err("Please copy ./plugin/dzapi.jass")
            return
        end
        local whichPlayer = select("1", ...)
        local key = select("2", ...)
        local data = select("3", ...)
        if (whichPlayer == nil) then
            return
        end
        if (his.playing(whichPlayer) == false) then
            return
        end
        cj.SavePlayerHandle(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_PLAYER, whichPlayer)
        if (key ~= nil) then
            cj.SaveStr(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_KEY, key)
        end
        if (data ~= nil) then
            cj.SaveStr(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_DATA, data)
        end
        cj.ExecuteFunc(command)
        local res = cj.LoadStr(cg.hash_hlua_dzapi, hdzapi.commandHash(command), cg.HLDK_RESULT)
        if (type(res) == "string") then
            return res
        end
    end
}
hdzapi.init = function()
    hdzapi.enable = true
end
hdzapi.isVipRed = function(whichPlayer)
    return hdzapi.exec("Hlua_DzAPI_Map_IsRedVIP", whichPlayer) == "1"
end
hdzapi.isVipBlue = function(whichPlayer)
    return hdzapi.exec("Hlua_DzAPI_Map_IsBlueVIP", whichPlayer) == "1"
end
hdzapi.mapLv = function(whichPlayer)
    local lv = hdzapi.exec("Hlua_DzAPI_Map_GetMapLevel", whichPlayer)
    if (lv == nil or lv == "") then
        lv = 1
    else
        lv = math.floor(lv)
    end
    if (lv < 1) then
        lv = 1
    end
    return lv
end
hdzapi.hasMallItem = function(whichPlayer, key)
    if (whichPlayer == nil or key == nil) then
        return false
    end
    if (hdzapi.mallItemCheater[whichPlayer] == true) then
        return true
    end
    key = string.upper(key)
    return hdzapi.exec("Hlua_DzAPI_Map_HasMallItem", whichPlayer, key) == "1"
end
hdzapi.setMallItemCheater = function(whichPlayer)
    if (whichPlayer == nil) then
        return
    end
    hdzapi.mallItemCheater[whichPlayer] = true
end
hdzapi.server = {}
hdzapi.server.ready = function(whichPlayer)
    return hdzapi.exec("Hlua_DzAPI_GetPlayerServerValueSuccess", whichPlayer) == "1"
end
hdzapi.setRoomStat = function(whichPlayer, key, text)
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("Hlua_DzAPI_Map_Stat_SetStat", whichPlayer, tostring(key), tostring(text))
    end
end
hdzapi.server.save = function(whichPlayer, key, data)
    if (data == nil) then
        return
    end
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("Hlua_DzAPI_Map_SaveServerValue", whichPlayer, key, tostring(data))
    end
end
hdzapi.server.load = function(whichPlayer, key)
    if (hdzapi.server.ready(whichPlayer) == true) then
        return hdzapi.exec("Hlua_DzAPI_Map_GetServerValue", whichPlayer, key)
    end
end
hdzapi.server.clear = function(whichPlayer, key)
    if (hdzapi.server.ready(whichPlayer) == true) then
        hdzapi.exec("Hlua_DzAPI_Map_SaveServerValue", whichPlayer, key, "")
    end
end
hdzapi.server.set = {
    int = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "I" .. key, data or 0)
    end,
    real = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "R" .. key, data or 0)
    end,
    bool = function(whichPlayer, key, data)
        local b = "0"
        if (data == true) then
            b = "1"
        end
        hdzapi.server.save(whichPlayer, "B" .. key, b)
    end,
    str = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, data)
    end,
    unit = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, hunit.getId(data))
    end,
    item = function(whichPlayer, key, data)
        hdzapi.server.save(whichPlayer, "S" .. key, hitem.getId(data))
    end
}
hdzapi.server.get = {
    int = function(whichPlayer, key)
        local val = hdzapi.server.load(whichPlayer, "I" .. key) or 0
        if (val == "") then
            val = 0
        end
        return math.floor(val)
    end,
    real = function(whichPlayer, key)
        local val = hdzapi.server.load(whichPlayer, "R" .. key) or 0
        if (val == "") then
            val = 0
        end
        return math.round(val)
    end,
    bool = function(whichPlayer, key)
        local b = hdzapi.server.load(whichPlayer, "B" .. key)
        if (b == "1") then
            return true
        end
        return false
    end,
    str = function(whichPlayer, key)
        return hdzapi.server.load(whichPlayer, "S" .. key) or ""
    end,
    unit = function(whichPlayer, key)
        local id = hdzapi.server.load(whichPlayer, "S" .. key) or ""
        if (string.len(id) > 0) then
            return string.char2id(id)
        end
        return nil
    end,
    item = function(whichPlayer, key)
        local id = hdzapi.server.load(whichPlayer, "S" .. key) or ""
        if (string.len(id) > 0) then
            return string.char2id(id)
        end
        return nil
    end
}
htime = {
    
    count = 0,
    
    hour = 0,
    
    min = 0,
    
    sec = 0,
    
    pool = {},
    
    kernel = {}
}
htime.clock = function()
    htime.count = htime.count + 1
    htime.sec = htime.sec + 1
    if (htime.sec >= 60) then
        htime.sec = 0
        htime.min = htime.min + 1
        if (htime.min >= 60) then
            htime.hour = htime.hour + 1
            htime.min = 0
        end
    end
end
htime.his = function()
    local str = ""
    if (htime.hour < 10) then
        str = str .. "0" .. htime.hour
    else
        str = str .. htime.hour
    end
    str = str .. ":"
    if (htime.min < 10) then
        str = str .. "0" .. htime.min
    else
        str = str .. htime.min
    end
    str = str .. ":"
    if (htime.sec < 10) then
        str = str .. "0" .. htime.sec
    else
        str = str .. htime.sec
    end
    return str
end
htime.timerInPool = function()
    local t
    local td
    for _, v in ipairs(htime.pool) do
        if (v.free == true) then
            v.free = false
            t = v.timer
            td = v.dialog
            break
        end
    end
    if (t == nil) then
        t = cj.CreateTimer()
        td = cj.CreateTimerDialog(t)
        table.insert(
            htime.pool,
            {
                free = false,
                timer = t,
                dialog = td
            }
        )
    end
    return { t, td }
end
htime.timerInKernel = function(time, yourFunc, isInterval)
    local space = 0
    if (time >= 500) then
        space = 1
    elseif (time >= 100) then
        space = 0.5
    elseif (time >= 10) then
        space = 0.2
    elseif (time >= 1) then
        space = 0.1
    elseif (time >= 0.1) then
        space = 0.05
    else
        space = 0.01
    end
    if (type(isInterval) ~= "boolean") then
        isInterval = false
    end
    if (htime.kernel[space] == nil) then
        htime.kernel[space] = {}
        local t = cj.CreateTimer()
        cj.TimerStart(
            t,
            space,
            true,
            function()
                for k, v in ipairs(htime.kernel[space]) do
                    if (v.enable == true) then
                        v.remain = v.remain - space
                        if (v.remain <= 0) then
                            v.yourFunc(string.implode("_", { space, k }))
                            if (v.isInterval == true) then
                                v.remain = v.set
                            else
                                
                                v.enable = false
                            end
                        end
                    end
                end
            end
        )
    end
    local kernelClock = -1
    for k, v in ipairs(htime.kernel[space]) do
        if (v.enable == false) then
            kernelClock = k
            break
        end
    end
    if (kernelClock == -1) then
        table.insert(
            htime.kernel[space],
            {
                enable = true,
                isInterval = isInterval,
                set = time,
                remain = time,
                yourFunc = yourFunc
            }
        )
        kernelClock = #htime.kernel
    else
        htime.kernel[space][kernelClock] = {
            enable = true,
            isInterval = isInterval,
            set = time,
            remain = time,
            yourFunc = yourFunc
        }
    end
    return string.implode("_", { space, kernelClock })
end
htime.kernelInfo = function(t)
    local index = string.explode("_", t)
    local space = tonumber(index[1])
    local k = tonumber(index[2])
    return { space, k }
end
htime.getSetTime = function(t)
    if (type(t) == "userdata") then
        return cj.TimerGetTimeout(t)
    elseif (type(t) == "string") then
        local k = htime.kernelInfo(t)
        return htime.kernel[k[1]][k[2]].set
    end
    return 0
end
htime.getRemainTime = function(t)
    if (type(t) == "userdata") then
        return cj.TimerGetRemaining(t)
    elseif (type(t) == "string") then
        local k = htime.kernelInfo(t)
        return htime.kernel[k[1]][k[2]].remain
    end
    return 0
end
htime.getElapsedTime = function(t)
    if (type(t) == "userdata") then
        return cj.TimerGetElapsed(t)
    elseif (type(t) == "string") then
        local k = htime.kernelInfo(t)
        local set = htime.kernel[k[1]][k[2]].set
        local remain = htime.kernel[k[1]][k[2]].remain
        return set - remain
    end
    return 0
end
htime.delTimer = function(t)
    if (t == nil) then
        return
    elseif (type(t) == "userdata") then
        cj.PauseTimer(t)
        for _, v in ipairs(htime.pool) do
            if (t == v.timer) then
                cj.TimerDialogDisplay(v.dialog, false)
                v.free = true
            end
            break
        end
    elseif (type(t) == "string") then
        local k = htime.kernelInfo(t)
        if (htime.kernel[k[1]] ~= nil and htime.kernel[k[1]][k[2]] ~= nil) then
            htime.kernel[k[1]][k[2]].enable = false
        end
    end
end
htime.setTimeout = function(time, yourFunc, title)
    local t = htime.timerInKernel(time, yourFunc, false)
    if (title ~= nil) then
        local pool = htime.timerInPool()
        local t = pool[1]
        local td = pool[2]
        cj.TimerDialogSetTitle(td, title)
        cj.TimerDialogDisplay(td, true)
        cj.TimerStart(t, time, false, nil)
    end
    return t
end
htime.setInterval = function(time, yourFunc, title)
    local t = htime.timerInKernel(time, yourFunc, true)
    if (title ~= nil) then
        local pool = htime.timerInPool()
        local t = pool[1]
        local td = pool[2]
        cj.TimerDialogSetTitle(td, title)
        cj.TimerDialogDisplay(td, true)
        cj.TimerStart(t, time, true, nil)
    end
    return t
end
his = {}
his.set = function(handle, key, val)
    if (handle == nil or key == nil or val == nil) then
        print_stack()
        return
    end
    if (type(val) ~= "boolean") then
        print_err("his.set not boolean")
        return
    end
    if (hRuntime.is[handle] == nil) then
        hRuntime.is[handle] = {}
    end
    hRuntime.is[handle][key] = val
end
his.get = function(handle, key)
    if (handle == nil or key == nil) then
        return false
    end
    if (hRuntime.is[handle] == nil) then
        return false
    end
    if (hRuntime.is[handle][key] == nil) then
        return false
    end
    if (type(hRuntime.is[handle][key]) == "boolean") then
        return hRuntime.is[handle][key]
    else
        return false
    end
end
his.night = function()
    return (cj.GetTimeOfDay() <= 6.00 or cj.GetTimeOfDay() >= 18.00)
end
his.day = function()
    return (cj.GetTimeOfDay() > 6.00 and cj.GetTimeOfDay() < 18.00)
end
his.computer = function(whichPlayer)
    return his.get(whichPlayer, "isComputer")
end
his.autoConvertGoldToLumber = function(whichPlayer)
    return his.get(whichPlayer, "isAutoConvertGoldToLumber")
end
his.playerSite = function(whichPlayer)
    return cj.GetPlayerController(whichPlayer) == MAP_CONTROL_USER
end
his.playing = function(whichPlayer)
    return cj.GetPlayerSlotState(whichPlayer) == PLAYER_SLOT_STATE_PLAYING
end
his.neutral = function(whichPlayer)
    local flag = false
    if (whichPlayer == nil) then
        flag = false
    elseif (whichPlayer == cj.Player(PLAYER_NEUTRAL_AGGRESSIVE)) then
        flag = true
    elseif (whichPlayer == cj.Player(bj_PLAYER_NEUTRAL_VICTIM)) then
        flag = true
    elseif (whichPlayer == cj.Player(bj_PLAYER_NEUTRAL_EXTRA)) then
        flag = true
    elseif (whichPlayer == cj.Player(PLAYER_NEUTRAL_PASSIVE)) then
        flag = true
    end
    return flag
end
his.detected = function(whichUnit, whichPlayer)
    local flag = false
    if (whichUnit == nil or whichPlayer == nil) then
        flag = false
    elseif (cj.IsUnitDetected(whichUnit, whichPlayer) == true) then
        flag = true
    end
    return flag
end
his.hasSlot = function(whichUnit, slotId)
    if (slotId == nil) then
        slotId = hitem.DEFAULT_SKILL_ITEM_SLOT
    end
    return cj.GetUnitAbilityLevel(whichUnit, slotId) >= 1
end
his.death = function(whichUnit)
    return cj.GetUnitState(whichUnit, UNIT_STATE_LIFE) <= 0
end
his.alive = function(whichUnit)
    return cj.GetUnitState(whichUnit, UNIT_STATE_LIFE) > 0
end
his.deleted = function(whichUnit)
    return cj.GetUnitName(whichUnit) == nil
end
his.invincible = function(whichUnit)
    return cj.GetUnitAbilityLevel(whichUnit, hskill.BUFF_INVULNERABLE) > 0
end
his.invisible = function(whichUnit)
    return cj.GetUnitAbilityLevel(whichUnit, hskill.SKILL_INVISIBLE) > 0
end
his.hero = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_HERO) or his.get(whichUnit, "isHero") == true
end
his.building = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_STRUCTURE)
end
his.illusion = function(whichUnit)
    return cj.IsUnitIllusion(whichUnit)
end
his.ground = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_GROUND)
end
his.flying = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_FLYING)
end
his.melee = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_MELEE_ATTACKER)
end
his.ranged = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_MELEE_ATTACKER)
end
his.summoned = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_SUMMONED)
end
his.mechanical = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_MECHANICAL)
end
his.ancient = function(whichUnit)
    return cj.IsUnitType(whichUnit, UNIT_TYPE_ANCIENT)
end
his.locust = function(whichUnit)
    return cj.GetUnitAbilityLevel(whichUnit, string.char2id("Aloc")) > 0
end
his.swim = function(whichUnit)
    return his.get(whichUnit, "isSwim")
end
his.punish = function(whichUnit)
    return his.get(whichUnit, "isPunishing")
end
his.silent = function(whichUnit)
    return his.get(whichUnit, "isSilent")
end
his.unarm = function(whichUnit)
    return his.get(whichUnit, "isUnArm")
end
his.crackFly = function(whichUnit)
    return his.get(whichUnit, "isCrackFly")
end
his.damaging = function(whichUnit)
    return his.get(whichUnit, "isDamaging")
end
his.water = function(whichUnit)
    return cj.IsTerrainPathable(cj.GetUnitX(whichUnit), cj.GetUnitY(whichUnit), PATHING_TYPE_FLOATABILITY) == false
end
his.floor = function(whichUnit)
    return cj.IsTerrainPathable(cj.GetUnitX(whichUnit), cj.GetUnitY(whichUnit), PATHING_TYPE_FLOATABILITY) == true
end
his.unit = function(whichUnit, otherUnit)
    return whichUnit == otherUnit
end
his.enemy = function(whichUnit, otherUnit)
    return cj.IsUnitEnemy(whichUnit, cj.GetOwningPlayer(otherUnit))
end
his.ally = function(whichUnit, otherUnit)
    return cj.IsUnitAlly(whichUnit, cj.GetOwningPlayer(otherUnit))
end
his.enemyPlayer = function(whichUnit, whichPlayer)
    return cj.IsUnitEnemy(whichUnit, whichPlayer)
end
his.allyPlayer = function(whichUnit, whichPlayer)
    return cj.IsUnitAlly(whichUnit, whichPlayer)
end
his.borderRect = function(r, x, y)
    local flag = false
    if (x >= cj.GetRectMaxX(r) or x <= cj.GetRectMinX(r)) then
        flag = true
    end
    if (y >= cj.GetRectMaxY(r) or y <= cj.GetRectMinY(r)) then
        return true
    end
    return flag
end
his.borderMap = function(x, y)
    return cj.borderRect(cj.GetPlayableMapRect(), x, y)
end
his.ownItem = function(u, itemId)
    local f = false
    if (type(itemId) == "string") then
        itemId = string.char2id(itemId)
    end
    for i = 0, 5, 1 do
        local it = cj.UnitItemInSlot(u, i)
        if (it ~= nil and cj.GetItemTypeId(it) == itemId) then
            f = true
            break
        end
    end
    return f
end
hmessage = {}
hmessage.echo = function(msg, duration)
    for i = 0, bj_MAX_PLAYERS - 1, 1 do
        if (duration == nil or duration < 5) then
            cj.DisplayTextToPlayer(cj.Player(i), 0, 0, msg)
        else
            cj.DisplayTimedTextToPlayer(cj.Player(i), 0, 0, duration, msg)
        end
    end
end
hmessage.echoXY = function(whichPlayer, msg, x, y, duration)
    if (duration == nil or duration < 5) then
        cj.DisplayTextToPlayer(whichPlayer, x, y, msg)
    else
        cj.DisplayTimedTextToPlayer(whichPlayer, x, y, duration, msg)
    end
end
hmessage.echo00 = function(whichPlayer, msg, duration)
    hmessage.echoXY(whichPlayer, msg, 0, 0, duration)
end
hsound = {}
hsound.sound = function(s)
    if (s ~= nil) then
        cj.StartSound(s)
    end
end
hsound.sound2Player = function(s, whichPlayer)
    if (s ~= nil and cj.GetLocalPlayer() == whichPlayer) then
        cj.StartSound(s)
    end
end
hsound.sound2Unit = function(s, volumePercent, u)
    if (s ~= nil) then
        cj.AttachSoundToUnit(s, u)
        cj.SetSoundVolume(s, cj.R2I(volumePercent * cj.I2R(127) * 0.01))
        cj.StartSound(s)
    end
end
hsound.sound2XYZ = function(s, x, y, z)
    if (s ~= nil) then
        cj.SetSoundPosition(s, x, y, z)
    end
end
hsound.sound2Loc = function(s, loc)
    hsound.sound2XYZ(s, cj.GetLocationX(loc), cj.GetLocationY(loc), cj.GetLocationZ(loc))
end
hsound.bgm = function(musicFileName, whichPlayer)
    if (musicFileName ~= nil and string.len(musicFileName) > 0) then
        if (whichPlayer ~= nil) then
            local index = hplayer.index(whichPlayer)
            if (hRuntime.sound[index].currentBgm ~= musicFileName) then
                return
            end
        end
        for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
            local p = cj.Player(i - 1)
            if (whichPlayer == nil or (p == whichPlayer and cj.GetLocalPlayer() == whichPlayer)) then
                if (hRuntime.sound[i].currentBgm ~= musicFileName) then
                    hRuntime.sound[i].currentBgm = musicFileName
                    cj.StopMusic(true)
                    htime.setTimeout(
                        hRuntime.sound[i].bgmDelay,
                        function(t)
                                    htime.delTimer(t)
                            cj.PlayMusic(musicFileName)
                            hRuntime.sound[i].bgmDelay = hRuntime.sound[i].bgmDelay - 3.00
                        end
                    )
                    hRuntime.sound[i].bgmDelay = hRuntime.sound[i].bgmDelay + 3.00
                end
            end
        end
    end
end
hsound.bgmStop = function(whichPlayer)
    if (whichPlayer == nil) then
        cj.StopMusic(true)
    elseif (cj.GetLocalPlayer() == whichPlayer) then
        cj.StopMusic(true)
    end
end
hmark = {}
hmark.create = function(path, during, whichPlayer)
    if (whichPlayer == nil) then
        bj.CinematicFilterGenericBJ(
            0.50,
            BLEND_MODE_ADDITIVE,
            path,
            100,
            100,
            100,
            100.00,
            100.00,
            100.00,
            100.00,
            0.00
        )
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                bj.CinematicFilterGenericBJ(
                    0.50,
                    BLEND_MODE_ADDITIVE,
                    path,
                    100,
                    100,
                    100,
                    0.00,
                    100.00,
                    100.00,
                    100.00,
                    100.00
                )
            end
        )
    elseif (whichPlayer ~= nil) then
        if (whichPlayer == cj.GetLocalPlayer()) then
            bj.CinematicFilterGenericBJ(
                0.50,
                BLEND_MODE_ADDITIVE,
                path,
                100,
                100,
                100,
                100.00,
                100.00,
                100.00,
                100.00,
                0.00
            )
        end
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                if (whichPlayer == cj.GetLocalPlayer()) then
                    bj.CinematicFilterGenericBJ(
                        0.50,
                        BLEND_MODE_ADDITIVE,
                        path,
                        100,
                        100,
                        100,
                        0.00,
                        100.00,
                        100.00,
                        100.00,
                        100.00
                    )
                end
            end
        )
    end
end
heffect = {
    enable = true
}
heffect.del = function(e)
    if (e ~= nil) then
        cj.DestroyEffect(e)
    end
end
heffect.toXY = function(effectModel, x, y, during)
    if (heffect.enable ~= true) then
        return
    end
    during = during or 0
    if (effectModel == nil or during < 0) then
        return
    end
    local eff
    if (during > 0) then
        eff = cj.AddSpecialEffect(effectModel, x, y)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    else
        eff = cj.AddSpecialEffect(effectModel, x, y)
        cj.DestroyEffect(eff)
    end
    return eff
end
heffect.toLoc = function(effectModel, loc, during)
    if (heffect.enable ~= true) then
        return
    end
    during = during or 0
    if (effectModel == nil or loc == nil or during < 0) then
        return
    end
    local eff
    if (during > 0) then
        eff = cj.AddSpecialEffectLoc(effectModel, loc)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    else
        eff = cj.AddSpecialEffectLoc(effectModel, x, y)
        cj.DestroyEffect(eff)
    end
    return eff
end
heffect.toUnit = function(effectModel, targetUnit, during)
    if (heffect.enable ~= true) then
        return
    end
    during = during or 0
    if (effectModel == nil or targetUnit == nil or during < 0) then
        return
    end
    local eff
    local x = cj.GetUnitX(targetUnit)
    local y = cj.GetUnitY(targetUnit)
    if (during > 0) then
        eff = cj.AddSpecialEffect(effectModel, x, y)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    else
        eff = cj.AddSpecialEffect(effectModel, x, y)
        cj.DestroyEffect(eff)
    end
    return eff
end
heffect.bindUnit = function(effectModel, targetUnit, attach, during)
    if (heffect.enable ~= true) then
        return
    end
    if (effectModel == nil or targetUnit == nil or attach == nil) then
        return
    end
    local eff
    during = during or 0
    if (during > 0) then
        eff = cj.AddSpecialEffectTarget(effectModel, targetUnit, attach)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyEffect(eff)
            end
        )
    elseif (during == -1) then
        eff = cj.AddSpecialEffectTarget(effectModel, targetUnit, attach)
    else
        eff = cj.AddSpecialEffectTarget(effectModel, targetUnit, attach)
        cj.DestroyEffect(eff)
    end
    return eff
end
hlightning = {
    enable = true,
    type = {
        shan_dian_lian_zhu = "CLPB", 
        shan_dian_lian_ci = "CLSB", 
        ji_qu = "DRAB", 
        sheng_ming_ji_qu = "DRAL", 
        mo_fa_ji_qu = "DRAM", 
        si_wang_zhi_zhi = "AFOD", 
        cha_zhuang_shan_dian = "FORK", 
        yi_liao_bo_zhu = "HWPB", 
        yi_liao_bo_ci = "HWSB", 
        shan_dian_gong_ji = "CHIM", 
        ma_fa_liao_kao = "LEAS", 
        fa_li_ran_shao = "MBUR", 
        mo_li_zhi_yan = "MFPB", 
        ling_hun_suo_lian = "SPLK" 
    }
}
hlightning.del = function(lightning)
    cj.DestroyLightning(lightning)
end
hlightning.xyz2xyz = function(lightningType, x1, y1, z1, x2, y2, z2, during)
    if (hlightning.enable ~= true) then
        return
    end
    local lightning = cj.AddLightningEx(lightningType, true, x1, y1, z1, x2, y2, z2)
    during = during or 0.25
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            hlightning.del(lightning)
        end
    )
    return lightning
end
hlightning.loc2loc = function(lightningType, loc1, loc2, during)
    return hlightning.xyz2xyz(
        lightningType,
        cj.GetLocationX(loc1),
        cj.GetLocationY(loc1),
        cj.GetLocationZ(loc1),
        cj.GetLocationX(loc2),
        cj.GetLocationY(loc2),
        cj.GetLocationZ(loc2),
        during
    )
end
hlightning.unit2unit = function(lightningType, unit1, unit2, during)
    local loc1 = cj.GetUnitLoc(unit1)
    local loc2 = cj.GetUnitLoc(unit2)
    local l = hlightning.loc2loc(lightningType, loc1, loc2, during)
    cj.RemoveLocation(loc1)
    cj.RemoveLocation(loc2)
    return l
end
hweather = {
    
    sun = string.char2id("LRaa"), 
    moon = string.char2id("LRma"), 
    shield = string.char2id("MEds"), 
    rain = string.char2id("RAlr"), 
    rainstorm = string.char2id("RAhr"), 
    snow = string.char2id("SNls"), 
    snowstorm = string.char2id("SNhs"), 
    wind = string.char2id("WOlw"), 
    windstorm = string.char2id("WNcw"), 
    mistwhite = string.char2id("FDwh"), 
    mistgreen = string.char2id("FDgh"), 
    mistblue = string.char2id("FDbh"), 
    mistred = string.char2id("FDrh") 
}
hweather.del = function(w, during)
    if (during <= 0) then
        cj.EnableWeatherEffect(w, false)
        cj.RemoveWeatherEffect(w)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.EnableWeatherEffect(w, false)
                cj.RemoveWeatherEffect(w)
            end
        )
    end
end
hweather.create = function(
    bean)
    if (bean.w == nil or bean.h == nil or bean.w <= 0 or bean.h <= 0) then
        print_err("hweather.create -w-h")
        return nil
    end
    if (bean.x == nil or bean.y == nil) then
        print_err("hweather.create -x-y")
        return nil
    end
    if (bean.type == nil) then
        print_err("hweather.create -type")
        return nil
    end
    local r = hrect.createLoc(bean.x, bean.y, bean.w, bean.h)
    local w = cj.AddWeatherEffect(r, bean.type)
    if (bean.during > 0) then
        htime.setTimeout(
            bean.during,
            function(t)
                htime.delTimer(t)
                hrect.del(r, 0)
                cj.EnableWeatherEffect(w, false)
                cj.RemoveWeatherEffect(w)
            end
        )
    end
end
henvData = {
    doodad = {
        block = {"LTba"},
        cage = {"LOcg"},
        bucket = {"LTbr", "LTbx", "LTbs"},
        bucketBrust = {"LTex"},
        box = {"LTcr"},
        supportColumn = {"BTsc"},
        stone = {"LTrc"},
        stoneRed = {"DTrc"},
        stoneIce = {"ITcr"},
        ice = {"ITf1", "ITf2", "ITf3", "ITf4"},
        spiderEggs = {"DTes"},
        volcano = {"Volc"}, 
        treeSummer = {"LTlt"},
        treeAutumn = {"FTtw"},
        treeWinter = {"WTtw"},
        treeWinterShow = {"WTst"},
        treeDark = {"NTtw"}, 
        treeDarkUmbrella = {"NTtc"}, 
        treePoor = {"BTtw"}, 
        treePoorUmbrella = {"BTtc"}, 
        treeRuins = {"ZTtw"}, 
        treeRuinsUmbrella = {"ZTtc"}, 
        treeFire = {"ZTtw"}, 
        treeUnderground = {"DTsh", "GTsh"} 
    },
    ground = {
        summer = {"Adrg"},
        autumn = {"Ydtr"},
        winter = {"Agrs"},
        winterDeep = {"Agrs"},
        dark = {"Xblm"},
        poor = {"Adrd"},
        ruins = {"Xhdg"},
        fire = {"Yblm"},
        underground = {"Yrtl"}
    }
}
henv = {}
henv.build = function(whichRect, typeStr, excludeX, excludeY, isDestroyRect, ground, doodad, units)
    if (whichRect == nil or typeStr == nil) then
        return
    end
    if (ground == nil or doodad == nil or units == nil) then
        return
    end
    if (hRuntime.env[whichRect] == nil) then
        hRuntime.env[whichRect] = {}
    else
        
        for _, v in ipairs(hRuntime.env[whichRect]) do
            hunit.del(v)
        end
        hRuntime.env[whichRect] = {}
    end
    
    cj.EnumDestructablesInRectAll(
        whichRect,
        function()
            cj.RemoveDestructable(cj.GetEnumDestructable())
        end
    )
    local rectStartX = hrect.getStartX(whichRect)
    local rectStartY = hrect.getStartY(whichRect)
    local rectEndX = hrect.getEndX(whichRect)
    local rectEndY = hrect.getEndY(whichRect)
    local indexX = -1
    local indexY = -1
    local midX = (rectEndX - rectStartX) * 0.5
    local midY = (rectEndY - rectStartY) * 0.5
    local doodads = {}
    for _, v in ipairs(doodad) do
        for _, vv in ipairs(v) do
            table.insert(doodads, vv)
        end
    end
    htime.setInterval(
        0.01,
        function(t)
            local x = rectStartX + indexX * 80
            local y = rectStartY + indexY * 80
            local buildType = cj.GetRandomInt(1, 4)
            if (x >= rectEndX and y >= rectEndY) then
                htime.delTimer(t)
                if (isDestroyRect) then
                    hrect.del(whichRect)
                end
                return
            end
            if (x >= rectEndX) then
                indexY = 1 + indexY
                indexX = -1
            end
            if (y >= rectEndY) then
                indexY = -1
            end
            indexX = 1 + indexX
            if (math.abs(x - midX) < (excludeX * 0.5) and math.abs(y - midY) < (excludeY * 0.5)) then
                return
            end
            if (buildType == 1 and uid <= 0) then
                buildType = 2
            end
            if (buildType == 2 and did <= 0) then
                buildType = -1
            end
            if (buildType == -1) then
                return
            end
            if (buildType == 1) then
                local tempUnit =
                    cj.CreateUnit(
                    cj.Player(PLAYER_NEUTRAL_PASSIVE),
                    units[math.random(1, #units)],
                    x,
                    y,
                    bj_UNIT_FACING
                )
                table.insert(hRuntime.env[whichRect], tempUnit)
            elseif (buildType == 2) then
                cj.SetDestructableInvulnerable(
                    cj.CreateDestructable(
                        doodads[math.random(1, #doodads)],
                        x,
                        y,
                        cj.GetRandomDirectionDeg(),
                        cj.GetRandomReal(0.5, 1.1),
                        0
                    ),
                    true
                )
                if (ground ~= nil) then
                    cj.SetTerrainType(x, y, ground, -1, 1, 0)
                end
            end
        end
    )
end
henv.random = function(whichRect, typeStr, excludeX, excludeY, isDestroyRect)
    local ground
    local doodad = {}
    local unit = {}
    if (whichRect == nil or typeStr == nil) then
        return
    end
    if (typeStr == "summer") then
        ground = henvData.ground.summer
        doodad = {
            henvData.doodad.treeSummer,
            henvData.doodad.block,
            henvData.doodad.stone,
            henvData.doodad.bucket
        }
        unit = {
            hslk_global.env_model.flower0,
            hslk_global.env_model.flower1,
            hslk_global.env_model.flower2,
            hslk_global.env_model.flower3,
            hslk_global.env_model.flower4,
            hslk_global.env_model.bird
        }
    elseif (typeStr == "autumn") then
        ground = henvData.ground.autumn
        doodad = {
            henvData.doodad.treeAutumn,
            henvData.doodad.box,
            henvData.doodad.stoneRed,
            henvData.doodad.bucket,
            henvData.doodad.cage,
            henvData.doodad.supportColumn
        }
        unit = {
            hslk_global.env_model.flower0,
            hslk_global.env_model.typha0,
            hslk_global.env_model.typha1
        }
    elseif (typeStr == "winter") then
        ground = henvData.ground.winter
        doodad = {
            henvData.doodad.treeWinter,
            henvData.doodad.treeWinterShow,
            henvData.doodad.cage,
            henvData.doodad.stoneIce
        }
        unit = {
            hslk_global.env_model.stone0,
            hslk_global.env_model.stone1,
            hslk_global.env_model.stone2,
            hslk_global.env_model.stone3,
            hslk_global.env_model.stone_show0,
            hslk_global.env_model.stone_show1,
            hslk_global.env_model.stone_show2,
            hslk_global.env_model.stone_show3,
            hslk_global.env_model.stone_show4
        }
    elseif (typeStr == "winterDeep") then
        ground = henvData.ground.winterDeep
        doodad = {
            henvData.doodad.treeWinterShow,
            henvData.doodad.cage,
            henvData.doodad.stoneIce
        }
        unit = {
            hslk_global.env_model.stone_show5,
            hslk_global.env_model.stone_show6,
            hslk_global.env_model.stone_show7,
            hslk_global.env_model.stone_show8,
            hslk_global.env_model.stone_show9,
            hslk_global.env_model.ice0,
            hslk_global.env_model.ice1,
            hslk_global.env_model.ice2,
            hslk_global.env_model.ice3,
            hslk_global.env_model.bubble_geyser_steam,
            hslk_global.env_model.snowman
        }
    elseif (typeStr == "dark") then
        ground = henvData.ground.dark
        doodad = {
            henvData.doodad.treeDark,
            henvData.doodad.treeDarkUmbrella,
            henvData.doodad.cage
        }
        unit = {
            hslk_global.env_model.rune0,
            hslk_global.env_model.rune1,
            hslk_global.env_model.rune2,
            hslk_global.env_model.rune3,
            hslk_global.env_model.rune4,
            hslk_global.env_model.rune5,
            hslk_global.env_model.rune6,
            hslk_global.env_model.impaled_body0,
            hslk_global.env_model.impaled_body1
        }
    elseif (typeStr == "poor") then
        ground = henvData.ground.poor
        doodad = {
            henvData.doodad.treePoor,
            henvData.doodad.treePoorUmbrella,
            henvData.doodad.cage,
            henvData.doodad.box
        }
        unit = {
            hslk_global.env_model.bone0,
            hslk_global.env_model.bone1,
            hslk_global.env_model.bone2,
            hslk_global.env_model.bone3,
            hslk_global.env_model.bone4,
            hslk_global.env_model.bone5,
            hslk_global.env_model.bone6,
            hslk_global.env_model.bone7,
            hslk_global.env_model.bone8,
            hslk_global.env_model.bone9,
            hslk_global.env_model.flies,
            hslk_global.env_model.burn_body0,
            hslk_global.env_model.burn_body1,
            hslk_global.env_model.burn_body3,
            hslk_global.env_model.bats
        }
    elseif (typeStr == "ruins") then
        ground = henvData.ground.ruins
        doodad = {
            henvData.doodad.treeRuins,
            henvData.doodad.treeRuinsUmbrella,
            henvData.doodad.cage
        }
        unit = {
            hslk_global.env_model.break_column0,
            hslk_global.env_model.break_column1,
            hslk_global.env_model.break_column2,
            hslk_global.env_model.break_column3,
            hslk_global.env_model.skull_pile0,
            hslk_global.env_model.skull_pile1,
            hslk_global.env_model.skull_pile2,
            hslk_global.env_model.skull_pile3
        }
    elseif (typeStr == "fire") then
        ground = henvData.ground.fire
        doodad = {
            henvData.doodad.treeFire,
            henvData.doodad.volcano,
            henvData.doodad.stoneRed
        }
        unit = {
            hslk_global.env_model.fire_hole,
            hslk_global.env_model.burn_body0,
            hslk_global.env_model.burn_body1,
            hslk_global.env_model.burn_body2,
            hslk_global.env_model.firetrap,
            hslk_global.env_model.fire,
            hslk_global.env_model.burn_build
        }
    elseif (typeStr == "underground") then
        ground = henvData.ground.underground
        doodad = {
            henvData.doodad.treeUnderground,
            henvData.doodad.spiderEggs
        }
        unit = {
            hslk_global.env_model.mushroom0,
            hslk_global.env_model.mushroom1,
            hslk_global.env_model.mushroom2,
            hslk_global.env_model.mushroom3,
            hslk_global.env_model.mushroom4,
            hslk_global.env_model.mushroom5,
            hslk_global.env_model.mushroom6,
            hslk_global.env_model.mushroom7,
            hslk_global.env_model.mushroom8,
            hslk_global.env_model.mushroom9,
            hslk_global.env_model.mushroom10,
            hslk_global.env_model.mushroom11
        }
    elseif (typeStr == "sea") then
        ground = henvData.ground.ruins
        doodad = {
            henvData.doodad.stone
        }
        unit = {
            hslk_global.env_model.seaweed0,
            hslk_global.env_model.seaweed1,
            hslk_global.env_model.seaweed2,
            hslk_global.env_model.seaweed3,
            hslk_global.env_model.seaweed4,
            hslk_global.env_model.fish,
            hslk_global.env_model.fish_school,
            hslk_global.env_model.fish_green,
            hslk_global.env_model.bubble_geyser,
            hslk_global.env_model.bubble_geyser_steam,
            hslk_global.env_model.coral0,
            hslk_global.env_model.coral1,
            hslk_global.env_model.coral2,
            hslk_global.env_model.coral3,
            hslk_global.env_model.coral4,
            hslk_global.env_model.coral5,
            hslk_global.env_model.coral6,
            hslk_global.env_model.coral7,
            hslk_global.env_model.coral8,
            hslk_global.env_model.coral9,
            hslk_global.env_model.shells0,
            hslk_global.env_model.shells1,
            hslk_global.env_model.shells2,
            hslk_global.env_model.shells3,
            hslk_global.env_model.shells4,
            hslk_global.env_model.shells5,
            hslk_global.env_model.shells6,
            hslk_global.env_model.shells7,
            hslk_global.env_model.shells8,
            hslk_global.env_model.shells9
        }
    elseif (typeStr == "river") then
        ground = henvData.ground.ruins
        doodad = {
            henvData.doodad.stone
        }
        unit = {
            hslk_global.env_model.fish,
            hslk_global.env_model.fish_school,
            hslk_global.env_model.fish_green,
            hslk_global.env_model.lilypad0,
            hslk_global.env_model.lilypad1,
            hslk_global.env_model.lilypad2,
            hslk_global.env_model.river_rushes0,
            hslk_global.env_model.river_rushes1,
            hslk_global.env_model.river_rushes2,
            hslk_global.env_model.river_rushes3
        }
    else
        return
    end
    henv.build(whichRect, typeStr, excludeX, excludeY, isDestroyRect, ground, doodad, unit)
end
hcamera = {}
hcamera.reset = function(whichPlayer, during)
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.ResetToGameCamera(during)
    end
end
hcamera.apply = function(whichPlayer, during, camerasetup)
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.CameraSetupApplyForceDuration(camerasetup, true, during)
    end
end
hcamera.toXY = function(whichPlayer, during, x, y)
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.PanCameraToTimed(x, y, during)
    end
end
hcamera.toLoc = function(whichPlayer, during, loc)
    hcamera.toXY(whichPlayer, during, cj.GetLocationX(loc), cj.GetLocationY(loc))
end
hcamera.toUnit = function(whichPlayer, during, whichUnit)
    if (whichUnit == nil) then
        return
    end
    if (whichPlayer == nil or cj.GetLocalPlayer() == whichPlayer) then
        cj.PanCameraToTimed(cj.GetUnitX(whichUnit), cj.GetUnitY(whichUnit), during)
    end
end
hcamera.lock = function(whichPlayer, whichUnit)
    if (whichPlayer ~= nil or cj.GetLocalPlayer() == whichPlayer) then
        if (his.alive(whichUnit[whichPlayer]) == true) then
            cj.SetCameraTargetController(whichUnit[whichPlayer], 0, 0, false)
        else
            hcamera.reset(whichPlayer, 0)
        end
    else
        for i = 1, 12, 1 do
            local p = cj.Player(i - 1)
            if (his.alive(whichUnit[p]) == true) then
                cj.SetCameraTargetController(whichUnit[p], 0, 0, false)
            else
                hcamera.reset(p, 0)
            end
        end
    end
end
hcamera.changeDistance = function(whichPlayer, diffDistance)
    if (type(diffDistance) ~= "number") then
        diffDistance = 0
    end
    if (diffDistance ~= 0 and whichPlayer ~= nil and cj.GetLocalPlayer() == whichPlayer) then
        local oldDistance = cj.GetCameraField(CAMERA_FIELD_TARGET_DISTANCE)
        local toDistance = math.floor(oldDistance + diffDistance)
        if (toDistance < 500) then
            toDistance = 500
        elseif (toDistance > 5000) then
            toDistance = 5000
        end
        hmsg.echo00(whichPlayer, "视距已设定为：" .. toDistance)
        if (oldDistance == toDistance) then
            return
        else
            cj.SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, toDistance, 0)
        end
    end
end
hcamera.shock = function(whichPlayer, whichType, during, scale)
    if (whichPlayer == nil) then
        return
    end
    if (whichType ~= "shake" or whichType ~= "quake") then
        return
    end
    if (during == nil) then
        during = 0.10 
    end
    if (scale == nil) then
        scale = 5.00 
    end
    
    local index = hplayer.index(whichPlayer)
    if (hRuntime.camera[index].isShocking == true) then
        return
    end
    hRuntime.camera[index].isShocking = true
    if (whichType == "shake") then
        cj.CameraSetTargetNoiseForPlayer(whichPlayer, scale, 1.00)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                hRuntime.camera[index].isShocking = false
                if (cj.GetLocalPlayer() == whichPlayer) then
                    cj.CameraSetTargetNoise(0, 0)
                end
            end
        )
    elseif (whichType == "quake") then
        cj.CameraSetEQNoiseForPlayer(whichPlayer, scale)
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                hRuntime.camera[index].isShocking = false
                if (cj.GetLocalPlayer() == whichPlayer) then
                    cj.CameraClearNoiseForPlayer(0, 0)
                end
            end
        )
    end
end
hcamera.getModel = function(whichPlayer)
    local index = hplayer.index(whichPlayer)
    if (hRuntime.camera[index] == nil) then
        return "normal"
    elseif (hRuntime.camera[index].model == nil) then
        return "normal"
    end
    return hRuntime.camera[index].model
end
hcamera.setModel = function(bean)
    if (bean.model == nil) then
        return
    end
    if (bean.model == "normal") then
        hcamera.reset(bean.whichPlayer, 0)
    elseif (bean.model == "lock") then
        if (bean.lockUnit == nil or bean.whichPlayer == nil) then
            return
        end
        htime.setInterval(
            0.1,
            function()
                hcamera.lock(bean.whichPlayer, bean.lockUnit)
            end
        )
    elseif (bean.model == "zoomin") then
        
        htime.setInterval(
            0.1,
            function()
                hcamera.distance(bean.whichPlayer, 825)
            end
        )
    elseif (bean.model == "zoomout") then
        htime.setInterval(
            0.1,
            function()
                hcamera.distance(bean.whichPlayer, 3000)
            end
        )
    else
        return
    end
    if (bean.whichPlayer ~= nil) then
        local index = hplayer.index(bean.whichPlayer)
        hRuntime.camera[index].model = bean.model
    else
        for i = 1, 12, 1 do
            local p = cj.Player(i - 1)
            hRuntime.camera[i].model = bean.model
        end
    end
end
hevent = {}
hevent.set = function(handle, key, value)
    if (handle == nil) then
        print_stack()
        return
    end
    if (hRuntime.event[handle] == nil) then
        hRuntime.event[handle] = {}
    end
    hRuntime.event[handle][key] = value
end
hevent.get = function(handle, key)
    if (handle == nil) then
        print_stack()
        return
    end
    if (hRuntime.event[handle] == nil) then
        hRuntime.event[handle] = {}
    end
    return hRuntime.event[handle][key]
end
hevent.setLastDamageUnit = function(whichUnit, lastUnit)
    if (whichUnit == nil and lastUnit == nil) then
        return
    end
    hevent.set(whichUnit, "lastDamageUnit", lastUnit)
end
hevent.getLastDamageUnit = function(whichUnit)
    return hevent.get(whichUnit, "lastDamageUnit")
end
hevent.registerEvent = function(handle, key, callFunc)
    if (hRuntime.event.register[handle] == nil) then
        hRuntime.event.register[handle] = {}
    end
    if (hRuntime.event.register[handle][key] == nil) then
        hRuntime.event.register[handle][key] = {}
    end
    table.insert(hRuntime.event.register[handle][key], callFunc)
    return #hRuntime.event.register[handle][key]
end
hevent.triggerEvent = function(handle, key, triggerData)
    triggerData = triggerData or {}
    if (hRuntime.event.register[handle] == nil or hRuntime.event.register[handle][key] == nil) then
        return
    end
    if (#hRuntime.event.register[handle][key] <= 0) then
        return
    end
    
    if (triggerData.triggerSkill ~= nil and type(triggerData.triggerSkill) == "number") then
        triggerData.triggerSkill = string.id2char(triggerData.triggerSkill)
    end
    if (triggerData.targetLoc ~= nil) then
        triggerData.targetX = cj.GetLocationX(triggerData.targetLoc)
        triggerData.targetY = cj.GetLocationY(triggerData.targetLoc)
        triggerData.targetZ = cj.GetLocationZ(triggerData.targetLoc)
        cj.RemoveLocation(triggerData.targetLoc)
        triggerData.targetLoc = nil
    end
    for _, callFunc in ipairs(hRuntime.event.register[handle][key]) do
        callFunc(triggerData)
    end
end
hevent.deleteEvent = function(handle, key, eventId)
    if (handle == nil or key == nil or eventId == nil) then
        print_stack()
        return
    end
    if (hRuntime.event.register[handle] == nil or hRuntime.event.register[handle][key] == nil) then
        return
    end
    table.remove(hRuntime.event.register[handle], eventId)
end
hevent.onAttackDetect = function(whichUnit, callFunc)
    local key = CONST_EVENT.attackDetect
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        targetUnit = cj.GetEventTargetUnit()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterUnitEvent(hRuntime.event.trigger[key], whichUnit, EVENT_UNIT_ACQUIRED_TARGET)
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onAttackGetTarget = function(whichUnit, callFunc)
    local key = CONST_EVENT.attackGetTarget
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        targetUnit = cj.GetEventTargetUnit()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterUnitEvent(hRuntime.event.trigger[key], whichUnit, EVENT_UNIT_TARGET_IN_RANGE)
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onAttackReadyAction = function(whichUnit, callFunc)
    local key = CONST_EVENT.attackReady
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_ATTACKED)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetAttacker(),
                    key,
                    {
                        triggerUnit = cj.GetAttacker(),
                        targetUnit = cj.GetTriggerUnit(),
                        attacker = cj.GetAttacker()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onBeAttackReady = function(whichUnit, callFunc)
    local key = CONST_EVENT.beAttackReady
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_ATTACKED)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        targetUnit = cj.GetAttacker(),
                        attacker = cj.GetAttacker()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onAttack = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.attack, callFunc)
end
hevent.onBeAttack = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beAttack, callFunc)
end
hevent.onSkillStudy = function(whichUnit, callFunc)
    local key = CONST_EVENT.skillStudy
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_HERO_SKILL)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        triggerSkill = cj.GetLearnedSkill()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onSkillReady = function(whichUnit, callFunc)
    local key = CONST_EVENT.skillReady
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_SPELL_CHANNEL)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        triggerSkill = cj.GetSpellAbilityId(),
                        targetUnit = cj.GetSpellTargetUnit(),
                        targetLoc = cj.GetSpellTargetLoc()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onSkillStart = function(whichUnit, callFunc)
    local key = CONST_EVENT.skillStart
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_SPELL_CAST)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        triggerSkill = cj.GetSpellAbilityId(),
                        targetUnit = cj.GetSpellTargetUnit(),
                        targetLoc = cj.GetSpellTargetLoc()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onSkillStop = function(whichUnit, callFunc)
    local key = CONST_EVENT.skillStop
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_SPELL_ENDCAST)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        triggerSkill = cj.GetSpellAbilityId()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onSkillHappen = function(whichUnit, callFunc)
    local key = CONST_EVENT.skillHappen
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_SPELL_EFFECT)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        triggerSkill = cj.GetSpellAbilityId(),
                        targetUnit = cj.GetSpellTargetUnit(),
                        targetLoc = cj.GetSpellTargetLoc()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onSkillOver = function(whichUnit, callFunc)
    local key = CONST_EVENT.skillOver
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_SPELL_FINISH)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit(),
                        triggerSkill = cj.GetSpellAbilityId()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onItemUsed = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemUsed, callFunc)
end
hevent.onItemSell = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemSell, callFunc)
end
hevent.onItemDrop = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemDrop, callFunc)
end
hevent.onItemGet = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemGet, callFunc)
end
hevent.onItemPawn = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemPawn, callFunc)
end
hevent.onItemDestroy = function(whichItem, callFunc)
    local key = CONST_EVENT.itemDestroy
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetManipulatedItem(),
                    key,
                    {
                        triggerItem = cj.GetManipulatedItem(),
                        triggerUnit = cj.GetKillingUnit()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterDeathEvent(hRuntime.event.trigger[key], whichItem)
    return hevent.registerEvent(whichItem, key, callFunc)
end
hevent.onItemMix = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemMix, callFunc)
end
hevent.onItemSeparate = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemSeparate, callFunc)
end
hevent.onItemOverWeight = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemOverWeight, callFunc)
end
hevent.onItemOverSlot = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.itemOverSlot, callFunc)
end
hevent.onDamage = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.damage, callFunc)
end
hevent.onBeDamage = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beDamage, callFunc)
end
hevent.onAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.avoid, callFunc)
end
hevent.onBeAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beAvoid, callFunc)
end
hevent.onBreakArmor = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.breakArmor, callFunc)
end
hevent.onBeBreakArmor = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beBreakArmor, callFunc)
end
hevent.onSwim = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.swim, callFunc)
end
hevent.onBeSwim = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSwim, callFunc)
end
hevent.onBroken = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.broken, callFunc)
end
hevent.onBeBroken = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beBroken, callFunc)
end
hevent.onSilent = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.silent, callFunc)
end
hevent.onBeSilent = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSilent, callFunc)
end
hevent.onUnarm = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.unarm, callFunc)
end
hevent.onBeUnarm = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beUnarm, callFunc)
end
hevent.onFetter = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.fetter, callFunc)
end
hevent.onBeFetter = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beFetter, callFunc)
end
hevent.onBomb = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.bomb, callFunc)
end
hevent.onBeBomb = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beBomb, callFunc)
end
hevent.onLightningChain = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.lightningChain, callFunc)
end
hevent.onBeLightningChain = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beLightningChain, callFunc)
end
hevent.onCrackFly = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.crackFly, callFunc)
end
hevent.onBeCrackFly = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beCrackFly, callFunc)
end
hevent.onRebound = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.rebound, callFunc)
end
hevent.onNoAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.noAvoid, callFunc)
end
hevent.onBeNoAvoid = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beNoAvoid, callFunc)
end
hevent.onKnocking = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.knocking, callFunc)
end
hevent.onBeKnocking = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beKnocking, callFunc)
end
hevent.onViolence = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.violence, callFunc)
end
hevent.onBeViolence = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beViolence, callFunc)
end
hevent.onSpilt = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.spilt, callFunc)
end
hevent.onBeSpilt = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSpilt, callFunc)
end
hevent.onLimitToughness = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.limitToughness, callFunc)
end
hevent.onHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.hemophagia, callFunc)
end
hevent.onBeHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beHemophagia, callFunc)
end
hevent.onSkillHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.skillHemophagia, callFunc)
end
hevent.onBeSkillHemophagia = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.beSkillHemophagia, callFunc)
end
hevent.onPunish = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, ONST_EVENT.punish, callFunc)
end
hevent.onDead = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.dead, callFunc)
end
hevent.onKill = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.kill, callFunc)
end
hevent.onReborn = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.reborn, callFunc)
end
hevent.onLevelUp = function(whichUnit, callFunc)
    return hevent.registerEvent(whichUnit, CONST_EVENT.levelUp, callFunc)
end
hevent.onSummon = function(whichUnit, callFunc)
    local key = CONST_EVENT.summon
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.event.trigger[key], EVENT_PLAYER_UNIT_SUMMON)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onEnterUnitRange = function(whichUnit, range, callFunc)
    local key = CONST_EVENT.enterUnitRange .. "#range"
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = {}
    end
    if (hRuntime.event.trigger[key][whichUnit] == nil) then
        hRuntime.event.trigger[key][whichUnit] = cj.CreateTrigger()
        cj.TriggerRegisterUnitInRangeSimple(hRuntime.event.trigger[key][whichUnit], range, whichUnit)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key][whichUnit],
            function()
                hevent.triggerEvent(
                    whichUnit,
                    key,
                    {
                        centerUnit = whichUnit,
                        triggerUnit = cj.GetTriggerUnit(),
                        enterUnit = cj.GetTriggerUnit(),
                        range = range
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onEnterRect = function(whichRect, callFunc)
    local key = CONST_EVENT.enterRect
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = {}
    end
    if (hRuntime.event.trigger[key][whichRect] == nil) then
        hRuntime.event.trigger[key][whichRect] = cj.CreateTrigger()
        local rectRegion = cj.CreateRegion()
        cj.RegionAddRect(rectRegion, r)
        cj.TriggerRegisterEnterRegion(hRuntime.event.trigger[key][whichRect], rectRegion, nil)
        cj.TriggerAddAction(
            tg,
            function()
                hevent.triggerEvent(
                    whichRect,
                    key,
                    {
                        triggerRect = whichRect,
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichRect, key, callFunc)
end
hevent.onLeaveRect = function(whichRect, callFunc)
    local key = CONST_EVENT.leaveRect
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = {}
    end
    if (hRuntime.event.trigger[key][whichRect] == nil) then
        hRuntime.event.trigger[key][whichRect] = cj.CreateTrigger()
        local rectRegion = cj.CreateRegion()
        cj.RegionAddRect(rectRegion, r)
        cj.TriggerRegisterLeaveRegion(hRuntime.event.trigger[key][whichRect], rectRegion, nil)
        cj.TriggerAddAction(
            tg,
            function()
                hevent.triggerEvent(
                    whichRect,
                    key,
                    {
                        triggerRect = whichRect,
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichRect, key, callFunc)
end
hevent.onChat = function(whichPlayer, chatStr, matchAll, callFunc)
    if (whichPlayer == nil or chatStr == nil) then
        return
    end
    local key = CONST_EVENT.chat
    local tg = cj.CreateTrigger()
    cj.TriggerRegisterPlayerChatEvent(tg, whichPlayer, chatStr, matchAll)
    cj.TriggerAddAction(
        tg,
        function()
            callFunc(
                {
                    triggerPlayer = cj.GetTriggerPlayer(),
                    chatString = cj.GetEventPlayerChatString(),
                    matchedString = cj.GetEventPlayerChatStringMatched()
                }
            )
        end
    )
end
hevent.onEsc = function(whichPlayer, callFunc)
    local key = CONST_EVENT.esc
    if (whichPlayer == nil) then
        return
    end
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = {}
    end
    if (hRuntime.event.trigger[key][whichPlayer] == nil) then
        hRuntime.event.trigger[key][whichPlayer] = cj.CreateTrigger()
        cj.TriggerRegisterPlayerEventEndCinematic(hRuntime.event.trigger[key][whichPlayer], whichPlayer)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key][whichPlayer],
            function()
                hevent.triggerEvent(
                    whichPlayer,
                    key,
                    {
                        triggerPlayer = cj.GetTriggerPlayer()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichPlayer, key, callFunc)
end
hevent.onSelection = function(whichPlayer, qty, callFunc)
    if (whichPlayer == nil or qty == nil or qty <= 0) then
        return
    end
    local key = CONST_EVENT.selection .. "#" .. qty
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = {}
    end
    if (hRuntime.event.trigger[key][whichPlayer] == nil) then
        hRuntime.event.trigger[key].click = 0
        hRuntime.event.trigger[key][whichPlayer] = cj.CreateTrigger()
        bj.TriggerRegisterPlayerSelectionEventBJ(hRuntime.event.trigger[key][whichPlayer], whichPlayer, true)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key][whichPlayer],
            function()
                local triggerPlayer = cj.GetTriggerPlayer()
                local triggerUnit = cj.GetTriggerUnit()
                hRuntime.event.trigger[key].click = hRuntime.event.trigger[key].click + 1
                htime.setTimeout(
                    0.3,
                    function(t)
                        htime.delTimer(t)
                        hRuntime.event.trigger[key].click = hRuntime.event.trigger[key].click - 1
                    end
                )
                if (hRuntime.event.trigger[key].click >= qty) then
                    hevent.triggerEvent(
                        triggerPlayer,
                        key,
                        {
                            triggerPlayer = triggerPlayer,
                            triggerUnit = triggerUnit,
                            qty = qty
                        }
                    )
                end
            end
        )
    end
    return hevent.registerEvent(whichPlayer, key, callFunc)
end
hevent.onUnSelection = function(whichPlayer, callFunc)
    if (whichPlayer == nil) then
        return
    end
    local key = CONST_EVENT.unSelection
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = {}
    end
    if (hRuntime.event.trigger[key][whichPlayer] == nil) then
        hRuntime.event.trigger[key][whichPlayer] = cj.CreateTrigger()
        bj.TriggerRegisterPlayerSelectionEventBJ(hRuntime.event.trigger[key][whichPlayer], whichPlayer, false)
        cj.TriggerAddAction(
            hRuntime.event.trigger[key][whichPlayer],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerPlayer(),
                    key,
                    {
                        triggerPlayer = cj.GetTriggerPlayer(),
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    return hevent.registerEvent(whichPlayer, key, callFunc)
end
hevent.onPlayerLeave = function(callFunc)
    return hevent.registerEvent("global", CONST_EVENT.playerLeave, callFunc)
end
hevent.onUpgradeStart = function(whichUnit, callFunc)
    local key = CONST_EVENT.upgradeStart
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterUnitEvent(hRuntime.event.trigger[key], whichUnit, EVENT_UNIT_UPGRADE_START)
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onUpgradeCancel = function(whichUnit, callFunc)
    local key = CONST_EVENT.upgradeCancel
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterUnitEvent(hRuntime.event.trigger[key], whichUnit, EVENT_UNIT_UPGRADE_CANCEL)
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onUpgradeFinish = function(whichUnit, callFunc)
    local key = CONST_EVENT.upgradeFinish
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    cj.GetTriggerUnit(),
                    key,
                    {
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterUnitEvent(hRuntime.event.trigger[key], whichUnit, EVENT_UNIT_UPGRADE_FINISH)
    return hevent.registerEvent(whichUnit, key, callFunc)
end
hevent.onConstructStart = function(whichPlayer, callFunc)
    if (whichPlayer == nil) then
        return
    end
    local key = CONST_EVENT.constructStart
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    whichPlayer,
                    key,
                    {
                        triggerKey = key,
                        triggerUnit = cj.GetTriggerUnit()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterPlayerUnitEvent(hRuntime.event.trigger[key], whichPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_START, nil)
    return hevent.registerEvent(whichPlayer, key, whichPlayer, callFunc)
end
hevent.onConstructCancel = function(whichPlayer, callFunc)
    if (whichPlayer == nil) then
        return
    end
    local key = CONST_EVENT.constructCancel
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    whichPlayer,
                    key,
                    {
                        triggerUnit = cj.GetCancelledStructure()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterPlayerUnitEvent(hRuntime.event.trigger[key], whichPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, nil)
    return hevent.registerEvent(whichPlayer, key, callFunc)
end
hevent.onConstructFinish = function(whichPlayer, callFunc)
    if (whichPlayer == nil) then
        return
    end
    local key = CONST_EVENT.constructFinish
    if (hRuntime.event.trigger[key] == nil) then
        hRuntime.event.trigger[key] = cj.CreateTrigger()
        cj.TriggerAddAction(
            hRuntime.event.trigger[key],
            function()
                hevent.triggerEvent(
                    whichPlayer,
                    key,
                    {
                        triggerUnit = cj.GetConstructedStructure()
                    }
                )
            end
        )
    end
    cj.TriggerRegisterPlayerUnitEvent(hRuntime.event.trigger[key], whichPlayer, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, nil)
    return hevent.registerEvent(whichPlayer, key, callFunc)
end
hevent.onPickHero = function(callFunc)
    return hevent.onEventByHandle("global", CONST_EVENT.pickHero, callFunc)
end
htextTag = {
    qty = 0,
    limit = 90
}
htextTag.del = function(ttg, during)
    if (during == nil or during <= 0) then
        htextTag.qty = htextTag.qty - 1
        hRuntime.clear(ttg)
        cj.DestroyTextTag(ttg)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                htextTag.qty = htextTag.qty - 1
                hRuntime.clear(ttg)
                cj.DestroyTextTag(ttg)
            end
        )
    end
end
htextTag.create = function(msg, size, color, opacity, during)
    if (string.len(msg) <= 0 or during < 0) then
        return
    end
    if (htextTag.qty >= htextTag.limit) then
        return
    end
    if (opacity >= 1) then
        opacity = 1
    elseif (opacity < 0) then
        opacity = 0
    end
    local ttg = cj.CreateTextTag()
    if (ttg == nil) then
        
        print_mb("ttg == nil=" .. msg)
        return
    end
    htextTag.qty = htextTag.qty + 1
    if (color ~= nil and string.len(color) == 6) then
        msg = "|cff" .. color .. msg .. "|r"
    end
    hRuntime.textTag[ttg] = {
        msg = msg,
        size = size,
        color = color,
        opacity = opacity,
        during = during
    }
    cj.SetTextTagText(ttg, msg, size * 0.023 / 10)
    cj.SetTextTagColor(ttg, 255, 255, 255, math.floor(255 * opacity))
    if (during == 0) then
        cj.SetTextTagPermanent(ttg, true)
    else
        cj.SetTextTagPermanent(ttg, false)
        htextTag.del(ttg, during)
    end
    return ttg
end
htextTag.create2XY = function(x, y, msg, size, color, opacity, during, zOffset)
    local ttg = htextTag.create(msg, size, color, opacity, during)
    cj.SetTextTagPos(ttg, x - cj.StringLength(msg) * size * 0.5, y, zOffset)
    return ttg
end
htextTag.create2Unit = function(u, msg, size, color, opacity, during, zOffset)
    return htextTag.create2XY(cj.GetUnitX(u), cj.GetUnitY(u), msg, size, color, opacity, during, zOffset)
end
htextTag.create2Loc = function(loc, msg, size, color, opacity, during, zOffset)
    return htextTag.create2XY(cj.GetLocationX(u), cj.GetLocationY(u), msg, size, color, opacity, during, zOffset)
end
htextTag.createFollowUnit = function(u, msg, size, color, opacity, during, zOffset)
    local ttg = htextTag.create2Unit(u, msg, size, color, opacity, during, zOffset)
    if (ttg == nil) then
        htime.setTimeout(
            0.1,
            function(t)
                htime.delTimer(t)
                htextTag.createFollowUnit(u, msg, size, color, opacity, during, zOffset)
            end
        )
        return
    end
    local txt = htextTag.getMsg(ttg)
    local scale = 0.5
    htime.setInterval(
        0.03,
        function(t)
            if (txt == nil) then
                htime.delTimer(t)
                return
            end
            if (hcamera.model == "zoomin") then
                scale = 0.25
            elseif (hcamera.model == "zoomout") then
                scale = 1
            end
            cj.SetTextTagPos(ttg, cj.GetUnitX(u) - cj.StringLength(txt) * size * scale, cj.GetUnitY(u), zOffset)
            if (his.alive(u) == true) then
                cj.SetTextTagVisibility(ttg, true)
            else
                cj.SetTextTagVisibility(ttg, false)
            end
        end
    )
    return ttg
end
htextTag.getSize = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].size
end
htextTag.getColor = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].color
end
htextTag.getMsg = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].msg
end
htextTag.getOpacity = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].opacity
end
htextTag.getDuring = function(ttg)
    if (hRuntime.textTag[ttg] == nil) then
        return
    end
    return hRuntime.textTag[ttg].during
end
htextTag.style = function(ttg, showtype, xspeed, yspeed)
    if (ttg == nil) then
        return
    end
    cj.SetTextTagVelocity(ttg, xspeed, yspeed)
    local size = htextTag.getSize(ttg)
    local tend = htextTag.getDuring(ttg)
    if (tend <= 0) then
        tend = 0.5
    end
    if (showtype == "scale") then
        
        local tnow = 0
        htime.setInterval(
            0.03,
            function(t)
                tnow = tnow + htime.getSetTime(t)
                local msg = htextTag.getMsg(ttg)
                if (msg == nil or tnow >= tend) then
                    htime.delTimer(t)
                    return
                end
                cj.SetTextTagText(ttg, msg, (size * (1 + tnow * 0.5 / tend)) * 0.023 / 10)
            end
        )
    elseif (showtype == "shrink") then
        
        local tnow = 0
        htime.setInterval(
            0.03,
            function(t)
                tnow = tnow + htime.getSetTime(t)
                local msg = htextTag.getMsg(ttg)
                if (msg == nil or tnow >= tend) then
                    htime.delTimer(t)
                    return
                end
                cj.SetTextTagText(ttg, msg, (size * (1 - tnow * 0.5 / tend)) * 0.023 / 10)
            end
        )
    elseif (showtype == "toggle") then
        
        local tnow = 0
        local tend1 = tend * 0.2
        local tend2 = tend * 0.2
        local tend3 = tend - tend1 - tend2
        local scale = tend * 0.0022
        htime.setInterval(
            0.03,
            function(t)
                tnow = tnow + htime.getSetTime(t)
                local msg = htextTag.getMsg(ttg)
                if (msg == nil or tnow >= tend1 + tend2 + tend3) then
                    htime.delTimer(t)
                    return
                end
                if (tnow <= tend1) then
                    cj.SetTextTagText(ttg, msg, (size * (1 + tnow / tend1)) * scale)
                elseif (tnow > tend1 + tend3) then
                    cj.SetTextTagText(ttg, msg, (size * 2 - (5 * (tnow - tend1 - tend3) / tend2)) * scale)
                end
            end
        )
    end
end
hrect = {}
hrect.create = function(x, y, w, h, name)
    local startX = x - (w * 0.5)
    local startY = y - (h * 0.5)
    local endX = x + (w * 0.5)
    local endY = y + (h * 0.5)
    local r = cj.Rect(startX, startY, endX, endY)
    hRuntime.rect[r] = {
        name = name,
        x = x,
        y = y,
        width = w,
        height = h,
        startX = startX,
        startY = startY,
        endX = endX,
        endY = endY
    }
    return r
end
hrect.createAtLoc = function(loc, w, h, name)
    return hrect.create(cj.GetLocationX(loc), cj.GetLocationY(loc), w, h, name)
end
hrect.getName = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].name
    end
    return nil
end
hrect.getX = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].x
    end
    return nil
end
hrect.getY = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].y
    end
    return nil
end
hrect.getWidth = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].width
    end
    return nil
end
hrect.getHeight = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].height
    end
    return nil
end
hrect.getStartX = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].startX
    end
    return nil
end
hrect.getStartY = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].startY
    end
    return nil
end
hrect.getEndX = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].endX
    end
    return nil
end
hrect.getEndY = function(whichRect)
    if (hRuntime.rect[whichRect]) then
        return hRuntime.rect[whichRect].endY
    end
    return nil
end
hrect.del = function(whichRect, during)
    if (during == nil or during <= 0) then
        hRuntime.clear(whichRect)
        cj.RemoveRect(whichRect)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                hRuntime.clear(whichRect)
                cj.RemoveRect(whichRect)
            end
        )
    end
end
hrect.lock = function(bean)
    if (bean.during <= 0 or (bean.whichRect == nil and (bean.width <= 0 or bean.height <= 0))) then
        return
    end
    if (bean.whichRect == nil and whichUnit == nil and whichLoc == nil and (whichX == nil or whichY == nil)) then
        return
    end
    if (bean.type == nil) then
        bean.type = "square"
    end
    if (bean.type ~= "square" and bean.type ~= "circle") then
        return
    end
    local inc = 0
    local inGroups = {}
    htime.setInterval(
        0.10,
        function(t)
            inc = inc + 1
            if (inc > (during / 0.10)) then
                htime.delTimer(t)
                return
            end
            local x = bean.whichX
            local y = bean.whichY
            local w = bean.width
            local h = bean.height
            
            if (bean.whichLoc) then
                x = cj.GetLocationX(bean.whichLoc)
                y = cj.GetLocationY(bean.whichLoc)
            end
            
            if (bean.whichUnit) then
                if (his.death(bean.whichUnit)) then
                    htime.delTimer(t)
                    return
                end
                x = cj.GetUnitX(bean.whichUnit)
                y = cj.GetUnitY(bean.whichUnit)
            end
            
            if (bean.whichRect) then
                x = cj.GetRectCenter(bean.whichRect)
                y = cj.GetRectCenter(bean.whichRect)
                if (hrect.getWidth(bean.whichRect) < w) then
                    w = hrect.getWidth(bean.whichRect)
                end
                if (hrect.getHeight(bean.whichRect) < h) then
                    h = hrect.getHeight(bean.whichRect)
                end
            end
            local lockRect
            local lockGroup
            if (bean.type == "square") then
                lockRect = cj.Rect(x - (w * 0.5), y - (h * 0.5), x + (w * 0.5), y + (h * 0.5))
                lockGroup = cj.CreateGroup()
                cj.GroupEnumUnitsInRect(lockGroup.lockRect, nil)
            elseif (bean.type == "circle") then
                local rectCenter = cj.Location(x, y)
                lockGroup = cj.CreateGroup()
                cj.GroupEnumUnitsInRangeOfLoc(lockGroup, rectCenter, math.min(w / 2, h / 2), nil)
                cj.removeLocation(rectCenter)
            end
            if (lockGroup ~= nil) then
                hgroup.loop(
                    lockGroup,
                    function(eu)
                        if (table.includes(eu, inGroups) == false) then
                            table.insert(inGroups, eu)
                        end
                    end,
                    true
                )
            end
            
            for _, u in ipairs(inGroups) do
                local distance = 0.000
                local deg = 0
                local xx = cj.GetUnitX(u)
                local yy = cj.GetUnitY(u)
                if (bean.type == "square") then
                    if (his.borderRect(lockRect, xx, yy) == true) then
                        deg = math.getDegBetweenXY(x, y, xx, yy)
                        distance = math.getMaxDistanceInRect(w, h, deg)
                    end
                elseif (bean.type == "circle") then
                    if (math.getDistanceBetweenXY(x, y, xx, yy) > math.min(w / 2, h / 2)) then
                        deg = math.getDegBetweenXY(x, y, xx, yy)
                        distance = math.min(w / 2, h / 2)
                    end
                end
                if (distance > 0.0) then
                    local polar = math.polarProjection(x, y, distance, deg)
                    local loc = cj.Location(polar.x, polar.y)
                    cj.SetUnitPositionLoc(u, loc)
                    cj.RemoveLocation(loc)
                    heffect.bindUnit("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdl", u, "origin", 0.2)
                    hmsg.style(hmsg.ttg2Unit(u, "被困", 10, "dde6f3", 30, 1, 20), "shrink", 0, 0.2)
                end
            end
            if (lockRect ~= nil) then
                hrect.del(lockRect)
            end
        end
    )
end
hplayer = {
    
    players = {},
    
    player_aggressive = cj.Player(PLAYER_NEUTRAL_AGGRESSIVE),
    
    player_victim = cj.Player(bj_PLAYER_NEUTRAL_VICTIM),
    
    player_extra = cj.Player(bj_PLAYER_NEUTRAL_EXTRA),
    
    player_passive = cj.Player(PLAYER_NEUTRAL_PASSIVE),
    
    player_status = {
        none = "无参与",
        gaming = "游戏中",
        leave = "已离开"
    },
    
    qty_max = 12,
    
    qty_current = 0,
    
    convert_ratio = 1000000
}
hplayer.set = function(whichPlayer, key, value)
    if (whichPlayer == nil) then
        print_stack()
        return
    end
    local index = hplayer.index(whichPlayer)
    if (hRuntime.player[index] == nil) then
        hRuntime.player[index] = {}
    end
    hRuntime.player[index][key] = value
end
hplayer.get = function(whichPlayer, key, default)
    if (whichPlayer == nil) then
        print_stack()
        return
    end
    local index = hplayer.index(whichPlayer)
    if (hRuntime.player[index] == nil) then
        hRuntime.player[index] = {}
    end
    return hRuntime.player[index][key] or default
end
hplayer.loop = function(call)
    if (call == nil) then
        return
    end
    for i = 1, hplayer.qty_max, 1 do
        call(hplayer.players[i], i)
    end
end
hplayer.adjustPlayerState = function(delta, whichPlayer, whichPlayerState)
    if delta > 0 then
        if whichPlayerState == PLAYER_STATE_RESOURCE_GOLD then
            cj.SetPlayerState(
                whichPlayer,
                PLAYER_STATE_GOLD_GATHERED,
                cj.GetPlayerState(whichPlayer, PLAYER_STATE_GOLD_GATHERED) + delta
            )
        elseif whichPlayerState == PLAYER_STATE_RESOURCE_LUMBER then
            cj.SetPlayerState(
                whichPlayer,
                PLAYER_STATE_LUMBER_GATHERED,
                cj.GetPlayerState(whichPlayer, PLAYER_STATE_LUMBER_GATHERED) + delta
            )
        end
    end
    cj.SetPlayerState(whichPlayer, whichPlayerState, cj.GetPlayerState(whichPlayer, whichPlayerState) + delta)
end
hplayer.setPlayerState = function(whichPlayer, whichPlayerState, value)
    local oldValue = cj.GetPlayerState(whichPlayer, whichPlayerState)
    hplayer.adjustPlayerState(value - oldValue, whichPlayer, whichPlayerState)
end
hplayer.setConvertRatio = function(ratio)
    hplayer.convert_ratio = ratio
end
hplayer.getConvertRatio = function()
    return hplayer.convert_ratio
end
hplayer.index = function(whichPlayer)
    return cj.GetPlayerId(whichPlayer) + 1
end
hplayer.getName = function(whichPlayer)
    return cj.GetPlayerName(whichPlayer)
end
hplayer.setName = function(whichPlayer, name)
    cj.SetPlayerName(whichPlayer, name)
end
hplayer.getSelection = function(whichPlayer)
    return hplayer.get(whichPlayer, "selection", nil)
end
hplayer.getStatus = function(whichPlayer)
    return hplayer.get(whichPlayer, "status", hplayer.player_status.none)
end
hplayer.setStatus = function(whichPlayer, status)
    hplayer.set(whichPlayer, "status", status)
end
hplayer.getPrestige = function(whichPlayer)
    return hplayer.get(whichPlayer, "prestige", "初出茅庐")
end
hplayer.setPrestige = function(whichPlayer, prestige)
    hplayer.set(whichPlayer, "prestige", prestige)
end
hplayer.getApm = function(whichPlayer)
    return hplayer.get(whichPlayer, "apm", 0)
end
hplayer.setAllowCameraDistance = function(whichPlayer, flag)
    if (whichPlayer == nil) then
        return
    end
    if (type(flag) ~= "boolean") then
        flag = false
    end
    hplayer.set(whichPlayer, "allowCameraDistance", flag)
end
hplayer.getAllowCameraDistance = function(whichPlayer)
    return hplayer.get(whichPlayer, "allowCameraDistance")
end
hplayer.getRandomHero = function()
    local pi = {}
    for k, v in ipairs(hplayer.players) do
        if (hplayer.setStatus(v) == hplayer.status.gaming) then
            table.insert(pi, k)
        end
    end
    if (#pi <= 0) then
        return nil
    end
    local ri = cj.GetRandomInt(1, #pi)
    return hhero.getPlayerUnit(
        hplayer.players[pi[ri]],
        cj.GetRandomInt(1, hhero.getPlayerUnitQty(hplayer.players[pi[ri]]))
    )
end
hplayer.hideUnit = function(whichPlayer)
    if (whichPlayer == nil) then
        return
    end
    local g =
        hgroup.createByRect(
        cj.GetWorldBounds(),
        function(filterUnit)
            return cj.GetOwningPlayer(filterUnit) == whichPlayer
        end
    )
    while (hgroup.isEmpty(g) ~= true) do
        local u = cj.FirstOfGroup(g)
        cj.GroupRemoveUnit(g, u)
        cj.ShowUnit(u, false)
    end
    cj.GroupClear(g)
    cj.DestroyGroup(g)
end
hplayer.clearUnit = function(whichPlayer)
    if (whichPlayer == nil) then
        return
    end
    local g =
        hgroup.createByRect(
        cj.GetWorldBounds(),
        function(filterUnit)
            return cj.GetOwningPlayer(filterUnit) == whichPlayer
        end
    )
    while (hgroup.isEmpty(g) ~= true) do
        local u = cj.FirstOfGroup(g)
        cj.GroupRemoveUnit(g, u)
        hunit.del(u)
    end
    cj.GroupClear(g)
    cj.DestroyGroup(g)
end
hplayer.defeat = function(whichPlayer, tips)
    if (whichPlayer == nil) then
        return
    end
    hplayer.clearUnit(whichPlayer)
    if (tips == "" or tips == nil) then
        tips = "失败"
    end
    bj.CustomDefeatBJ(whichPlayer, tips)
end
hplayer.victory = function(whichPlayer)
    if (whichPlayer == nil) then
        return
    end
    bj.CustomVictoryBJ(whichPlayer, true, true)
end
hplayer.setIsAutoConvert = function(whichPlayer, b)
    hplayer.set(whichPlayer, "isAutoConvert", b)
end
hplayer.getIsAutoConvert = function(whichPlayer)
    return hplayer.get(whichPlayer, "isAutoConvert", false)
end
hplayer.getExceedLumber = function(whichPlayer, exceedGold)
    local index = hplayer.index(whichPlayer)
    local current = hplayer.get(whichPlayer, "exceed_gold", 0)
    local l = 0
    if (current < 0) then
        current = 0
    end
    current = current + exceedGold
    if (current > 10000000) then
        current = 10000000
    end
    
    if (hplayer.getIsAutoConvert(whichPlayer) == true and current >= hplayer.getConvertRatio()) then
        l = math.floor(current / player_convert_ratio)
        current = math.floor(current - l * player_convert_ratio)
    end
    hplayer.set(whichPlayer, "exceed_gold", current)
    return l
end
hplayer.getDamage = function(whichPlayer)
    return hplayer.get(whichPlayer, "damage", 0)
end
hplayer.addDamage = function(whichPlayer, val)
    if (whichPlayer == nil) then
        return
    end
    val = val or 0
    hplayer.set(whichPlayer, "damage", hplayer.getDamage(whichPlayer) + val)
end
hplayer.getBeDamage = function(whichPlayer)
    return hplayer.get(whichPlayer, "beDamage", 0)
end
hplayer.addBeDamage = function(whichPlayer, val)
    if (whichPlayer == nil) then
        return
    end
    val = val or 0
    hplayer.set(whichPlayer, "beDamage", hplayer.getBeDamage(whichPlayer) + val)
end
hplayer.getKill = function(whichPlayer)
    return hplayer.get(whichPlayer, "kill", 0)
end
hplayer.addKill = function(whichPlayer, val)
    if (whichPlayer == nil) then
        return
    end
    val = val or 1
    hplayer.set(whichPlayer, "kill", hplayer.getKill(whichPlayer) + val)
end
hplayer.diffGoldRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "goldRatio", hplayer.get(whichPlayer, "goldRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "goldRatio", hplayer.get(whichPlayer, "goldRatio") - diff)
                end
            )
        end
    end
end
hplayer.setGoldRatio = function(whichPlayer, val, during)
    hplayer.diffGoldRatio(whichPlayer, val - hplayer.get(whichPlayer, "goldRatio"), during)
end
hplayer.addGoldRatio = function(whichPlayer, val, during)
    hplayer.diffGoldRatio(whichPlayer, val, during)
end
hplayer.subGoldRatio = function(whichPlayer, val, during)
    hplayer.diffGoldRatio(whichPlayer, -val, during)
end
hplayer.getGoldRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "goldRatio") or 100
end
hplayer.diffLumberRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "lumberRatio", hplayer.get(whichPlayer, "lumberRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "lumberRatio", hplayer.get(whichPlayer, "lumberRatio") - diff)
                end
            )
        end
    end
end
hplayer.setLumberRatio = function(whichPlayer, val, during)
    local index = hplayer.index(whichPlayer)
    hplayer.diffLumberRatio(whichPlayer, val - hplayer.get(whichPlayer, "lumberRatio"), during)
end
hplayer.addLumberRatio = function(whichPlayer, val, during)
    hplayer.diffLumberRatio(whichPlayer, val, during)
end
hplayer.subLumberRatio = function(whichPlayer, val, during)
    hplayer.diffLumberRatio(whichPlayer, -val, during)
end
hplayer.getLumberRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "lumberRatio")
end
hplayer.diffExpRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "expRatio", hplayer.get(whichPlayer, "expRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "expRatio", hplayer.get(whichPlayer, "expRatio") - diff)
                end
            )
        end
    end
end
hplayer.setExpRatio = function(whichPlayer, val, during)
    local index = hplayer.index(whichPlayer)
    hplayer.diffExpRatio(whichPlayer, val - hplayer.get(whichPlayer, "expRatio"), during)
end
hplayer.addExpRatio = function(whichPlayer, val, during)
    hplayer.diffExpRatio(whichPlayer, val, during)
end
hplayer.subExpRatio = function(whichPlayer, val, during)
    hplayer.diffExpRatio(whichPlayer, -val, during)
end
hplayer.getExpRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "expRatio")
end
hplayer.diffSellRatio = function(whichPlayer, diff, during)
    if (diff ~= 0) then
        hplayer.set(whichPlayer, "sellRatio", hplayer.get(whichPlayer, "sellRatio") + diff)
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hplayer.set(whichPlayer, "sellRatio", hplayer.get(whichPlayer, "sellRatio") - diff)
                end
            )
        end
    end
end
hplayer.setSellRatio = function(whichPlayer, val, during)
    local index = hplayer.index(whichPlayer)
    hplayer.diffSellRatio(whichPlayer, val - hplayer.get(whichPlayer, "sellRatio"), during)
end
hplayer.addSellRatio = function(whichPlayer, val, during)
    hplayer.diffSellRatio(whichPlayer, val, during)
end
hplayer.subSellRatio = function(whichPlayer, val, during)
    hplayer.diffSellRatio(whichPlayer, -val, during)
end
hplayer.getSellRatio = function(whichPlayer)
    return hplayer.get(whichPlayer, "sellRatio", 50)
end
hplayer.getTotalGold = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalGold")
end
hplayer.addTotalGold = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalGold", hplayer.getTotalGold(whichPlayer) + val)
end
hplayer.getTotalGoldCost = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalGoldCost")
end
hplayer.addTotalGoldCost = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalGoldCost", hplayer.getTotalGoldCost(whichPlayer) + val)
end
hplayer.getTotalLumber = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalLumber")
end
hplayer.addTotalLumber = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalLumber", hplayer.getTotalLumber(whichPlayer) + val)
end
hplayer.getTotalLumberCost = function(whichPlayer)
    return hplayer.get(whichPlayer, "totalLumberCost")
end
hplayer.addTotalLumberCost = function(whichPlayer, val)
    return hplayer.set(whichPlayer, "totalLumberCost", hplayer.getTotalLumberCost(whichPlayer) + val)
end
hplayer.adjustGold = function(whichPlayer)
    local prvSys = hplayer.get(whichPlayer, "prevGold")
    local relSys = cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_GOLD)
    if (prvSys > relSys) then
        hplayer.addTotalGoldCost(whichPlayer, prvSys - relSys)
    elseif (prvSys < relSys) then
        hplayer.addTotalGold(whichPlayer, relSys - prvSys)
    end
    hplayer.set(whichPlayer, "prevGold", relSys)
end
hplayer.adjustLumber = function(whichPlayer)
    local prvSys = hplayer.get(whichPlayer, "prevLumber")
    local relSys = cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_LUMBER)
    if (prvSys > relSys) then
        hplayer.addTotalLumberCost(whichPlayer, prvSys - relSys)
    elseif (prvSys < relSys) then
        hplayer.addTotalLumber(whichPlayer, relSys - prvSys)
    end
    hplayer.set(whichPlayer, "prevLumber", relSys)
end
hplayer.getGold = function(whichPlayer)
    return cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_GOLD)
end
hplayer.setGold = function(whichPlayer, gold)
    if (whichPlayer == nil) then
        return
    end
    local exceedLumber = 0
    
    if (gold > 1000000) then
        exceedLumber = hplayer.getExceedLumber(whichPlayer, gold - 1000000)
        if (hplayer.getIsAutoConvert(whichPlayer) == true) then
            if (exceedLumber > 0) then
                hplayer.adjustPlayerState(exceedLumber, whichPlayer, PLAYER_STATE_RESOURCE_LUMBER)
                hplayer.adjustLumber(whichPlayer)
            end
        end
        gold = 1000000
    end
    hplayer.setPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_GOLD, gold)
    hplayer.adjustGold(whichPlayer)
end
hplayer.addGold = function(whichPlayer, gold, u)
    if (whichPlayer == nil) then
        return
    end
    gold = cj.R2I(gold * hplayer.getGoldRatio(whichPlayer) / 100)
    hplayer.setGold(whichPlayer, hplayer.getGold(whichPlayer) + gold)
    if (u ~= nil) then
        htextTag.style(htextTag.create2Unit(u, "+" .. gold .. " Gold", 7, "ffcc00", 1, 1.70, 60.00), "toggle", 0, 0.20)
        hsound.sound2Unit(cg.gg_snd_ReceiveGold, 100, u)
    end
end
hplayer.subGold = function(whichPlayer, gold)
    if (whichPlayer == nil) then
        return
    end
    hplayer.setGold(whichPlayer, hplayer.getGold(whichPlayer) - gold)
end
hplayer.getLumber = function(whichPlayer)
    return cj.GetPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_LUMBER)
end
hplayer.setLumber = function(whichPlayer, lumber)
    if (whichPlayer == nil) then
        return
    end
    hplayer.setPlayerState(whichPlayer, PLAYER_STATE_RESOURCE_LUMBER, lumber)
    hplayer.adjustLumber(whichPlayer)
end
hplayer.addLumber = function(whichPlayer, lumber, u)
    if (whichPlayer == nil) then
        return
    end
    lumber = cj.R2I(lumber * hplayer.getLumberRatio(whichPlayer) / 100)
    hplayer.setLumber(whichPlayer, hplayer.getLumber(whichPlayer) + lumber)
    if (u ~= nil) then
        htextTag.style(
            htextTag.create2Unit(u, "+" .. lumber .. " Lumber", 7, "80ff80", 1, 1.70, 60.00),
            "toggle",
            0,
            0.20
        )
        hsound.sound2Unit(cg.gg_snd_BundleOfLumber, 100, u)
    end
end
hplayer.subLumber = function(whichPlayer, lumber)
    if (whichPlayer == nil) then
        return
    end
    hplayer.setLumber(whichPlayer, hplayer.getLumber(whichPlayer) - lumber)
end
hplayer.init = function()
    local triggerApm = cj.CreateTrigger()
    local triggerApmUnit = cj.CreateTrigger()
    local triggerLeave = cj.CreateTrigger()
    local triggerDeSelection = cj.CreateTrigger()
    local triggerChat = cj.CreateTrigger()
    cj.TriggerAddAction(
        triggerApm,
        function()
            local p = cj.GetTriggerPlayer()
            hplayer.set(p, "apm", hplayer.get(p, "apm", 0) + 1)
        end
    )
    cj.TriggerAddAction(
        triggerApmUnit,
        function()
            local p = cj.GetOwningPlayer(cj.GetTriggerUnit())
            if (his.playing(p) == true and his.playerSite(p) == true and his.computer(p) == false) then
                hplayer.set(p, "apm", hplayer.get(p, "apm", 0) + 1)
            end
        end
    )
    cj.TriggerAddAction(
        triggerLeave,
        function()
            local p = cj.GetTriggerPlayer()
            local g
            hplayer.set(p, "status", hplayer.player_status.leave)
            hmessage.echo(cj.GetPlayerName(p) .. "离开了～")
            hplayer.clearUnit(p)
            hplayer.qty_current = hplayer.qty_current - 1
            
            hevent.triggerEvent(
                "global",
                CONST_EVENT.playerLeave,
                {
                    triggerPlayer = p
                }
            )
        end
    )
    cj.TriggerAddAction(
        triggerDeSelection,
        function()
            hplayer.set(cj.GetTriggerPlayer(), "selection", nil)
        end
    )
    cj.TriggerAddAction(
        triggerChat,
        function()
            local p = cj.GetTriggerPlayer()
            local str = cj.GetEventPlayerChatString()
            if (str == "-apc") then
                if (his.autoConvertGoldToLumber(p) == true) then
                    his.set(p, "isAutoConvertGoldToLumber", false)
                    hmessage.echo00(p, "|cffffcc00已关闭|r自动换算", 0)
                else
                    his.set(p, "isAutoConvertGoldToLumber", true)
                    hmessage.echo00(p, "|cffffcc00已开启|r自动换算", 0)
                end
            elseif (str == "-apm") then
                hmessage.echo00(p, "您的apm为:" .. hplayer.getApm(p), 0)
            elseif (str == "-eff") then
                if (hplayer.qty_current == 1) then
                    if (heffect.enable == true) then
                        heffect.enable = false
                        hlightning.enable = false
                        hmessage.echo00(p, "|cffffcc00已关闭|r大部分特效", 0)
                    else
                        heffect.enable = true
                        hlightning.enable = true
                        hmessage.echo00(p, "|cffffcc00已开启|r大部分特效", 0)
                    end
                else
                    hmessage.echo00(p, "此命令仅在单人时有效", 0)
                end
            else
                local first = string.sub(str, 1, 1)
                if (first == "+" or first == "-") then
                    
                    local v = string.sub(str, 2, string.len(str))
                    local v = tonumber(v)
                    if (v == nil) then
                        hmessage.echo00(p, "试试敲入+500，增加视距~", 0)
                    else
                        local val = math.abs(v)
                        if (first == "+") then
                            hcamera.changeDistance(p, val)
                        elseif (first == "-") then
                            hcamera.changeDistance(p, -val)
                        end
                    end
                end
            end
        end
    )
    bj.TriggerRegisterAnyUnitEventBJ(triggerApmUnit, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    bj.TriggerRegisterAnyUnitEventBJ(triggerApmUnit, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    bj.TriggerRegisterAnyUnitEventBJ(triggerApmUnit, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    for i = 1, bj_MAX_PLAYERS, 1 do
        hplayer.players[i] = cj.Player(i - 1)
        cj.SetPlayerHandicapXP(hplayer.players[i], 0)
        hplayer.set(hplayer.players[i], "prevGold", 0)
        hplayer.set(hplayer.players[i], "prevLumber", 0)
        hplayer.set(hplayer.players[i], "totalGold", 0)
        hplayer.set(hplayer.players[i], "totalGoldCost", 0)
        hplayer.set(hplayer.players[i], "totalLumber", 0)
        hplayer.set(hplayer.players[i], "totalLumberCost", 0)
        hplayer.set(hplayer.players[i], "goldRatio", 100)
        hplayer.set(hplayer.players[i], "lumberRatio", 100)
        hplayer.set(hplayer.players[i], "expRatio", 100)
        hplayer.set(hplayer.players[i], "sellRatio", 50)
        hplayer.set(hplayer.players[i], "apm", 0)
        hplayer.set(hplayer.players[i], "damage", 0)
        hplayer.set(hplayer.players[i], "beDamage", 0)
        hplayer.set(hplayer.players[i], "kill", 0)
        if
            ((cj.GetPlayerController(hplayer.players[i]) == MAP_CONTROL_USER) and
                (cj.GetPlayerSlotState(hplayer.players[i]) == PLAYER_SLOT_STATE_PLAYING))
         then
            
            his.set(hplayer.players[i], "isComputer", false)
            
            hplayer.qty_current = hplayer.qty_current + 1
            hplayer.set(hplayer.players[i], "status", hplayer.player_status.gaming)
            bj.TriggerRegisterPlayerSelectionEventBJ(triggerApm, hplayer.players[i], true)
            cj.TriggerRegisterPlayerEvent(triggerLeave, hplayer.players[i], EVENT_PLAYER_LEAVE)
            bj.TriggerRegisterPlayerKeyEventBJ(
                triggerApm,
                hplayer.players[i],
                bj_KEYEVENTTYPE_DEPRESS,
                bj_KEYEVENTKEY_LEFT
            )
            bj.TriggerRegisterPlayerKeyEventBJ(
                triggerApm,
                hplayer.players[i],
                bj_KEYEVENTTYPE_DEPRESS,
                bj_KEYEVENTKEY_RIGHT
            )
            bj.TriggerRegisterPlayerKeyEventBJ(
                triggerApm,
                hplayer.players[i],
                bj_KEYEVENTTYPE_DEPRESS,
                bj_KEYEVENTKEY_DOWN
            )
            bj.TriggerRegisterPlayerKeyEventBJ(
                triggerApm,
                hplayer.players[i],
                bj_KEYEVENTTYPE_DEPRESS,
                bj_KEYEVENTKEY_UP
            )
            cj.TriggerRegisterPlayerUnitEvent(triggerDeSelection, hplayer.players[i], EVENT_PLAYER_UNIT_DESELECTED, nil)
            cj.TriggerRegisterPlayerChatEvent(triggerChat, hplayer.players[i], "+", false)
            cj.TriggerRegisterPlayerChatEvent(triggerChat, hplayer.players[i], "-", false)
            hevent.onSelection(
                hplayer.players[i],
                2,
                function(evtData)
                    hplayer.set(evtData.triggerPlayer, "selection", evtData.triggerUnit)
                end
            )
        else
            
            his.set(hplayer.players[i], "isComputer", true)
            
            hplayer.set(hplayer.players[i], "status", hplayer.player_status.none)
        end
    end
end
haward = {
    shareRange = 1000.00
}
haward.setShareRange = function(range)
    haward.shareRange = math.round(range)
end
haward.forUnit = function(whichUnit, exp, gold, lumber)
    if (whichUnit == nil) then
        return
    end
    local p = cj.GetOwningPlayer(whichUnit)
    local index = hplayer.index(p)
    local realGold = cj.R2I(gold)
    local realLumber = cj.R2I(lumber)
    local realExp = cj.R2I(exp)
    if (realExp >= 1 and his.hero(whichUnit)) then
        hunit.addExp(whichUnit, realExp, true)
    end
    local floatStr = ""
    local ttgColorLen = 0
    if (realGold >= 1) then
        hplayer.addGold(p, realGold, whichUnit)
    end
    if (realLumber >= 1) then
        hplayer.addLumber(p, realLumber, whichUnit)
    end
    if (floatStr ~= "") then
        local ttg = htextTag.create2Unit(whichUnit, floatStr, 7, "", 1, 1.70, 60.00)
        cj.SetTextTagPos(
            ttg,
            cj.GetUnitX(whichUnit) - (string.len(floatStr) - ttgColorLen) * 7 * 0.5,
            cj.GetUnitY(whichUnit),
            50
        )
        htextTag.style(ttg, "toggle", 0, 0.25)
    end
end
haward.forUnitExp = function(whichUnit, exp)
    return haward.forUnit(whichUnit, exp, 0, 0)
end
haward.forUnitGold = function(whichUnit, gold)
    return haward.forUnit(whichUnit, 0, gold, 0)
end
haward.forUnitLumber = function(whichUnit, lumber)
    return haward.forUnit(whichUnit, 0, 0, lumber)
end
haward.forGroup = function(whichUnit, exp, gold, lumber)
    local g =
        hgroup.createByUnit(
        whichUnit,
        haward.shareRange,
        function(filterUnit)
            local flag = true
            if (his.hero(filterUnit) == false) then
                flag = false
            end
            if (his.ally(whichUnit, filterUnit) == false) then
                flag = false
            end
            if (his.alive(filterUnit) == false) then
                flag = false
            end
            if (his.building(filterUnit) == true) then
                flag = false
            end
            return flag
        end
    )
    local gCount = hgroup.count(g)
    if (gCount <= 0) then
        return
    end
    local cutExp = cj.R2I(exp / gCount)
    local cutGold = cj.R2I(gold / gCount)
    local cutLumber = cj.R2I(lumber / gCount)
    if (exp > 0 and cutExp < 1) then
        cutExp = 1
    end
    hgroup.loop(
        g,
        function(u)
            haward.forUnit(u, cutExp, cutGold, cutLumber)
        end,
        true
    )
end
haward.forGroupExp = function(whichUnit, exp)
    haward.forGroup(whichUnit, exp, 0, 0)
end
haward.forGroupGold = function(whichUnit, gold)
    haward.forGroup(whichUnit, 0, gold, 0)
end
haward.forGroupLumber = function(whichUnit, lumber)
    haward.forGroup(whichUnit, 0, 0, lumber)
end
haward.forPlayer = function(gold, lumber)
    if (hplayer.qty_current <= 0) then
        return
    end
    local cutGold = math.floor(gold / hplayer.qty_current)
    local cutLumber = math.floor(lumber / hplayer.qty_current)
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.getStatus(hplayer.players[i]) == hplayer.player_status.gaming) then
            if (cutGold > 0) then
                hplayer.addGold(hplayer.players[i], cutGold)
            end
            if (cutLumber > 0) then
                hplayer.addLumber(hplayer.players[i], cutLumber)
            end
        end
    end
end
haward.forPlayerGold = function(gold)
    haward.forPlayer(gold, 0)
end
haward.forPlayerLumber = function(lumber)
    haward.forPlayer(0, lumber)
end
hunit = {
    TRIGGER_DAMAGED = nil,
    TRIGGER_DEATH = nil
}
hunit.init = function()
    
    hunit.TRIGGER_DAMAGED = cj.CreateTrigger()
    hunit.TRIGGER_DEATH = cj.CreateTrigger()
    
    cj.TriggerAddAction(
        hunit.TRIGGER_DAMAGED,
        function()
            local sourceUnit = cj.GetEventDamageSource()
            local targetUnit = cj.GetTriggerUnit()
            local damage = cj.GetEventDamage()
            local oldLife = hunit.getCurLife(targetUnit)
            if (damage > 0.125) then
                hattr.set(targetUnit, 0, {life = "+" .. damage})
                htime.setTimeout(
                    0,
                    function(t)
                        htime.delTimer(t)
                        hattr.set(targetUnit, 0, {life = "-" .. damage})
                        hunit.setCurLife(targetUnit, oldLife)
                        hskill.damage(
                            {
                                sourceUnit = sourceUnit,
                                targetUnit = targetUnit,
                                damage = damage,
                                damageKind = "attack"
                            }
                        )
                    end
                )
            end
        end
    )
    
    cj.TriggerAddAction(
        hunit.TRIGGER_DEATH,
        function()
            local u = cj.GetTriggerUnit()
            local killer = hevent.getLastDamageUnit(u)
            if (killer ~= nil) then
                hplayer.addKill(cj.GetOwningPlayer(killer), 1)
            end
            
            hevent.triggerEvent(
                u,
                CONST_EVENT.dead,
                {
                    triggerUnit = u,
                    killer = killer
                }
            )
            
            hevent.triggerEvent(
                killer,
                CONST_EVENT.kill,
                {
                    triggerUnit = killer,
                    killer = killer,
                    targetUnit = u
                }
            )
        end
    )
    
    local period = 0.50
    htime.setInterval(
        period,
        function(t)
            for k, u in ipairs(hRuntime.attributeGroup.life_back) do
                if (his.deleted(u) == true) then
                    table.remove(hRuntime.attributeGroup.life_back, k)
                else
                    if (his.alive(u) and hattr.get(u, "life_back") ~= 0) then
                        hunit.addCurLife(u, hattr.get(u, "life_back") * period)
                    end
                end
            end
            for k, u in ipairs(hRuntime.attributeGroup.mana_back) do
                if (his.deleted(u) == true) then
                    table.remove(hRuntime.attributeGroup.mana_back, k)
                else
                    if (his.alive(u) and hattr.get(u, "mana_back") ~= 0) then
                        hunit.addCurMana(u, hattr.get(u, "mana_back") * period)
                    end
                end
            end
        end
    )
    
    htime.setInterval(
        1.5,
        function(t)
            for k, u in ipairs(hRuntime.attributeGroup.punish) do
                if (his.deleted(u) == true) then
                    table.remove(hRuntime.attributeGroup.punish, k)
                elseif (his.alive(u) == true and his.damaging(u) == false) then
                    hattr.set(u, 0, {punish_current = "+" .. (hattr.get(u, "punish") * 0.015)})
                end
            end
        end
    )
end
hunit.getMaxLife = function(u)
    return cj.GetUnitState(u, UNIT_STATE_MAX_LIFE)
end
hunit.getCurLife = function(u)
    return cj.GetUnitState(u, UNIT_STATE_LIFE)
end
hunit.setCurLife = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_LIFE, val)
end
hunit.addCurLife = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_LIFE, hunit.getCurLife(u) + val)
end
hunit.subCurLife = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_LIFE, hunit.getCurLife(u) - val)
end
hunit.getMaxMana = function(u)
    return cj.GetUnitState(u, UNIT_STATE_MAX_MANA)
end
hunit.getCurMana = function(u)
    return cj.GetUnitState(u, UNIT_STATE_MANA)
end
hunit.setCurMana = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_MANA, val)
end
hunit.addCurMana = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_MANA, hunit.getCurMana(u) + val)
end
hunit.subCurMana = function(u, val)
    cj.SetUnitState(u, UNIT_STATE_MANA, hunit.getCurMana(u) - val)
end
hunit.getCurLifePercent = function(u)
    return math.round(100 * (hunit.getCurLife(u) / hunit.getMaxLife(u)))
end
hunit.setCurLifePercent = function(u, val)
    local max = hunit.getMaxLife(u)
    local life = math.floor(max * val * 0.01)
    if (max > 0 and life < 1) then
        life = 1
    end
    hunit.setCurLife(u, life)
end
hunit.getCurManaPercent = function(u)
    return math.round(100 * (hunit.getCurMana(u) / hunit.getMaxMana(u)))
end
hunit.setCurManaPercent = function(u, val)
    local max = hunit.getMaxMana(u)
    local mana = math.floor(max * val * 0.01)
    if (max > 0 and mana < 1) then
        mana = 1
    end
    hunit.setCurLife(u, mana)
end
hunit.addExp = function(u, val, showEffect)
    if (u == nil or val == nil or val <= 0) then
        return
    end
    if (type(showEffect) ~= "boolean") then
        showEffect = false
    end
    val = cj.R2I(val * hplayer.getExpRatio(cj.GetOwningPlayer(u)) / 100)
    cj.AddHeroXP(u, val, showEffect)
    htextTag.style(htextTag.create2Unit(u, "+" .. val .. " Exp", 7, "c4c4ff", 1, 1.70, 60.00), "toggle", 0, 0.20)
end
hunit.setPeriod = function(u, life)
    cj.UnitApplyTimedLife(u, string.char2id("BTLF"), life)
end
hunit.getFacing = function(u)
    return cj.GetUnitFacing(u)
end
hunit.isOpenPunish = function(u)
    if (u == nil or hRuntime.unit[u]) then
        return false
    end
    return hRuntime.unit[u].isOpenPunish
end
hunit.setInvulnerable = function(u, flag)
    if (flag == nil) then
        flag = true
    end
    if (flag == true and cj.GetUnitAbilityLevel(u, hskill.BUFF_INVULNERABLE) < 1) then
        cj.UnitAddAbility(u, hskill.BUFF_INVULNERABLE)
    else
        cj.UnitRemoveAbility(u, hskill.BUFF_INVULNERABLE)
    end
end
hunit.setAnimateSpeed = function(u, speed, during)
    if (hRuntime.unit[u] == nil) then
        hRuntime.unit[u] = {}
    end
    cj.SetUnitTimeScale(u, speed)
    during = during or 0
    if (during > 0) then
        local prevSpeed = hRuntime.unit[u].animateSpeed or 1.00
        hRuntime.unit[u].animateSpeed = speed
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.SetUnitTimeScale(u, prevSpeed)
            end
        )
    end
end
hunit.create = function(bean)
    if (bean.qty == nil) then
        bean.qty = 1
    end
    if (bean.whichPlayer == nil) then
        print_err("create unit fail -pl")
        return
    end
    if (bean.unitId == nil) then
        print_err("create unit fail -id")
        return
    end
    if (bean.qty <= 0) then
        print_err("create unit fail -qty")
        return
    end
    if (bean.x == nil and bean.y == nil and bean.loc == nil) then
        print_err("create unit fail -place")
        return
    end
    if (bean.unitId == nil) then
        print_err("create unit id")
        return
    end
    if (type(bean.unitId) == "string") then
        bean.unitId = string.char2id(bean.unitId)
    end
    local u
    local facing
    local x
    local y
    local g
    if (bean.x ~= nil and bean.y ~= nil) then
        x = bean.x
        y = bean.y
    elseif (bean.loc ~= nil) then
        x = cj.GetLocationX(bean.loc)
        y = cj.GetLocationY(bean.loc)
    end
    if (bean.facing ~= nil) then
        facing = bean.facing
    elseif (bean.facingX ~= nil and bean.facingY ~= nil) then
        facing = math.getDegBetweenXY(x, y, bean.facingX, bean.facingY)
    elseif (bean.facingLoc ~= nil) then
        facing = math.getDegBetweenXY(x, y, cj.GetLocationX(bean.facingLoc), cj.GetLocationY(bean.facingLoc))
    elseif (bean.facingUnit ~= nil) then
        facing = math.getDegBetweenXY(x, y, cj.GetUnitX(bean.facingUnit), cj.GetUnitY(bean.facingUnit))
    else
        facing = bj_UNIT_FACING
    end
    if (bean.qty > 1) then
        g = cj.CreateGroup()
    end
    for i = 1, bean.qty, 1 do
        if (bean.x ~= nil and bean.y ~= nil) then
            u = cj.CreateUnit(bean.whichPlayer, bean.unitId, bean.x, bean.y, facing)
        elseif (bean.loc ~= nil) then
            u = cj.CreateUnitAtLoc(bean.whichPlayer, bean.unitId, bean.loc, facing)
        end
        
        if (bean.height ~= nil and bean.height ~= 0) then
            bean.height = math.round(bean.height)
            hunit.setCanFly(u)
            cj.SetUnitFlyHeight(u, bean.height, 10000)
        end
        
        if (bean.timeScale ~= nil and bean.timeScale > 0) then
            bean.timeScale = math.round(bean.timeScale)
            cj.SetUnitTimeScalePercent(u, bean.timeScale)
        end
        
        if (bean.modelScale ~= nil and bean.modelScale > 0) then
            bean.modelScale = math.round(bean.modelScale)
            cj.SetUnitScale(u, bean.modelScale, bean.modelScale, bean.modelScale)
        end
        
        if (bean.opacity ~= nil and bean.opacity <= 1 and bean.opacity >= 0) then
            bean.opacity = math.round(bean.opacity)
            cj.SetUnitVertexColor(u, 255, 255, 255, 255 * bean.opacity)
        end
        
        if (bean.life ~= nil and bean.life > 0) then
            hunit.setPeriod(u, bean.life)
        end
        
        if (bean.during ~= nil and bean.during >= 0) then
            hunit.del(u, bean.during)
        end
        if (bean.attackX ~= nil and bean.attackY ~= nil) then
            cj.IssuePointOrder(u, "attack", bean.attackX, bean.attackY)
        elseif (bean.attackLoc ~= nil) then
            cj.IssuePointOrderLoc(u, "attack", bean.attackLoc)
        elseif (bean.attackUnit ~= nil) then
            cj.IssueTargetOrder(u, "attack", bean.attackUnit)
        end
        if (bean.qty > 1) then
            cj.GroupAddUnit(g, u)
        end
        
        if (bean.isUnSelectable ~= nil and bean.isUnSelectable == true) then
            cj.UnitAddAbility(u, string.char2id("Aloc"))
        end
        
        if (bean.isPause ~= nil and bean.isPause == true) then
            cj.PauseUnit(u, true)
        end
        
        if (bean.isInvulnerable ~= nil and bean.isInvulnerable == true) then
            hunit.setInvulnerable(u, true)
        end
        
        if (bean.isOpenPunish ~= nil and bean.isOpenPunish == true) then
            table.insert(hRuntime.attributeGroup.punish, u)
        end
        
        if (bean.isShadow ~= nil and bean.isShadow == true) then
            cj.UnitAddAbility(u, "Aloc")
            cj.PauseUnit(u, true)
            hunit.setInvulnerable(u, true)
            bean.register = false
        end
        
        if (bean.isShareSight ~= nil and bean.isShareSight == true) then
            for pi = 0, bj_MAX_PLAYERS - 1, 1 do
                cj.SetPlayerAlliance(bean.whichPlayer, cj.Player(pi), ALLIANCE_SHARED_VISION, true)
            end
        end
        
        hRuntime.unit[u] = {
            id = bean.unitId,
            whichPlayer = bean.whichPlayer,
            x = x,
            y = y,
            life = bean.life,
            during = bean.during,
            isOpenPunish = bean.isOpenPunish,
            isShadow = bean.isShadow
        }
        
        if (type(bean.register) ~= "boolean") then
            bean.register = true
        end
        if (bean.register == true) then
            
            cj.TriggerRegisterUnitEvent(hunit.TRIGGER_DAMAGED, u, EVENT_UNIT_DAMAGED)
            cj.TriggerRegisterUnitEvent(hunit.TRIGGER_DEATH, u, EVENT_UNIT_DEATH)
            
            hattr.init(u)
            
            if (his.hasSlot(u)) then
                hitem.registerAll(u)
            elseif (bean.isOpenSlot == true) then
                hskill.add(u, hitem.DEFAULT_SKILL_ITEM_SLOT, 0)
                hitem.registerAll(u)
            end
            
            hRuntime.unit[u].init = 1
        end
    end
    if (g ~= nil) then
        return g
    else
        return u
    end
end
hunit.getId = function(u)
    return string.id2char(cj.GetUnitTypeId(u))
end
hunit.getSlk = function(uOrUid)
    local slk
    local uid
    if (uOrUid == nil) then
        print_err("uOrUid is nil")
        return nil
    end
    if (type(uOrUid) == "string") then
        uid = uOrUid
    elseif (type(uOrUid) == "number") then
        uid = string.id2char(uOrUid)
    else
        uid = hunit.getId(uOrUid)
    end
    if (hslk_global.unitsKV[uid] ~= nil) then
        slk = hslk_global.unitsKV[uid]
    end
    return slk
end
hunit.getAvatar = function(uOrUid)
    local slk = hunit.getSlk(uOrUid)
    if (slk ~= nil) then
        return slk.Art
    else
        return "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp"
    end
end
hunit.getAttackSpeedBaseSpace = function(uOrUid)
    local slk = hunit.getSlk(uOrUid)
    if (slk ~= nil) then
        return slk.cool1
    else
        return 2.00
    end
end
hunit.getAttackRange = function(uOrUid)
    local slk = hunit.getSlk(uOrUid)
    if (slk ~= nil) then
        return slk.rangeN1
    else
        return 100
    end
end
hunit.getName = function(u)
    return cj.GetUnitName(u)
end
hunit.getUserData = function(u)
    return cj.GetUnitUserData(u)
end
hunit.setUserData = function(u, val, during)
    local oldData = hunit.getUserData(u)
    val = math.ceil(val)
    cj.SetUnitUserData(u, val)
    during = during or 0
    if (during > 0) then
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.SetUnitUserData(u, oldData)
            end
        )
    end
end
hunit.setColor = function(u, color)
    if (type(color) == "string") then
        color = string.upper(color)
        if (CONST_PLAYER_COLOR[color] ~= nil) then
            cj.SetUnitColor(u, CONST_PLAYER_COLOR[color])
        end
    else
        cj.SetUnitColor(u, cj.ConvertPlayerColor(color - 1))
    end
end
hunit.getFacing = function(u)
    return cj.GetUnitFacing(u)
end
hunit.del = function(targetUnit, during)
    if (during == nil or during <= 0) then
        hitem.clearUnitCache(targetUnit)
        hRuntime.clear(targetUnit)
        cj.RemoveUnit(targetUnit)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                hitem.clearUnitCache(targetUnit)
                hRuntime.clear(targetUnit)
                cj.RemoveUnit(targetUnit)
            end
        )
    end
end
hunit.kill = function(targetUnit, during)
    if (during == nil or during <= 0) then
        cj.KillUnit(targetUnit)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.KillUnit(targetUnit)
            end
        )
    end
end
hunit.exploded = function(targetUnit, during)
    if (during == nil or during <= 0) then
        cj.SetUnitExploded(targetUnit, true)
        cj.KillUnit(targetUnit)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.SetUnitExploded(targetUnit, true)
                cj.KillUnit(targetUnit)
            end
        )
    end
end
hunit.setCanFly = function(u)
    cj.UnitAddAbility(u, string.char2id("Arav"))
    cj.UnitRemoveAbility(u, string.char2id("Arav"))
end
hunit.setFlyHeight = function(u, height, speed)
    cj.SetUnitFlyHeight(u, height, speed)
end
hunit.rebornAtXY = function(u, delay, invulnerable, x, y)
    if (his.hero(u)) then
        if (delay < 0.3) then
            cj.ReviveHero(u, x, y, true)
            hattr.resetAttrGroups(u)
            if (invulnerable > 0) then
                hskill.invulnerable(u, invulnerable)
            end
            
            hevent.triggerEvent(
                u,
                CONST_EVENT.reborn,
                {
                    triggerUnit = u
                }
            )
        else
            htime.setTimeout(
                delay,
                function(t)
                    htime.delTimer(t)
                    cj.ReviveHero(u, x, y, true)
                    hattr.resetAttrGroups(u)
                    if (invulnerable > 0) then
                        hskill.invulnerable(u, invulnerable)
                    end
                    
                    hevent.triggerEvent(
                        u,
                        CONST_EVENT.reborn,
                        {
                            triggerUnit = u
                        }
                    )
                end
            )
        end
    end
end
hunit.rebornAtLoc = function(u, delay, invulnerable, loc)
    hunit.rebornAtXY(u, delay, invulnerable, cj.GetLocationX(loc), cj.GetLocationY(loc))
end
henemy = {
    players = {}, 
    numbers = {}, 
    numberLimit = 100000, 
    name = "敌军",
    color = cj.ConvertPlayerColor(12),
    shareSight = false,
}
henemy.setName = function(name)
    henemy.name = name
end
henemy.getName = function()
    return henemy.name
end
henemy.setColor = function(color)
    henemy.color = color
end
henemy.getColor = function()
    return henemy.color
end
henemy.setShareSight = function(b)
    henemy.shareSight = b
end
henemy.isShareSight = function()
    if (type(henemy.shareSight) == 'boolean') then
        return henemy.shareSight
    end
    return false
end
henemy.setPlayer = function(whichPlayer)
    table.insert(henemy.players, whichPlayer)
    if (henemy.numbers[whichPlayer] == nil) then
        henemy.numbers[whichPlayer] = 0
    end
    cj.SetPlayerName(whichPlayer, henemy.name)
    cj.SetPlayerColor(whichPlayer, henemy.getColor())
end
henemy.getPlayer = function(createQty)
    local len = #henemy.players
    local p
    if (createQty == nil) then
        createQty = 1
    else
        createQty = math.floor(createQty)
    end
    for i = 1, len, 1 do
        if (p == nil) then
            p = henemy.players[i]
        elseif (henemy.numbers[henemy.players[i]] < henemy.numbers[p]) then
            p = henemy.players[i]
        end
    end
    henemy.numbers[p] = henemy.numbers[p] + createQty
    if (henemy.numbers[p] > henemy.numberLimit) then
        for i = 1, len, 1 do
            henemy.numbers[henemy.players[i]] = 0
        end
    end
    return p
end
henemy.create = function(bean)
    bean.whichPlayer = henemy.getPlayer(bean.qty or 1)
    bean.isShareSight = henemy.isShareSight()
    return hunit.create(bean)
end
hgroup = {}
hgroup.loop = function(whichGroup, actions, autoDel)
    if (whichGroup == nil or type(actions) ~= "function") then
        return
    end
    if (type(autoDel) ~= "boolean") then
        autoDel = false
    end
    local tempUnits = {}
    while (true) do
        local u = cj.FirstOfGroup(whichGroup)
        if (u == nil) then
            break
        end
        table.insert(tempUnits, u)
        actions(u)
        cj.GroupRemoveUnit(whichGroup, u)
    end
    if (autoDel == true) then
        cj.DestroyGroup(whichGroup)
    else
        for _, u in ipairs(tempUnits) do
            cj.GroupAddUnit(whichGroup, u)
        end
    end
    tempUnits = nil
end
hgroup.count = function(whichGroup)
    if (whichGroup == nil) then
        return 0
    end
    local count = 0
    hgroup.loop(
        whichGroup,
        function()
            count = count + 1
        end
    )
    return count
end
hgroup.isIn = function(whichGroup, whichUnit)
    if (whichGroup == nil) then
        return false
    end
    return cj.IsUnitInGroup(whichUnit, whichGroup)
end
hgroup.isEmpty = function(whichGroup)
    if (whichGroup == nil) then
        return true
    end
    local isUnitGroupEmptyResult = true
    hgroup.loop(
        whichGroup,
        function()
            isUnitGroupEmptyResult = false
        end
    )
    return isUnitGroupEmptyResult
end
hgroup.addUnit = function(whichGroup, whichUnit)
    if (hgroup.isIn(whichGroup, whichUnit) == false) then
        cj.GroupAddUnit(whichGroup, whichUnit)
    end
end
hgroup.removeUnit = function(whichGroup, whichUnit)
    if (hgroup.isIn(whichGroup, whichUnit) == true) then
        cj.GroupRemoveUnit(whichGroup, whichUnit)
    end
end
hgroup.createByXY = function(x, y, radius, filterFunc)
    
    if (hcamera.model == "zoomin") then
        radius = radius * 0.5
    end
    local g = cj.CreateGroup()
    cj.GroupEnumUnitsInRange(g, x, y, radius, nil)
    if (filterFunc ~= nil) then
        local fg = cj.CreateGroup()
        hgroup.loop(
            g,
            function(filterUnit)
                if (filterFunc(filterUnit) == true) then
                    cj.GroupAddUnit(fg, filterUnit)
                end
            end,
            true
        )
        g = nil
        return fg
    else
        return g
    end
end
hgroup.createByLoc = function(loc, radius, filterFunc)
    return hgroup.createByXY(cj.GetLocationX(loc), cj.GetLocationY(loc), radius, filterFunc)
end
hgroup.createByUnit = function(u, radius, filterFunc)
    return hgroup.createByXY(cj.GetUnitX(u), cj.GetUnitY(u), radius, filterFunc)
end
hgroup.createByRect = function(r, filterFunc)
    local g = cj.CreateGroup()
    cj.GroupEnumUnitsInRect(g, r, nil)
    if (filterFunc ~= nil) then
        local fg = cj.CreateGroup()
        hgroup.loop(
            g,
            function(filterUnit)
                if (filterFunc(filterUnit) == true) then
                    cj.GroupAddUnit(fg, filterUnit)
                end
            end,
            true
        )
        g = nil
        return fg
    else
        return g
    end
end
hgroup.move = function(whichGroup, loc, eff, isFollow)
    if (whichGroup == nil or loc == nil) then
        return
    end
    hgroup.loop(
        whichGroup,
        function(eu)
            cj.SetUnitPositionLoc(eu, loc)
            if (isFollow == true) then
                cj.PanCameraToTimedLocForPlayer(cj.GetOwningPlayer(eu), loc, 0.00)
            end
            if (eff ~= nil) then
                heffect.toLoc(eff, loc, 0)
            end
        end
    )
end
hgroup.animate = function(whichGroup, animateStr)
    if (whichGroup == nil or animateStr == nil) then
        return
    end
    hgroup.loop(
        whichGroup,
        function(eu)
            if (his.death(eu) == false) then
                cj.SetUnitAnimation(eu, animateStr)
            end
        end
    )
end
hgroup.getClosest = function(whichGroup, x, y)
    if (whichGroup == nil or x == nil or y == nil) then
        return
    end
    if (hgroup.count(whichGroup) == 0) then
        return
    end
    local closeDist = 99999
    local closeUnit
    hgroup.loop(
        whichGroup,
        function(u)
            local tx = cj.GetUnitX(u)
            local ty = cj.GetUnitY(u)
            local dist = math.getDistanceBetweenXY(x, y, tx, ty)
            if (dist < closeDist) then
                closeUnit = u
            end
        end
    )
    return closeUnit
end
hgroup.clear = function(whichGroup, isDestroy, isDestroyUnit)
    if (whichGroup == nil) then
        return
    end
    hgroup.loop(
        whichGroup,
        function(eu)
            cj.GroupRemoveUnit(whichGroup, eu)
            if (isDestroyUnit == true) then
                hunit.del(eu)
            end
        end
    )
    if (isDestroy == true) then
        cj.DestroyGroup(whichGroup)
    end
end
hhero = {
    trigger_hero_lvup = nil,
    player_allow_qty = {}, 
    player_current_qty = {}, 
    player_units = {}, 
    build_token = hslk_global.unit_hero_tavern_token,
    build_params = {id = hslk_global.unit_hero_tavern, x = 0, y = 0, distance = 128.0, per_row = 2, allow_qty = 11},
    hero_born_params = {x = 250, y = 250}
}
for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
    local p = cj.Player(i - 1)
    hhero.player_allow_qty[p] = 1
    hhero.player_current_qty[p] = 0
    hhero.player_units[p] = {}
end
hhero.trigger_hero_lvup = cj.CreateTrigger()
cj.TriggerAddAction(
    hhero.trigger_hero_lvup,
    function()
        local u = cj.GetTriggerUnit()
        local diffLv = cj.GetHeroLevel(u) - hhero.getPrevLevel(u)
        if (diffLv < 1) then
            return
        end
        hattr.set(
            u,
            0,
            {
                str_white = "=" .. cj.GetHeroStr(u, false),
                agi_white = "=" .. cj.GetHeroAgi(u, false),
                int_white = "=" .. cj.GetHeroInt(u, false)
            }
        )
        
        hevent.triggerEvent(
            u,
            CONST_EVENT.levelUp,
            {
                triggerUnit = u,
                value = diffLv
            }
        )
        hhero.setPrevLevel(u, cj.GetHeroLevel(u))
    end
)
hhero.setPrevLevel = function(u, lv)
    if (hRuntime.hero[u] == nil) then
        hRuntime.hero[u] = {}
    end
    hRuntime.hero[u].prevLevel = lv
end
hhero.getPrevLevel = function(u)
    if (hRuntime.hero[u] == nil) then
        hRuntime.hero[u] = {}
    end
    return hRuntime.hero[u].prevLevel or 0
end
hhero.getCurLevel = function(u)
    return cj.GetHeroLevel(u) or 1
end
hhero.setCurLevel = function(u, newLevel, showEffect)
    if (type(showEffect) ~= "boolean") then
        showEffect = false
    end
    local oldLevel = cj.GetHeroLevel(u)
    if (newLevel > oldLevel) then
        cj.SetHeroLevel(u, newLevel, showEffect)
    elseif (newLevel < oldLevel) then
        cj.UnitStripHeroLevel(u, oldLevel - newLevel)
    else
        return
    end
    hhero.setPrevLevel(u, newLevel)
end
hhero.setBuildParams = function(x, y, distance, per_row, allow_qty)
    hhero.build_params.x = x
    hhero.build_params.y = y
    hhero.build_params.distance = distance
    hhero.build_params.per_row = per_row
    hhero.build_params.allow_qty = allow_qty
end
hhero.setHeroBornParams = function(x, y)
    hhero.hero_born_params.x = x
    hhero.hero_born_params.y = y
end
hhero.setPlayerAllowQty = function(whichPlayer, max)
    if (max > 0 and max <= 7) then
        heros.player_allow_qty[whichPlayer] = max
    else
        print_err("hhero.setPlayerMaxQty error")
    end
end
hhero.getPlayerAllowQty = function(whichPlayer)
    return heros.player_allow_qty[whichPlayer]
end
hhero.addPlayerUnit = function(whichPlayer, sItem, type)
    if (sItem ~= nil) then
        hhero.player_current_qty[whichPlayer] = hhero.player_current_qty[whichPlayer] + 1
        local u
        if (type == "click") then
            
            u = sItem
            hRuntime.heroBuildSelection[u].canSelect = false
            cj.SetUnitOwner(u, whichPlayer, true)
            local loc = cj.Location(hhero.hero_born_params.x, hhero.hero_born_params.y)
            cj.SetUnitPositionLoc(u, loc)
            cj.RemoveLocation(loc)
            cj.PauseUnit(u, false)
        elseif (type == "tavern") then
            
            u =
                hunit.create(
                {
                    whichPlayer = whichPlayer,
                    unitId = sItem,
                    x = hhero.hero_born_params.x,
                    y = hhero.hero_born_params.y
                }
            )
            if (hhero.player_current_qty[whichPlayer] >= hhero.player_allow_qty[whichPlayer]) then
                hmessage.echo00(whichPlayer, "您选择了 " .. "|cffffff80" .. cj.GetUnitName(u) .. "|r,已挑选完毕", 0)
            else
                hmessage.echo00(
                    whichPlayer,
                    "您选择了 " ..
                        "|cffffff80" ..
                            cj.GetUnitName(u) ..
                                "|r,还要选 " ..
                                    math.floor(
                                        hhero.player_allow_qty[whichPlayer] - hhero.player_current_qty[whichPlayer]
                                    ) ..
                                        " 个",
                    0
                )
            end
        end
        if (u == nil) then
            hmessage.echo00(whichPlayer, "hhero.addPlayerUnit类型错误", 0)
            return
        end
        table.insert(hhero.player_units[whichPlayer], u)
        hhero.setIsHero(u, true)
        hunit.setInvulnerable(u, false)
        
        hevent.triggerEvent(
            "global",
            CONST_EVENT.pickHero,
            {
                triggerPlayer = whichPlayer,
                triggerUnit = u
            }
        )
    end
end
hhero.removePlayerUnit = function(whichPlayer, u, type)
    table.delete(u, hhero.player_units[whichPlayer])
    hhero.player_current_qty[whichPlayer] = hhero.player_current_qty[whichPlayer] - 1
    if (type == "click") then
        
        local heroId = cj.GetUnitTypeId(u)
        local x = hRuntime.heroBuildSelection[u].x
        local y = hRuntime.heroBuildSelection[u].y
        hRuntime.heroBuildSelection[u] = nil
        hunit.del(u)
        local u_new =
            hunit.create(
            {
                whichPlayer = cj.Player(PLAYER_NEUTRAL_PASSIVE),
                unitId = heroId,
                x = x,
                y = y,
                isPause = true
            }
        )
        hRuntime.heroBuildSelection[u_new] = {
            x = x,
            x = y,
            canChoose = true
        }
    elseif (type == "tavern") then
        
        local heroId = cj.GetUnitTypeId(u)
        local itemId = hRuntime.heroBuildSelection[heroId].itemId
        local tavern = hRuntime.heroBuildSelection[heroId].tavern
        hunit.del(u)
        cj.AddItemToStock(tavern, itemId, 1, 1)
    end
end
hhero.setIsHero = function(u, flag)
    flag = flag or false
    his.set(u, "isHero", flag)
    if (flag == true and his.get(u, "isHeroInit") == false) then
        his.set(u, "isHeroInit", true)
        hhero.setPrevLevel(u, 1)
        cj.TriggerRegisterUnitEvent(hhero.trigger_hero_lvup, u, EVENT_UNIT_HERO_LEVEL)
    end
end
hhero.getHeroType = function(u)
    return hslk_global.heroesKV[cj.GetUnitTypeId(u)].Primary
end
hhero.getHeroTypeLabel = function(u)
    return CONST_HERO_PRIMARY[hhero.getHeroType(u)]
end
hhero.buildClick = function(during, clickQty)
    if (during <= 20) then
        print_err("建立点击选英雄模式必须设定during大于20秒")
        return
    end
    if (clickQty == nil or clickQty <= 1) then
        clickQty = 2
    end
    during = during + 1
    
    local randomChooseAbleList = {}
    local totalRow = 1
    local rowNowQty = 0
    local x = 0
    local y = 0
    for _, v in ipairs(hslk_global.heroes) do
        local heroId = v.heroID
        if (heroId > 0) then
            if (rowNowQty >= hhero.build_params.per_row) then
                rowNowQty = 0
                totalRow = totalRow + 1
                x = hhero.build_params.x
                y = y - hhero.build_params.distance
            else
                x = hhero.build_params.x + rowNowQty * hhero.build_params.distance
            end
            local u =
                hunit.create(
                {
                    whichPlayer = cj.Player(PLAYER_NEUTRAL_PASSIVE),
                    unitId = heroId,
                    x = x,
                    y = y,
                    during = during,
                    isInvulnerable = true,
                    isPause = true
                }
            )
            hRuntime.heroBuildSelection[u] = {
                x = x,
                x = y,
                canChoose = true
            }
            table.insert(randomChooseAbleList, u)
            rowNowQty = rowNowQty + 1
        end
    end
    
    local tgr_random = cj.CreateTrigger()
    local tgr_repick = cj.CreateTrigger()
    cj.TriggerAddAction(
        tgr_random,
        function()
            local p = cj.GetTriggerPlayer()
            if (hhero.player_current_qty[p] >= hhero.player_allow_qty[p]) then
                hmessage.echo00(p, "|cffffff80你已经选够了|r", 0)
                return
            end
            local txt = ""
            local qty = 0
            while (true) do
                local u = table.random(randomChooseAbleList)
                table.delete(u, randomChooseAbleList)
                txt = txt .. " " .. cj.GetUnitName(u)
                hhero.addPlayerUnit(p, u, "click")
                hhero.player_current_qty[p] = hhero.player_current_qty[p] + 1
                qty = qty + 1
                if (hhero.player_current_qty[p] >= hhero.player_allow_qty[p]) then
                    break
                end
            end
            hmessage.echo00(
                p,
                "已为您 |cffffff80random|r 选择了 " .. "|cffffff80" .. math.floor(qty) .. "|r 个单位：|cffffff80" .. txt .. "|r",
                0
            )
        end
    )
    cj.TriggerAddAction(
        tgr_repick,
        function()
            local p = cj.GetTriggerPlayer()
            if (hhero.player_current_qty[p] <= 0) then
                hmessage.echo00(p, "|cffffff80你还没有选过任何单位|r", 0)
                return
            end
            local qty = #hhero.player_units
            for _, v in ipairs(hhero.player_units[p]) do
                hhero.removePlayerUnit(p, v, "click")
                table.insert(randomChooseAbleList, v)
            end
            hhero.player_units[p] = {}
            hhero.player_current_qty[p] = 0
            hcamera.toXY(p, 0, hhero.build_params.x, hhero.build_params.y)
            hmessage.echo00(p, "已为您 |cffffff80repick|r 了 " .. "|cffffff80" .. qty .. "|r 个单位", 0)
        end
    )
    
    for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
        local p = cj.Player(i - 1)
        local u =
            hunit.create(
            {
                whichPlayer = p,
                unitId = hhero.build_token,
                x = hhero.build_params.x + hhero.build_params.per_row * 0.5 * hhero.build_params.distance,
                y = hhero.build_params.y - totalRow * 0.5 * hhero.build_params.distance,
                during = during,
                isInvulnerable = true,
                isPause = true
            }
        )
        hunit.del(u, during)
        cj.TriggerRegisterPlayerChatEvent(tgr_random, p, "-random", true)
        cj.TriggerRegisterPlayerChatEvent(tgr_repick, p, "-repick", true)
        local tgr_click =
            hevent.onSelection(
            p,
            clickQty,
            function(data)
                local p = data.triggerPlayer
                local u = data.triggerUnit
                if (hRuntime.heroBuildSelection[u] == nil) then
                    return
                end
                if (hRuntime.heroBuildSelection[u].canSelect == false) then
                    return
                end
                if (cj.GetOwningPlayer(u) ~= cj.Player(PLAYER_NEUTRAL_PASSIVE)) then
                    return
                end
                if (hhero.player_current_qty[p] >= hhero.player_allow_qty[p]) then
                    hmessage.echo00(p, "|cffffff80你已经选够了|r", 0)
                    return
                end
                table.delete(u, randomChooseAbleList)
                hhero.addPlayerUnit(p, u, "click")
                if (hhero.player_current_qty[p] >= hhero.player_allow_qty[p]) then
                    hmessage.echo00(p, "您选择了 " .. "|cffffff80" .. cj.GetUnitName(u) .. "|r,已挑选完毕", 0)
                else
                    hmessage.echo00(
                        p,
                        "您选择了 " ..
                            "|cffffff80" ..
                                cj.GetUnitName(u) ..
                                    "|r,还要选 " ..
                                        math.floor(hhero.player_allow_qty[p] - hhero.player_current_qty[p]) .. " 个",
                        0
                    )
                end
            end
        )
        htime.setTimeout(
            during - 0.5,
            function(t)
                htime.delTimer(t)
                hevent.deleteEvent(p, CONST_EVENT.selection .. "#" .. clickQty, tgr_click)
            end
        )
    end
    
    htime.setTimeout(
        during - 10.0,
        function(t)
            local x1 = hhero.build_params.x + hhero.build_params.per_row * 0.5 * hhero.build_params.distance
            local y1 = hhero.build_params.y - totalRow * 0.5 * hhero.build_params.distance
            htime.delTimer(t)
            cj.DisableTrigger(tgr_repick)
            cj.DestroyTrigger(tgr_repick)
            hmessage.echo("还剩 10 秒，还未选择的玩家尽快啦～")
            cj.PingMinimapEx(x1, y1, 1.00, 254, 0, 0, true)
        end
    )
    
    htime.setTimeout(
        during - 0.5,
        function(t)
            htime.delTimer(t)
            cj.DisableTrigger(tgr_random)
            cj.DestroyTrigger(tgr_random)
        end,
        "选择英雄"
    )
    
    hcamera.toXY(nil, 0, hhero.build_params.x, hhero.build_params.y)
end
hhero.buildTavern = function(during)
    if (during <= 20) then
        print_err("建立酒馆选英雄模式必须设定during大于20秒")
        return
    end
    during = during + 1
    local randomChooseAbleList = {}
    
    local tgr_sell = cj.CreateTrigger()
    local tgr_random = cj.CreateTrigger()
    local tgr_repick = cj.CreateTrigger()
    cj.TriggerAddAction(
        tgr_sell,
        function()
            local it = cj.GetSoldItem()
            local itemId = cj.GetItemTypeId(it)
            local p = cj.GetOwningPlayer(cj.GetBuyingUnit())
            local unitId = hRuntime.heroBuildSelection[itemId].unitId
            local tavern = hRuntime.heroBuildSelection[itemId].tavern
            if (unitId == nil or tavern == nil) then
                print_err("hhero.buildTavern-tgr_sell=nil")
                return
            end
            if (hhero.player_current_qty[p] >= hhero.player_allow_qty[p]) then
                hmessage.echo00(p, "|cffffff80你已经选够了|r", 0)
                hitem.del(it, 0)
                cj.AddItemToStock(tavern, itemId, 1, 1)
                return
            end
            hhero.player_current_qty[p] = hhero.player_current_qty[p] + 1
            cj.RemoveItemFromStock(tavern, itemId)
            table.delete(itemId, randomChooseAbleList)
            hhero.addPlayerUnit(p, unitId, "tavern")
        end
    )
    cj.TriggerAddAction(
        tgr_random,
        function()
            local p = cj.GetTriggerPlayer()
            if (hhero.player_current_qty[p] >= hhero.player_allow_qty[p]) then
                hmessage.echo00(p, "|cffffff80你已经选够了|r", 0)
                return
            end
            local txt = ""
            local qty = 0
            while (true) do
                local itemId = table.random(randomChooseAbleList)
                table.delete(itemId, randomChooseAbleList)
                local unitId = hRuntime.heroBuildSelection[itemId].unitId
                local tavern = hRuntime.heroBuildSelection[itemId].tavern
                if (unitId == nil or tavern == nil) then
                    print_err("hhero.buildTavern-tgr_random=nil")
                    return
                end
                txt = txt .. " " .. hslk_global.heroesKV[unitId].Name
                hhero.addPlayerUnit(p, unitId, "tavern")
                hhero.player_current_qty[p] = hhero.player_current_qty[p] + 1
                qty = qty + 1
                if (hhero.player_current_qty[p] >= hhero.player_allow_qty[p]) then
                    break
                end
            end
            hmessage.echo00(
                p,
                "已为您 |cffffff80random|r 选择了 " .. "|cffffff80" .. math.floor(qty) .. "|r 个单位：|cffffff80" .. txt .. "|r",
                0
            )
        end
    )
    cj.TriggerAddAction(
        tgr_repick,
        function()
            local p = cj.GetTriggerPlayer()
            if (hhero.player_current_qty[p] <= 0) then
                hmessage.echo00(p, "|cffffff80你还没有选过任何单位|r", 0)
                return
            end
            local qty = #hhero.player_units
            for _, v in ipairs(hhero.player_units[p]) do
                local heroId = cj.GetUnitTypeId(v)
                hhero.removePlayerUnit(p, v, "tavern")
                table.insert(randomChooseAbleList, hRuntime.heroBuildSelection[heroId].itemId)
            end
            hhero.player_units[p] = {}
            hhero.player_current_qty[p] = 0
            hcamera.toXY(p, 0, hhero.build_params.x, hhero.build_params.y)
            hmessage.echo00(p, "已为您 |cffffff80repick|r 了 " .. "|cffffff80" .. qty .. "|r 个单位", 0)
        end
    )
    
    local totalRow = 1
    local rowNowQty = 0
    local x = 0
    local y = hhero.build_params.y
    local tavern
    local tavernNowQty = {}
    for k, v in ipairs(hslk_global.heroesItems) do
        local itemId = v.itemID
        local heroId = v.heroID
        if (itemID > 0 and heroId > 0) then
            if (tavern == nil or tavernNowQty[tavern] == nil or tavernNowQty[tavern] >= hhero.build_params.allow_qty) then
                tavernNowQty[tavern] = 0
                if (rowNowQty >= hhero.build_params.per_row) then
                    rowNowQty = 0
                    totalRow = totalRow + 1
                    x = hhero.build_params.x
                    y = y - hhero.build_params.distance
                else
                    x = hhero.build_params.x + rowNowQty * hhero.build_params.distance
                end
                tavern =
                    hunit.create(
                    {
                        whichPlayer = cj.Player(PLAYER_NEUTRAL_PASSIVE),
                        unitId = hhero.build_params.id,
                        x = x,
                        y = y,
                        during = during
                    }
                )
                cj.SetItemTypeSlots(tavern, hhero.build_params.allow_qty)
                cj.TriggerRegisterUnitEvent(tgr_sell, tavern, EVENT_UNIT_SELL_ITEM)
                rowNowQty = rowNowQty + 1
            end
            tavernNowQty[tavern] = tavernNowQty[tavern] + 1
            cj.AddItemToStock(tavern, itemId, 1, 1)
            hRuntime.heroBuildSelection[itemId] = {
                heroId = heroId,
                tavern = tavern
            }
            hRuntime.heroBuildSelection[heroId] = {
                itemId = itemId,
                tavern = tavern
            }
            table.insert(randomChooseAbleList, itemId)
        end
    end
    
    for i = 1, bj_MAX_PLAYER_SLOTS, 1 do
        local p = cj.Player(i - 1)
        local u =
            hunit.create(
            {
                whichPlayer = p,
                unitId = hhero.build_token,
                x = hhero.build_params.x + hhero.build_params.per_row * 0.5 * hhero.build_params.distance,
                y = hhero.build_params.y - totalRow * 0.5 * hhero.build_params.distance,
                isPause = true
            }
        )
        hunit.del(u, during)
        cj.TriggerRegisterPlayerChatEvent(tgr_random, p, "-random", true)
        cj.TriggerRegisterPlayerChatEvent(tgr_repick, p, "-repick", true)
    end
    
    htime.setTimeout(
        during - 10.0,
        function(t)
            local x1 = hhero.build_params.x + hhero.build_params.per_row * 0.5 * hhero.build_params.distance
            local y1 = hhero.build_params.y - totalRow * 0.5 * hhero.build_params.distance
            htime.delTimer(t)
            cj.DisableTrigger(tgr_repick)
            cj.DestroyTrigger(tgr_repick)
            hmessage.echo("还剩 10 秒，还未选择的玩家尽快啦～")
            cj.PingMinimapEx(x1, y1, 1.00, 254, 0, 0, true)
        end
    )
    
    htime.setTimeout(
        during - 0.5,
        function(t)
            htime.delTimer(t)
            cj.DisableTrigger(tgr_random)
            cj.DestroyTrigger(tgr_random)
            cj.DisableTrigger(tgr_sell)
            cj.DestroyTrigger(tgr_sell)
        end,
        "选择英雄"
    )
    
    hcamera.toXY(nil, 0, hhero.build_params.x, hhero.build_params.y)
end
hskill = {
    SKILL_TOKEN = hslk_global.unit_token,
    SKILL_LEAP = hslk_global.unit_token_leap,
    SKILL_BREAK = hslk_global.skill_break, 
    SKILL_SWIM_UNLIMIT = hslk_global.skill_swim_unlimit,
    SKILL_INVISIBLE = hslk_global.skill_invisible,
    SKILL_AVOID_PLUS = hslk_global.attr.avoid.add,
    SKILL_AVOID_MIUNS = hslk_global.attr.avoid.sub,
    BUFF_SWIM = string.char2id("BPSE"),
    BUFF_INVULNERABLE = string.char2id("Avul")
}
hskill.set = function(handle, key, val)
    if (handle == nil or key == nil) then
        return
    end
    if (hRuntime.skill[handle] == nil) then
        hRuntime.skill[handle] = {}
    end
    hRuntime.skill[handle][key] = val
end
hskill.get = function(handle, key, defaultVal)
    if (handle == nil or key == nil) then
        return defaultVal
    end
    if (hRuntime.skill[handle] == nil or hRuntime.skill[handle][key] == nil) then
        return defaultVal
    end
    return hRuntime.skill[handle][key]
end
hskill.add = function(whichUnit, ability_id, during)
    local id = ability_id
    if (type(ability_id) == "string") then
        id = string.char2id(id)
    end
    if (during == nil or during <= 0) then
        cj.UnitAddAbility(whichUnit, id)
        cj.UnitMakeAbilityPermanent(whichUnit, true, id)
    else
        cj.UnitAddAbility(whichUnit, id)
        htime.setTimeout(
            during,
            function(t)
                cj.UnitRemoveAbility(whichUnit, id)
            end
        )
    end
end
hskill.del = function(whichUnit, ability_id, during)
    local id = ability_id
    if (type(ability_id) == "string") then
        id = string.char2id(id)
    end
    if (during == nil or during <= 0) then
        cj.UnitRemoveAbility(whichUnit, id)
    else
        cj.UnitRemoveAbility(whichUnit, id)
        htime.setTimeout(
            during,
            function(t)
                cj.UnitAddAbility(whichUnit, id)
            end
        )
    end
end
hskill.forever = function(whichUnit, ability_id)
    local id = string.char2id(ability_id)
    cj.UnitMakeAbilityPermanent(whichUnit, true, id)
end
hskill.has = function(whichUnit, ability_id)
    if (whichUnit == nil or ability_id == nil) then
        return false
    end
    local id = string.char2id(ability_id)
    if (cj.GetUnitAbilityLevel(whichUnit, id) >= 1) then
        return true
    end
    return false
end
hskill.avoid = function(whichUnit)
    cj.UnitAddAbility(whichUnit, hskill.SKILL_AVOID_PLUS)
    cj.SetUnitAbilityLevel(whichUnit, hskill.SKILL_AVOID_PLUS, 2)
    cj.UnitRemoveAbility(whichUnit, hskill.SKILL_AVOID_PLUS)
    htime.setTimeout(
        0.00,
        function(t)
            htime.delTimer(t)
            cj.UnitAddAbility(whichUnit, hskill.SKILL_AVOID_MIUNS)
            cj.SetUnitAbilityLevel(whichUnit, hskill.SKILL_AVOID_MIUNS, 2)
            cj.UnitRemoveAbility(whichUnit, hskill.SKILL_AVOID_MIUNS)
        end
    )
end
hskill.invulnerable = function(whichUnit, during, effect)
    if (whichUnit == nil) then
        return
    end
    if (during < 0) then
        during = 0.00 
    end
    cj.UnitAddAbility(whichUnit, hskill.BUFF_INVULNERABLE)
    if (during > 0 and effect ~= nil) then
        heffect.bindUnit(effect, whichUnit, "origin", during)
    end
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            cj.UnitRemoveAbility(whichUnit, hskill.BUFF_INVULNERABLE)
        end
    )
end
hskill.invulnerableRange = function(x, y, radius, filter, during, effect)
    if (x == nil or y == nil or filter == nil) then
        return
    end
    if (during < 0) then
        during = 0.00 
    end
    local g = hgroup.createByXY(x, y, radius, filter)
    hgroup.loop(
        g,
        function(eu)
            hunit.setInvulnerable(eu, true)
            if (during > 0 and effect ~= nil) then
                heffect.bindUnit(effect, eu, "origin", during)
            end
        end
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            hgroup.loop(
                g,
                function(eu)
                    hunit.setInvulnerable(eu, false)
                end
            )
            cj.GroupClear(g)
            cj.DestroyGroup(g)
            g = nil
        end
    )
end
hskill.pause = function(whichUnit, during, pauseColor)
    if (whichUnit == nil) then
        return
    end
    if (during < 0) then
        during = 0.01 
    end
    local prevTimer = hskill.get(whichUnit, "pauseTimer")
    local prevTimeRemaining = 0
    if (prevTimer ~= nil) then
        prevTimeRemaining = htime.getRemainTime(prevTimer)
        if (prevTimeRemaining > 0) then
            htime.delTimer(prevTimer)
            hskill.set(whichUnit, "pauseTimer", nil)
        else
            prevTimeRemaining = 0
        end
    end
    if (pauseColor == "black") then
        bj.SetUnitVertexColorBJ(whichUnit, 30, 30, 30, 0)
    elseif (pauseColor == "blue") then
        bj.SetUnitVertexColorBJ(whichUnit, 30, 30, 200, 0)
    elseif (pauseColor == "red") then
        bj.SetUnitVertexColorBJ(whichUnit, 200, 30, 30, 0)
    elseif (pauseColor == "green") then
        bj.SetUnitVertexColorBJ(whichUnit, 30, 200, 30, 0)
    end
    cj.SetUnitTimeScalePercent(whichUnit, 0.00)
    cj.PauseUnit(whichUnit, true)
    hskill.set(
        whichUnit,
        "pauseTimer",
        htime.setTimeout(
            during + prevTimeRemaining,
            function(t)
                htime.delTimer(t)
                cj.PauseUnit(whichUnit, false)
                if (string.len(pauseColor) ~= nil) then
                    cj.SetUnitVertexColorBJ(whichUnit, 100, 100, 100, 0)
                end
                cj.SetUnitTimeScalePercent(whichUnit, 100.00)
            end
        )
    )
end
hskill.invisible = function(whichUnit, during, transition, effect)
    if (whichUnit == nil or during == nil or during <= 0) then
        return
    end
    if (his.death(whichUnit)) then
        return
    end
    transition = transition or 0
    if (effect ~= nil) then
        heffect.toUnit(effect, whichUnit, 0)
    end
    if (transition > 0) then
        htime.setTimeout(
            transition,
            function(t)
                htime.delTimer(t)
                hskill.add(whichUnit, hskill.SKILL_INVISIBLE, during)
            end
        )
    else
        hskill.add(whichUnit, hskill.SKILL_INVISIBLE, during)
    end
end
hskill.visible = function(whichUnit, during, transition, effect)
    if (whichUnit == nil or during == nil or during <= 0) then
        return
    end
    if (his.death(whichUnit)) then
        return
    end
    transition = transition or 0
    if (effect ~= nil) then
        heffect.toUnit(effect, whichUnit, 0)
    end
    if (transition > 0) then
        htime.setTimeout(
            transition,
            function(t)
                htime.delTimer(t)
                hskill.del(whichUnit, hskill.SKILL_INVISIBLE, during)
            end
        )
    else
        hskill.del(whichUnit, hskill.SKILL_INVISIBLE, during)
    end
end
hskill.modelEffect = function(whichUnit, whichAbility, abilityLevel, during)
    if (whichUnit ~= nil and whichAbility ~= nil and during > 0.03) then
        cj.UnitAddAbility(whichUnit, whichAbility)
        cj.UnitMakeAbilityPermanent(whichUnit, true, whichAbility)
        if (abilityLevel > 0) then
            cj.SetUnitAbilityLevel(whichUnit, whichAbility, abilityLevel)
        end
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.UnitRemoveAbility(whichUnit, whichAbility)
            end
        )
    end
end
hskill.diy = function(options)
    if (options.whichPlayer == nil or options.skillId == nil or options.orderString == nil) then
        return
    end
    if (options.x == nil or options.y == nil) then
        return
    end
    local life = options.life
    if (options.life == nil or options.life < 2.00) then
        life = 2.00
    end
    local token = cj.CreateUnit(options.whichPlayer, hskill.SKILL_TOKEN, x, y, bj_UNIT_FACING)
    cj.UnitAddAbility(token, options.skillId)
    if (options.targetUnit ~= nil) then
        cj.IssueTargetOrderById(token, options.orderId, options.targetUnit)
    elseif (options.targetX ~= nil and options.targetY ~= nil) then
        cj.IssuePointOrder(token, options.orderString, options.targetX, options.targetY)
    elseif (options.targetLoc ~= nil) then
        cj.IssuePointOrderLoc(token, options.orderString, options.targetLoc)
    else
        cj.IssueImmediateOrder(token, options.orderString)
    end
    hunit.del(token, life)
end
local _damageTtgQty = 0
local _damageTtg = function(targetUnit, damage, fix, color)
    _damageTtgQty = _damageTtgQty + 1
    local during = 1.0
    local offx = -0.05 - _damageTtgQty * 0.015
    local offy = 0.05 + _damageTtgQty * 0.015
    htextTag.style(
        htextTag.create2Unit(targetUnit, fix .. math.floor(damage), 6.00, color, 1, during, 12.00),
        "toggle",
        offx,
        offy
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            _damageTtgQty = _damageTtgQty - 1
        end
    )
end
hskill.damage = function(options)
    local sourceUnit = options.sourceUnit
    local targetUnit = options.targetUnit
    local damage = options.damage or 0
    if (damage < 0.125) then
        return
    end
    if (targetUnit == nil) then
        return
    end
    if (sourceUnit == nil) then
        return
    end
    if (his.alive(options.targetUnit) == false) then
        return
    end
    if (options.damageKind == nil) then
        options.damageKind = CONST_DAMAGE_KIND.special
    end
    
    local targetUnitAttr = hattr.get(targetUnit)
    local sourceUnitAttr = hattr.get(sourceUnit)
    if (sourceUnitAttr == nil) then
        print("sourceUnit unregister")
        return
    end
    if (targetUnitAttr == nil) then
        print("targetUnit unregister")
        return
    end
    local damageKind = options.damageKind
    local damageType = options.damageType
    if (damageType == nil) then
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            damageType = hattr.get(sourceUnit, "attack_damage_type")
        end
    end
    
    if (damageType == nil or #damageType <= 0) then
        damageType = {CONST_DAMAGE_TYPE.common}
    end
    
    local lastDamage = 0
    local lastDamagePercent = 0.0
    
    local punishEffectRatio = 0
    
    local isAvoid = false
    
    local breakArmorType = options.breakArmorType or {}
    local damageString = options.damageString or ""
    local damageStringColor = options.damageStringColor or "d9d9d9"
    local effect = options.effect
    
    if (damageKind == CONST_DAMAGE_KIND.attack) then
        if (his.unarm(sourceUnit) == true) then
            return
        end
    elseif (damageKind == CONST_DAMAGE_KIND.skill) then
        if (his.silent(sourceUnit) == true) then
            return
        end
    elseif (damageKind == CONST_DAMAGE_KIND.item) then
    elseif (damageKind == CONST_DAMAGE_KIND.special) then
    else
        print_err("DAMAGE -damageKind")
        return
    end
    
    if (his.invincible(targetUnit) == true or math.random(1, 100) < targetUnitAttr.invincible) then
        if (table.includes(CONST_DAMAGE_TYPE.absolute, damageType) == false) then
            return
        end
    end
    
    punishEffectRatio = 0.99
    if (targetUnitAttr.punish_oppose > 0) then
        punishEffectRatio = punishEffectRatio - targetUnitAttr.punish_oppose * 0.01
        if (punishEffectRatio < 0.100) then
            punishEffectRatio = 0.100
        end
    end
    
    
    if (targetUnitAttr.defend < 0 and targetUnitAttr.defend >= -20) then
        damage = damage / (2 - cj.Pow(0.94, math.abs(targetUnitAttr.defend)))
    elseif (targetUnitAttr.defend < 0 and targetUnitAttr.defend < -20) then
        damage = damage / (2 - cj.Pow(0.94, 20))
    end
    
    local dmgRatio = 1 / #damageType
    local typeRatio = {}
    for _, d in ipairs(damageType) do
        if (typeRatio[d] == nil) then
            typeRatio[d] = 0
        end
        typeRatio[d] = typeRatio[d] + dmgRatio
    end
    
    lastDamage = damage
    
    if (breakArmorType ~= nil and #breakArmorType > 0) then
        damageString = damageString .. "无视"
        if (table.includes("defend", breakArmorType)) then
            if (targetUnitAttr.defend > 0) then
                targetUnitAttr.defend = 0
            end
            damageString = damageString .. "护甲"
            damageStringColor = "f97373"
        end
        if (table.includes("resistance", breakArmorType)) then
            if (targetUnitAttr.resistance > 0) then
                targetUnitAttr.resistance = 0
            end
            damageString = damageString .. "魔抗"
            damageStringColor = "6fa8dc"
        end
        if (table.includes("avoid", breakArmorType)) then
            targetUnitAttr.avoid = -9999
            damageString = damageString .. "回避"
            damageStringColor = "76a5af"
        end
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.breakArmor,
            {
                triggerUnit = sourceUnit,
                targetUnit = targetUnit,
                breakType = breakArmorType
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beBreakArmor,
            {
                triggerUnit = targetUnit,
                sourceUnit = sourceUnit,
                breakType = breakArmorType
            }
        )
    end
    
    if (table.includes(CONST_DAMAGE_TYPE.real, damageType) == true) then
        targetUnitAttr.avoid = -99999
        damageString = damageString .. CONST_DAMAGE_TYPE_MAP.real.label
        damageStringColor = CONST_DAMAGE_TYPE_MAP.real.color
    end
    
    if (table.includes(CONST_DAMAGE_TYPE.absolute, damageType) == true) then
        targetUnitAttr.avoid = -99999
        damageString = damageString .. CONST_DAMAGE_TYPE_MAP.absolute.label
        damageStringColor = CONST_DAMAGE_TYPE_MAP.absolute.color
    end
    
    if
        (damageKind == CONST_DAMAGE_KIND.attack and targetUnitAttr.avoid - sourceUnitAttr.aim > 0 and
            math.random(1, 100) <= targetUnitAttr.avoid - sourceUnitAttr.aim)
     then
        isAvoid = true
        lastDamage = 0
        htextTag.style(htextTag.create2Unit(targetUnit, "回避", 6.00, "5ef78e", 10, 1.00, 10.00), "scale", 0, 0.2)
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.avoid,
            {
                triggerUnit = targetUnit,
                attacker = sourceUnit
            }
        )
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.beAvoid,
            {
                triggerUnit = sourceUnit,
                attacker = sourceUnit,
                targetUnit = targetUnit
            }
        )
    end
    
    if (lastDamage > 0) then
        
        local tempNatural = {}
        for _, natural in ipairs(CONST_DAMAGE_TYPE_NATURE) do
            tempNatural[natural] =
                10 + sourceUnitAttr["natural_" .. natural] - targetUnitAttr["natural_" .. natural .. "_oppose"]
            if (tempNatural[natural] < -100) then
                tempNatural[natural] = -100
            end
            if (table.includes(natural, damageType) and tempNatural[natural] ~= 0) then
                lastDamagePercent = lastDamagePercent + typeRatio[natural] * tempNatural[natural] * 0.01
                damageString = damageString .. CONST_DAMAGE_TYPE_MAP[natural].label
                damageStringColor = CONST_DAMAGE_TYPE_MAP[natural].color
            end
        end
    end
    
    if (targetUnitAttr.defend ~= 0 and typeRatio[CONST_DAMAGE_TYPE.physical] ~= nil) then
        local defendPercent = 0
        if (targetUnitAttr.defend > 0) then
            defendPercent = targetUnitAttr.defend / (targetUnitAttr.defend + 200)
        else
            local dfd = math.abs(targetUnitAttr.defend)
            defendPercent = -dfd / (dfd * 0.33 + 100)
        end
        defendPercent = defendPercent * typeRatio[CONST_DAMAGE_TYPE.physical]
        lastDamagePercent = lastDamagePercent - defendPercent
    end
    
    if (targetUnitAttr.resistance ~= 0 and typeRatio[CONST_DAMAGE_TYPE.magic] ~= nil) then
        local resistancePercent = 0
        if (targetUnitAttr.resistance >= 100) then
            resistancePercent = -1
        else
            resistancePercent = -targetUnitAttr.resistance * 0.01
        end
        resistancePercent = resistancePercent * typeRatio[CONST_DAMAGE_TYPE.magic]
        lastDamagePercent = lastDamagePercent - resistancePercent
    end
    
    if (lastDamage > 0 and sourceUnitAttr.damage_extent ~= 0) then
        lastDamagePercent = lastDamagePercent + sourceUnitAttr.damage_extent * 0.01
    end
    
    lastDamage = lastDamage * (1 + lastDamagePercent)
    
    if (targetUnitAttr.toughness > 0) then
        if (targetUnitAttr.toughness >= lastDamage) then
            
            hevent.triggerEvent(
                targetUnit,
                CONST_EVENT.limitToughness,
                {
                    triggerUnit = targetUnit,
                    sourceUnit = sourceUnit
                }
            )
            lastDamage = 0
        else
            lastDamage = lastDamage - targetUnitAttr.toughness
        end
    end
    
    if (lastDamage > 0.125) then
        
        if (hRuntime.attributeDamaging[targetUnit] ~= nil) then
            htime.delTimer(hRuntime.attributeDamaging[targetUnit])
            hRuntime.attributeDamaging[targetUnit] = nil
        end
        his.set(targetUnit, "isDamaging", true)
        hRuntime.attributeDamaging[targetUnit] =
            htime.setTimeout(
            2.5,
            function(t)
                htime.delTimer(t)
                hRuntime.attributeDamaging[targetUnit] = nil
                his.set(targetUnit, "isDamaging", false)
            end
        )
        
        _damageTtg(targetUnit, lastDamage, damageString, damageStringColor)
        
        hevent.setLastDamageUnit(targetUnit, sourceUnit)
        hplayer.addDamage(cj.GetOwningPlayer(sourceUnit), lastDamage)
        hplayer.addBeDamage(cj.GetOwningPlayer(targetUnit), lastDamage)
        hunit.subCurLife(targetUnit, lastDamage)
        if (type(effect) == "string" and string.len(effect) > 0) then
            heffect.toXY(effect, cj.GetUnitX(targetUnit), cj.GetUnitY(targetUnit), 0)
        end
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.damage,
            {
                triggerUnit = sourceUnit,
                targetUnit = targetUnit,
                sourceUnit = sourceUnit,
                damage = lastDamage,
                damageKind = damageKind,
                damageType = damageType
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beDamage,
            {
                triggerUnit = targetUnit,
                sourceUnit = sourceUnit,
                damage = lastDamage,
                damageKind = damageKind,
                damageType = damageType
            }
        )
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            
            hevent.triggerEvent(
                sourceUnit,
                CONST_EVENT.attack,
                {
                    triggerUnit = sourceUnit,
                    attacker = sourceUnit,
                    targetUnit = targetUnit,
                    damage = lastDamage,
                    damageKind = damageKind,
                    damageType = damageType
                }
            )
            
            hevent.triggerEvent(
                targetUnit,
                CONST_EVENT.beAttack,
                {
                    triggerUnit = sourceUnit,
                    attacker = sourceUnit,
                    targetUnit = targetUnit,
                    damage = lastDamage,
                    damageKind = damageKind,
                    damageType = damageType
                }
            )
        end
        
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            local hemophagia = sourceUnitAttr.hemophagia - targetUnitAttr.hemophagia_oppose
            if (hemophagia > 0) then
                hunit.addCurLife(sourceUnit, lastDamage * hemophagia * 0.01)
                heffect.bindUnit(
                    "Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",
                    sourceUnit,
                    "origin",
                    1.00
                )
                
                hevent.triggerEvent(
                    sourceUnit,
                    CONST_EVENT.hemophagia,
                    {
                        triggerUnit = sourceUnit,
                        targetUnit = targetUnit,
                        damage = lastDamage * hemophagia * 0.01,
                        percent = hemophagia
                    }
                )
                
                hevent.triggerEvent(
                    targetUnit,
                    CONST_EVENT.beHemophagia,
                    {
                        triggerUnit = targetUnit,
                        sourceUnit = sourceUnit,
                        damage = lastDamage * hemophagia * 0.01,
                        percent = hemophagia
                    }
                )
            end
        end
        
        if (damageKind == CONST_DAMAGE_KIND.skill) then
            local hemophagiaSkill = sourceUnitAttr.hemophagia_skill - targetUnitAttr.hemophagia_skill_oppose
            if (hemophagiaSkill > 0) then
                hunit.addCurLife(sourceUnit, lastDamage * hemophagiaSkill * 0.01)
                heffect.bindUnit(
                    "Abilities\\Spells\\Items\\HealingSalve\\HealingSalveTarget.mdl",
                    sourceUnit,
                    "origin",
                    1.80
                )
                
                hevent.triggerEvent(
                    sourceUnit,
                    CONST_EVENT.skillHemophagia,
                    {
                        triggerUnit = sourceUnit,
                        targetUnit = targetUnit,
                        damage = lastDamage * hemophagiaSkill * 0.01,
                        percent = hemophagiaSkill
                    }
                )
                
                hevent.triggerEvent(
                    targetUnit,
                    CONST_EVENT.beSkillHemophagia,
                    {
                        triggerUnit = targetUnit,
                        sourceUnit = sourceUnit,
                        damage = lastDamage * hemophagiaSkill * 0.01,
                        percent = hemophagiaSkill
                    }
                )
            end
        end
        
        local punish_during = 5.00
        if
            (lastDamage > 1 and his.alive(targetUnit) and his.punish(targetUnit) == false and
                hunit.isOpenPunish(targetUnit))
         then
            hattr.set(
                targetUnit,
                0,
                {
                    punish_current = "-" .. lastDamage
                }
            )
            if (targetUnitAttr.punish_current <= 0) then
                his.set(targetUnit, "isPunishing", true)
                htime.setTimeout(
                    punish_during + 1.00,
                    function(t)
                        htime.delTimer(t)
                        his.set(targetUnit, "isPunishing", false)
                    end
                )
            end
            local punishEffectAttackSpeed = (100 + targetUnitAttr.attack_speed) * punishEffectRatio
            local punishEffectMove = targetUnitAttr.move * punishEffectRatio
            if (punishEffectAttackSpeed < 1) then
                punishEffectAttackSpeed = 1.00
            end
            if (punishEffectMove < 1) then
                punishEffectMove = 1.00
            end
            hattr.set(
                targetUnit,
                punish_during,
                {
                    attack_speed = "-" .. punishEffectAttackSpeed,
                    move = "-" .. punishEffectMove
                }
            )
            htextTag.style(
                htextTag.create2Unit(targetUnit, "僵硬", 6.00, "c0c0c0", 0, punish_during, 50.00),
                "scale",
                0,
                0
            )
            
            hevent.triggerEvent(
                targetUnit,
                CONST_EVENT.heavy,
                {
                    triggerUnit = targetUnit,
                    sourceUnit = sourceUnit,
                    percent = punishEffectRatio * 100,
                    during = punish_during
                }
            )
        end
        
        if (his.invincible(sourceUnit) == false) then
            local targetUnitDamageRebound = targetUnitAttr.damage_rebound - sourceUnitAttr.damage_rebound_oppose
            if (targetUnitDamageRebound > 0) then
                local ldr = math.round(lastDamage * targetUnitDamageRebound * 0.01)
                if (ldr > 0.01) then
                    hunit.subCurLife(sourceUnit, ldr)
                    htextTag.style(
                        htextTag.create2Unit(sourceUnit, "反伤" .. ldr, 12.00, "f8aaeb", 10, 1.00, 10.00),
                        "shrink",
                        0.05,
                        0
                    )
                    
                    hevent.triggerEvent(
                        targetUnit,
                        CONST_EVENT.rebound,
                        {
                            triggerUnit = targetUnit,
                            sourceUnit = sourceUnit,
                            damage = lastDamage * targetUnitDamageRebound * 0.01
                        }
                    )
                end
            end
        end
        
        
        local buff
        local debuff
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            buff = sourceUnitAttr.attack_buff
            debuff = sourceUnitAttr.attack_debuff
        elseif (damageKind == CONST_DAMAGE_KIND.skill) then
            buff = sourceUnitAttr.skill_buff
            debuff = sourceUnitAttr.skill_debuff
        end
        if (buff ~= nil) then
            for _, etc in ipairs(buff) do
                local b = etc.table
                if (b.val ~= 0 and b.during > 0 and math.random(1, 1000) <= b.odds * 10) then
                    hattr.set(sourceUnit, b.during, {[b.attr] = "+" .. b.val})
                    if (type(b.effect) == "string" and string.len(b.effect) > 0) then
                        heffect.bindUnit(b.effect, sourceUnit, "origin", b.during)
                    end
                end
            end
        end
        if (debuff ~= nil) then
            for _, etc in ipairs(debuff) do
                local b = etc.table
                if (b.val ~= 0 and b.during > 0 and math.random(1, 1000) <= b.odds * 10) then
                    hattr.set(targetUnit, b.during, {[b.attr] = "-" .. b.val})
                    if (type(b.effect) == "string" and string.len(b.effect) > 0) then
                        heffect.bindUnit(b.effect, targetUnit, "origin", b.during)
                    end
                end
            end
        end
        
        local effect
        if (damageKind == CONST_DAMAGE_KIND.attack) then
            effect = sourceUnitAttr.attack_effect
        elseif (damageKind == CONST_DAMAGE_KIND.skill) then
            effect = sourceUnitAttr.skill_effect
        end
        if (effect ~= nil) then
            for _, etc in ipairs(effect) do
                local b = etc.table
                if ((b.odds or 0) > 0) then
                    if (b.attr == "knocking") then
                        
                        if (table.includes(CONST_DAMAGE_TYPE.physical, damageType) == true) then
                            hskill.knocking(
                                {
                                    whichUnit = targetUnit,
                                    odds = b.odds,
                                    damage = typeRatio[CONST_DAMAGE_TYPE.physical] * damage,
                                    percent = b.percent,
                                    sourceUnit = sourceUnit,
                                    effect = b.effect,
                                    damageKind = CONST_DAMAGE_KIND.special,
                                    damageType = {CONST_DAMAGE_TYPE.physical}
                                }
                            )
                        end
                    elseif (b.attr == "violence") then
                        
                        if (table.includes(CONST_DAMAGE_TYPE.magic, damageType) == true) then
                            hskill.violence(
                                {
                                    whichUnit = targetUnit,
                                    odds = b.odds,
                                    damage = typeRatio[CONST_DAMAGE_TYPE.magic] * damage,
                                    percent = b.percent,
                                    sourceUnit = sourceUnit,
                                    effect = b.effect,
                                    damageKind = CONST_DAMAGE_KIND.special,
                                    damageType = {CONST_DAMAGE_TYPE.magic}
                                }
                            )
                        end
                    elseif (b.attr == "split") then
                        
                        if (CONST_DAMAGE_KIND.attack == damageKind) then
                            hskill.split(
                                {
                                    whichUnit = targetUnit,
                                    odds = b.odds,
                                    damage = damage,
                                    percent = b.percent,
                                    range = b.range,
                                    sourceUnit = sourceUnit,
                                    effect = b.effect,
                                    damageKind = CONST_DAMAGE_KIND.special,
                                    damageType = {CONST_DAMAGE_TYPE.common}
                                }
                            )
                        end
                    elseif (b.attr == "broken") then
                        
                        hskill.broken(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common}
                            }
                        )
                    elseif (b.attr == "swim") then
                        
                        hskill.swim(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common}
                            }
                        )
                    elseif (b.attr == "silent") then
                        
                        hskill.silent(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common}
                            }
                        )
                    elseif (b.attr == "unarm") then
                        
                        hskill.unarm(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common}
                            }
                        )
                    elseif (b.attr == "fetter") then
                        
                        hskill.fetter(
                            {
                                whichUnit = targetUnit,
                                odds = b.odds,
                                damage = b.val or 0,
                                during = b.during,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common}
                            }
                        )
                    elseif (b.attr == "bomb") then
                        
                        hskill.bomb(
                            {
                                odds = b.odds,
                                damage = b.val or 0,
                                range = b.range,
                                whichUnit = targetUnit,
                                sourceUnit = sourceUnit,
                                effect = b.effect,
                                effectSingle = b.effectSingle,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common}
                            }
                        )
                    elseif (b.attr == "lightning_chain") then
                        
                        hskill.lightningChain(
                            {
                                odds = b.odds,
                                damage = b.val or 0,
                                lightningType = b.lightning_type,
                                qty = b.qty,
                                change = b.change,
                                range = b.range or 500,
                                effect = b.effect,
                                isRepeat = false,
                                whichUnit = targetUnit,
                                prevUnit = sourceUnit,
                                sourceUnit = sourceUnit,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common, CONST_DAMAGE_TYPE.thunder}
                            }
                        )
                    elseif (b.attr == "crack_fly") then
                        
                        hskill.crackFly(
                            {
                                odds = b.odds,
                                damage = b.val or 0,
                                whichUnit = targetUnit,
                                sourceUnit = sourceUnit,
                                distance = b.distance,
                                high = b.high,
                                during = b.during,
                                effect = b.effect,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = b.damageType or {CONST_DAMAGE_TYPE.common}
                            }
                        )
                    end
                end
            end
        end
    end
end
hskill.damageRange = function(options)
    local range = options.range or 0
    local times = options.times or 0
    local frequency = options.frequency or 0
    local damage = options.damage or 0
    if (range <= 0 or times <= 0) then
        print_err("hskill.damageRange:-range -times")
        return
    end
    if (times > 1 and frequency <= 0) then
        print_err("hskill.damageRange:-frequency")
        return
    end
    if (damage > 0 and options.sourceUnit == nil) then
        print_err("hskill.damageRange:-sourceUnit")
        return
    end
    local x, y
    if (options.x ~= nil or options.y ~= nil) then
        x = options.x
        y = options.y
    elseif (options.whichUnit ~= nil) then
        x = cj.GetUnitX(options.whichUnit)
        y = cj.GetUnitY(options.whichUnit)
    elseif (options.whichLoc ~= nil) then
        x = cj.GetLocatonX(options.whichLoc)
        y = cj.GetLocatonY(options.whichLoc)
    end
    if (x == nil or y == nil) then
        print_err("hskill.damageRange:-x -y")
        return
    end
    local filter = options.filter
    if (type(filter) ~= "function") then
        print_err("filter must be function")
        return
    end
    if (options.effect ~= nil) then
        heffect.toXY(options.effect, x, y, 0.25 + (times * frequency))
    end
    if (times <= 1) then
        local g = hgroup.createByXY(x, y, range, filter)
        if (g == nil) then
            return
        end
        if (hgroup.count(g) <= 0) then
            return
        end
        hgroup.loop(
            g,
            function(eu)
                hskill.damage(
                    {
                        sourceUnit = options.sourceUnit,
                        targetUnit = eu,
                        effect = options.effectSingle,
                        damage = damage,
                        damageKind = options.damageKind,
                        damageType = options.damageType
                    }
                )
                if (type(options.extraInfluence) == "function") then
                    options.extraInfluence(eu)
                end
            end,
            true
        )
    else
        local ti = 0
        htime.setInterval(
            frequency,
            function(t)
                ti = ti + 1
                if (ti > times) then
                    htime.delTimer(t)
                    return
                end
                local g = hgroup.createByXY(x, y, range, filter)
                if (g == nil) then
                    return
                end
                if (hgroup.count(g) <= 0) then
                    return
                end
                hgroup.loop(
                    g,
                    function(eu)
                        hskill.damage(
                            {
                                sourceUnit = options.sourceUnit,
                                targetUnit = eu,
                                effect = options.effectSingle,
                                damage = damage,
                                damageKind = options.damageKind,
                                damageType = options.damageType
                            }
                        )
                        if (type(options.extraInfluence) == "function") then
                            options.extraInfluence(eu)
                        end
                    end,
                    true
                )
            end
        )
    end
end
hskill.damageGroup = function(options)
    local times = options.times or 0
    local frequency = options.frequency or 0
    local damage = options.damage or 0
    if (options.whichGroup == nil) then
        print_err("hskill.damageGroup:-whichGroup")
        return
    end
    if (times <= 0 or frequency < 0) then
        print_err("hskill.damageGroup:-times -frequency")
        return
    end
    if (damage > 0 and options.sourceUnit == nil) then
        print_err("hskill.damageGroup:-sourceUnit")
        return
    end
    if (hgroup.count(options.whichGroup) <= 0) then
        return
    end
    if (times <= 1) then
        hgroup.loop(
            options.whichGroup,
            function(eu)
                hskill.damage(
                    {
                        sourceUnit = options.sourceUnit,
                        targetUnit = eu,
                        effect = options.effect,
                        damage = damage,
                        damageKind = options.damageKind,
                        damageType = options.damageType
                    }
                )
                if (type(options.extraInfluence) == "function") then
                    options.extraInfluence(eu)
                end
            end
        )
    else
        local ti = 0
        htime.setInterval(
            frequency,
            function(t)
                ti = ti + 1
                if (ti > times) then
                    htime.delTimer(t)
                    return
                end
                hgroup.loop(
                    options.whichGroup,
                    function(eu)
                        hskill.damage(
                            {
                                sourceUnit = options.sourceUnit,
                                targetUnit = eu,
                                effect = options.effect,
                                damage = damage,
                                damageKind = options.damageKind,
                                damageType = options.damageType
                            }
                        )
                        if (type(options.extraInfluence) == "function") then
                            options.extraInfluence(eu)
                        end
                    end
                )
            end
        )
    end
end
hskill.knocking = function(options)
    if (options.whichUnit == nil or options.sourceUnit == nil) then
        print_err("knocking: -whichUnit - sourceUnit")
        return
    end
    local odds = options.odds or 0
    local damage = options.damage or 0
    local percent = options.percent or 0
    if (odds <= 0 or damage <= 0 or percent <= 0) then
        print_err("knocking: -odds -damage -percent")
        return
    end
    local targetUnit = options.whichUnit
    local targetOppose = hattr.get(targetUnit, "knocking_oppose")
    odds = odds - targetOppose
    if (odds <= 0) then
        return
    end
    if (math.random(1, 100) <= odds) then
        local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
        local damageType = options.damageType or {CONST_DAMAGE_TYPE.physical}
        local effect = options.effect or "war3mapImported\\eff_crit.mdl"
        heffect.toUnit(effect, targetUnit, 0.5)
        
        local val = damage * percent * 0.01
        hskill.damage(
            {
                sourceUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                damageString = "物暴",
                damageStringColor = "ef3215",
                damageKind = damageKind,
                damageType = damageType
            }
        )
        
        hevent.triggerEvent(
            options.sourceUnit,
            CONST_EVENT.knocking,
            {
                triggerUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beKnocking,
            {
                triggerUnit = options.sourceUnit,
                sourceUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
    end
end
hskill.violence = function(options)
    if (options.whichUnit == nil or options.sourceUnit == nil) then
        print_err("violence: -whichUnit - sourceUnit")
        return
    end
    local odds = options.odds or 0
    local damage = options.damage or 0
    local percent = options.percent or 0
    if (odds <= 0 or damage <= 0 or percent <= 0) then
        print_err("violence: -odds -damage -percent")
        return
    end
    local targetUnit = options.whichUnit
    local targetOppose = hattr.get(targetUnit, "violence_oppose")
    odds = odds - targetOppose
    if (odds <= 0) then
        return
    end
    if (math.random(1, 100) <= odds) then
        local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
        local damageType = options.damageType or {CONST_DAMAGE_TYPE.magic}
        local effect = options.effect or "war3mapImported\\eff_demon_explosion.mdl"
        heffect.toUnit(effect, targetUnit, 0.5)
        
        local val = damage * percent * 0.01
        hskill.damage(
            {
                sourceUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                damageString = "魔爆",
                damageStringColor = "15bcef",
                damageKind = damageKind,
                damageType = damageType
            }
        )
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.violence,
            {
                triggerUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beViolence,
            {
                triggerUnit = targetUnit,
                sourceUnit = targetUnit,
                damage = val,
                odds = odds,
                percent = percent
            }
        )
    end
end
hskill.split = function(options)
    if (options.whichUnit == nil or options.sourceUnit == nil) then
        print_err("split: -whichUnit - sourceUnit")
        return
    end
    local odds = options.odds or 0
    local damage = options.damage or 0
    local percent = options.percent or 0
    local range = options.range or 0
    if (odds <= 0 or damage <= 0 or percent <= 0 or range <= 0) then
        print_err("split: -odds -damage -percent -range")
        return
    end
    local targetUnit = options.whichUnit
    local targetOppose = hattr.get(targetUnit, "split_oppose")
    odds = odds - targetOppose
    if (odds <= 0) then
        return
    end
    if (math.random(1, 100) <= odds) then
        local g =
            hgroup.createByUnit(
            targetUnit,
            range,
            function(filterUnit)
                local flag = true
                if (his.death(filterUnit)) then
                    flag = false
                end
                if (his.ally(filterUnit, options.sourceUnit)) then
                    flag = false
                end
                if (his.building(filterUnit)) then
                    flag = false
                end
                return flag
            end
        )
        local splitDamage = damage * percent * 0.01
        local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
        local damageType = options.damageType or {}
        hgroup.loop(
            g,
            function(eu)
                if (eu ~= targetUnit) then
                    hskill.damage(
                        {
                            sourceUnit = options.sourceUnit,
                            targetUnit = eu,
                            damage = splitDamage,
                            damageString = "分裂",
                            damageStringColor = "ff6347",
                            damageKind = damageKind,
                            damageType = damageType,
                            effect = options.effect
                        }
                    )
                end
            end
        )
        cj.GroupClear(g)
        cj.DestroyGroup(g)
        g = nil
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.split,
            {
                triggerUnit = options.sourceUnit,
                targetUnit = targetUnit,
                damage = splitDamage,
                range = range,
                percent = percent
            }
        )
        
        hevent.triggerEvent(
            targetUnit,
            CONST_EVENT.beSpilt,
            {
                triggerUnit = targetUnit,
                sourceUnit = options.sourceUnit,
                damage = splitDamage,
                range = range,
                percent = percent
            }
        )
    end
end
hskill.broken = function(options)
    if (options.whichUnit == nil) then
        return
    end
    if (options.damage ~= nil and options.damage > 0 and options.sourceUnit == nil) then
        return
    end
    local u = options.whichUnit
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit or nil
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.sourceUnit or {}
    
    local oppose = hattr.get(u, "broken_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        damage = damage * (1 - oppose * 0.01)
    end
    local cu =
        hunit.create(
        {
            register = false,
            unitId = hskill.SKILL_TOKEN,
            whichPlayer = hplayer.player_passive,
            x = cj.GetUnitX(u),
            y = cj.GetUnitY(u)
        }
    )
    cj.UnitAddAbility(cu, hskill.SKILL_BREAK[0.05])
    cj.SetUnitAbilityLevel(cu, hskill.SKILL_BREAK[0.05], 1)
    cj.IssueTargetOrder(cu, "thunderbolt", u)
    hunit.del(cu, 0.3)
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "打断",
                damageStringColor = "F0F8FF",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    if (sourceUnit ~= nil) then
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.broken,
            {
                triggerUnit = sourceUnit,
                targetUnit = u,
                odds = odds,
                damage = damage
            }
        )
    end
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beBroken,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage
        }
    )
end
hskill.swim = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    if (options.damage ~= nil and options.damage > 0 and options.sourceUnit == nil) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit or nil
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    
    local oppose = hattr.get(u, "swim_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    local damageString = "眩晕"
    local damageStringColor = "4169E1"
    local swimTimer = hskill.get(u, "swimTimer")
    if (swimTimer ~= nil and htime.getRemainTime(t) > 0) then
        if (during <= htime.getRemainTime(swimTimer)) then
            return
        else
            htime.delTimer(swimTimer)
            hskill.set(u, "swimTimer", nil)
            cj.UnitRemoveAbility(u, hskill.BUFF_SWIM)
            damageString = "劲眩"
            damageStringColor = "64e3f2"
        end
    end
    local cu =
        hunit.create(
        {
            register = false,
            unitId = hskill.SKILL_TOKEN,
            whichPlayer = hplayer.player_passive,
            x = cj.GetUnitX(u),
            y = cj.GetUnitY(u)
        }
    )
    
    if (during < 0.05) then
        during = 0.05
    end
    his.set(u, "isSwim", true)
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    if (during <= 0.5) then
        during = 0.05 * math.floor(during / 0.05) 
        cj.UnitAddAbility(cu, hskill.SKILL_BREAK[during])
        cj.SetUnitAbilityLevel(cu, hskill.SKILL_BREAK[during], 1)
        cj.IssueTargetOrder(cu, "thunderbolt", u)
        hunit.del(cu, 0.4)
    else
        
        cj.UnitAddAbility(cu, hskill.SKILL_SWIM_UNLIMIT)
        cj.SetUnitAbilityLevel(cu, hskill.SKILL_SWIM_UNLIMIT, 1)
        cj.IssueTargetOrder(cu, "thunderbolt", u)
        hunit.del(cu, 0.4)
        hskill.set(
            u,
            "swimTimer",
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    cj.UnitRemoveAbility(u, hskill.BUFF_SWIM)
                    his.set(u, "isSwim", false)
                end
            )
        )
    end
    if (sourceUnit ~= nil) then
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.swim,
            {
                triggerUnit = sourceUnit,
                targetUnit = u,
                odds = odds,
                damage = damage,
                during = during
            }
        )
    end
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beSwim,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageKind = damageKind,
                damageType = damageType,
                damageString = damageString,
                damageStringColor = damageStringColor
            }
        )
    end
end
hskill.silent = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    if (options.damage ~= nil and options.damage > 0 and options.sourceUnit == nil) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit or nil
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.sourceUnit or {}
    
    local oppose = hattr.get(u, "silent_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    if (hRuntime.skill.silentUnits == nil) then
        hRuntime.skill.silentUnits = {}
    end
    if (hRuntime.skill.silentTrigger == nil) then
        hRuntime.skill.silentTrigger = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.skill.silentTrigger, EVENT_PLAYER_UNIT_SPELL_CHANNEL)
        cj.TriggerAddAction(
            hRuntime.skill.silentTrigger,
            function()
                local u1 = cj.GetTriggerUnit()
                if (table.includes(u1, hRuntime.skill.silentUnits)) then
                    cj.IssueImmediateOrder(u1, "stop")
                end
            end
        )
    end
    local level = hskill.get(u, "silentLevel", 0) + 1
    if (level <= 1) then
        htextTag.style(htextTag.create2Unit(u, "沉默", 6.00, "ee82ee", 10, 1.00, 10.00), "scale", 0, 0.2)
    else
        htextTag.style(
            htextTag.create2Unit(u, math.floor(level) .. "重沉默", 6.00, "ee82ee", 10, 1.00, 10.00),
            "scale",
            0,
            0.2
        )
    end
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    hskill.set(u, "silentLevel", level)
    if (table.includes(u, hRuntime.skill.silentUnits) == false) then
        table.insert(hRuntime.skill.silentUnits, u)
        local eff = heffect.bindUnit("Abilities\\Spells\\Other\\Silence\\SilenceTarget.mdl", u, "head", -1)
        hskill.set(u, "silentEffect", eff)
    end
    his.set(u, "isSilent", true)
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "沉默",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    if (sourceUnit ~= nil) then
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.silent,
            {
                triggerUnit = sourceUnit,
                targetUnit = u,
                odds = odds,
                damage = damage,
                during = during
            }
        )
    end
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beSilent,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            hskill.set(u, "silentLevel", hskill.get(u, "silentLevel", 0) - 1)
            if (hskill.get(u, "silentLevel") <= 0) then
                heffect.del(hskill.get(u, "silentEffect"))
                if (table.includes(u, hRuntime.skill.silentUnits)) then
                    table.delete(u, hRuntime.skill.silentUnits)
                end
                his.set(u, "isSilent", false)
            end
        end
    )
end
hskill.unarm = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    if (options.damage ~= nil and options.damage > 0 and options.sourceUnit == nil) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit or nil
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.sourceUnit or {}
    
    local oppose = hattr.get(u, "unarm_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    if (hRuntime.skill.unarmUnits == nil) then
        hRuntime.skill.unarmUnits = {}
    end
    if (hRuntime.skill.unarmTrigger == nil) then
        hRuntime.skill.unarmTrigger = cj.CreateTrigger()
        bj.TriggerRegisterAnyUnitEventBJ(hRuntime.skill.unarmTrigger, EVENT_PLAYER_UNIT_ATTACKED)
        cj.TriggerAddAction(
            hRuntime.skill.unarmTrigger,
            function()
                local u1 = cj.GetAttacker()
                if (table.includes(u1, hRuntime.skill.unarmUnits) == true) then
                    cj.IssueImmediateOrder(u1, "stop")
                end
            end
        )
    end
    local level = hskill.get(u, "unarmLevel", 0) + 1
    if (level <= 1) then
        htextTag.style(htextTag.create2Unit(u, "缴械", 6.00, "ffe4e1", 10, 1.00, 10.00), "scale", 0, 0.2)
    else
        htextTag.style(
            htextTag.create2Unit(u, math.floor(level) .. "重缴械", 6.00, "ffe4e1", 10, 1.00, 10.00),
            "scale",
            0,
            0.2
        )
    end
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    hskill.set(u, "unarmLevel", level)
    if (table.includes(u, hRuntime.skill.unarmUnits) == false) then
        table.insert(hRuntime.skill.unarmUnits, u)
        local eff = heffect.bindUnit("Abilities\\Spells\\Other\\Silence\\SilenceTarget.mdl", u, "weapon", -1)
        hskill.set(u, "unarmEffect", eff)
    end
    his.set(u, "isUnArm", true)
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "缴械",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    if (sourceUnit ~= nil) then
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.unarm,
            {
                triggerUnit = sourceUnit,
                targetUnit = u,
                odds = odds,
                damage = damage,
                during = during
            }
        )
    end
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beUnarm,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
    htime.setTimeout(
        during,
        function(t)
            htime.delTimer(t)
            hskill.set(u, "unarmLevel", hskill.get(u, "unarmLevel", 0) - 1)
            if (hskill.get(u, "unarmLevel") <= 0) then
                heffect.del(hskill.get(u, "unarmEffect"))
                if (table.includes(u, hRuntime.skill.unarmUnits)) then
                    table.delete(u, hRuntime.skill.unarmUnits)
                end
                his.set(u, "isUnArm", false)
            end
        end
    )
end
hskill.fetter = function(options)
    if (options.whichUnit == nil or options.during == nil or options.during <= 0) then
        return
    end
    if (options.damage ~= nil and options.damage > 0 and options.sourceUnit == nil) then
        return
    end
    local u = options.whichUnit
    local during = options.during
    local odds = options.odds or 100
    local damage = options.damage or 0
    local sourceUnit = options.sourceUnit or nil
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.sourceUnit or {}
    
    local oppose = hattr.get(u, "fetter_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        during = during * (1 - oppose * 0.01)
        damage = damage * (1 - oppose * 0.01)
    end
    htextTag.style(htextTag.create2Unit(u, "缚足", 6.00, "ffa500", 10, 1.00, 10.00), "scale", 0, 0.2)
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, u, "origin", during)
    end
    hattr.set(
        u,
        during,
        {
            move = "-522"
        }
    )
    if (damage > 0) then
        hskill.damage(
            {
                sourceUnit = sourceUnit,
                targetUnit = u,
                damage = damage,
                damageString = "缚足",
                damageKind = damageKind,
                damageType = damageType
            }
        )
    end
    if (sourceUnit ~= nil) then
        
        hevent.triggerEvent(
            sourceUnit,
            CONST_EVENT.fetter,
            {
                triggerUnit = sourceUnit,
                targetUnit = u,
                odds = odds,
                damage = damage,
                during = during
            }
        )
    end
    
    hevent.triggerEvent(
        u,
        CONST_EVENT.beFetter,
        {
            triggerUnit = u,
            sourceUnit = sourceUnit,
            odds = odds,
            damage = damage,
            during = during
        }
    )
end
hskill.bomb = function(options)
    if (options.damage == nil or options.damage <= 0) then
        return
    end
    if (options.sourceUnit == nil) then
        return
    end
    local odds = options.odds or 100
    local range = options.range or 1
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {}
    local whichGroup
    if (options.whichGroup ~= nil) then
        whichGroup = options.whichGroup
    elseif (options.whichUnit ~= nil) then
        whichGroup =
            hgroup.createByUnit(
            options.whichUnit,
            range,
            function(filterUnit)
                local flag = true
                if (his.enemy(options.whichUnit, filterUnit)) then
                    flag = false
                end
                if (his.death(filterUnit)) then
                    flag = false
                end
                if (his.building(filterUnit)) then
                    flag = false
                end
                return flag
            end
        )
    else
        print_err("lost bomb target")
        return
    end
    hgroup.loop(
        whichGroup,
        function(eu)
            
            local oppose = hattr.get(eu, "bomb_oppose")
            local tempOdds = odds - oppose 
            local damage = options.damage
            if (tempOdds <= 0) then
                return
            else
                if (math.random(1, 1000) > tempOdds * 10) then
                    return
                end
                damage = damage * (1 - oppose * 0.01)
            end
            hskill.damage(
                {
                    sourceUnit = options.sourceUnit,
                    targetUnit = eu,
                    damage = damage,
                    damageKind = damageKind,
                    damageType = damageType,
                    damageString = "爆破",
                    damageStringColor = "FF6347"
                }
            )
            
            hevent.triggerEvent(
                options.sourceUnit,
                CONST_EVENT.bomb,
                {
                    triggerUnit = options.sourceUnit,
                    targetUnit = eu,
                    odds = odds,
                    damage = options.damage,
                    range = range
                }
            )
            
            hevent.triggerEvent(
                eu,
                CONST_EVENT.beBomb,
                {
                    triggerUnit = eu,
                    sourceUnit = options.sourceUnit,
                    odds = odds,
                    damage = options.damage,
                    range = range
                }
            )
        end,
        true
    )
end
hskill.lightningChain = function(options)
    if (options.damage == nil or options.damage <= 0) then
        print_err("lightningChain -damage")
        return
    end
    if (options.whichUnit == nil) then
        print_err("lightningChain -whichUnit")
        return
    end
    if (options.sourceUnit == nil) then
        print_err("lightningChain -sourceUnit")
        return
    end
    if (options.prevUnit == nil) then
        options.prevUnit = options.sourceUnit
    end
    local odds = options.odds or 100
    local damage = options.damage
    
    local oppose = hattr.get(options.whichUnit, "lightning_chain_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        damage = damage * (1 - oppose * 0.01)
    end
    local whichUnit = options.whichUnit
    local prevUnit = options.prevUnit
    local lightningType = options.lightningType or hlightning.type.shan_dian_lian_ci
    local change = options.change or 0
    local range = options.range or 500
    local isRepeat = options.isRepeat or false
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {"thunder"}
    options.qty = options.qty or 1
    options.qty = options.qty - 1
    if (options.qty < 0) then
        options.qty = 0
    end
    if (options.index == nil) then
        options.index = 1
    else
        options.index = options.index + 1
    end
    hlightning.unit2unit(lightningType, prevUnit, whichUnit, 0.25)
    if (options.effect ~= nil) then
        heffect.bindUnit(options.effect, whichUnit, "origin", 0.5)
    end
    hskill.damage(
        {
            sourceUnit = options.sourceUnit,
            targetUnit = whichUnit,
            damage = damage,
            damageKind = damageKind,
            damageType = damageType,
            damageString = "电链",
            damageStringColor = "87cefa"
        }
    )
    
    hevent.triggerEvent(
        options.sourceUnit,
        CONST_EVENT.lightningChain,
        {
            triggerUnit = options.sourceUnit,
            targetUnit = whichUnit,
            odds = odds,
            damage = damage,
            range = range,
            index = options.index
        }
    )
    
    hevent.triggerEvent(
        whichUnit,
        CONST_EVENT.beLightningChain,
        {
            triggerUnit = whichUnit,
            sourceUnit = options.sourceUnit,
            odds = odds,
            damage = damage,
            range = range,
            index = options.index
        }
    )
    if (options.qty > 0) then
        if (isRepeat ~= true) then
            if (options.repeatGroup == nil) then
                options.repeatGroup = cj.CreateGroup()
            end
            cj.GroupAddUnit(options.repeatGroup, whichUnit)
        end
        local g =
            hgroup.createByUnit(
            whichUnit,
            range,
            function(filterUnit)
                local flag = true
                if (his.death(filterUnit)) then
                    flag = false
                end
                if (his.ally(filterUnit, options.sourceUnit)) then
                    flag = false
                end
                if (his.building(filterUnit)) then
                    flag = false
                end
                if (his.unit(whichUnit, filterUnit)) then
                    flag = false
                end
                if (isRepeat ~= true and hgroup.isIn(options.repeatGroup, filterUnit)) then
                    flag = false
                end
                return flag
            end
        )
        if (hgroup.isEmpty(g)) then
            return
        end
        options.whichUnit = hgroup.getClosest(g, cj.GetUnitX(whichUnit), cj.GetUnitY(whichUnit))
        options.damage = options.damage * (1 + change)
        options.prevUnit = whichUnit
        options.odds = 9999 
        cj.GroupClear(g)
        cj.DestroyGroup(g)
        if (options.damage > 0) then
            htime.setTimeout(
                0.35,
                function(t)
                    htime.delTimer(t)
                    hskill.lightningChain(options)
                end
            )
        end
    else
        if (options.repeatGroup ~= nil) then
            cj.GroupClear(options.repeatGroup)
            cj.DestroyGroup(options.repeatGroup)
        end
    end
end
hskill.crackFly = function(options)
    if (options.damage == nil or options.damage < 0) then
        return
    end
    if (options.whichUnit == nil or options.sourceUnit == nil) then
        return
    end
    local odds = options.odds or 100
    local damage = options.damage
    
    local oppose = hattr.get(u, "crack_fly_oppose")
    odds = odds - oppose 
    if (odds <= 0) then
        return
    else
        if (math.random(1, 1000) > odds * 10) then
            return
        end
        if (damage > 0) then
            damage = damage * (1 - oppose * 0.01)
        end
    end
    local distance = options.distance or 0
    local high = options.high or 100
    local during = options.during or 0.5
    if (during < 0.5) then
        during = 0.5
    end
    
    if (his.get(options.targetUnit, "isCrackFly") == true) then
        return
    end
    his.set(options.targetUnit, "isCrackFly", true)
    
    if (hcamera.getModel(cj.GetOwningPlayer(options.targetUnit)) == "zoomin") then
        distance = distance * 0.5
        high = high * 0.5
    end
    local tempObj = {
        odds = 99999,
        whichUnit = options.whichUnit,
        during = during
    }
    hskill.unarm(tempObj)
    hskill.silent(tempObj)
    hattr.set(
        options.targetUnit,
        during,
        {
            move = "-9999"
        }
    )
    if (type(options.effect) == "string" and string.len(options.effect) > 0) then
        heffect.bindUnit(options.effect, options.whichUnit, "origin", during)
    end
    hunit.setCanFly(options.whichUnit)
    cj.SetUnitPathing(options.whichUnit, false)
    local originHigh = cj.GetUnitFlyHeight(options.whichUnit)
    local originFacing = hunit.getFacing(options.whichUnit)
    local originDeg = math.getDegBetweenUnit(options.sourceUnit, options.whichUnit)
    local cost = 0
    
    hevent.triggerEvent(
        options.sourceUnit,
        CONST_EVENT.crackFly,
        {
            triggerUnit = options.sourceUnit,
            targetUnit = options.whichUnit,
            odds = odds,
            damage = damage,
            high = high,
            distance = distance
        }
    )
    
    hevent.triggerEvent(
        options.whichUnit,
        CONST_EVENT.beCrackFly,
        {
            triggerUnit = options.whichUnit,
            sourceUnit = options.sourceUnit,
            odds = odds,
            damage = damage,
            high = high,
            distance = distance
        }
    )
    htime.setInterval(
        0.05,
        function(t)
            local dist = 0
            local z = 0
            local timerSetTime = htime.getSetTime(t)
            if (cost > during) then
                hskill.damage(
                    {
                        sourceUnit = options.sourceUnit,
                        targetUnit = options.targetUnit,
                        effect = options.effect,
                        damage = options.damage,
                        damageKind = options.damageKind,
                        damageType = options.damageType,
                        damageString = "击飞",
                        damageStringColor = "808000"
                    }
                )
                cj.SetUnitFlyHeight(options.targetUnit, originHigh, 10000)
                cj.SetUnitPathing(options.targetUnit, true)
                his.set(options.targetUnit, "isCrackFly", false)
                
                local tempEff = "Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl"
                if (his.water(options.targetUnit) == true) then
                    
                    tempEff = "Abilities\\Spells\\Other\\CrushingWave\\CrushingWaveDamage.mdl"
                end
                heffect.toUnit(tempEff, options.targetUnit, 0)
                htime.delTimer(t)
                return
            end
            cost = cost + timerSetTime
            if (cost < during * 0.35) then
                dist = distance / (during * 0.5 / timerSetTime)
                z = high / (during * 0.35 / timerSetTime)
                if (dist > 0) then
                    local pxy =
                        math.polarProjection(
                        cj.GetUnitX(options.whichUnit),
                        cj.GetUnitY(options.whichUnit),
                        dist,
                        originDeg
                    )
                    cj.SetUnitFacing(options.whichUnit, originFacing)
                    cj.SetUnitPosition(options.whichUnit, pxy.x, pxy.y)
                end
                if (z > 0) then
                    cj.SetUnitFlyHeight(options.whichUnit, cj.GetUnitFlyHeight(options.whichUnit) + z, z / timerSetTime)
                end
            else
                dist = distance / (during * 0.5 / timerSetTime)
                z = high / (during * 0.65 / timerSetTime)
                if (dist > 0) then
                    local pxy =
                        math.polarProjection(
                        cj.GetUnitX(options.whichUnit),
                        cj.GetUnitY(options.whichUnit),
                        dist,
                        originDeg
                    )
                    cj.SetUnitFacing(options.whichUnit, originFacing)
                    cj.SetUnitPosition(options.whichUnit, pxy.x, pxy.y)
                end
                if (z > 0) then
                    cj.SetUnitFlyHeight(options.whichUnit, cj.GetUnitFlyHeight(options.whichUnit) - z, z / timerSetTime)
                end
            end
        end
    )
end
hskill.rangeSwim = function(options)
    local range = options.range or 0
    local during = options.during or 0
    local damage = options.damage or 0
    if (range <= 0 or during <= 0) then
        print_err("hskill.rangeSwim:-range -during")
        return
    end
    if (damage > 0 and options.sourceUnit == nil) then
        print_err("hskill.rangeSwim:-sourceUnit")
        return
    end
    local odds = options.odds or 100
    local effect = options.effect or "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl"
    local x, y
    if (options.x ~= nil or options.y ~= nil) then
        x = options.x
        y = options.y
    elseif (options.whichUnit ~= nil) then
        x = cj.GetUnitX(options.whichUnit)
        y = cj.GetUnitY(options.whichUnit)
    elseif (options.whichLoc ~= nil) then
        x = cj.GetLocatonX(options.whichLoc)
        y = cj.GetLocatonY(options.whichLoc)
    end
    if (x == nil or y == nil) then
        print_err("hskill.rangeSwim:-x -y")
        return
    end
    local filter = options.filter
    if (type(filter) ~= "function") then
        print_err("filter must be function")
        return
    end
    heffect.toXY(effect, x, y, 0)
    local g = hgroup.createByXY(x, y, range, filter)
    if (g == nil) then
        print_err("rangeSwim has not target")
        return
    end
    if (hgroup.count(g) <= 0) then
        return
    end
    hgroup.loop(
        g,
        function(eu)
            hskill.swim(
                {
                    odds = odds,
                    whichUnit = eu,
                    during = during,
                    damage = damage,
                    sourceUnit = options.sourceUnit,
                    damageKind = options.damageKind,
                    damageType = options.damageType
                }
            )
        end,
        true
    )
end
hskill.whirlwind = function(options)
    local range = options.range or 0
    local frequency = options.frequency or 0
    local during = options.during or 0
    local damage = options.damage or 0
    if (range <= 0 or during <= 0 or frequency <= 0) then
        print_err("hskill.whirlwind:-range -during -frequency")
        return
    end
    if (during < frequency) then
        print_err("hskill.whirlwind:-during < frequency")
        return
    end
    if (damage < 0 or options.sourceUnit == nil) then
        print_err("hskill.whirlwind:-damage -sourceUnit")
        return
    end
    if (options.filter == nil) then
        print_err("hskill.whirlwind:-filter")
        return
    end
    local filter = options.filter
    if (type(filter) ~= "function") then
        print_err("filter must be function")
        return
    end
    
    if (his.get(options.sourceUnit, "isWhirlwind") == true) then
        return
    end
    his.set(options.sourceUnit, "isWhirlwind", true)
    if (options.effect ~= nil) then
        heffect.bindUnit(options.effect, options.sourceUnit, "origin", during)
    end
    if (options.animation) then
        cj.AddUnitAnimationProperties(options.sourceUnit, options.animation, true)
    end
    local time = 0
    htime.setInterval(
        frequency,
        function(t)
            time = time + frequency
            if (time > during) then
                htime.delTimer(t)
                if (options.animation) then
                    cj.AddUnitAnimationProperties(options.sourceUnit, options.animation, false)
                end
                his.set(options.sourceUnit, "isWhirlwind", false)
                return
            end
            if (options.animation) then
                cj.SetUnitAnimation(options.sourceUnit, options.animation)
            end
            local g = hgroup.createByUnit(options.sourceUnit, range, filter)
            if (g == nil) then
                return
            end
            if (hgroup.count(g) <= 0) then
                return
            end
            hgroup.loop(
                g,
                function(eu)
                    hskill.damage(
                        {
                            sourceUnit = options.sourceUnit,
                            targetUnit = eu,
                            effect = options.effectSingle,
                            damage = damage,
                            damageKind = options.damageKind,
                            damageType = options.damageType
                        }
                    )
                end,
                true
            )
        end
    )
end
hskill.leap = function(options)
    if (options.sourceUnit == nil) then
        print_err("leap: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("leap: -filter")
        return
    end
    if (options.arrowUnit == nil and options.tokenArrow == nil) then
        print_err("leap: -not arrow")
    end
    if (options.targetUnit == nil and options.x == nil and options.y == nil) then
        print_err("leap: -target")
        return
    end
    local frequency = 0.02
    local acceleration = options.acceleration or 0
    local speed = options.speed or 10
    if (speed > 150) then
        speed = 150 
    elseif (speed <= 1) then
        speed = 1 
    end
    local filter = options.filter
    local sourceUnit = options.sourceUnit
    local prevUnit = options.prevUnit or sourceUnit
    local damageMovement = options.damageMovement or 0
    local damageMovementRange = options.damageMovementRange or 0
    local damageMovementRepeat = options.damageMovementRepeat or false
    local damageMovementDrag = options.damageMovementDrag or false
    local damageEnd = options.damageEnd or 0
    local damageEndRange = options.damageEndRange or 0
    local extraInfluence = options.extraInfluence
    local arrowUnit = options.arrowUnit
    local tokenArrow = options.tokenArrow
    local tokenArrowScale = options.tokenArrowScale or 1.00
    local tokenArrowOpacity = options.tokenArrowOpacity or 1.00
    local tokenArrowHeight = options.tokenArrowHeight or 0
    local oneHitOnly = options.oneHitOnly or false
    
    local leapType
    local initFacing = 0
    if (options.arrowUnit ~= nil) then
        leapType = "unit"
    else
        leapType = "point"
    end
    if (options.targetUnit ~= nil) then
        initFacing = math.getDegBetweenUnit(prevUnit, options.targetUnit)
    elseif (options.x ~= nil and options.y ~= nil) then
        initFacing = math.getDegBetweenXY(cj.GetUnitX(prevUnit), cj.GetUnitY(prevUnit), options.x, options.y)
    else
        print_err("leapType: -unknow")
        return
    end
    local repeatGroup
    if (damageMovement > 0 and damageMovementRepeat == false) then
        repeatGroup = cj.CreateGroup()
    end
    if (arrowUnit == nil) then
        local cxy = math.polarProjection(cj.GetUnitX(prevUnit), cj.GetUnitY(prevUnit), 100, initFacing)
        arrowUnit =
            hunit.create(
            {
                register = false,
                whichPlayer = cj.GetOwningPlayer(sourceUnit),
                unitId = hskill.SKILL_LEAP,
                x = cxy.x,
                y = cxy.y,
                facing = initFacing,
                modelScale = tokenArrowScale,
                opacity = tokenArrowOpacity,
                qty = 1
            }
        )
        if (tokenArrowHeight > 0) then
            hunit.setFlyHeight(arrowUnit, tokenArrowHeight, 9999)
        end
    end
    cj.SetUnitFacing(arrowUnit, firstFacing)
    
    local tempEffectArrow
    if (tokenArrow ~= nil) then
        tempEffectArrow = heffect.bindUnit(tokenArrow, arrowUnit, "origin", -1)
    end
    
    cj.SetUnitPathing(arrowUnit, false)
    if (leapType == "unit") then
        hunit.setInvulnerable(arrowUnit, true)
        cj.SetUnitVertexColor(arrowUnit, 255, 255, 255, 255 * tokenArrowOpacity)
    end
    
    htime.setInterval(
        frequency,
        function(t)
            local ax = cj.GetUnitX(arrowUnit)
            local ay = cj.GetUnitY(arrowUnit)
            if (his.death(sourceUnit)) then
                htime.delTimer(t)
                if (tempEffectArrow ~= nil) then
                    heffect.del(tempEffectArrow)
                end
                if (repeatGroup ~= nil) then
                    cj.GroupClear(repeatGroup)
                    cj.DestroyGroup(repeatGroup)
                    repeatGroup = nil
                end
                if (leapType == "unit") then
                    hunit.setInvulnerable(arrowUnit, false)
                    cj.SetUnitPathing(arrowUnit, true)
                    cj.SetUnitVertexColor(arrowUnit, 255, 255, 255, 1)
                else
                    hunit.kill(arrowUnit, 0)
                end
                if (type(options.onEnding) == "function") then
                    options.onEnding(ax, ay)
                end
                return
            end
            local tx = 0
            local ty = 0
            if (options.targetUnit ~= nil) then
                tx = cj.GetUnitX(options.targetUnit)
                ty = cj.GetUnitY(options.targetUnit)
            else
                tx = options.x
                ty = options.y
            end
            local fac = math.getDegBetweenXY(ax, ay, tx, ty)
            local txy = math.polarProjection(ax, ay, speed, fac)
            cj.SetUnitPosition(arrowUnit, txy.x, txy.y)
            cj.SetUnitFacing(arrowUnit, fac)
            if (options.effectMovement ~= nil) then
                heffect.toXY(options.effectMovement, txy.x, txy.y, 0)
            end
            if (acceleration ~= 0) then
                speed = speed + acceleration
            end
            if (damageMovementRange > 0) then
                local g =
                    hgroup.createByUnit(
                    arrowUnit,
                    damageMovementRange,
                    function(filterUnit)
                        local flag = filter(filterUnit)
                        if (damageMovementRepeat ~= true and hgroup.isIn(repeatGroup, filterUnit)) then
                            flag = false
                        end
                        return flag
                    end
                )
                if (hgroup.count(g) > 0) then
                    if (oneHitOnly == true) then
                        hunit.kill(arrowUnit, 0)
                    end
                    hgroup.loop(
                        g,
                        function(eu)
                            if (damageMovementRepeat ~= true) then
                                hgroup.addUnit(repeatGroup, eu)
                            end
                            if (damageMovement > 0) then
                                hskill.damage(
                                    {
                                        sourceUnit = sourceUnit,
                                        targetUnit = eu,
                                        damage = damageMovement,
                                        damageKind = options.damageKind,
                                        damageType = options.damageType,
                                        effect = options.damageEffect
                                    }
                                )
                            end
                            if (damageMovementDrag == true) then
                                cj.SetUnitPosition(eu, txy.x, txy.y)
                            end
                            if (type(extraInfluence) == "function") then
                                extraInfluence(eu)
                            end
                        end,
                        true
                    )
                end
            end
            local distance = math.getDistanceBetweenXY(cj.GetUnitX(arrowUnit), cj.GetUnitY(arrowUnit), tx, ty)
            if (distance <= speed or speed <= 0 or his.death(arrowUnit) == true) then
                htime.delTimer(t)
                if (tempEffectArrow ~= nil) then
                    heffect.del(tempEffectArrow)
                end
                if (repeatGroup ~= nil) then
                    cj.GroupClear(repeatGroup)
                    cj.DestroyGroup(repeatGroup)
                    repeatGroup = nil
                end
                if (options.effectEnd ~= nil) then
                    heffect.toXY(options.effectEnd, txy.x, txy.y, 0)
                end
                if (damageEndRange == 0 and options.targetUnit ~= nil) then
                    if (damageEnd > 0) then
                        hskill.damage(
                            {
                                sourceUnit = options.sourceUnit,
                                targetUnit = options.targetUnit,
                                damage = damageEnd,
                                damageKind = options.damageKind,
                                damageType = options.damageType,
                                effect = options.damageEffect
                            }
                        )
                    end
                    if (type(extraInfluence) == "function") then
                        extraInfluence(options.targetUnit)
                    end
                elseif (damageEndRange > 0) then
                    local g = hgroup.createByUnit(arrowUnit, damageEndRange, filter)
                    hgroup.loop(
                        g,
                        function(eu)
                            if (damageEnd > 0) then
                                hskill.damage(
                                    {
                                        sourceUnit = options.sourceUnit,
                                        targetUnit = eu,
                                        damage = damageEnd,
                                        damageKind = options.damageKind,
                                        damageType = options.damageType,
                                        effect = options.damageEffect
                                    }
                                )
                            end
                            if (type(extraInfluence) == "function") then
                                extraInfluence(eu)
                            end
                        end,
                        true
                    )
                end
                if (leapType == "unit") then
                    hunit.setInvulnerable(arrowUnit, false)
                    cj.SetUnitPathing(arrowUnit, true)
                    cj.SetUnitVertexColor(arrowUnit, 255, 255, 255, 1)
                    cj.SetUnitPosition(arrowUnit, txy.x, txy.y)
                else
                    hunit.kill(arrowUnit, 0)
                end
                if (type(options.onEnding) == "function") then
                    options.onEnding(txy.x, txy.y)
                end
            end
        end
    )
end
hskill.leapPow = function(options)
    local qty = options.qty or 0
    local deg = options.deg or 15
    if (qty <= 1) then
        print_err("leapPow: -qty")
        return
    end
    if (options.sourceUnit == nil) then
        print_err("leapPow: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("leapPow: -filter")
        return
    end
    if (options.tokenArrow == nil) then
        print_err("leapPow: -not arrow")
    end
    if (options.targetUnit == nil and options.x == nil and options.y == nil) then
        print_err("leapPow: -target")
        return
    end
    local x, y
    if (options.targetUnit ~= nil) then
        x = cj.GetUnitX(options.targetUnit)
        y = cj.GetUnitY(options.targetUnit)
    else
        x = options.x
        y = options.y
    end
    local sx = cj.GetUnitX(options.sourceUnit)
    local sy = cj.GetUnitY(options.sourceUnit)
    local facing = math.getDegBetweenXY(sx, sy, x, y)
    local distance = math.getDistanceBetweenXY(sx, sy, x, y)
    local firstDeg = facing + (deg * (qty - 1) * 0.5)
    for i = 1, qty, 1 do
        local angle = firstDeg - deg * (i - 1)
        local txy = math.polarProjection(sx, sy, distance, angle)
        hskill.leap(
            {
                arrowUnit = options.arrowUnit,
                sourceUnit = options.sourceUnit,
                targetUnit = nil,
                x = txy.x,
                y = txy.y,
                speed = options.speed,
                acceleration = options.acceleration,
                filter = options.filter,
                tokenArrow = options.tokenArrow,
                tokenArrowScale = options.tokenArrowScale,
                tokenArrowOpacity = options.tokenArrowOpacity,
                tokenArrowHeight = options.tokenArrowHeight,
                effectMovement = options.effectMovement,
                effectEnd = options.effectEnd,
                damageMovement = options.damageMovement,
                damageMovementRange = options.damageMovementRange,
                damageMovementRepeat = options.damageMovementRepeat,
                damageMovementDrag = options.damageMovementDrag,
                damageEnd = options.damageEnd,
                damageEndRange = options.damageEndRange,
                damageKind = options.damageKind,
                damageType = options.damageType,
                damageEffect = options.damageEffect,
                oneHitOnly = options.oneHitOnly,
                onEnding = options.onEnding,
                extraInfluence = options.extraInfluence
            }
        )
    end
end
hskill.leapRange = function(options)
    local targetRange = options.targetRange or 0
    if (targetRange <= 0) then
        print_err("leapRange: -targetRange")
        return
    end
    if (options.sourceUnit == nil) then
        print_err("leapRange: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("leapRange: -filter")
        return
    end
    if (options.targetUnit == nil and options.x == nil and options.y == nil) then
        print_err("leapRange: -target")
        return
    end
    local filter = options.filter
    local x, y
    if (options.targetUnit ~= nil) then
        x = cj.GetUnitX(options.targetUnit)
        y = cj.GetUnitY(options.targetUnit)
        options.x = nil
        options.y = nil
    else
        x = options.x
        y = options.y
    end
    local g = hgroup.createByXY(x, y, targetRange, filter)
    hgroup.loop(
        g,
        function(eu)
            local tmp = {
                arrowUnit = options.arrowUnit,
                sourceUnit = options.sourceUnit,
                speed = options.speed,
                acceleration = options.acceleration,
                filter = options.filter,
                tokenArrow = options.tokenArrow,
                tokenArrowScale = options.tokenArrowScale,
                tokenArrowOpacity = options.tokenArrowOpacity,
                tokenArrowHeight = options.tokenArrowHeight,
                effectMovement = options.effectMovement,
                effectEnd = options.effectEnd,
                damageMovement = options.damageMovement,
                damageMovementRange = options.damageMovementRange,
                damageMovementRepeat = options.damageMovementRepeat,
                damageMovementDrag = options.damageMovementDrag,
                damageEnd = options.damageEnd,
                damageEndRange = options.damageEndRange,
                damageKind = options.damageKind,
                damageType = options.damageType,
                damageEffect = options.damageEffect,
                oneHitOnly = options.oneHitOnly,
                onEnding = options.onEnding,
                extraInfluence = options.extraInfluence
            }
            if (options.targetUnit ~= nil) then
                tmp.targetUnit = eu
            else
                tmp.x = cj.GetUnitX(eu)
                tmp.y = cj.GetUnitY(eu)
            end
            hskill.leap(tmp)
        end,
        true
    )
end
hskill.leapReflex = function(options)
    local qty = options.qty or 1
    local range = options.range or 0
    if (range <= 0) then
        print_err("reflex: -range")
        return
    end
    if (options.sourceUnit == nil) then
        print_err("reflex: -sourceUnit")
        return
    end
    if (type(options.filter) ~= "function") then
        print_err("reflex: -filter")
        return
    end
    if (options.arrowUnit == nil and options.tokenArrow == nil) then
        print_err("reflex: -not arrow")
    end
    if (options.targetUnit == nil) then
        print_err("reflex: -target")
        return
    end
    options.x = nil
    options.y = nil
    options.onEnding = function(x, y)
        qty = qty - 1
        if (qty >= 1) then
            local g = hgroup.createByXY(x, y, range, options.filter)
            local closer = hgroup.getClosest(g, x, y)
            if (closer ~= nil) then
                options.prevUnit = options.targetUnit
                options.targetUnit = closer
                hskill.leap(options)
            end
        end
    end
    hskill.leap(options)
end
hskill.rectangleStrike = function(options)
    if (options.sourceUnit == nil) then
        print_err("rectangleStrike: -sourceUnit")
        return
    end
    if (options.x == nil or options.y == nil) then
        print_err("rectangleStrike: -xy")
        return
    end
    if (options.deg == nil) then
        print_err("rectangleStrike: -deg")
        return
    end
    if (options.filter == nil) then
        print_err("rectangleStrike: -filter")
        return
    end
    local damage = options.damage or 0
    local range = options.range or 0
    local distance = options.distance or 0
    if (damage <= 0 or range <= 0 or distance <= 0) then
        print_err("rectangleStrike: -data")
        return
    end
    local frequency = options.frequency or 0
    local damageKind = options.damageKind or CONST_DAMAGE_KIND.skill
    local damageType = options.damageType or {CONST_DAMAGE_TYPE.common}
    local oneHitOnly = options.oneHitOnly
    local effectScale = options.effectScale or 1.30
    local effectOffset = options.effectOffset or 0
    if (oneHitOnly == nil) then
        oneHitOnly = true
    end
    if (frequency <= 0) then
        local i = 0
        local tg = cj.CreateGroup()
        while (true) do
            i = i + 1
            local d = i * range * 0.33
            if (d >= distance) then
                break
            end
            local txy = math.polarProjection(options.x, options.y, d, options.deg)
            if (options.effect ~= nil and d - effectOffset < distance) then
                local effUnitDur = 0.6
                local effUnit =
                    hunit.create(
                    {
                        register = false,
                        whichPlayer = hplayer.player_passive,
                        unitId = hskill.SKILL_LEAP,
                        x = txy.x,
                        y = txy.y,
                        facing = options.deg,
                        modelScale = effectScale,
                        opacity = 1.00,
                        qty = 1,
                        during = effUnitDur
                    }
                )
                heffect.bindUnit(options.effect, effUnit, "origin", effUnitDur)
            end
            hgroup.loop(
                hgroup.createByXY(txy.x, txy.y, range, options.filter),
                function(eu)
                    if (hgroup.isIn(tg, eu) == false) then
                        cj.GroupAddUnit(tg, eu)
                    end
                end,
                true
            )
        end
        if (hgroup.count(tg) > 0) then
            hskill.damageGroup(
                {
                    frequency = 0,
                    times = 1,
                    effect = options.damageEffect,
                    whichGroup = tg,
                    damage = damage,
                    sourceUnit = options.sourceUnit,
                    damageKind = damageKind,
                    damageType = damageType,
                    extraInfluence = options.extraInfluence
                }
            )
        end
        cj.GroupClear(tg)
        cj.DestroyGroup(tg)
    else
        local i = 0
        htime.setInterval(
            frequency,
            function(t)
                i = i + 1
                local d = i * range * 0.5
                if (d >= distance) then
                    htime.delTimer(t)
                    return
                end
                local txy = math.polarProjection(options.x, options.y, d, options.deg)
                if (options.effect ~= nil and d - effectOffset < distance) then
                    local effUnitDur = 0.6
                    local effUnit =
                        hunit.create(
                        {
                            register = false,
                            whichPlayer = hplayer.player_passive,
                            unitId = hskill.SKILL_LEAP,
                            x = txy.x,
                            y = txy.y,
                            facing = options.deg,
                            modelScale = effectScale,
                            opacity = 1.00,
                            qty = 1,
                            during = effUnitDur
                        }
                    )
                    heffect.bindUnit(options.effect, effUnit, "origin", effUnitDur)
                end
                local g = hgroup.createByXY(txy.x, txy.y, range, options.filter)
                if (hgroup.count(g) > 0) then
                    hskill.damageGroup(
                        {
                            frequency = 0,
                            times = 1,
                            effect = options.damageEffect,
                            whichGroup = g,
                            damage = damage,
                            sourceUnit = options.sourceUnit,
                            damageKind = damageKind,
                            damageType = damageType,
                            extraInfluence = options.extraInfluence
                        }
                    )
                end
                cj.GroupClear(g)
                cj.DestroyGroup(g)
            end
        )
    end
end
hskill.shapeshift = function(options)
    if (options.whichUnit == nil) then
        print_err("shapeshift: -whichUnit")
        return
    end
    if (options.toUnitId == nil and options.toAbilityId == nil and options.backAbilityId == nil) then
        print_err("shapeshift: -target")
        return
    end
    local during = options.during or 0
    if (during <= 0) then
        print_err("shapeshift: -during too small")
        return
    end
    local deDur = 0.2
    local attr = options.attr or {}
    if (options.effectStart ~= nil) then
        heffect.bindUnit(options.effectStart, options.whichUnit, "origin", 2.5)
    end
    local toAbilityId = options.toAbilityId
    local backAbilityId = options.backAbilityId
    if (toAbilityId == nil or backAbilityId == nil) then
        toAbilityId = hslk_global.skill_shapeshift[options.toUnitId].toAbilityId
        backAbilityId = hslk_global.skill_shapeshift[options.toUnitId].backAbilityId
    end
    cj.UnitAddAbility(options.whichUnit, toAbilityId)
    cj.UnitRemoveAbility(options.whichUnit, toAbilityId)
    hattr.reRegister(options.whichUnit)
    htime.setTimeout(
        deDur,
        function(t)
            htime.delTimer(t)
            if (options.attr ~= nil) then
                hattr.set(options.whichUnit, during, options.attr)
            end
            htime.setTimeout(
                during + deDur,
                function(t)
                    htime.delTimer(t)
                    if (options.effectEnd ~= nil) then
                        heffect.bindUnit(options.effectEnd, options.whichUnit, "origin", 2.5)
                    end
                    cj.UnitAddAbility(options.whichUnit, backAbilityId)
                    cj.UnitRemoveAbility(options.whichUnit, backAbilityId)
                    hattr.reRegister(options.whichUnit)
                end
            )
        end
    )
end
hattr = {
    max_move_speed = 522,
    max_life = 999999999,
    max_mana = 999999999,
    min_life = 1,
    min_mana = 1,
    max_attack_range = 9999,
    min_attack_range = 0,
    default_attack_speed_space = 1.50,
    DEFAULT_SKILL_ITEM_SLOT = string.char2id("AInv") 
}
hattr.setLM = function(u, abilityId, qty)
    if (qty <= 0) then
        return
    end
    local i = 1
    while (i <= qty) do
        cj.UnitAddAbility(u, abilityId)
        cj.SetUnitAbilityLevel(u, abilityId, 2)
        cj.UnitRemoveAbility(u, abilityId)
        i = i + 1
    end
end
hattr.setAttackWhite = function(u, itemId, qty)
    if (u == nil or itemId == nil or qty <= 0) then
        return
    end
    if (his.alive(u) == true) then
        local i = 1
        local it
        local hasSlot = (cj.GetUnitAbilityLevel(u, hattr.DEFAULT_SKILL_ITEM_SLOT) >= 1)
        if (hasSlot == false) then
            cj.UnitAddAbility(u, hattr.DEFAULT_SKILL_ITEM_SLOT)
        end
        while (i <= qty) do
            it = cj.CreateItem(itemId, 0, 0)
            cj.UnitAddItem(u, it)
            cj.SetWidgetLife(it, 10.00)
            cj.RemoveItem(it)
            i = i + 1
        end
        if (hasSlot == false) then
            cj.UnitRemoveAbility(u, hattr.DEFAULT_SKILL_ITEM_SLOT)
        end
    else
        local per = 3.00
        local limit = 60.0 / per 
        htime.setInterval(
            per,
            function(t)
                limit = limit - 1
                if (limit < 0) then
                    htime.delTimer(t)
                elseif (his.alive(u) == true) then
                    htime.delTimer(t)
                    local i = 1
                    local it
                    local hasSlot = (cj.GetUnitAbilityLevel(u, hattr.DEFAULT_SKILL_ITEM_SLOT) >= 1)
                    if (hasSlot == false) then
                        cj.UnitAddAbility(u, hattr.DEFAULT_SKILL_ITEM_SLOT)
                    end
                    while (i <= qty) do
                        it = cj.CreateItem(itemId, 0, 0)
                        cj.UnitAddItem(u, it)
                        cj.SetWidgetLife(it, 10.00)
                        cj.RemoveItem(it)
                        i = i + 1
                    end
                    if (hasSlot == false) then
                        cj.UnitRemoveAbility(u, hattr.DEFAULT_SKILL_ITEM_SLOT)
                    end
                end
            end
        )
    end
end
hattr.setThreeBuff = function(buff)
    if (type(buff) == "table") then
        hRuntime.attributeThreeBuff = buff
    end
end
hattr.regAllAbility = function(whichUnit)
    for _, v in ipairs(hslk_global.attr.ablisGradient) do
        
        cj.UnitAddAbility(whichUnit, hslk_global.attr.life.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.life.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.life.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.life.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk_global.attr.mana.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.mana.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.mana.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.mana.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk_global.attr.attack_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.attack_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.attack_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.attack_green.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk_global.attr.str_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.str_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.str_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.str_green.sub[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.agi_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.agi_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.agi_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.agi_green.sub[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.int_green.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.int_green.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.int_green.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.int_green.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk_global.attr.attack_speed.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.attack_speed.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.attack_speed.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.attack_speed.sub[v])
        
        cj.UnitAddAbility(whichUnit, hslk_global.attr.defend.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.defend.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.defend.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.defend.sub[v])
    end
    for _, v in ipairs(hslk_global.attr.sightGradient) do
        
        cj.UnitAddAbility(whichUnit, hslk_global.attr.sight.add[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.sight.add[v])
        cj.UnitAddAbility(whichUnit, hslk_global.attr.sight.sub[v])
        cj.UnitRemoveAbility(whichUnit, hslk_global.attr.sight.sub[v])
    end
end
hattr.init = function(whichUnit)
    if (whichUnit == nil) then
        return false
    end
    
    local unitId = string.id2char(cj.GetUnitTypeId(whichUnit))
    if (unitId == nil) then
        return false
    end
    if (hslk_global.unitsKV[unitId] == nil) then
        hslk_global.unitsKV[unitId] = {}
    end
    hRuntime.attribute[whichUnit] = {
        primary = hslk_global.unitsKV[unitId].Primary or "NIL",
        life = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE),
        mana = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_MANA),
        move = hslk_global.unitsKV[unitId].spd or cj.GetUnitDefaultMoveSpeed(whichUnit),
        defend = hslk_global.unitsKV[unitId].def or 0.0,
        attack_damage_type = {},
        attack_speed = 0.0,
        attack_speed_space = hslk_global.unitsKV[unitId].cool1 or hattr.default_attack_speed_space,
        attack_white = 0.0,
        attack_green = 0.0,
        attack_range = hslk_global.unitsKV[unitId].rangeN1 or 100.0,
        sight = hslk_global.unitsKV[unitId].sight or 800,
        str_green = 0.0,
        agi_green = 0.0,
        int_green = 0.0,
        str_white = cj.GetHeroStr(whichUnit, false),
        agi_white = cj.GetHeroAgi(whichUnit, false),
        int_white = cj.GetHeroInt(whichUnit, false),
        life_back = 0.0,
        mana_back = 0.0,
        resistance = 0.0,
        toughness = 0.0,
        avoid = 0.0,
        aim = 0.0,
        punish = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE) / 2,
        punish_current = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE) / 2,
        meditative = 0.0,
        help = 0.0,
        hemophagia = 0.0,
        hemophagia_skill = 0.0,
        luck = 0.0,
        invincible = 0.0,
        weight = 0.0,
        weight_current = 0.0,
        damage_extent = 0.0,
        damage_rebound = 0.0,
        cure = 0.0,
        knocking_oppose = 0.0,
        violence_oppose = 0.0,
        hemophagia_oppose = 0.0,
        hemophagia_skill_oppose = 0.0,
        split_oppose = 0.0,
        punish_oppose = 0.0,
        damage_rebound_oppose = 0.0,
        swim_oppose = 0.0,
        heavy_oppose = 0.0,
        broken_oppose = 0.0,
        unluck_oppose = 0.0,
        silent_oppose = 0.0,
        unarm_oppose = 0.0,
        fetter_oppose = 0.0,
        bomb_oppose = 0.0,
        lightning_chain_oppose = 0.0,
        crack_fly_oppose = 0.0,
        natural_fire = 0.0,
        natural_soil = 0.0,
        natural_water = 0.0,
        natural_ice = 0.0,
        natural_wind = 0.0,
        natural_light = 0.0,
        natural_dark = 0.0,
        natural_wood = 0.0,
        natural_thunder = 0.0,
        natural_poison = 0.0,
        natural_ghost = 0.0,
        natural_metal = 0.0,
        natural_dragon = 0.0,
        natural_insect = 0.0,
        natural_god = 0.0,
        natural_fire_oppose = 0.0,
        natural_soil_oppose = 0.0,
        natural_water_oppose = 0.0,
        natural_ice_oppose = 0.0,
        natural_wind_oppose = 0.0,
        natural_light_oppose = 0.0,
        natural_dark_oppose = 0.0,
        natural_wood_oppose = 0.0,
        natural_thunder_oppose = 0.0,
        natural_poison_oppose = 0.0,
        natural_ghost_oppose = 0.0,
        natural_metal_oppose = 0.0,
        natural_dragon_oppose = 0.0,
        natural_insect_oppose = 0.0,
        natural_god_oppose = 0.0,
        attack_buff = {},
        attack_debuff = {},
        skill_buff = {},
        skill_debuff = {},
        
        attack_effect = {},
        skill_effect = {}
        
    }
    
    if (hRuntime.attribute[whichUnit].primary == "INT") then
        hRuntime.attribute[whichUnit].attack_damage_type = {CONST_DAMAGE_TYPE.magic}
    else
        hRuntime.attribute[whichUnit].attack_damage_type = {CONST_DAMAGE_TYPE.physical}
    end
    return true
end
hattr.getAccumuDiff = function(whichUnit, attr)
    if (hRuntime.attributeDiff[whichUnit] == nil) then
        hRuntime.attributeDiff[whichUnit] = {}
    end
    return hRuntime.attributeDiff[whichUnit][attr] or 0
end
hattr.setAccumuDiff = function(whichUnit, attr, value)
    if (hRuntime.attributeDiff[whichUnit] == nil) then
        hRuntime.attributeDiff[whichUnit] = {}
    end
    hRuntime.attributeDiff[whichUnit][attr] = math.round(value)
end
hattr.addAccumuDiff = function(whichUnit, attr, value)
    hattr.setAccumuDiff(whichUnit, attr, hattr.getAccumuDiff(whichUnit, attr) + value)
end
hattr.subAccumuDiff = function(whichUnit, attr, value)
    hattr.setAccumuDiff(whichUnit, attr, hattr.getAccumuDiff(whichUnit, attr) - value)
end
hattr.setHandle = function(whichUnit, attr, opr, val, dur)
    local valType = type(val)
    local params = hRuntime.attribute[whichUnit]
    if (params == nil) then
        return
    end
    if (valType == "string") then
        
        if (opr == "+") then
            
            local valArr = string.explode(",", val)
            params[attr] = table.merge(params[attr], valArr)
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattr.setHandle(whichUnit, attr, "-", val, 0)
                    end
                )
            end
        elseif (opr == "-") then
            
            local valArr = string.explode(",", val)
            for _, v in ipairs(valArr) do
                if (table.includes(v, params[attr])) then
                    table.delete(v, params[attr], 1)
                end
            end
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattr.setHandle(whichUnit, attr, "+", val, 0)
                    end
                )
            end
        elseif (opr == "=") then
            
            local old = table.clone(params[attr])
            params[attr] = string.explode(",", val)
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattr.setHandle(whichUnit, attr, "=", string.implode(",", old), 0)
                    end
                )
            end
        end
    elseif (valType == "table") then
        
        if (opr == "+") then
            
            local hkey = string.vkey(val)
            table.insert(params[attr], {hash = hkey, table = val})
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattr.setHandle(whichUnit, attr, "-", val, 0)
                    end
                )
            end
        elseif (opr == "-") then
            
            local valx = table.obj2arr(val, CONST_ATTR_BUFF_KEYS)
            local valxx = {}
            for _, xv in ipairs(valx) do
                table.insert(valxx, xv.value)
            end
            valx = nil
            local hkey = string.vkey(valxx)
            local hasKey = false
            for k, v in ipairs(params[attr]) do
                if (v.hash == hkey) then
                    table.remove(params[attr], k)
                    hasKey = true
                    break
                end
            end
            if (hasKey == true) then
                if (dur > 0) then
                    htime.setTimeout(
                        dur,
                        function(t)
                            htime.delTimer(t)
                            hattr.setHandle(whichUnit, attr, "+", val, 0)
                        end
                    )
                end
            end
        end
    elseif (valType == "number") then
        
        local intAttr = {
            "life",
            "mana",
            "move",
            "attack_white",
            "attack_green",
            "attack_range",
            "sight",
            "defend",
            "str_white",
            "agi_white",
            "int_white",
            "str_green",
            "agi_green",
            "int_green",
            "punish"
        }
        local isInt = false
        if (table.includes(attr, intAttr)) then
            isInt = true
        end
        
        local diff = 0
        if (opr == "+") then
            diff = val
        elseif (opr == "-") then
            diff = -val
        elseif (opr == "*") then
            diff = params[attr] * val - params[attr]
        elseif (opr == "/" and val ~= 0) then
            diff = params[attr] / val - params[attr]
        elseif (opr == "=") then
            diff = val - params[attr]
        end
        local isAccumuDiff = false
        local accumuDiff = hattr.getAccumuDiff(whichUnit, attr)
        if (diff * accumuDiff > 0) then
            isAccumuDiff = true
            diff = diff + accumuDiff
        end
        
        if (isInt and diff ~= 0) then
            local di, df = math.modf(math.abs(diff))
            if (isAccumuDiff) then
                if (diff >= 0) then
                    hattr.setAccumuDiff(whichUnit, attr, df)
                else
                    hattr.setAccumuDiff(whichUnit, attr, -df)
                end
            else
                if (diff >= 0) then
                    hattr.addAccumuDiff(whichUnit, attr, df)
                else
                    hattr.subAccumuDiff(whichUnit, attr, df)
                end
            end
            if (diff >= 0) then
                diff = di
            else
                diff = -di
            end
        end
        if (diff ~= 0) then
            local currentVal = params[attr]
            local futureVal = params[attr] + diff
            params[attr] = futureVal
            if (dur > 0) then
                htime.setTimeout(
                    dur,
                    function(t)
                        htime.delTimer(t)
                        hattr.setHandle(whichUnit, attr, "-", diff, 0)
                    end
                )
            end
            
            local tempVal = 0
            local level = 0
            if (attr == "life" or attr == "mana") then
                
                if (futureVal >= hattr["max_" .. attr]) then
                    if (currentVal >= hattr["max_" .. attr]) then
                        diff = 0
                    else
                        diff = hattr["max_" .. attr] - currentVal
                    end
                elseif (futureVal <= hattr["min_" .. attr]) then
                    if (currentVal <= hattr["min_" .. attr]) then
                        diff = 0
                    else
                        diff = hattr["min_" .. attr] - currentVal
                    end
                end
                tempVal = math.floor(math.abs(diff))
                local max = 100000000
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (diff > 0) then
                            hattr.setLM(whichUnit, hslk_global.attr[attr].add[max], level)
                        else
                            hattr.setLM(whichUnit, hslk_global.attr[attr].sub[max], level)
                        end
                        max = math.floor(max / 10)
                    end
                end
            elseif (attr == "move") then
                
                if (futureVal < 0) then
                    cj.SetUnitMoveSpeed(whichUnit, 0)
                else
                    if (hcamera.getModel(cj.GetOwningPlayer(whichUnit)) == "zoomin") then
                        cj.SetUnitMoveSpeed(whichUnit, math.floor(futureVal * 0.5))
                    else
                        cj.SetUnitMoveSpeed(whichUnit, math.floor(futureVal))
                    end
                end
            elseif (attr == "attack_white") then
                
                local max = 100000000
                if (futureVal > max or futureVal < -max) then
                    diff = 0
                end
                tempVal = math.floor(math.abs(diff))
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (diff > 0) then
                            hattr.setAttackWhite(whichUnit, hslk_global.attr.item_attack_white.add[max], level)
                        else
                            hattr.setAttackWhite(whichUnit, hslk_global.attr.item_attack_white.sub[max], level)
                        end
                        max = math.floor(max / 10)
                    end
                end
            elseif (attr == "attack_range") then
                
                if (futureVal < hattr.min_attack_range) then
                    futureVal = hattr.min_attack_range
                elseif (futureVal > hattr.max_attack_range) then
                    futureVal = hattr.max_attack_range
                end
                if (hcamera.getModel(cj.GetOwningPlayer(whichUnit)) == "zoomin") then
                    futureVal = futureVal * 0.5
                end
                cj.SetUnitAcquireRange(whichUnit, futureVal * 1.1)
            elseif (attr == "sight") then
                
                if (futureVal < -hattr.max_sight) then
                    futureVal = -hattr.max_sight
                elseif (futureVal > hattr.max_sight) then
                    futureVal = hattr.max_sight
                end
                for _, gradient in ipairs(hslk_global.attr.sightGradient) do
                    cj.UnitRemoveAbility(whichUnit, hslk_global.attr.sight.add[gradient])
                    cj.UnitRemoveAbility(whichUnit, hslk_global.attr.sight.sub[gradient])
                end
                tempVal = math.floor(math.abs(futureVal))
                local sightGradient = table.clone(hslk_global.attr.sightGradient)
                if (tempVal ~= 0) then
                    while (true) do
                        local isFound = false
                        for _, v in ipairs(sightGradient) do
                            if (tempVal >= v) then
                                tempVal = math.floor(tempVal - v)
                                table.delete(v, sightGradient)
                                if (futureVal > 0) then
                                    cj.UnitAddAbility(whichUnit, hslk_global.attr.sight.add[v])
                                else
                                    cj.UnitAddAbility(whichUnit, hslk_global.attr.sight.sub[v])
                                end
                                isFound = true
                                break
                            end
                        end
                        if (isFound == false) then
                            break
                        end
                    end
                end
            elseif (table.includes(attr, {"attack_green", "attack_speed", "defend"})) then
                
                if (futureVal < -99999999) then
                    futureVal = -99999999
                elseif (futureVal > 99999999) then
                    futureVal = 99999999
                end
                for _, grad in ipairs(hslk_global.attr.ablisGradient) do
                    local ab = hslk_global.attr[attr].add[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                    ab = hslk_global.attr[attr].sub[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                end
                tempVal = math.floor(math.abs(futureVal))
                local max = 100000000
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (futureVal > 0) then
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].add[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk_global.attr[attr].add[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].add[max], level + 1)
                        else
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].sub[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk_global.attr[attr].sub[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].sub[max], level + 1)
                        end
                        max = math.floor(max / 10)
                    end
                end
            elseif (his.hero(whichUnit) and table.includes(attr, {"str_green", "agi_green", "int_green"})) then
                
                if (futureVal < -99999999) then
                    futureVal = -99999999
                elseif (futureVal > 99999999) then
                    futureVal = 99999999
                end
                for _, grad in ipairs(hslk_global.attr.ablisGradient) do
                    local ab = hslk_global.attr[attr].add[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                    ab = hslk_global.attr[attr].sub[grad]
                    if (cj.GetUnitAbilityLevel(whichUnit, ab) > 1) then
                        cj.SetUnitAbilityLevel(whichUnit, ab, 1)
                    end
                end
                tempVal = math.floor(math.abs(futureVal))
                local max = 100000000
                if (tempVal ~= 0) then
                    while (max >= 1) do
                        level = math.floor(tempVal / max)
                        tempVal = math.floor(tempVal - level * max)
                        if (futureVal > 0) then
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].add[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk_global.attr[attr].add[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].add[max], level + 1)
                        else
                            if (cj.GetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].sub[max]) < 1) then
                                cj.UnitAddAbility(whichUnit, hslk_global.attr[attr].sub[max])
                            end
                            cj.SetUnitAbilityLevel(whichUnit, hslk_global.attr[attr].sub[max], level + 1)
                        end
                        max = math.floor(max / 10)
                    end
                end
                local setting = {}
                local three =
                    table.obj2arr(hRuntime.attributeThreeBuff[string.gsub(attr, "_green", "")], CONST_ATTR_KEYS)
                for _, d in ipairs(three) do
                    local k = d.key
                    local v = d.value
                    local tempV = diff * v
                    if (tempV < 0) then
                        setting[k] = "-" .. math.abs(tempV)
                    elseif (tempV > 0) then
                        setting[k] = "+" .. tempV
                    end
                end
                hattr.set(whichUnit, 0, setting)
            elseif (his.hero(whichUnit) and table.includes(attr, {"str_white", "agi_white", "int_white"})) then
                
                if (attr == "str_white") then
                    cj.SetHeroStr(whichUnit, math.floor(futureVal), true)
                elseif (attr == "agi_white") then
                    cj.SetHeroAgi(whichUnit, math.floor(futureVal), true)
                elseif (attr == "int_white") then
                    cj.SetHeroInt(whichUnit, math.floor(futureVal), true)
                end
                local setting = {}
                local three =
                    table.obj2arr(hRuntime.attributeThreeBuff[string.gsub(attr, "_white", "")], CONST_ATTR_KEYS)
                for _, d in ipairs(three) do
                    local k = d.key
                    local v = d.value
                    local tempV = diff * v
                    if (tempV < 0) then
                        setting[k] = "-" .. math.abs(tempV)
                    elseif (tempV > 0) then
                        setting[k] = "+" .. tempV
                    end
                end
                hattr.set(whichUnit, 0, setting)
            elseif (attr == "life_back" or attr == "mana_back") then
                
                if (math.abs(futureVal) > 0.02 and table.includes(whichUnit, hRuntime.attributeGroup[attr]) == false) then
                    table.insert(hRuntime.attributeGroup[attr], whichUnit)
                elseif (math.abs(futureVal) < 0.02) then
                    table.delete(whichUnit, hRuntime.attributeGroup[attr])
                end
            elseif (attr == "punish" and hunit.isOpenPunish(whichUnit)) then
                
                if (currentVal > 0) then
                    local tempPercent = futureVal / currentVal
                    hRuntime.attribute[whichUnit].punish_current =
                        tempPercent * hRuntime.attribute[whichUnit].punish_current
                else
                    hRuntime.attribute[whichUnit].punish_current = futureVal
                end
            elseif (attr == "punish_current" and hunit.isOpenPunish(whichUnit)) then
                
                if (futureVal > hRuntime.attribute[whichUnit].punish) then
                    hRuntime.attribute[whichUnit].punish_current = hRuntime.attribute[whichUnit].punish
                end
            end
        end
    end
end
hattr.set = function(whichUnit, during, data)
    if (whichUnit == nil) then
        print_stack("whichUnit is nil")
        return
    end
    if (hRuntime.attribute[whichUnit] == nil) then
        if (hattr.init(whichUnit) == false) then
            return
        end
    end
    
    if (type(data) ~= "table") then
        print_err("data must be table")
        return
    end
    for _, arr in ipairs(table.obj2arr(data, CONST_ATTR_KEYS)) do
        local attr = arr.key
        local v = arr.value
        if (hRuntime.attribute[whichUnit] ~= nil and hRuntime.attribute[whichUnit][attr] ~= nil) then
            if (type(v) == "string") then
                local opr = string.sub(v, 1, 1)
                v = string.sub(v, 2, string.len(v))
                local val = tonumber(v)
                if (val == nil) then
                    val = v
                end
                hattr.setHandle(whichUnit, attr, opr, val, during)
            elseif (type(v) == "table") then
                
                if (v.add ~= nil and type(v.add) == "table") then
                    for _, buff in ipairs(v.add) do
                        if (buff == nil) then
                            print_err("table effect loss[buff]!")
                            print_stack()
                            break
                        end
                        if (type(buff) ~= "table") then
                            print_err("add type(buff) must be a table!")
                            print_stack()
                            break
                        end
                        hattr.setHandle(whichUnit, attr, "+", buff, during)
                    end
                elseif (v.sub ~= nil and type(v.sub) == "table") then
                    for _, buff in ipairs(v.sub) do
                        if (buff == nil) then
                            print_err("table effect loss[buff]!")
                            print_stack()
                            break
                        end
                        if (type(buff) ~= "table") then
                            print_err("sub type(buff) must be a table!")
                            print_stack()
                            break
                        end
                        hattr.setHandle(whichUnit, attr, "-", buff, during)
                    end
                end
            end
        end
    end
end
hattr.get = function(whichUnit, attr)
    if (whichUnit == nil) then
        return nil
    end
    if (hRuntime.attribute[whichUnit] == nil) then
        if (hattr.init(whichUnit) == false) then
            return nil
        end
    end
    if (attr == nil) then
        return hRuntime.attribute[whichUnit]
    end
    return hRuntime.attribute[whichUnit][attr]
end
hattr.reRegister = function(whichUnit)
    local life = hRuntime.attribute[whichUnit].life
    local mana = hRuntime.attribute[whichUnit].mana
    local move = hRuntime.attribute[whichUnit].move
    local strGreen = hRuntime.attribute[whichUnit].str_green
    local agiGreen = hRuntime.attribute[whichUnit].agi_green
    local intGreen = hRuntime.attribute[whichUnit].int_green
    local strWhite = hRuntime.attribute[whichUnit].str_white
    local agiWhite = hRuntime.attribute[whichUnit].agi_white
    local intWhite = hRuntime.attribute[whichUnit].int_white
    local attackWhite = hRuntime.attribute[whichUnit].attack_white
    local attackGreen = hRuntime.attribute[whichUnit].attack_green
    local attackSpeed = hRuntime.attribute[whichUnit].attack_speed
    local defend = hRuntime.attribute[whichUnit].defend
    
    if (hattr.init(whichUnit) == false) then
        return
    end
    
    cj.SetHeroStr(whichUnit, cj.R2I(strWhite), true)
    cj.SetHeroAgi(whichUnit, cj.R2I(agiWhite), true)
    cj.SetHeroInt(whichUnit, cj.R2I(intWhite), true)
    if (move < 0) then
        cj.SetUnitMoveSpeed(whichUnit, 0)
    else
        if (hcamera.model == "zoomin") then
            cj.SetUnitMoveSpeed(whichUnit, cj.R2I(move * 0.5))
        else
            cj.SetUnitMoveSpeed(whichUnit, cj.R2I(move))
        end
    end
    hRuntime.attribute[whichUnit].life = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE)
    hRuntime.attribute[whichUnit].mana = cj.GetUnitState(whichUnit, UNIT_STATE_MAX_MANA)
    hRuntime.attribute[whichUnit].defend = hslk_global.unitsKV[unitId].def or 0.0
    hRuntime.attribute[whichUnit].attack_speed = 0
    hRuntime.attribute[whichUnit].attack_white = 0
    hRuntime.attribute[whichUnit].attack_green = 0
    hRuntime.attribute[whichUnit].str_green = 0
    hRuntime.attribute[whichUnit].agi_green = 0
    hRuntime.attribute[whichUnit].int_green = 0
    hattr.set(
        whichUnit,
        0,
        {
            life = "+" .. (life - cj.GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE)),
            mana = "+" .. (mana - cj.GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE)),
            str_green = "+" .. strGreen,
            agi_green = "+" .. agiGreen,
            int_green = "+" .. intGreen,
            attack_white = "+" .. attackWhite,
            attack_green = "+" .. attackGreen,
            attack_speed = "+" .. attackSpeed,
            defend = "+" .. defend
        }
    )
end
hitem = {
    PRIVATE_TRIGGER = {},
    POSITION_TYPE = {
        
        COORDINATE = "coordinate", 
        UNIT = "unit" 
    },
    DEFAULT_SKILL_ITEM_SLOT = string.char2id("AInv"), 
    DEFAULT_SKILL_ITEM_SEPARATE = hslk_global.skill_item_separate 
}
hitem.del = function(it, during)
    during = during or 0
    if (during <= 0 and it ~= nil) then
        hitem.setPositionType(it, nil)
        cj.SetWidgetLife(it, 1.00)
        cj.RemoveItem(it)
        hRuntime.clear(it)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                hitem.setPositionType(it, nil)
                hRuntime.clear(it)
                cj.SetWidgetLife(it, 1.00)
                cj.RemoveItem(it)
            end
        )
    end
end
hitem.getId = function(it)
    return string.id2char(cj.GetItemTypeId(it))
end
hitem.getName = function(it)
    return cj.GetItemName(it)
end
hitem.getPositionType = function(it)
    if (hRuntime.item[it] == nil) then
        return
    end
    return hRuntime.item[it].positionType
end
hitem.setPositionType = function(it, type)
    if (type == nil) then
        table.delete(it, hRuntime.itemPickPool)
        return
    end
    if (hRuntime.item[it] == nil) then
        hRuntime.item[it] = {}
    end
    hRuntime.item[it].positionType = type
    
    if (type == hitem.POSITION_TYPE.COORDINATE) then
        table.insert(hRuntime.itemPickPool, it)
    end
end
hitem.getSlk = function(itOrId)
    local slk
    local itId
    if (itOrId == nil) then
        return
    end
    if (type(itOrId) == "string") then
        itId = itOrId
    elseif (type(itOrId) == "number") then
        itId = string.id2char(itOrId)
    else
        itId = hitem.getId(itOrId)
    end
    if (hslk_global.itemsKV[itId] ~= nil) then
        slk = hslk_global.itemsKV[itId]
    end
    return slk
end
hitem.getArt = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.Art
    else
        return ""
    end
end
hitem.getFile = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.file
    else
        return ""
    end
end
hitem.getClass = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.class
    else
        return "Permanent"
    end
end
hitem.getGoldCost = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.goldcost
    else
        return 0
    end
end
hitem.getLumberCost = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.lumbercost
    else
        return 0
    end
end
hitem.getIsUsable = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.usable == 1
    else
        return false
    end
end
hitem.getIsPowerUp = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.powerup == 1
    else
        return false
    end
end
hitem.getIsPerishable = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.perishable == 1
    else
        return nil
    end
end
hitem.getIsSellAble = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.sellable == 1
    else
        return false
    end
end
hitem.getShadowId = function(itOrId)
    local itId
    if (type(itOrId == "string")) then
        itId = itOrId
    else
        itId = hitem.getId(itOrId)
    end
    return hslk_global.itemsShadowKV[itId]
end
hitem.getFaceId = function(itOrId)
    local itId
    if (type(itOrId == "string")) then
        itId = itOrId
    else
        itId = hitem.getId(itOrId)
    end
    return hslk_global.itemsFaceKV[itId]
end
hitem.getTriggerCall = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.TRIGGER_CALL
    else
        return nil
    end
end
hitem.getOverlie = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.OVERLIE or 1
    else
        return 1
    end
end
hitem.getWeight = function(itOrId, charges)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        if (charges == nil and type(itOrId) == "userdata") then
            
            charges = hitem.getCharges(itOrId)
        end
        return (slk.WEIGHT or 0) * charges
    else
        return 0
    end
end
hitem.getAttribute = function(itOrId)
    local slk = hitem.getSlk(itOrId)
    if (slk ~= nil) then
        return slk.ATTR or slk.ATTRIBUTE or {}
    else
        return {}
    end
end
hitem.getCharges = function(it)
    if (it ~= nil) then
        return cj.GetItemCharges(it)
    else
        return 0
    end
end
hitem.setCharges = function(it, charges)
    if (it ~= nil and charges > 0) then
        cj.SetItemCharges(it, charges)
    end
end
hitem.getTotalCharges = function(itemId, whichUnit)
    local charges = 0
    local it
    for i = 0, 5, 1 do
        it = cj.UnitItemInSlot(whichUnit, i)
        if (it ~= nil and cj.GetItemTypeId(it) == itemId) then
            charges = charges + hitem.getCharges(it)
        end
    end
    return charges
end
hitem.getEmptySlot = function(whichUnit)
    local qty = cj.UnitInventorySize(whichUnit)
    local it
    for i = 0, 5, 1 do
        it = cj.UnitItemInSlot(whichUnit, i)
        if (it ~= nil) then
            qty = qty - 1
        end
    end
    return qty
end
hitem.setAllowSeparate = function(whichUnit)
    
    cj.UnitAddAbility(whichUnit, hitem.DEFAULT_SKILL_ITEM_SEPARATE)
    cj.UnitMakeAbilityPermanent(whichUnit, true, hitem.DEFAULT_SKILL_ITEM_SEPARATE)
    cj.SetUnitAbilityLevel(whichUnit, hitem.DEFAULT_SKILL_ITEM_SEPARATE, 1)
end
hitem.caleAttribute = function(isAdd, whichUnit, itId, charges)
    if (isAdd == nil) then
        isAdd = true
    end
    charges = charges or 1
    local weight = hitem.getWeight(itId, charges)
    local attr = hitem.getAttribute(itId)
    local diff = {}
    local diffPlayer = {}
    for _, arr in ipairs(table.obj2arr(attr, CONST_ATTR_KEYS)) do
        local k = arr.key
        local v = arr.value
        local typev = type(v)
        local tempDiff
        if (k == "attack_damage_type") then
            local opt = "+"
            if (isAdd == false) then
                opt = "-"
            end
            local nv
            if (typev == "string") then
                opt = string.sub(v, 1, 1) or "+"
                nv = string.sub(v, 2)
            elseif (typev == "table") then
                nv = string.implode(",", v)
            end
            local nvs = {}
            for i = 1, charges do
                table.insert(nvs, nv)
            end
            tempDiff = opt .. string.implode(",", nvs)
        elseif (typev == "string") then
            local opt = string.sub(v, 1, 1)
            local nv = charges * tonumber(string.sub(v, 2))
            if (isAdd == false) then
                if (opt == "+") then
                    opt = "-"
                else
                    opt = "+"
                end
            end
            tempDiff = opt .. nv
        elseif (typev == "number") then
            if ((v > 0 and isAdd == true) or (v < 0 and isAdd == false)) then
                tempDiff = "+" .. (v * charges)
            elseif (v < 0) then
                tempDiff = "-" .. (v * charges)
            end
        elseif (typev == "table") then
            local tempTable = {}
            for i = 1, charges do
                for _, vv in ipairs(v) do
                    table.insert(tempTable, vv)
                end
            end
            local opt = "add"
            if (isAdd == false) then
                opt = "sub"
            end
            tempDiff = {
                [opt] = tempTable
            }
        end
        if
            (table.includes(
                k,
                {
                    "gold_ratio",
                    "lumber_ratio",
                    "exp_ratio",
                    "sell_ratio"
                }
            ))
         then
            table.insert(diffPlayer, {k, tonumber(tempDiff)})
        else
            diff[k] = tempDiff
        end
    end
    if (weight ~= 0) then
        local opt = "+"
        if (isAdd == false) then
            opt = "-"
        end
        diff.weight_current = opt .. weight
    end
    hattr.set(whichUnit, 0, diff)
    if (#diffPlayer > 0) then
        local p = cj.GetOwningPlayer(whichUnit)
        for _, dp in ipairs(diffPlayer) do
            local pk = dp[1]
            local pv = dp[2]
            if (pv ~= 0) then
                if (pk == "gold_ratio") then
                    hplayer.addGoldRatio(p, pv, 0)
                elseif (pk == "lumber_ratio") then
                    hplayer.addLumberRatio(p, pv, 0)
                elseif (pk == "exp_ratio") then
                    hplayer.addExpRatio(p, pv, 0)
                elseif (pk == "sell_ratio") then
                    hplayer.addSellRatio(p, pv, 0)
                end
            end
        end
    end
end
hitem.addAttribute = function(whichUnit, itId, charges)
    hitem.caleAttribute(true, whichUnit, itId, charges)
end
hitem.subAttribute = function(whichUnit, itId, charges)
    hitem.caleAttribute(false, whichUnit, itId, charges)
end
hitem.detector = function(whichUnit, it)
    if (whichUnit == nil or it == nil) then
        print_err("detector params nil")
    end
    local newWeight = hattr.get(whichUnit, "weight_current") + hitem.getWeight(it)
    if (newWeight > hattr.get(whichUnit, "weight")) then
        local exWeight = newWeight - hattr.get(whichUnit, "weight")
        htextTag.style(
            htextTag.create2Unit(whichUnit, "负重超出" .. exWeight .. "kg", 8.00, "ffffff", 1, 1.1, 50.00),
            "scale",
            0,
            0.05
        )
        
        hevent.triggerEvent(
            whichUnit,
            CONST_EVENT.itemOverWeight,
            {
                triggerUnit = whichUnit,
                triggerItem = it,
                value = exWeight
            }
        )
        hitem.setPositionType(it, hitem.POSITION_TYPE.COORDINATE)
        return false
    end
    local overlie = hitem.getOverlie(it)
    local isFullSlot = false
    if (overlie > 1) then
        local isOverlieOver = false
        
        local tempIt
        local currentItId = cj.GetItemTypeId(it)
        local currentCharges = hitem.getCharges(it)
        for si = 0, 5, 1 do
            tempIt = cj.UnitItemInSlot(whichUnit, si)
            if (tempIt ~= nil and currentItId == cj.GetItemTypeId(tempIt)) then
                
                
                local tempCharges = hitem.getCharges(tempIt)
                if (tempCharges < overlie) then
                    if ((currentCharges + tempCharges) <= overlie) then
                        
                        
                        cj.SetItemCharges(tempIt, currentCharges + tempCharges)
                        hitem.del(it, 0)
                        isOverlieOver = true
                        hitem.addAttribute(whichUnit, currentItId, currentCharges)
                        break
                    else
                        
                        cj.SetItemCharges(tempIt, overlie)
                        cj.SetItemCharges(it, currentCharges - (overlie - tempCharges))
                        hitem.addAttribute(whichUnit, currentItId, overlie - tempCharges)
                    end
                end
            end
        end
        
        if (isOverlieOver == true) then
            it = nil
        end
    end
    
    if (it ~= nil) then
        
        if (hitem.getIsPowerUp(it) == true) then
            return true
        end
        
        if (hitem.getEmptySlot(whichUnit) > 0) then
            
            hitem.setPositionType(it, hitem.POSITION_TYPE.UNIT)
            cj.UnitAddItem(whichUnit, it)
            
            hevent.triggerEvent(
                whichUnit,
                CONST_EVENT.itemGet,
                {
                    triggerUnit = whichUnit,
                    triggerItem = it
                }
            )
            local currentItId = cj.GetItemTypeId(it)
            local currentCharges = hitem.getCharges(it)
            hitem.addAttribute(whichUnit, currentItId, currentCharges)
            it = nil
        else
            isFullSlot = true
        end
    end
    if (isFullSlot == true) then
        
        if (false) then
            
            isFullSlot = false
        end
    else
        
        if (false) then
        
        end
    end
    if (isFullSlot) then
        
        hevent.triggerEvent(
            whichUnit,
            CONST_EVENT.itemOverWeight,
            {
                triggerUnit = whichUnit,
                triggerItem = it
            }
        )
        hitem.setPositionType(it, hitem.POSITION_TYPE.COORDINATE)
        return false
    end
    return true
end
hitem.create = function(bean)
    if (bean.itemId == nil) then
        print_err("hitem create -it-id")
        return
    end
    if (bean.charges == nil) then
        bean.charges = 1
    end
    if (bean.charges < 1) then
        return
    end
    local charges = bean.charges
    local during = bean.during or 0
    if (type(bean.itemId) == "string") then
        bean.itemId = string.char2id(bean.itemId)
    end
    
    local it
    local type
    if (bean.x ~= nil and bean.y ~= nil) then
        it = cj.CreateItem(bean.itemId, bean.x, bean.y)
        type = hitem.POSITION_TYPE.COORDINATE
    elseif (bean.whichUnitPosition ~= nil) then
        it = cj.CreateItem(bean.itemId, cj.GetUnitX(bean.whichUnit), cj.GetUnitY(bean.whichUnit))
        type = hitem.POSITION_TYPE.COORDINATE
    elseif (bean.whichUnit ~= nil) then
        it = cj.CreateItem(bean.itemId, cj.GetUnitX(bean.whichUnit), cj.GetUnitY(bean.whichUnit))
        type = hitem.POSITION_TYPE.UNIT
    elseif (bean.whichLoc ~= nil) then
        it = cj.CreateItem(bean.itemId, cj.GetLocationX(bean.whichLoc), cj.GetLocationY(bean.whichLoc))
        type = hitem.POSITION_TYPE.COORDINATE
    else
        print_err("hitem create -site")
        return
    end
    cj.SetItemCharges(it, charges)
    hRuntime.item[it] = {
        name = hitem.getName(it),
        itemId = bean.itemId,
        during = bean.during
    }
    hitem.setPositionType(it, type)
    if (type == hitem.POSITION_TYPE.UNIT) then
        hitem.detector(bean.whichUnit, it)
        if (bean.slotIndex ~= nil and bean.slotIndex >= 0 and bean.slotIndex <= 5) then
            cj.UnitDropItemSlot(bean.whichUnit, it, bean.slotIndex)
        end
    else
        if (during > 0) then
            htime.setTimeout(
                during,
                function(t)
                    htime.delTimer(t)
                    hitem.del(it, 0)
                end
            )
        end
    end
    return it
end
hitem.give = function(origin, target)
    if (origin == nil or target == nil) then
        return
    end
    for i = 0, 5, 1 do
        local it = cj.UnitItemInSlot(origin, i)
        if (it ~= nil) then
            hitem.create(
                {
                    itemId = hitem.getId(it),
                    charges = hitem.getCharges(it),
                    whichUnit = target
                }
            )
        end
        hitem.del(it, 0)
    end
end
hitem.pick = function(it, targetUnit)
    if (it == nil or targetUnit == nil) then
        return
    end
    cj.UnitAddItem(targetUnit, it)
end
hitem.pickRect = function(u, x, y, w, h)
    for k = #hRuntime.itemPickPool, 1, -1 do
        local xi = cj.GetItemX(hRuntime.itemPickPool[k])
        local yi = cj.GetItemY(hRuntime.itemPickPool[k])
        if (hitem.getEmptySlot(u) > 0) then
            local d = math.getDistanceBetweenXY(x, y, xi, yi)
            local deg = math.getDegBetweenXY(x, y, xi, yi)
            local distance = math.getMaxDistanceInRect(w, h, deg)
            if (d <= distance) then
                hitem.pick(hRuntime.itemPickPool[k], u)
            end
        else
            break
        end
    end
end
hitem.pickRound = function(u, x, y, r)
    for k = #hRuntime.itemPickPool, 1, -1 do
        local xi = cj.GetItemX(hRuntime.itemPickPool[k])
        local yi = cj.GetItemY(hRuntime.itemPickPool[k])
        local d = math.getDistanceBetweenXY(x, y, xi, yi)
        if (d <= r and hitem.getEmptySlot(u) > 0) then
            hitem.pick(hRuntime.itemPickPool[k], u)
        else
            break
        end
    end
end
hitem.copy = function(origin, target)
    if (origin == nil or target == nil) then
        return
    end
    for i = 0, 5, 1 do
        local it = cj.UnitItemInSlot(origin, i)
        if (it ~= nil) then
            hitem.create(
                {
                    itemId = hitem.getId(it),
                    charges = hitem.getCharges(it),
                    whichUnit = target,
                    slotIndex = i
                }
            )
        end
    end
end
hitem.drop = function(origin)
    if (origin == nil) then
        return
    end
    for i = 0, 5, 1 do
        local it = cj.nitItemInSlot(origin, i)
        if (it ~= nil) then
            hitem.create(
                {
                    itemId = hitem.getId(it),
                    charges = hitem.getCharges(it),
                    x = cj.GetUnitX(origin),
                    x = cj.GetUnitY(origin)
                }
            )
            htime.del(it, 0)
        end
    end
end
hitem.registerAll = function(whichUnit)
    if (hRuntime.unit[whichUnit] == nil) then
        hRuntime.unit[whichUnit] = {}
    end
    if (hRuntime.unit[whichUnit].itemInit == nil) then
        hRuntime.unit[whichUnit].itemInit = true
    else
        return
    end
    cj.TriggerRegisterUnitEvent(hitem.PRIVATE_TRIGGER.pickup, whichUnit, EVENT_UNIT_PICKUP_ITEM)
    cj.TriggerRegisterUnitEvent(hitem.PRIVATE_TRIGGER.drop, whichUnit, EVENT_UNIT_DROP_ITEM)
    cj.TriggerRegisterUnitEvent(hitem.PRIVATE_TRIGGER.pawn, whichUnit, EVENT_UNIT_PAWN_ITEM)
    cj.TriggerRegisterUnitEvent(hitem.PRIVATE_TRIGGER.separate, whichUnit, EVENT_UNIT_SPELL_EFFECT)
    cj.TriggerRegisterUnitEvent(hitem.PRIVATE_TRIGGER.use, whichUnit, EVENT_UNIT_USE_ITEM)
end
hitem.clearUnitCache = function(whichUnit)
    if (hRuntime.unit[whichUnit] ~= nil) then
        for i = 0, 5, 1 do
            local it = cj.UnitItemInSlot(whichUnit, i)
            if (it ~= nil) then
                hRuntime.clear(it)
            end
        end
    end
end
hitem.init = function()
    hitem.PRIVATE_TRIGGER = {
        pickup = cj.CreateTrigger(),
        drop = cj.CreateTrigger(),
        pawn = cj.CreateTrigger(),
        separate = cj.CreateTrigger(),
        use = cj.CreateTrigger()
    }
    
    cj.TriggerAddAction(
        hitem.PRIVATE_TRIGGER.pickup,
        function()
            local it = cj.GetManipulatedItem()
            local itId = string.id2char(cj.GetItemTypeId(it))
            if (hslk_global.itemsKV[itId] == nil) then
                
                return
            end
            if (hRuntime.item[it] ~= nil and hRuntime.item[it].positionType == hitem.POSITION_TYPE.UNIT) then
                
                return
            end
            local u = cj.GetTriggerUnit()
            local charges = cj.GetItemCharges(it)
            local shadowItId = hitem.getShadowId(itId)
            if (shadowItId == nil) then
                if (hitem.getIsPowerUp(itId) == true) then
                    
                    local call = hitem.getTriggerCall(itId)
                    if (call ~= nil and type(call) == "function") then
                        call(u, it, itId, charges)
                    end
                    
                    hevent.triggerEvent(
                        u,
                        CONST_EVENT.itemUsed,
                        {
                            triggerUnit = u,
                            triggerItem = it
                        }
                    )
                else
                    
                    hitem.del(it, 0)
                    hitem.create(
                        {
                            itemId = itId,
                            whichUnit = u,
                            charges = charges,
                            during = 0
                        }
                    )
                end
            else
                
                
                hitem.del(it, 0)
                
                hitem.create(
                    {
                        itemId = shadowItId,
                        whichUnit = u,
                        charges = charges,
                        during = 0
                    }
                )
            end
        end
    )
    
    cj.TriggerAddAction(
        hitem.PRIVATE_TRIGGER.drop,
        function()
            local u = cj.GetTriggerUnit()
            local it = cj.GetManipulatedItem()
            local itId = string.id2char(cj.GetItemTypeId(it))
            local faceId = hitem.getFaceId(itId)
            local orderId = cj.OrderId("dropitem")
            local charges = cj.GetItemCharges(it)
            if (cj.GetUnitCurrentOrder(u) == orderId) then
                if (hRuntime.item[it] ~= nil) then
                    if (faceId ~= nil) then
                        htime.setTimeout(
                            0,
                            function(t)
                                htime.delTimer(t)
                                local x = cj.GetItemX(it)
                                local y = cj.GetItemX(it)
                                hitem.del(it, 0)
                                
                                hitem.create(
                                    {
                                        itemId = faceId,
                                        x = x,
                                        y = y,
                                        charges = charges,
                                        during = 0
                                    }
                                )
                            end
                        )
                    else
                        hitem.setPositionType(it, hitem.POSITION_TYPE.COORDINATE)
                    end
                end
                hitem.subAttribute(u, itId, charges)
            end
        end
    )
    
    
    cj.TriggerAddAction(
        hitem.PRIVATE_TRIGGER.pawn,
        function()
            local u = cj.GetTriggerUnit()
            local it = cj.GetSoldItem()
            local goldcost = hitem.getGoldCost(it)
            local lumbercost = hitem.getLumberCost(it)
            hRuntime.clear(it)
            if (goldcost ~= 0 or lumbercost ~= 0) then
                local p = cj.GetOwningPlayer(u)
                local sellRatio = hplayer.getSellRatio(u)
                if (sellRatio ~= 50) then
                    if (sellRatio < 0) then
                        sellRatio = 0
                    elseif (sellRatio > 1000) then
                        sellRatio = 1000
                    end
                    local tempRatio = sellRatio - 50.0
                    local tempGold = math.floor(goldcost * tempRatio * 0.01)
                    local tempLumber = math.floor(lumbercost * tempRatio * 0.01)
                    if (goldcost ~= 0 and tempGold ~= 0) then
                        hplayer.addGold(p, tempGold)
                    end
                    if (lumbercost ~= 0 and tempLumber ~= 0) then
                        hplayer.addLumber(p, tempLumber)
                    end
                end
            end
        end
    )
    
    cj.TriggerAddAction(
        hitem.PRIVATE_TRIGGER.use,
        function()
            local u = cj.GetTriggerUnit()
            local it = cj.GetManipulatedItem()
            local itId = cj.GetItemTypeId(it)
            local perishable = hitem.getIsPerishable(itId)
            
            if (perishable == false) then
                hitem.setCharges(it, hitem.getCharges(it) + 1)
            end
            
            local call = hitem.getTriggerCall(itId)
            if (call ~= nil and type(call) == "function") then
                call(u, it, itId, charges)
            end
            
            hevent.triggerEvent(
                u,
                CONST_EVENT.itemUsed,
                {
                    triggerUnit = u,
                    triggerItem = it
                }
            )
            
            if (perishable == true and hitem.getCharges(it) <= 0) then
                hitem.del(it)
            end
        end
    )
    
    cj.TriggerAddAction(
        hitem.PRIVATE_TRIGGER.separate,
        function()
            local u = cj.GetTriggerUnit()
            local it = cj.GetManipulatedItem()
            if (it ~= nil and cj.GetSpellAbilityId() == hitem.DEFAULT_SKILL_ITEM_SEPARATE) then
                print_err("拆分物品尚未完成")
            end
        end
    )
end
hdialog = {
    trigger = nil
}
hdialog.hotkey = function(key)
    if (key == nil) then
        return 0
    elseif (type(key) == "number") then
        return key
    elseif (type(key) == "string") then
        return string.byte(key, 1)
    else
        return 0
    end
end
hdialog.create = function(whichPlayer, options, call)
    local d = cj.DialogCreate()
    if (#options.buttons <= 0) then
        print_err("Dialog buttons is empty")
        return
    end
    cj.DialogSetMessage(d, options.title)
    for i = 1, #options.buttons, 1 do
        if (type(options.buttons[i]) == "table") then
            local b = cj.DialogAddButton(d, options.buttons[i].label, hdialog.hotkey(options.buttons[i].value))
            hRuntime.dialog[b] = options.buttons[i].value
        else
            local b = cj.DialogAddButton(d, options.buttons[i], hdialog.hotkey(options.buttons[i]))
            hRuntime.dialog[b] = options.buttons[i]
        end
    end
    if (hdialog.trigger == nil) then
        hdialog.trigger = cj.CreateTrigger()
        cj.TriggerAddAction(
            hdialog.trigger,
            function()
                local tri_d = cj.GetClickedDialog()
                local tri_b = cj.GetClickedButton()
                hRuntime.dialog[tri_d](hRuntime.dialog[tri_b])
                hRuntime.dialog[tri_d] = nil
                hRuntime.dialog[tri_b] = nil
                cj.DialogClear(tri_d)
                cj.DialogDestroy(tri_b)
            end
        )
    end
    hRuntime.dialog[d] = call
    cj.TriggerRegisterDialogEvent(hdialog.trigger, d)
    if (whichPlayer == nil) then
        for i = 1, bj_MAX_PLAYERS, 1 do
            if
                (cj.GetPlayerController(hplayer.players[i]) == MAP_CONTROL_USER and
                    cj.GetPlayerSlotState(hplayer.players[i]) == PLAYER_SLOT_STATE_PLAYING)
             then
                whichPlayer = hplayer.players[i]
                break
            end
        end
    end
    cj.DialogDisplay(whichPlayer, d, true)
end
hleaderBoard = {}
hleaderBoard.LeaderboardResize = function(lb)
    local size = cj.LeaderboardGetItemCount(lb)
    if cj.LeaderboardGetLabelText(lb) == "" then
        size = size - 1
    end
    cj.LeaderboardSetSizeByItemCount(lb, size)
end
hleaderBoard.create = function(key, refreshFrequency, yourData)
    if (hRuntime.leaderBoard[key] == nil) then
        cj.DestroyLeaderboard(hRuntime.leaderBoard[key])
        hRuntime.leaderBoard[key] = cj.CreateLeaderboard()
    end
    cj.LeaderboardSetLabel(hRuntime.leaderBoard[key], "排行榜")
    htime.setInterval(
        refreshFrequency,
        function(t)
            local data = yourData(hRuntime.leaderBoard[key])
            for _, d in ipairs(data) do
                local playerIndex = d.playerIndex
                local value = d.value
                if cj.LeaderboardHasPlayerItem(hRuntime.leaderBoard[key], hplayer.players[playerIndex]) then
                    cj.LeaderboardRemovePlayerItem(hRuntime.leaderBoard[key], hplayer.players[playerIndex])
                end
                cj.PlayerSetLeaderboard(hplayer.players[playerIndex], hRuntime.leaderBoard[key])
                cj.LeaderboardAddItem(
                    hRuntime.leaderBoard[key],
                    cj.GetPlayerName(hplayer.players[playerIndex]),
                    value,
                    hplayer.players[playerIndex]
                )
            end
            cj.LeaderboardSortItemsByValue(hRuntime.leaderBoard[key], false) 
            hleaderBoard.LeaderboardResize(hRuntime.leaderBoard[key])
        end
    )
    cj.LeaderboardDisplay(hRuntime.leaderBoard[key], true)
    return hRuntime.leaderBoard[key]
end
hleaderBoard.setTitle = function(whichBoard, title)
    cj.LeaderboardSetLabel(whichBoard, title)
end
hleaderBoard.pos = function(whichBoard, n)
    if (n < 1 or n > hplayer.qty_max) then
        return
    end
    local pos
    n = n - 1
    for i = 1, hplayer.qty_max, 1 do
        if (cj.LeaderboardGetPlayerIndex(whichBoard, hplayer.players[i]) == n) then
            pos = hplayer.players[i]
            break
        end
    end
    return pos
end
hleaderBoard.top = function(whichBoard)
    return hleaderBoard.pos(whichBoard, 1)
end
hleaderBoard.bottom = function(whichBoard)
    return hleaderBoard.pos(whichBoard, hplayer.qty_max)
end
hmultiBoard = {}
hmultiBoard.create = function(key, refreshFrequency, yourData)
    
    for pi = 1, hplayer.qty_max, 1 do
        local p = hplayer.players[pi]
        if (his.playing(p)) then
            if (hRuntime.multiBoard[pi] == nil) then
                hRuntime.multiBoard[pi] = {
                    visible = true,
                    timer = nil,
                    borads = {}
                }
            end
            if (hRuntime.multiBoard[pi].borads[key] ~= nil) then
                cj.DestroyMultiboard(hRuntime.multiBoard[pi].borads[key])
            end
            hRuntime.multiBoard[pi].borads[key] = cj.CreateMultiboard()
            
            cj.MultiboardSetTitleText(hRuntime.multiBoard[pi].borads[key], "多面板")
            
            hRuntime.multiBoard[pi].timer = htime.setInterval(
                refreshFrequency,
                function()
                    
                    if (hRuntime.multiBoard[pi].visible ~= true) then
                        if (cj.GetLocalPlayer() == p) then
                            cj.MultiboardDisplay(hRuntime.multiBoard[pi].borads[key], false)
                        end
                        
                        return
                    end
                    local data = yourData(hRuntime.multiBoard[pi].borads[key], pi)
                    local totalRow = #data
                    local totalCol = 0
                    if (totalRow > 0) then
                        totalCol = #data[1]
                    end
                    if (totalRow <= 0 or totalCol <= 0) then
                        print_err("Multiboard:-totalRow -totalCol")
                        return
                    end
                    
                    cj.MultiboardSetRowCount(hRuntime.multiBoard[pi].borads[key], totalRow)
                    cj.MultiboardSetColumnCount(hRuntime.multiBoard[pi].borads[key], totalCol)
                    local widthCol = {}
                    for row = 1, totalRow, 1 do
                        for col = 1, totalCol, 1 do
                            local item = cj.MultiboardGetItem(hRuntime.multiBoard[pi].borads[key], row - 1, col - 1)
                            local isSetValue = false
                            local isSetIcon = false
                            local width = 0
                            local valueType = type(data[row][col].value)
                            if (valueType == "string" or valueType == "number") then
                                isSetValue = true
                                if (valueType == "number") then
                                    data[row][col].value = tostring(data[row][col].value)
                                end
                                width = width + string.mb_len(data[row][col].value)
                                if ((row - 1) == pi) then
                                    data[row][col].value = hColor.yellow(data[row][col].value)
                                end
                                cj.MultiboardSetItemValue(item, data[row][col].value)
                            end
                            if (type(data[row][col].icon) == "string") then
                                isSetIcon = true
                                cj.MultiboardSetItemIcon(item, data[row][col].icon)
                                width = width + 3
                            end
                            cj.MultiboardSetItemStyle(item, isSetValue, isSetIcon)
                            if (widthCol[col] == nil) then
                                widthCol[col] = 0
                            end
                            if (width > widthCol[col]) then
                                widthCol[col] = width
                            end
                        end
                    end
                    for row = 1, totalRow, 1 do
                        for col = 1, totalCol, 1 do
                            cj.MultiboardSetItemWidth(
                                cj.MultiboardGetItem(hRuntime.multiBoard[pi].borads[key], row - 1, col - 1),
                                widthCol[col] / 140
                            )
                        end
                    end
                    
                    if (cj.GetLocalPlayer() == p) then
                        cj.MultiboardDisplay(hRuntime.multiBoard[pi].borads[key], true)
                    end
                end
            )
        end
    end
end
hmultiBoard.setTitle = function(whichBoard, title)
    cj.MultiboardSetTitleText(whichBoard, title)
end
hquest = {}
hquest.del = function(q, during)
    if (during == nil or during <= 0) then
        cj.DestroyQuest(q)
    else
        htime.setTimeout(
            during,
            function(t)
                htime.delTimer(t)
                cj.DestroyQuest(q)
            end
        )
    end
end
hquest.create = function(options)
    local side = options.side or "left"
    local title = options.title
    local content = options.content
    local isFinish = options.isFinish
    if (title == nil) then
        return
    end
    if (type(options.content) == "table") then
        content = string.implode("|n", options.content)
    end
    if (content == nil) then
        return
    end
    local questtype = bj_QUESTTYPE_REQ_DISCOVERED
    if (side == "right") then
        questtype = bj_QUESTTYPE_OPT_DISCOVERED
    end
    local icon = options.icon or "ReplaceableTextures\\CommandButtons\\BTNTomeOfRetraining.blp"
    local q = bj.CreateQuestBJ(questtype, title, content, icon)
    if (isFinish == true) then
        cj.QuestSetCompleted(q, true)
    end
    if (options.during ~= nil and options.during > 0) then
        hquest.del(q, options.during)
    end
    return q
end
hquest.flash = function()
    cj.FlashQuestDialogButton()
end
hquest.setCompleted = function(q)
    cj.QuestSetCompleted(q, true)
end
hquest.setFailed = function(q)
    cj.QuestSetFailed(q, true)
end
hquest.setDiscovered = function(q)
    cj.QuestSetDiscovered(q, true)
end
hmsg = hmessage
httg = htextTag
hattribute = hattr
cj.TimerStart(cj.CreateTimer(), 1.00, true, htime.clock)
local u = cj.CreateUnit(hplayer.player_passive, hslk_global.unit_token, 0, 0, 0)
hattr.regAllAbility(u)
hunit.del(u)
hplayer.init()
hitem.init()
hunit.init()
if (cg.HLUA_DZAPI_FLAG == true) then
    hdzapi.init()
end
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
            fresh = 1.5,
            waitTime = 6,
            mon = nil,
            monLife = 50,
            monLifeInc = 9
        },
        hz = {
            perWaveQty = 12,
            wave = 1,
            fresh = 1.3,
            waitTime = 3,
            mon = nil,
            monLife = 40,
            monLifeInc = 12
        },
        dk = {
            perWaveQty = 10,
            playerQty = {},
            wave = {},
            fresh = 1.5,
            mon = {},
            monLimit = {},
            monData = {},
            ai = false,
            shadowMod = {
                5,
                5,
                5,
                5
            },
            monLife = {
                30,
                30,
                30,
                30
            }
        },
        cur = "yb"
    },
    odkTecId = nil,
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
    thisOptionAbilityItemNODK = {},
    thisOptionItem2Abli = {},
    thisOptionTowerPowerItem = {},
    thisEquipItem = {},
    thisEquipItemNODK = {},
    thisComboItem = {},
    thisComboItemNODK = {},
    thisShadowCloatItems = {},
    
    towerPoint = {
        { -1536, 1536 },
        { 1536, 1536 },
        { 1536, -1536 },
        { -1536, -1536 }
    },
    towerLinkOffset = {
        { -192, -192 },
        { -192, 192 },
        { 192, 192 },
        { 192, -192 }
    },
    courierPoint = {
        { -1280, 1280 },
        { 1280, 1280 },
        { 1280, -1280 },
        { -1280, -1280 }
    },
    pathPoint = {
        { { -1408, 256 }, { -1408, 1024 }, { -2048, 1024 }, { -2048, 2048 }, { -1024, 2048 }, { -1024, 1408 }, { -256, 1408 } },
        { { 256, 1408 }, { 1024, 1408 }, { 1024, 2048 }, { 2048, 2048 }, { 2048, 1024 }, { 1408, 1024 }, { 1408, 128 } },
        { { 1408, -384 }, { 1408, -1024 }, { 2048, -1024 }, { 2048, -2048 }, { 1024, -2048 }, { 1024, -1408 }, { 256, -1408 } },
        { { -256, -1408 }, { -1024, -1408 }, { -1024, -2048 }, { -2048, -2048 }, { -2048, -1024 }, { -1408, -1024 }, { -1408, -256 } }
    },
    shopsConfig = {
        { "稀奇古怪黑科技", { -1088, 1088 } },
        { "稀奇古怪黑科技", { 1088, 1088 } },
        { "稀奇古怪黑科技", { 1088, -1088 } },
        { "稀奇古怪黑科技", { -1088, -1088 } },
        { "神秘之地", { 0, -512 } },
        
        { "巫毒商店", { -512, 512 } },
        { "冷兵器磨坊", { 0, 512 } },
        { "火器铁铺", { -512, 0 } },
        { "科技车间", { -512, -512 } },
        
        { "奇异屋", { 512, 512 } },
        { "铁箱子", { 512, 0 } },
        { "营地", { 512, -512 } }
    }
}
game.towersLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("towers"), -1)
for i = 1, game.towersLen, 1 do
    
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers"), i)
    local jv = json.parse(v)
    game.towers[jv.INDEX] = jv
    hRuntime.register.unit(jv)
    
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towersItems"), i)
    jv = json.parse(v)
    jv.I_TYPE = "tower"
    hRuntime.register.item(jv)
    game.towersItems[jv.INDEX] = jv
    if (game.thisOptionTowerPowerItem[jv.TOWER_POWER] == nil) then
        game.thisOptionTowerPowerItem[jv.TOWER_POWER] = {}
    end
    table.insert(game.thisOptionTowerPowerItem[jv.TOWER_POWER], jv)
    
    v = cj.LoadStr(cg.hash_myslk, cj.StringHash("towers_shadow"), i)
    jv = json.parse(v)
    game.towersShadow[jv.TOWER_ID] = jv
    hRuntime.register.unit(jv)
end
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_spx_ab"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_spx_ab"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    table.insert(game.towersOriginSkill, jv)
end
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("tower_summon"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("tower_summon"), i)
    local jv = json.parse(v)
    game.towersSummon[jv.Name] = jv
    hRuntime.register.unit(jv)
end
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("shops"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("shops"), i)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.shops[jv.Name] = jv
end
game.courierLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers"), -1)
for i = 1, game.courierLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers"), i)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.courier[jv.INDEX] = jv
end
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers_ab"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("couriers_ab"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
end
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
game.thisEnemysLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemys"), -1)
for k = 1, game.thisEnemysLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemys"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemys[k] = jv
end
game.thisEnemysBossLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemysboss"), -1)
for k = 1, game.thisEnemysBossLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemysboss"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemysBoss[k] = jv
end
game.thisEnemysAwardLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("thisenemysaward"), -1)
for k = 1, game.thisEnemysAwardLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("thisenemysaward"), k)
    local jv = json.parse(v)
    hRuntime.register.unit(jv)
    game.thisEnemysAward[k] = jv
end
game.thisUnitLevelAbilitiesLen = 9
for i = 0, game.thisUnitLevelAbilitiesLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_unit_level"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisUnitLevelAbilities[i] = jv
end
game.thisUnitRaceAbilitiesLen = cj.LoadInteger(cg.hash_myslk, cj.StringHash("abilities_unit_race"), -1)
for i = 1, game.thisUnitRaceAbilitiesLen, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("abilities_unit_race"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
    game.thisUnitRaceAbilities[jv.INDEX] = jv
end
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
local len = cj.LoadInteger(cg.hash_myslk, cj.StringHash("link_ability"), -1)
for i = 1, len, 1 do
    local v = cj.LoadStr(cg.hash_myslk, cj.StringHash("link_ability"), i)
    local jv = json.parse(v)
    hRuntime.register.ability(jv)
end
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
game.couriersDefeat = cj.LoadInteger(cg.hash_myslk, cj.StringHash("couriers_defeat"), 0)
game.odkTecId = cj.LoadInteger(cg.hash_myslk, cj.StringHash("odk_tec_id"), -1)
cj.FlushParentHashtable(cg.hash_myslk)
local u = cj.CreateUnit(hplayer.player_passive, hslk_global.unit_token, 0, 0, 0)
for id, _ in pairs(hslk_global.abilitiesKV) do
    cj.UnitAddAbility(u, id)
    cj.UnitRemoveAbility(u, id)
end
hunit.del(u)
hcamera.setModel("normal")
hplayer.qty_max = 4 
hplayer.convert_ratio = 100 
game.ALLY_PLAYER = hplayer.players[12]
henemy.setName("拆塔小能手")
henemy.setColor(cj.ConvertPlayerColor(12)) 
henemy.setPlayer(hplayer.players[5])
henemy.setPlayer(hplayer.players[6])
henemy.setPlayer(hplayer.players[7])
henemy.setPlayer(hplayer.players[8])
henemy.setPlayer(hplayer.players[9])
henemy.setPlayer(hplayer.players[10])
henemy.setPlayer(hplayer.players[11])
cj.SetPlayerColor(hplayer.players[2], CONST_PLAYER_COLOR.YELLOW)
cj.SetPlayerColor(hplayer.players[4], CONST_PLAYER_COLOR.GREEN)
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
THIS_SHOPS = {}
for spi, sp in ipairs(game.shopsConfig) do
    THIS_SHOPS[spi] = hunit.create(
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
getBookPowLevel = function(curWave)
    curWave = curWave or 1
    local bpow = {1, 0, 0, 0}
    if (curWave <= 9) then
        bpow = {1, 0, 0, 0}
    elseif (curWave <= 15) then
        bpow = {5, 1, 0, 0}
    elseif (curWave <= 27) then
        bpow = {10, 6, 1, 0}
    elseif (curWave <= 45) then
        bpow = {5, 10, 1, 0}
    elseif (curWave <= 80) then
        bpow = {3, 10, 2, 0}
    elseif (curWave <= 130) then
        bpow = {0, 8, 1, 0}
    elseif (curWave <= 170) then
        bpow = {0, 8, 5, 1}
    elseif (curWave <= 210) then
        bpow = {0, 1, 5, 2}
    else
        bpow = {0, 0, 5, 1}
    end
    local tarBPows = {}
    for k, v in ipairs(bpow) do
        if (v > 0) then
            for i = 1, v, 1 do
                table.insert(tarBPows, k)
            end
        end
    end
    return tarBPows[math.random(1, #tarBPows)]
end
getTowerPowLevel = function(curWave)
    curWave = curWave or 1
    local tpow = {E = 1}
    if (curWave <= 3) then
        tpow = {E = 1}
    elseif (curWave <= 7) then
        tpow = {E = 7, D = 3}
    elseif (curWave <= 18) then
        tpow = {E = 4, D = 6, C = 1}
    elseif (curWave <= 26) then
        tpow = {E = 3, D = 6, C = 2, B = 1}
    elseif (curWave <= 41) then
        tpow = {D = 4, C = 6, B = 1}
    elseif (curWave <= 60) then
        tpow = {D = 6, C = 16, B = 4, A = 1}
    elseif (curWave <= 75) then
        tpow = {C = 10, B = 10, A = 1}
    elseif (curWave <= 85) then
        tpow = {C = 8, B = 27, A = 3}
    elseif (curWave <= 100) then
        tpow = {B = 25, A = 15, S = 1}
    elseif (curWave <= 130) then
        tpow = {B = 10, A = 25, S = 1}
    elseif (curWave <= 160) then
        tpow = {A = 30, S = 20, SS = 5}
    elseif (curWave <= 180) then
        tpow = {A = 5, S = 30, SS = 10}
    elseif (curWave <= 235) then
        tpow = {S = 30, SS = 10, SSS = 1}
    elseif (curWave <= 260) then
        tpow = {S = 5, SS = 10, SSS = 2}
    elseif (curWave <= 400) then
        tpow = {SS = 8, SSS = 1}
    else
        tpow = {SSS = 1}
    end
    local targetTPows = {}
    for k, v in pairs(tpow) do
        for i = 1, v, 1 do
            table.insert(targetTPows, k)
        end
    end
    return targetTPows[math.random(1, #targetTPows)]
end
setTowerSkillByBook = function(u, abliOps, opt)
    local optChar = "add"
    if (opt == "-") then
        optChar = "sub"
    end
    local level = (abliOps.ABILITY_LEVEL or 1) * 2 - 1
    if (abliOps.Name == "战斗传统" or abliOps.Name == "战争武斗" or abliOps.Name == "武术至尊") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "智勇双全") then
        hattr.set(u, 0, {attack_green = opt .. (level * abliOps.Val[1])})
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "心灵之火") then
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "鬼神头盔" or abliOps.Name == "擎天之柱" or abliOps.Name == "牛鬼蛇神") then
        hattr.set(u, 0, {str_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "猎豹一族" or abliOps.Name == "荒芜" or abliOps.Name == "荒诞") then
        hattr.set(u, 0, {agi_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "魔法杖" or abliOps.Name == "甜甜圈法杖" or abliOps.Name == "天师法剑") then
        hattr.set(u, 0, {int_green = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "勇气勋章") then
        hattr.set(
            u,
            0,
            {
                str_green = opt .. level * abliOps.Val[1],
                agi_green = opt .. level * abliOps.Val[1],
                int_green = opt .. level * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "致命一击" or abliOps.Name == "战熊咆哮" or abliOps.Name == "暗杀巅峰") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "knocking",
                            odds = level * abliOps.Val[1],
                            percent = level * abliOps.Val[2]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "魔法回应" or abliOps.Name == "魔导灵眼" or abliOps.Name == "法术天尊") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "violence",
                            odds = level * abliOps.Val[1],
                            percent = level * abliOps.Val[2]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "瞄准") then
        hattr.set(
            u,
            0,
            {
                aim = opt .. (level * abliOps.Val[1]),
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "knocking",
                            odds = level * abliOps.Val[2],
                            percent = level * abliOps.Val[3]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "分裂攻击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "split",
                            range = 500,
                            odds = 100,
                            percent = level * abliOps.Val[1]
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "星辰攻击") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "swim",
                            odds = level * abliOps.Val[1],
                            val = 0,
                            during = 0.5
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "剧毒标枪") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "poison",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 4,
                            effect = "Abilities\\Spells\\Items\\OrbVenom\\OrbVenomSpecialArt.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "切割刀刃") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 4.5,
                            effect = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "一发长枪" or abliOps.Name == "打靶") then
        hattr.set(u, 0, {aim = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "致命抵抗") then
        hattr.set(
            u,
            0,
            {
                knocking_oppose = opt .. level * abliOps.Val[1],
                violence_oppose = opt .. level * abliOps.Val[1]
            }
        )
    elseif (abliOps.Name == "反伤抵抗") then
        hattr.set(u, 0, {damage_rebound_oppose = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "专注护身") then
        hattr.set(u, 0, {defend = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "噩梦移植") then
        hattr.set(u, 0, {life = opt .. level * abliOps.Val[1]})
    elseif (abliOps.Name == "雷电之锤") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "lightning_chain",
                            odds = 30,
                            qty = 3,
                            range = 600,
                            val = level * abliOps.Val[1],
                            change = -0.25,
                            effect = "Abilities\\Weapons\\Bolt\\BoltImpact.mdl"
                        }
                    }
                }
            }
        )
    end
    if (abliOps.Name == "穿透之箭") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "defend",
                            odds = 100,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "凤凰烈焰") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "fire",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            during = 6,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "剧毒液体") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "poison",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "life_back",
                            odds = 100,
                            during = 4,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Other\\AcidBomb\\BottleImpact.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "猛毒试剂") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "resistance",
                            odds = 100,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Weapons\\PoisonSting\\PoisonStingTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "千里冰封") then
        hattr.set(
            u,
            0,
            {
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "move",
                            odds = 35,
                            during = 3,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "暗夜对剑") then
        hattr.set(u, 0, {attack_damage_type = opt .. "dark", natural_dark = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "恶龙吞日") then
        hattr.set(u, 0, {attack_damage_type = opt .. "dragon", natural_dragon = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "恶鬼呼声") then
        hattr.set(u, 0, {attack_damage_type = opt .. "ghost", natural_ghost = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "折翅天使") then
        hattr.set(u, 0, {attack_damage_type = opt .. "god", natural_god = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "光导使者") then
        hattr.set(u, 0, {attack_damage_type = opt .. "light", natural_light = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "冰心") then
        hattr.set(u, 0, {attack_damage_type = opt .. "ice", natural_ice = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "邪魅之虫") then
        hattr.set(u, 0, {attack_damage_type = opt .. "insect", natural_insect = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "德鲁伊叶子") then
        hattr.set(u, 0, {attack_damage_type = opt .. "wood", life_back = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "雷神之手") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "thunder",
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "lightning_chain",
                            odds = 35,
                            qty = 3,
                            range = 600,
                            val = level * abliOps.Val[1],
                            change = -0.25,
                            effect = "Abilities\\Weapons\\Bolt\\BoltImpact.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "五行之力") then
        hattr.set(
            u,
            0,
            {
                natural_metal = opt .. (level * abliOps.Val[1]),
                natural_wood = opt .. (level * abliOps.Val[1]),
                natural_water = opt .. (level * abliOps.Val[1]),
                natural_fire = opt .. (level * abliOps.Val[1]),
                natural_soil = opt .. (level * abliOps.Val[1])
            }
        )
    elseif (abliOps.Name == "五行相克") then
        hattr.set(
            u,
            0,
            {
                natural_metal_oppose = opt .. (level * abliOps.Val[1]),
                natural_wood_oppose = opt .. (level * abliOps.Val[1]),
                natural_water_oppose = opt .. (level * abliOps.Val[1]),
                natural_fire_oppose = opt .. (level * abliOps.Val[1]),
                natural_soil_oppose = opt .. (level * abliOps.Val[1])
            }
        )
    elseif (abliOps.Name == "赤血盾牌") then
        hattr.set(u, 0, {life = opt .. (level * abliOps.Val[1]), defend = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "亢奋战鼓") then
        hattr.set(u, 0, {toughness = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "离子雨") then
        hattr.set(
            u,
            0,
            {
                lightning_chain_oppose = opt .. (level * abliOps.Val[1]),
                natural_thunder_oppose = opt .. (level * abliOps.Val[2])
            }
        )
    elseif (abliOps.Name == "抗性神经") then
        hattr.set(u, 0, {resistance = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "荆棘") then
        hattr.set(u, 0, {damage_rebound = opt .. (level * abliOps.Val[1])})
    end
    if (abliOps.Name == "双修对剑") then
        hattr.set(
            u,
            0,
            {
                attack_green = opt .. (level * abliOps.Val[1]),
                str_green = opt .. (level * abliOps.Val[2]),
                agi_green = opt .. (level * abliOps.Val[3])
            }
        )
    elseif (abliOps.Name == "音速回击") then
        hattr.set(u, 0, {attack_speed = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "疾风") then
        hattr.set(u, 0, {attack_damage_type = opt .. "wind", natural_wind = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "魔神之剑") then
        hattr.set(u, 0, {damage_extent = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "胆颤心惊") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = opt .. "absolute",
                attack_debuff = {
                    [optChar] = {
                        {
                            attr = "defend",
                            odds = 100,
                            during = 6,
                            val = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl"
                        },
                        {
                            attr = "life_back",
                            odds = 100,
                            val = level * abliOps.Val[1],
                            during = 6,
                            effect = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "害怕") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    [optChar] = {
                        {
                            attr = "fetter",
                            odds = 30,
                            during = level * abliOps.Val[1],
                            effect = "Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl"
                        }
                    }
                }
            }
        )
    elseif (abliOps.Name == "天神加护") then
        hattr.set(u, 0, {life = opt .. (level * abliOps.Val[1]), life_back = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "圣封护盾") then
        hattr.set(u, 0, {defend = opt .. (level * abliOps.Val[1]), resistance = opt .. (level * abliOps.Val[2])})
    elseif (abliOps.Name == "极速闪避") then
        hattr.set(u, 0, {avoid = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "刺痛极限") then
        hattr.set(u, 0, {toughness = opt .. (level * abliOps.Val[1])})
    elseif (abliOps.Name == "刺网") then
        hattr.set(u, 0, {damage_rebound = opt .. (level * abliOps.Val[1])})
    end
end
addTowerSkillByBook = function(u, site, abliOps)
    if (u == nil or site == nil or abliOps == nil) then
        return
    end
    hskill.add(u, abliOps.ABILITY_ID)
    local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
    game.towersAbilities[playerIndex][site] = abliOps
    if (abliOps.Name == nil) then
        return
    end
    setTowerSkillByBook(u, abliOps, "+")
end
delTowerSkillByBook = function(u, site, abliOps)
    if (u == nil or site == nil or abliOps == nil) then
        return
    end
    hskill.del(u, abliOps.ABILITY_ID)
    local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
    game.towersAbilities[playerIndex][site] = nil
    if (abliOps.Name == nil) then
        return
    end
    setTowerSkillByBook(u, abliOps, "-")
end
onUnitItemsUesd = function(evtData)
    local u = evtData.triggerUnit
    local it = evtData.triggerItem
    local itId = hitem.getId(it)
    local itemSLK = hslk_global.itemsKV[itId]
    local p = cj.GetOwningPlayer(u)
    if (itemSLK == nil or itemSLK.INDEX == nil) then
        hmsg.echo00(p, "slk获取错误")
        return
    end
    if (itemSLK.I_TYPE == nil) then
        hmsg.echo00(p, "物品I类型获取错误")
        return
    end
    if (itemSLK.I_TYPE == "tower") then
        
        local playerIndex = hplayer.index(p)
        local marks = {
            hunit.getSlk(game.playerTower[playerIndex]).MARK or 0
        }
        local names = {
            "[主塔]" .. hunit.getName(game.playerTower[playerIndex])
        }
        local dots = {
            string.findCount(names[1], "·")
        }
        local nls = {
            string.mb_len(names[1]) - dots[1]
        }
        local bigMark = marks[1]
        local bigNameLen = string.mb_len(names[1])
        local bigDotLen = dots[1]
        for i = 1, 4, 1 do
            marks[i + 1] = game.playerTowerLink[playerIndex][i].mark or 0
            if (marks[i + 1] > bigMark) then
                bigMark = marks[i + 1]
            end
            names[i + 1] = hunit.getName(game.playerTowerLink[playerIndex][i].unit)
            if (names[i + 1] == "空位") then
                names[i + 1] = "[N阶]空位"
            end
            names[i + 1] = "[辅塔]" .. names[i + 1]
            dots[i + 1] = string.findCount(names[i + 1], "·")
            nls[i + 1] = string.mb_len(names[i + 1]) - dots[i + 1]
            if (nls[i + 1] > bigNameLen) then
                bigNameLen = nls[i + 1]
            end
            if (dots[i + 1] > bigDotLen) then
                bigDotLen = dots[i + 1]
            end
        end
        local bigMarkLen = string.len(tostring(bigMark))
        for i, v in ipairs(marks) do
            local vlen = string.len(tostring(v))
            if (vlen < bigMarkLen) then
                marks[i] = string.rep(" ", bigMarkLen - vlen) .. v
            end
        end
        for i, v in ipairs(names) do
            if (nls[i] < bigNameLen) then
                names[i] = v .. string.rep("　", bigNameLen - nls[i])
            end
            if (bigDotLen > dots[i]) then
                names[i] = names[i] .. string.rep(" ", bigDotLen - dots[i])
            end
        end
        local btns = {
            {
                value = 512,
                label = "[ESC][" .. hColor.grey("吞噬升1级") .. "]"
            },
            {
                value = 0,
                label = hColor.yellow(marks[1] .. "分" .. "-" .. names[1])
            }
        }
        for i = 1, 4, 1 do
            table.insert(
                btns,
                {
                    value = i,
                    label = hColor.sky(marks[i + 1] .. "分" .. "-" .. names[i + 1])
                }
            )
        end
        local title = "兵塔石：" ..
            game.towers[itemSLK.INDEX].MARK ..
            "分" .. game.towers[itemSLK.INDEX].TOWER_POWER .. "阶" .. game.towers[itemSLK.INDEX].Name
        hdialog.create(
            p,
            {
                title = title,
                buttons = btns
            },
            function(btnIdx)
                if (btnIdx == 512) then
                    hhero.setCurLevel(
                        game.playerTower[playerIndex],
                        1 + hhero.getCurLevel(game.playerTower[playerIndex]),
                        false
                    )
                    hmsg.echo00(p, "通过吞噬兵塔石,兵塔提升了" .. hColor.yellow(1) .. "级")
                    return
                elseif (btnIdx == 0) then
                    local u = createMyTower(playerIndex, game.towers[itemSLK.INDEX].UNIT_ID)
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(p)) ..
                            "召唤了主塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                else
                    local u = createMyTowerLink(playerIndex, btnIdx, game.towers[itemSLK.INDEX].UNIT_ID)
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(p)) ..
                            "召唤了辅塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                end
            end
        )
    elseif (itemSLK.I_TYPE == "ability") then
        local abils = game.thisOptionAbility[itemSLK.INDEX]
        if (abils == nil) then
            hmsg.echo00(p, "技能获取错误")
            return
        end
        local sites = {}
        if (itemSLK.ABILITY_COLOR == "yellow") then
            sites = { "S", "D" }
        elseif (itemSLK.ABILITY_COLOR == "blue") then
            sites = { "X", "C", "V" }
        elseif (itemSLK.ABILITY_COLOR == "purple") then
            sites = { "F" }
        end
        local playerIndex = hplayer.index(p)
        local btns = {}
        local emptySite = nil
        for k, v in ipairs(sites) do
            if (game.towersAbilities[playerIndex][v].ABILITY_LEVEL == nil) then
                if (emptySite == nil) then
                    emptySite = v
                    break
                end
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" .. v .. "]-[" .. hColor.grey(game.towersAbilities[playerIndex][v].Name) .. "]"
                    )
                }
            else
                btns[k] = {
                    value = v,
                    label = hColor.yellow(
                        "[" ..
                            v ..
                            "]-[" ..
                            game.towersAbilities[playerIndex][v].Name ..
                            "][" .. game.towersAbilities[playerIndex][v].ABILITY_LEVEL .. "级]"
                    )
                }
            end
        end
        if (emptySite == nil) then
            table.insert(
                btns,
                {
                    value = 512,
                    label = "[ESC][" .. hColor.grey("卖掉技能书") .. "]"
                }
            )
            hdialog.create(
                p,
                {
                    title = itemSLK.DIALOG_TITLE,
                    buttons = btns
                },
                function(btnIdx)
                    if (btnIdx == 512) then
                        hplayer.addGold(hplayer.players[playerIndex], 30, u)
                        return
                    end
                    hmsg.echo00(
                        p,
                        "你选择了[" ..
                            hColor.yellow(btnIdx) ..
                            "]位置，来学习[" ..
                            hColor.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
                    )
                    delTowerSkillByBook(
                        game.playerTower[playerIndex],
                        btnIdx,
                        game.towersAbilities[playerIndex][btnIdx]
                    )
                    addTowerSkillByBook(game.playerTower[playerIndex], btnIdx, abils[btnIdx])
                    if (itemSLK.ABILITY_COLOR == "yellow") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "blue") then
                        heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "purple") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
                    end
                end
            )
        else
            local btnIdx = emptySite
            hmsg.echo00(
                p,
                "兵塔自动挑选了[" ..
                    hColor.yellow(btnIdx) ..
                    "]位置，学习了[" .. hColor.yellow(abils[btnIdx].ABILITY_LEVEL .. "级" .. abils[btnIdx].Name) .. "]"
            )
            delTowerSkillByBook(game.playerTower[playerIndex], btnIdx, game.towersAbilities[playerIndex][btnIdx])
            addTowerSkillByBook(game.playerTower[playerIndex], btnIdx, abils[btnIdx])
            if (itemSLK.ABILITY_COLOR == "yellow") then
                heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
            elseif (itemSLK.ABILITY_COLOR == "blue") then
                heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
            elseif (itemSLK.ABILITY_COLOR == "purple") then
                heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
            end
        end
    elseif (itemSLK.I_TYPE == "effect_model") then
        local playerIndex = hplayer.index(p)
        if (itemSLK.INDEX == "超次元信使召唤符") then
            
            local xs = {}
            if (u ~= nil and hdzapi.hasMallItem(hplayer.players[playerIndex], "ICEMON") == true) then
                table.insert(xs, "冰戟剑灵")
            end
            if (u ~= nil and hdzapi.hasMallItem(hplayer.players[playerIndex], "PHOENIX") == true or
                hdzapi.mapLv(hplayer.players[playerIndex]) >= 5) then
                table.insert(xs, "涅槃火凤凰")
            end
            table.insert(xs, "呆萌的青蛙")
            table.insert(xs, "冷静的绵羊")
            table.insert(xs, "小饥鸡")
            table.insert(xs, "依诺吸吸")
            table.insert(xs, "灵动的雪鹰")
            hdialog.create(
                hplayer.players[playerIndex],
                {
                    title = "选择你的信使",
                    buttons = xs
                },
                function(btnIdx)
                    local u = createMyCourier(playerIndex, game.courier[btnIdx].UNIT_ID)
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(p)) .. "召唤了信使：[" .. hColor.yellow(game.courier[btnIdx].Name) .. "]"
                    )
                    if (u ~= nil and cj.GetLocalPlayer() == p) then
                        cj.ClearSelection()
                        cj.SelectUnit(u, true)
                    end
                end
            )
        elseif (itemSLK.INDEX == "超次元套装礼包") then
            
            local tz = {}
            if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZFIRE") == true) then
                table.insert(tz, "炎炎焚烧套装")
            end
            if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZGOLD") == true) then
                table.insert(tz, "金碧辉煌套装")
            end
            if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZBLOOD") == true) then
                table.insert(tz, "血色炽热套装")
            end
            if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZDRAGON") == true) then
                table.insert(tz, "青龙碧翼套装")
            end
            if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZDARK") == true) then
                table.insert(tz, "迷幻黑紫套装")
            end
            if (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZGHOST") == true) then
                table.insert(tz, "邪鬼怨灵套装")
            end
            if
            (hdzapi.hasMallItem(hplayer.players[playerIndex], "TZSWORD") == true or
                hdzapi.mapLv(hplayer.players[playerIndex]) >= 3)
            then
                table.insert(tz, "出云剑仙套装")
            end
            if (#tz <= 0) then
                hmsg.echo00(hplayer.players[playerIndex], "您尚未拥有任何套装~")
                return
            end
            hdialog.create(
                hplayer.players[playerIndex],
                {
                    title = "选择专属套装",
                    buttons = tz
                },
                function(btnIdx)
                    
                    if (game.playerTowerEffectModel[playerIndex] == nil) then
                        game.playerTowerEffectModel[playerIndex] = {}
                    end
                    if (#game.playerTowerEffectModel[playerIndex] > 0) then
                        for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                            hskill.del(game.playerTower[playerIndex], v, 0)
                        end
                        game.playerTowerEffectModel[playerIndex] = {}
                    end
                    local tips
                    if (btnIdx == "金碧辉煌套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀公正特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀天堂特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀精灵特效"].ABILITY_ID)
                        tips = "金耀翅膀、公正光辉、天堂圣音、金色精灵"
                    elseif (btnIdx == "迷幻黑紫套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷紫特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷阵特效"].ABILITY_ID)
                        tips = "幻黑翅膀、迷紫幻象、迷惑雾阵"
                    elseif (btnIdx == "血色炽热套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色漩涡特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色符文特效"].ABILITY_ID)
                        tips = "血色翅膀、赤红漩涡、祭奠符文"
                    elseif (btnIdx == "青龙碧翼套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青空之翼特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["游龙欢悦特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青龙吐息特效"].ABILITY_ID)
                        tips = "青空之翼、游龙欢悦、龙腾吐息"
                    elseif (btnIdx == "邪鬼怨灵套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼怨灵特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼阵法特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼符文特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼之眼特效"].ABILITY_ID)
                        tips = "邪鬼怨灵、邪鬼阵法、超度符文、逗趣鬼眼"
                    elseif (btnIdx == "炎炎焚烧套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎旋风特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎领域特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎燃烧特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎三球特效"].ABILITY_ID)
                        tips = "炎炎旋风、烧灼圈圈、焚烧之火、鬼马火球"
                    elseif (btnIdx == "出云剑仙套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞剑特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云气场特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞龙特效"].ABILITY_ID)
                        tips = "盘旋飞剑、灵剑气场、飞龙在天"
                    end
                    if (#game.playerTowerEffectModel[playerIndex] > 0) then
                        for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                            hskill.add(game.playerTower[playerIndex], v, 0)
                        end
                        hmsg.echo00(hplayer.players[playerIndex], "成功装扮了：" .. hColor.yellow(tips))
                    end
                end
            )
        end
    elseif (itemSLK.I_TYPE == "strategy") then
        
        local playerIndex = hplayer.index(p)
        local ii = itemSLK.INDEX
        if (ii == "起死回生药水") then
            heffect.toUnit("war3mapImported\\eff_holy_light2.mdl", game.playerTower[playerIndex])
            hunit.setCurLifePercent(game.playerTower[playerIndex], 100)
        elseif (ii == "天剑切符" or ii == "武神切符" or ii == "变异切符" or ii == "恶魔切符" or ii == "恶灵切符") then
            local ts = { game.playerTower[playerIndex] }
            for i = 1, 4, 1 do
                if (game.playerTowerLink[playerIndex][i] ~= nil) then
                    table.insert(ts, game.playerTowerLink[playerIndex][i].unit)
                end
            end
            heffect.toUnit("war3mapImported\\eff_s_EvilWave_Effect.mdl", game.playerTower[playerIndex])
            if (ii == "天剑切符") then
                for _, u in ipairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            attack_damage_type = "+god",
                            attack_green = "+500"
                        }
                    )
                end
            elseif (ii == "武神切符") then
                for _, u in ipairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            attack_speed = "+75"
                        }
                    )
                end
            elseif (ii == "变异切符") then
                for _, u in ipairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            attack_damage_type = "+fire,water,ice,wind,thunder,soil"
                        }
                    )
                end
            elseif (ii == "恶魔切符") then
                for _, u in ipairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            damage_extent = "+33",
                            defend = "-100"
                        }
                    )
                end
            elseif (ii == "恶灵切符") then
                for _, u in ipairs(ts) do
                    hattr.set(
                        u,
                        30,
                        {
                            natural_ghost = "+100"
                        }
                    )
                end
            end
            ts = nil
        elseif (ii == "圣杯切符") then
            hplayer.addGoldRatio(p, 30, 90)
            heffect.bindUnit("war3mapImported\\eff_Retribution.mdl", game.playerTower[playerIndex], "origin", 90)
        elseif (ii == "陋室切符") then
            hplayer.addExpRatio(p, 35, 90)
            heffect.bindUnit(
                "war3mapImported\\eff_MysticVeil_Portrait.mdl",
                game.playerTower[playerIndex],
                "origin",
                90
            )
        elseif (ii == "王室切符") then
            hplayer.addGoldRatio(p, 25, 90)
            hplayer.addSellRatio(p, 25, 90)
            heffect.bindUnit(
                "war3mapImported\\eff_Aura_Runica_Con_Fuego.mdl",
                game.playerTower[playerIndex],
                "origin",
                90
            )
        elseif (ii == "锤敕令" or ii == "盾敕令" or ii == "剑敕令" or ii == "斧敕令") then
            local ts = {}
            if (ii == "锤敕令") then
                local hummarDur = 10 / 0.75
                htime.setInterval(
                    0.75,
                    function(t)
                        hummarDur = hummarDur - 1
                        if (hummarDur < 0 or game.runing == false) then
                            htime.delTimer(t)
                            return
                        end
                        for pi = 1, 4, 1 do
                            if (hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming) then
                                local dmg = 0
                                if (playerIndex == pi) then
                                    dmg = math.random(50, 38 * htime.min)
                                else
                                    dmg = math.random(100, 76 * htime.min)
                                end
                                hunit.subCurLife(game.playerTower[pi], dmg)
                                hmsg.echo(
                                    hColor.sky(cj.GetPlayerName(hplayer.players[pi])) ..
                                        "被黑色悍马雷劈掉了" .. hColor.red(dmg) .. "血"
                                )
                                heffect.toUnit("war3mapImported\\eff_lighting_black.mdl", game.playerTower[pi], 0)
                            end
                        end
                    end
                )
            elseif (ii == "盾敕令") then
                for pi = 1, 4, 1 do
                    if (playerIndex ~= pi and hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming) then
                        table.insert(ts, game.playerTower[pi])
                        for i = 1, 4, 1 do
                            if
                            (game.playerTowerLink[pi][i] ~= nil and
                                his.locust(game.playerTowerLink[pi][i].unit) == false)
                            then
                                table.insert(ts, game.playerTowerLink[pi][i].unit)
                            end
                        end
                    end
                end
                for _, u in ipairs(ts) do
                    hattr.set(
                        u,
                        10,
                        {
                            attack_speed = "-100"
                        }
                    )
                end
            elseif (ii == "剑敕令") then
                for pi = 1, 4, 1 do
                    if (playerIndex ~= pi and hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming) then
                        table.insert(ts, game.playerTower[pi])
                        for i = 1, 4, 1 do
                            if (his.alive(game.playerTowerLink[pi][i].unit) == true) then
                                table.insert(ts, game.playerTowerLink[pi][i].unit)
                            end
                            if (his.alive(game.playerCourier[pi]) == true) then
                                table.insert(ts, game.playerCourier[pi])
                            end
                        end
                    end
                end
                for _, u in ipairs(ts) do
                    hskill.swim(
                        {
                            whichUnit = u,
                            during = 10,
                            odds = 999,
                            effect = "war3mapImported\\eff_flame_Great_Sword_Falls.mdl"
                        }
                    )
                end
            elseif (ii == "斧敕令") then
                for pi = 1, 4, 1 do
                    if (playerIndex ~= pi and hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming) then
                        table.insert(ts, game.playerTower[pi])
                    end
                end
                for _, u in ipairs(ts) do
                    hunit.setCurLife(u, hunit.getCurLife(u) * 0.8)
                    heffect.toUnit("war3mapImported\\eff_black_chain_flash.mdl", u, 0)
                end
            end
            ts = nil
        end
    end
end
onCourierSkillUesdTTG = function(u, text)
    htextTag.style(htextTag.create2Unit(u, text, 8, "ccffff", 1, 1.5, 50), "scale", 0, 0.05)
end
onCourierSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    if (his.silent(u) == true) then
        return
    end
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK == nil or abilitiesSLK.Name == nil) then
        return
    end
    
    local curWave = 1
    if (game.rule.cur == "yb") then
        curWave = game.rule.yb.wave
    elseif (game.rule.cur == "hz") then
        curWave = game.rule.hz.wave
    elseif (game.rule.cur == "dk") then
        curWave = game.rule.dk.wave[hplayer.index(cj.GetOwningPlayer(u))]
    end
    
    if (abilitiesSLK.Name == "拾取") then
        hitem.pickRound(u, cj.GetUnitX(u), cj.GetUnitY(u), 1500)
    elseif (abilitiesSLK.Name == "火焰吐息") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_damage_type = "+fire",
                natural_fire = "+10"
            }
        )
        heffect.bindUnit(
            "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl",
            game.playerTower[playerIndex],
            "weapon",
            45
        )
    elseif (abilitiesSLK.Name == "霜寒脚步") then
        onCourierSkillUesdTTG(game.playerTower[playerIndex], abilitiesSLK.Name)
        hattr.set(
            game.playerTower[playerIndex],
            45,
            {
                attack_damage_type = "+ice",
                natural_ice = "+10",
                attack_debuff = {
                    add = {
                        {
                            attr = "move",
                            odds = 50,
                            val = 45,
                            during = 2.2,
                            effect = "war3mapImported\\eff_icing.mdl"
                        }
                    }
                }
            }
        )
        heffect.bindUnit("Abilities\\Spells\\Items\\AIob\\AIobTarget.mdl", game.playerTower[playerIndex], "weapon", 45)
    elseif (abilitiesSLK.Name == "兵塔石吞噬") then
        local lvUpQty = 0
        for ti = 0, 5, 1 do
            local it = cj.UnitItemInSlot(u, ti)
            if (it ~= nil) then
                local itemSLK = hslk_global.itemsKV[hitem.getId(it)]
                if (itemSLK.I_TYPE == "tower") then
                    lvUpQty = lvUpQty + hitem.getCharges(it)
                    hitem.del(it, 0)
                end
            end
        end
        if (lvUpQty > 0) then
            hhero.setCurLevel(
                game.playerTower[playerIndex],
                lvUpQty + hhero.getCurLevel(game.playerTower[playerIndex]),
                false
            )
            hmsg.echo00(p, "通过吞噬兵塔石,兵塔提升了" .. hColor.yellow(lvUpQty) .. "级")
        else
            htextTag.style(htextTag.create2Unit(u, "找不到兵塔石~", 7, "ffff00", 1, 1.5, 50), "scale", 0, 0.05)
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·蓝") then
        if (hplayer.getGold(p) < 750) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 750)
            local tarBLv = getBookPowLevel(curWave)
            local bookID
            if (game.rule.cur == "dk") then
                bookID = table.random(game.thisOptionAbilityItem["blue"][tarBLv]).ITEM_ID
            else
                bookID = table.random(game.thisOptionAbilityItemNODK["blue"][tarBLv]).ITEM_ID
            end
            hitem.create(
                {
                    itemId = bookID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·黄") then
        if (hplayer.getGold(p) < 1250) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 1250)
            local tarBLv = getBookPowLevel(curWave)
            local bookID
            if (game.rule.cur == "dk") then
                bookID = table.random(game.thisOptionAbilityItem["yellow"][tarBLv]).ITEM_ID
            else
                bookID = table.random(game.thisOptionAbilityItemNODK["yellow"][tarBLv]).ITEM_ID
            end
            hitem.create(
                {
                    itemId = bookID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "呼唤技能书·紫") then
        if (hplayer.getGold(p) < 2500) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 2500)
            local tarBLv = getBookPowLevel(curWave)
            local bookID
            if (game.rule.cur == "dk") then
                bookID = table.random(game.thisOptionAbilityItem["purple"][tarBLv]).ITEM_ID
            else
                bookID = table.random(game.thisOptionAbilityItemNODK["purple"][tarBLv]).ITEM_ID
            end
            hitem.create(
                {
                    itemId = bookID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "召唤新兵塔") then
        if (hplayer.getGold(p) < 750) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, 750)
            local tarBLv = getTowerPowLevel(curWave)
            hitem.create(
                {
                    itemId = table.random(game.thisOptionTowerPowerItem[tarBLv]).ITEM_ID,
                    whichUnit = u
                }
            )
        end
    elseif (abilitiesSLK.Name == "技能吞噬") then
        local lvUpQty = 0
        for ti = 0, 5, 1 do
            local it = cj.UnitItemInSlot(u, ti)
            if (it ~= nil) then
                local itemSLK = hslk_global.itemsKV[hitem.getId(it)]
                if (itemSLK.I_TYPE == "ability") then
                    lvUpQty = lvUpQty + hitem.getCharges(it)
                    hitem.del(it, 0)
                end
            end
        end
        if (lvUpQty > 0) then
            local full9 = true
            local target
            local targetLi = 0
            if (game.playerTowerLevel[playerIndex] < 9) then
                full9 = false
                target = game.playerTower[playerIndex]
            end
            if (target == nil) then
                for li = 1, 4, 1 do
                    local linkUnit = game.playerTowerLink[playerIndex][li].unit
                    if
                        (linkUnit ~= nil and his.locust(linkUnit) == false and
                            game.playerTowerLink[playerIndex][li].tower_level < 9)
                     then
                        full9 = false
                        target = game.playerTowerLink[playerIndex][li].unit
                        targetLi = li
                        break
                    end
                end
            end
            if (full9 == true) then
                htextTag.style(htextTag.create2Unit(u, "全队已满9级天赋，技能书已被售卖~", 7, "ccffcc", 1, 1.5, 50), "scale", 0, 0.05)
                hplayer.addGold(p, 30 * lvUpQty)
            else
                local lockLv = 0
                for vi = 1, lvUpQty, 1 do
                    local l = 0
                    if (math.random(1, 6) == 1) then
                        l = 0
                    elseif (math.random(1, 5) == 1) then
                        l = 1
                    elseif (math.random(1, 4) == 1) then
                        l = 2
                    elseif (math.random(1, 3) == 1) then
                        l = 3
                    elseif (math.random(1, 3) == 1) then
                        l = 4
                    elseif (math.random(1, 3) == 1) then
                        l = 5
                    elseif (math.random(1, 2) == 1) then
                        l = 6
                    elseif (math.random(1, 2) == 1) then
                        l = 7
                    elseif (math.random(1, 2) == 1) then
                        l = 8
                    else
                        l = 9
                    end
                    if (l > lockLv) then
                        lockLv = l
                    end
                end
                if (target == game.playerTower[playerIndex]) then
                    
                    subTowerLevel(playerIndex)
                    addTowerLevel(playerIndex, lockLv)
                else
                    
                    subTowerLinkLevel(playerIndex, targetLi)
                    addTowerLinkLevel(playerIndex, targetLi, lockLv)
                end
            end
        else
            htextTag.style(htextTag.create2Unit(u, "找不到技能书~", 7, "ffff00", 1, 1.5, 50), "scale", 0, 0.05)
        end
    elseif (abilitiesSLK.Name == "开心金箱子") then
        if (hplayer.getLumber(p) < 30) then
            htextTag.style(htextTag.create2Unit(u, "不够30木头呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subLumber(p, 30)
            local gold = 0
            local label = "谢谢惠顾"
            local color = "ffffff"
            local randg = math.random(1, 100)
            if (randg >= 1 and randg < 54) then
                gold = 388
                label = "三等赏！"
                color = "80ffff"
            elseif (randg >= 55 and randg < 84) then
                gold = 888
                label = "二等赏！！"
                color = "ffffcc"
            elseif (randg >= 85 and randg <= 90) then
                gold = 1888
                label = "一等赏！！！"
                color = "ffcc00"
            elseif (randg == 54) then
                gold = 8888
                label = "特等赏！！！！"
                color = "ff3939"
            end
            if (gold > 0) then
                hsound.sound2Player(cg.gg_snd_coin_1, p)
                hplayer.addGold(p, gold)
                htextTag.style(
                    htextTag.create2Unit(u, label .. "+ " .. gold, 7, color, 1, 1.70, 60.00),
                    "toggle",
                    0,
                    0.25
                )
                if (gold >= 1888) then
                    hmsg.echo(hColor.sky(cj.GetPlayerName(p)) .. "抽到了|cff" .. color .. label .. "|r，大家祝贺TA！")
                end
            else
                hsound.sound2Player(cg.gg_snd_sell_item, p)
                htextTag.style(htextTag.create2Unit(u, label, 7, color, 1, 1.70, 60.00), "toggle", 0, 0.25)
            end
        end
    elseif (abilitiesSLK.Name == "装备升华") then
        local itemQty = 0
        local itemLv = 0
        local itemSlkCache = {}
        for si = 0, 5, 1 do
            local tempIt = cj.UnitItemInSlot(u, si)
            if (tempIt ~= nil) then
                local tslk = hitem.getSlk(tempIt)
                if (tslk ~= nil and (tslk.I_TYPE == "combo" or tslk.I_TYPE == "equip")) then
                    itemQty = itemQty + hitem.getCharges(tempIt)
                    itemLv = itemLv + tslk.LEVEL
                    table.insert(itemSlkCache, tempIt)
                end
            end
            tempIt = nil
        end
        if (itemQty < 2) then
            htextTag.style(htextTag.create2Unit(u, "至少要2件装备", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        end
        local downLv = math.floor(itemLv * 0.8)
        if (downLv < 1) then
            downLv = 1
        elseif (downLv > 200) then
            downLv = 200
        end
        local comboIt = {}
        for cbi = downLv, itemLv, 1 do
            if (game.rule.cur == "dk") then
                if (game.thisComboItem[cbi] ~= nil) then
                    for _, civ in ipairs(game.thisComboItem[cbi]) do
                        table.insert(comboIt, civ)
                    end
                end
            else
                if (game.thisComboItemNODK[cbi] ~= nil) then
                    for _, civ in ipairs(game.thisComboItemNODK[cbi]) do
                        table.insert(comboIt, civ)
                    end
                end
            end
        end
        if (#comboIt <= 0) then
            htextTag.style(htextTag.create2Unit(u, "升华失败了", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            itemSlkCache = nil
            return
        end
        local need = 500 * itemQty
        if (hplayer.getGold(p) < need) then
            htextTag.style(htextTag.create2Unit(u, "不够金币呢~", 7, "ff3939", 1, 1.5, 50), "scale", 0, 0.05)
            return
        else
            hplayer.subGold(p, need)
            for _, v in ipairs(itemSlkCache) do
                hitem.del(v, 0)
            end
            itemSlkCache = nil
            local randIt = table.random(comboIt)
            comboIt = nil
            hitem.create(
                {
                    itemId = randIt.ITEM_ID,
                    charges = 1,
                    whichUnit = u
                }
            )
            hmsg.echo(
                hColor.sky(cj.GetPlayerName(p)) ..
                    "利用" .. hColor.yellow(itemQty) .. "件装备升华出了" .. hColor.green(randIt.Name) .. "！"
            )
            randIt = nil
        end
    end
end
onTowerAttackTtgCount = 1
onTowerAttackTtg = function(u, string)
    htextTag.style(
        htextTag.create2Unit(u, string, 6.9 + onTowerAttackTtgCount * 0.1, "FFFF00", 2, 2, 10),
        "scale",
        0,
        onTowerAttackTtgCount * 0.05
    )
    onTowerAttackTtgCount = onTowerAttackTtgCount + 1
    htime.setTimeout(
        2,
        function(t)
            htime.delTimer(t)
            onTowerAttackTtgCount = onTowerAttackTtgCount - 1
        end
    )
end
onTowerAttack = function(evtData)
    local u = evtData.attacker
    local targetUnit = evtData.targetUnit
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(u, ABILITY_ID)) then
            local name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            if (name ~= nil) then
                
                if (name == "侵毒连击" and math.random(1, 7) == 4) then
                    onTowerAttackTtg(u, name)
                    hattr.set(
                        u,
                        5.00,
                        {
                            attack_damage_type = "+poison",
                            attack_speed = "+" .. 10 * level
                        }
                    )
                end
                if (name == "机关枪" and math.random(1, 5) == 3) then
                    onTowerAttackTtg(u, name)
                    hattr.set(
                        u,
                        2.50 * level,
                        {
                            attack_speed = "+" .. 12.5 * level
                        }
                    )
                end
                if (name == "掠夺黄金" and math.random(1, 100) <= level) then
                    onTowerAttackTtg(u, name)
                    haward.forUnitGold(u, 50 * level)
                end
                if (name == "震晕践踏" and math.random(1, 7) == 5) then
                    onTowerAttackTtg(u, name)
                    hskill.rangeSwim(
                        {
                            range = 895,
                            odds = 100,
                            during = 0.7 * level,
                            whichUnit = u,
                            filter = function(filterUnit)
                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                            end
                        }
                    )
                end
                if (name == "炸裂践踏" and math.random(1, 5) == 3) then
                    onTowerAttackTtg(u, name)
                    hskill.rangeSwim(
                        {
                            range = 895,
                            odds = 100,
                            during = 1.3 * level,
                            damage = 455 * level,
                            whichUnit = u,
                            sourceUnit = u,
                            effect = "war3mapImported\\eff_shock_explosion.mdl",
                            filter = function(filterUnit)
                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                            end
                        }
                    )
                end
                if (name == "冰花炸裂" and math.random(1, 4) == 3) then
                    onTowerAttackTtg(u, name)
                    local x = cj.GetUnitX(u)
                    local y = cj.GetUnitY(u)
                    heffect.toXY("war3mapImported\\eff_FrostNova.mdl", x, y, 0)
                    local g = hgroup.createByUnit(
                        u,
                        895,
                        function(filterUnit)
                            return his.alive(filterUnit) and his.enemy(filterUnit, u)
                        end
                    )
                    hgroup.loop(
                        g,
                        function(eu)
                            hattr.set(
                                eu,
                                7.5,
                                {
                                    move = "-" .. 45 * level,
                                    life_back = "-" .. 150 * level
                                }
                            )
                            heffect.toUnit("war3mapImported\\eff_frost_burst.mdl", eu, 0)
                            heffect.bindUnit("war3mapImported\\eff_icing.mdl", eu, "foot", 7.5)
                        end,
                        true
                    )
                end
                if (name == "死亡同步" and math.random(1, 200) <= level and his.alive(targetUnit)) then
                    onTowerAttackTtg(u, name)
                    heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                    hunit.kill(targetUnit, 0)
                end
                
                if (name == "偷窃" or name == "炼金" or name == "盗墓") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        haward.forUnitGold(u, val[2])
                        heffect.toUnit("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", u, 0)
                    end
                end
                if (his.alive(targetUnit) and (name == "必死宣言" or name == "羊蹄子" or name == "同葬" or name == "引路人")) then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.bindUnit("Abilities\\Spells\\Items\\AIso\\AIsoTarget.mdl", targetUnit, "origin", 1)
                        hunit.kill(targetUnit, 0)
                    end
                end
                if (name == "烈焰风暴" or name == "帝释天") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local damageType = { CONST_DAMAGE_TYPE.magic }
                        if (name == "烈焰风暴") then
                            damageType = { CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.fire }
                        elseif (name == "帝释天") then
                            damageType = {
                                CONST_DAMAGE_TYPE.magic,
                                CONST_DAMAGE_TYPE.physical,
                                CONST_DAMAGE_TYPE.real,
                                CONST_DAMAGE_TYPE.light,
                                CONST_DAMAGE_TYPE.god
                            }
                        end
                        hskill.damageRange(
                            {
                                sourceUnit = u,
                                whichUnit = targetUnit,
                                range = v.Val[2],
                                frequency = v.Val[3],
                                damage = v.Val[4],
                                times = v.Val[5],
                                effect = v.Val[6],
                                effectSingle = v.Val[7],
                                damageType = damageType,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end
                            }
                        )
                    end
                end
                if (name == "雷霆一击" or name == "缠绕" or name == "霜冻新星") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY(val[6], x, y, 0)
                        local g = hgroup.createByUnit(
                            u,
                            895,
                            function(filterUnit)
                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                            end
                        )
                        local damageType = {}
                        if (name == "雷霆一击") then
                            damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.thunder }
                        elseif (name == "缠绕") then
                            damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.wood }
                        end
                        hgroup.loop(
                            g,
                            function(eu)
                                hattr.set(eu, val[4], { [val[5]] = "-" .. val[3] })
                                heffect.bindUnit(val[7], eu, "origin", val[4])
                                hskill.damage(
                                    {
                                        sourceUnit = u,
                                        targetUnit = eu,
                                        damage = val[2],
                                        damageKind = CONST_DAMAGE_KIND.skill,
                                        damageType = damageType
                                    }
                                )
                            end,
                            true
                        )
                    end
                end
                if (name == "石化凝视") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY("war3mapImported\\eff_DarkLightningNova.mdl", x, y, 0)
                        local g = hgroup.createByUnit(
                            u,
                            895,
                            function(filterUnit)
                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                            end
                        )
                        hgroup.loop(
                            g,
                            function(eu)
                                hattr.set(
                                    eu,
                                    val[3],
                                    {
                                        move = "-522",
                                        defend = "-" .. val[2]
                                    }
                                )
                            end,
                            true
                        )
                    end
                end
                if (name == "闻风丧胆") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        heffect.toXY("Abilities\\Spells\\Other\\HowlOfTerror\\HowlCaster.mdl", x, y, 0)
                        local g = hgroup.createByUnit(
                            u,
                            895,
                            function(filterUnit)
                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                            end
                        )
                        hgroup.loop(
                            g,
                            function(eu)
                                hattr.set(
                                    eu,
                                    val[3],
                                    {
                                        defend = "-" .. val[2]
                                    }
                                )
                                heffect.bindUnit(
                                    "Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl",
                                    eu,
                                    "overhead",
                                    val[3]
                                )
                            end,
                            true
                        )
                    end
                end
                if (name == "震撼" or name == "龙魂斩" or name == "鱼人碎击" or name == "怒火碎击") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local x = cj.GetUnitX(u)
                        local y = cj.GetUnitY(u)
                        hskill.rangeSwim(
                            {
                                range = 895,
                                during = val[3],
                                odds = 100,
                                effect = val[4],
                                x = x,
                                y = y,
                                damage = val[2] or 0,
                                sourceUnit = u,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end
                            }
                        )
                    end
                end
                if (name == "灼烧大地") then
                    onTowerAttackTtg(u, name)
                    local val = v.Val or { 0 }
                    local g = hgroup.createByUnit(
                        u,
                        895,
                        function(filterUnit)
                            return his.alive(filterUnit) and his.enemy(filterUnit, u)
                        end
                    )
                    hgroup.loop(
                        g,
                        function(eu)
                            hskill.damage(
                                {
                                    sourceUnit = u,
                                    targetUnit = eu,
                                    damage = val[1],
                                    damageKind = CONST_DAMAGE_KIND.skill,
                                    damageType = { CONST_DAMAGE_TYPE.fire }
                                }
                            )
                        end,
                        true
                    )
                end
                if (name == "猎手幻刀" or name == "觉醒幻刀" or name == "究极幻刀" or name == "冥冥斩击") then
                    onTowerAttackTtg(u, name)
                    local val = v.Val or { 0 }
                    local cut1 = "war3mapImported\\eff_x_round_dance.mdl"
                    local cut2 = "war3mapImported\\eff_Culling_Slash_Silver.mdl"
                    local damageType = { CONST_DAMAGE_TYPE.physical }
                    if (name == "觉醒幻刀") then
                        cut1 = "war3mapImported\\eff_light_speed_cutting.mdl"
                    elseif (name == "究极幻刀") then
                        cut1 = "war3mapImported\\eff_light_speed_cutting_green.mdl"
                        damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.dark }
                    elseif (name == "冥冥斩击") then
                        cut1 = "war3mapImported\\eff_round_dance2.mdl"
                        cut2 = "Objects\\Spawnmodels\\Critters\\Albatross\\CritterBloodAlbatross.mdl"
                        damageType = { CONST_DAMAGE_TYPE.absolute }
                    end
                    heffect.toUnit(cut1, u, 1)
                    local g = hgroup.createByUnit(
                        u,
                        895,
                        function(filterUnit)
                            return his.alive(filterUnit) and his.enemy(filterUnit, u)
                        end
                    )
                    hgroup.loop(
                        g,
                        function(eu)
                            hskill.damage(
                                {
                                    sourceUnit = u,
                                    targetUnit = eu,
                                    damage = val[1],
                                    damageKind = CONST_DAMAGE_KIND.skill,
                                    damageType = damageType,
                                    effect = cut2
                                }
                            )
                        end,
                        true
                    )
                end
                if (name == "剑刃风暴" and his.get(u, "isWhirlwind") == false) then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.whirlwind(
                            {
                                range = 895,
                                frequency = val[2],
                                during = val[4],
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                damage = val[3],
                                sourceUnit = u,
                                animation = "spin",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical }
                            }
                        )
                    end
                end
                if (name == "震荡波" or name == "狼拳连打") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1000,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        for q = 1, val[2], 1 do
                            htime.setTimeout(
                                (q - 1) * 0.50,
                                function(t)
                                    htime.delTimer(t)
                                    hskill.leap(
                                        {
                                            sourceUnit = u,
                                            x = txy.x,
                                            y = txy.y,
                                            speed = 10,
                                            acceleration = 1,
                                            filter = function(filterUnit)
                                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                            end,
                                            tokenArrow = val[5],
                                            tokenArrowScale = 1.80,
                                            tokenArrowOpacity = 1,
                                            damageMovement = val[3],
                                            damageMovementRange = 125,
                                            damageKind = CONST_DAMAGE_KIND.skill,
                                            damageType = { CONST_DAMAGE_TYPE.physical },
                                            extraInfluence = function(eu)
                                                hskill.swim(
                                                    {
                                                        odds = 100,
                                                        whichUnit = eu,
                                                        during = val[4]
                                                    }
                                                )
                                            end
                                        }
                                    )
                                end
                            )
                        end
                    end
                elseif (name == "大海浪涛") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 10,
                                acceleration = 1,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[4],
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 225,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.water }
                            }
                        )
                    end
                elseif (name == "毁灭之剑") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1300,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 17,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 1.10,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 320,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = { CONST_DAMAGE_TYPE.absolute, CONST_DAMAGE_TYPE.dark }
                            }
                        )
                    end
                elseif (name == "乘风破浪") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        for q = 1, val[2], 1 do
                            htime.setTimeout(
                                (q - 1) * 0.55,
                                function(t)
                                    htime.delTimer(t)
                                    hskill.leap(
                                        {
                                            sourceUnit = u,
                                            targetUnit = targetUnit,
                                            speed = 8,
                                            acceleration = 0,
                                            filter = function(filterUnit)
                                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                            end,
                                            tokenArrow = val[5],
                                            tokenArrowScale = 1.20,
                                            tokenArrowOpacity = 1,
                                            damageMovement = val[3],
                                            damageMovementRange = 250,
                                            effectEnd = "war3mapImported\\eff_Shiva's_Wrath.mdl",
                                            damageKind = CONST_DAMAGE_KIND.skill,
                                            damageType = { CONST_DAMAGE_TYPE.physical },
                                            extraInfluence = function(eu)
                                                hskill.swim(
                                                    {
                                                        odds = 100,
                                                        whichUnit = eu,
                                                        during = val[4]
                                                    }
                                                )
                                            end
                                        }
                                    )
                                end
                            )
                        end
                    end
                elseif (name == "交叉战斧") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            900,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 15,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 17,
                                acceleration = -0.1,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 100,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = { CONST_DAMAGE_TYPE.physical },
                                damageEffect = "Objects\\Spawnmodels\\Critters\\Albatross\\CritterBloodAlbatross.mdl"
                            }
                        )
                    end
                elseif (name == "九道镖") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            800,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 12.5,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 15,
                                acceleration = 0.2,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.50,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 75,
                                damageKind = CONST_DAMAGE_KIND.special,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.poison },
                                damageEffect = "Abilities\\Spells\\NightElf\\shadowstrike\\shadowstrike.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        val[5],
                                        {
                                            life_back = "-" .. val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "剑气" or name == "弹刃之剑") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 26,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 20,
                                acceleration = -0.15,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 75,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical },
                                damageEffect = "war3mapImported\\eff_speed_slash2.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        val[5],
                                        {
                                            defend = "-" .. val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "神剑七闪") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leapPow(
                            {
                                qty = val[2],
                                deg = 17,
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 12,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                damageMovement = val[3],
                                damageMovementRange = 100,
                                damageMovementRepeat = true,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire },
                                damageEffect = "war3mapImported\\eff_shooting.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        val[5],
                                        {
                                            move = "-" .. val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "冥王极限斩") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1500,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 14,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 1.70,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 150,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.poison },
                                damageEffect = "war3mapImported\\eff_Pillar_of_Flame_Green.mdl"
                            }
                        )
                    end
                elseif (name == "陨石星P") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 8,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 0.25,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 150,
                                damageMovementRepeat = true,
                                damageEnd = val[2] * 2,
                                damageEndRange = 350,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire },
                                damageEffect = "war3mapImported\\eff_flame_flash2.mdl"
                            }
                        )
                    end
                elseif (name == "陨石星M") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1200,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 8,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 0.25,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 150,
                                damageMovementRepeat = true,
                                damageEnd = val[2] * 2,
                                damageEndRange = 350,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.fire },
                                damageEffect = "war3mapImported\\eff_flame_flash2.mdl"
                            }
                        )
                    end
                elseif (name == "虚空漩涡") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local txy = math.polarProjection(
                            cj.GetUnitX(u),
                            cj.GetUnitY(u),
                            1100,
                            math.getDegBetweenUnit(u, targetUnit)
                        )
                        hskill.leap(
                            {
                                sourceUnit = u,
                                x = txy.x,
                                y = txy.y,
                                speed = 4,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[3],
                                tokenArrowScale = 1.8,
                                tokenArrowOpacity = 1,
                                damageMovement = val[2],
                                damageMovementRange = 275,
                                damageMovementRepeat = true,
                                damageEnd = 0,
                                damageEndRange = 0,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.absolute, CONST_DAMAGE_TYPE.dark },
                                damageEffect = "Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl",
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        4,
                                        {
                                            move = "-3"
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "爆骨火弹" or name == "炎杀鬼球") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leap(
                            {
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 16,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl",
                                tokenArrowScale = 1.50,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 100,
                                damageEnd = val[3],
                                damageEndRange = val[2],
                                effectEnd = "war3mapImported\\eff_FireStomp.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire },
                                damageEffect = "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl"
                            }
                        )
                    end
                elseif (name == "地狱火球") then
                    local val = v.Val or { 0 }
                    onTowerAttackTtg(u, name)
                    hskill.leap(
                        {
                            sourceUnit = u,
                            targetUnit = targetUnit,
                            speed = 15,
                            acceleration = 0,
                            filter = function(filterUnit)
                                return his.alive(filterUnit) and his.enemy(filterUnit, u)
                            end,
                            tokenArrow = "war3mapImported\\eff_DarknessBomb.mdl",
                            tokenArrowScale = 1.30,
                            tokenArrowOpacity = 1,
                            tokenArrowHeight = 100,
                            damageMovement = 0,
                            damageMovementRange = 0,
                            damageEnd = val[1],
                            damageEndRange = 0,
                            effectEnd = "war3mapImported\\eff_ShadowAssault.mdl",
                            damageKind = CONST_DAMAGE_KIND.skill,
                            damageType = { CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.dark }
                        }
                    )
                elseif (name == "炫力炸弹") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leap(
                            {
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 11,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = "Abilities\\Spells\\Other\\AcidBomb\\BottleMissile.mdl",
                                tokenArrowScale = 1.50,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 75,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = val[2],
                                effectEnd = "war3mapImported\\eff_BombBlast.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.poison },
                                damageEffect = "war3mapImported\\eff_brilliant_sparkle.mdl",
                                extraInfluence = function(eu)
                                    hskill.swim(
                                        {
                                            odds = 100,
                                            whichUnit = eu,
                                            during = val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "恐惧蝠群") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = 700,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 15,
                                acceleration = 1,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[6],
                                tokenArrowScale = 1.00,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "war3mapImported\\eff_Call_of_Dread_Green.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.dark },
                                extraInfluence = function(eu)
                                    hattr.set(
                                        eu,
                                        0,
                                        {
                                            defend = "-" .. val[4],
                                            move = "-" .. val[5]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "导弹降日") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.toUnit("war3mapImported\\eff_RocketRainBirth.mdl", u, 0)
                        hskill.leapRange(
                            {
                                targetRange = 895,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 8,
                                acceleration = 1.5,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = "Abilities\\Spells\\Other\\TinkerRocket\\TinkerRocketMissile.mdl",
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[2],
                                damageEndRange = 150,
                                effectEnd = "war3mapImported\\eff_ExplosionBig.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.fire }
                            }
                        )
                    end
                elseif (name == "滚滚石锤") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = 895,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 13,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl",
                                tokenArrowScale = 1.60,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[2],
                                damageEndRange = 0,
                                effectEnd = "Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.soil },
                                extraInfluence = function(eu)
                                    hskill.swim(
                                        {
                                            odds = 100,
                                            whichUnit = eu,
                                            during = val[3]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "破冰碎片") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = val[2],
                                sourceUnit = u,
                                targetUnit = u,
                                speed = 18,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = "war3mapImported\\eff_forst_arrow.mdl",
                                tokenArrowScale = 1.10,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "Abilities\\Spells\\Undead\\FrostNova\\FrostNovaTarget.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.ice }
                            }
                        )
                    end
                elseif (name == "黑网擒拿" or name == "忍法擒拿") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapRange(
                            {
                                targetRange = 700,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 18,
                                acceleration = -0.25,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = val[4],
                                tokenArrowScale = 1.10,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[2],
                                damageEndRange = 0,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical, CONST_DAMAGE_TYPE.dark },
                                extraInfluence = function(eu)
                                    heffect.bindUnit(val[5], eu, "origin", val[3])
                                    hattr.set(
                                        eu,
                                        val[3],
                                        {
                                            move = "-522"
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "幻彩星落") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.leapReflex(
                            {
                                qty = val[2],
                                range = 600,
                                sourceUnit = u,
                                targetUnit = targetUnit,
                                speed = 17,
                                acceleration = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                tokenArrow = "war3mapImported\\eff_FaerieFire_Impact.mdl",
                                tokenArrowScale = 1.20,
                                tokenArrowOpacity = 1,
                                tokenArrowHeight = 100,
                                damageMovement = 0,
                                damageMovementRange = 0,
                                damageEnd = val[3],
                                damageEndRange = 0,
                                effectEnd = "Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl",
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.magic, CONST_DAMAGE_TYPE.light }
                            }
                        )
                    end
                elseif (name == "金箍棒") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hskill.rectangleStrike(
                            {
                                damage = val[3],
                                sourceUnit = u,
                                x = cj.GetUnitX(u),
                                y = cj.GetUnitY(u),
                                deg = math.getDegBetweenXY(
                                    cj.GetUnitX(u),
                                    cj.GetUnitY(u),
                                    cj.GetUnitX(targetUnit),
                                    cj.GetUnitY(targetUnit)
                                ),
                                range = 250,
                                distance = val[2],
                                frequency = 0,
                                filter = function(filterUnit)
                                    return his.alive(filterUnit) and his.enemy(filterUnit, u)
                                end,
                                effect = "war3mapImported\\eff_slash.mdl",
                                effectScale = 3,
                                effectOffset = -750,
                                damageKind = CONST_DAMAGE_KIND.skill,
                                damageType = { CONST_DAMAGE_TYPE.physical },
                                damageEffect = "war3mapImported\\eff_red_swing.mdl",
                                oneHitOnly = true, 
                                extraInfluence = function(eu)
                                    hskill.swim(
                                        {
                                            odds = 100,
                                            whichUnit = eu,
                                            during = val[4]
                                        }
                                    )
                                end
                            }
                        )
                    end
                elseif (name == "蛇棒" or name == "骷髅兵" or name == "炎魔" or name == "灰熊") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        local summon = game.towersSummon[val[2]]
                        if (summon == nil) then
                            return
                        end
                        local su = hunit.create(
                            {
                                whichPlayer = cj.GetOwningPlayer(u),
                                unitId = summon.UNIT_ID,
                                qty = 1,
                                life = val[3],
                                x = cj.GetUnitX(targetUnit),
                                y = cj.GetUnitY(targetUnit)
                            }
                        )
                        hattr.set(
                            su,
                            0,
                            {
                                attack_white = "=" .. val[4] * 0.01 * hattr.get(u, "attack_white"),
                                attack_green = "=" .. val[4] * 0.01 * hattr.get(u, "attack_green")
                            }
                        )
                    end
                end
                if (name == "地狱战吼" or name == "邪鬼战吼" or name == "大梵天") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.toUnit(val[4], u, 0)
                        local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
                        hattr.set(
                            game.playerTower[playerIndex],
                            val[3],
                            {
                                [val[5]] = "+" .. val[2]
                            }
                        )
                        for i = 1, 4, 1 do
                            if (his.locust(game.playerTowerLink[playerIndex][i].unit) == false) then
                                hattr.set(
                                    game.playerTowerLink[playerIndex][i].unit,
                                    val[3],
                                    {
                                        [val[5]] = "+" .. val[2]
                                    }
                                )
                            end
                        end
                    end
                elseif (name == "熊咆") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        heffect.toUnit(val[5], u, 0)
                        local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
                        hattr.set(
                            game.playerTower[playerIndex],
                            val[4],
                            {
                                attack_effect = {
                                    add = {
                                        {
                                            attr = "knocking",
                                            odds = val[2],
                                            percent = val[3]
                                        }
                                    }
                                }
                            }
                        )
                        for i = 1, 4, 1 do
                            if (his.locust(game.playerTowerLink[playerIndex][i].unit) == false) then
                                hattr.set(
                                    game.playerTowerLink[playerIndex][i].unit,
                                    val[4],
                                    {
                                        attack_effect = {
                                            add = {
                                                {
                                                    attr = "knocking",
                                                    odds = val[2],
                                                    percent = val[3]
                                                }
                                            }
                                        }
                                    }
                                )
                            end
                        end
                    end
                end
                if (name == "固化时空") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hunit.setAnimateSpeed(targetUnit, 0, val[2])
                        hattr.set(
                            targetUnit,
                            val[2],
                            {
                                move = "-522"
                            }
                        )
                    end
                end
                if (name == "血性") then
                    local val = v.Val or { 0 }
                    if (math.random(1, 100) <= val[1]) then
                        onTowerAttackTtg(u, name)
                        hattr.set(
                            u,
                            val[4],
                            {
                                attack_effect = {
                                    add = {
                                        {
                                            attr = "knocking",
                                            odds = val[2],
                                            percent = val[3],
                                            effect = val[5]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
            end
        end
    end
end
subTowerLevel = function(playerIndex)
    local oldLevel = game.playerTowerLevel[playerIndex]
    if (oldLevel ~= nil) then
        hskill.del(game.playerTower[playerIndex], game.thisUnitLevelAbilities[oldLevel].ABILITY_ID, 0)
        if (oldLevel > 0) then
            local towerId = hunit.getId(game.playerTower[playerIndex])
            hattr.set(
                game.playerTower[playerIndex],
                0,
                {
                    str_white = "-" .. math.floor(oldLevel * 0.28 * hslk_global.unitsKV[towerId].STR),
                    agi_white = "-" .. math.floor(oldLevel * 0.28 * hslk_global.unitsKV[towerId].AGI),
                    int_white = "-" .. math.floor(oldLevel * 0.28 * hslk_global.unitsKV[towerId].INT),
                    attack_white = "-" .. math.floor(oldLevel * 0.35 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
                }
            )
        end
    end
end
addTowerLevel = function(playerIndex, lockLv)
    local unitLv = 0
    if (lockLv ~= nil) then
        unitLv = lockLv
    else
        if (math.random(1, 5) == 1) then
            unitLv = 0
        elseif (math.random(1, 4) == 1) then
            unitLv = 1
        elseif (math.random(1, 3) == 1) then
            unitLv = 2
        elseif (math.random(1, 2) == 1) then
            unitLv = 3
        elseif (math.random(1, 2) == 1) then
            unitLv = 4
        else
            unitLv = 5
        end
    end
    local oldLv = game.playerTowerLevel[playerIndex] or -1
    if (lockLv == nil or unitLv > oldLv) then
        hmsg.echo00(hplayer.players[playerIndex], "主塔天赋变为：" .. hColor.yellow(unitLv) .. "级")
        if (unitLv == 9) then
            hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
            hmsg.echo(
                hColor.sky("(>▽<)" .. cj.GetPlayerName(hplayer.players[playerIndex])) ..
                    "得到了" .. hColor.yellow(unitLv) .. "级天赋主塔，大家祝贺TA！"
            )
        end
        game.playerTowerLevel[playerIndex] = unitLv
    else
        unitLv = oldLv
        hmsg.echo00(hplayer.players[playerIndex], "主塔天赋没有得到提升")
    end
    hskill.add(game.playerTower[playerIndex], game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    
    if (unitLv > 0) then
        local towerId = hunit.getId(game.playerTower[playerIndex])
        hattr.set(
            game.playerTower[playerIndex],
            0,
            {
                str_white = "+" .. math.floor(unitLv * 0.28 * hslk_global.unitsKV[towerId].STR),
                agi_white = "+" .. math.floor(unitLv * 0.28 * hslk_global.unitsKV[towerId].AGI),
                int_white = "+" .. math.floor(unitLv * 0.28 * hslk_global.unitsKV[towerId].INT),
                attack_white = "+" .. math.floor(unitLv * 0.35 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
            }
        )
    end
end
subTowerLinkLevel = function(playerIndex, targetLi)
    local oldLevel = game.playerTowerLink[playerIndex][targetLi].tower_level
    if (oldLevel ~= nil) then
        hskill.del(
            game.playerTowerLink[playerIndex][targetLi].unit,
            game.thisUnitLevelAbilities[oldLevel].ABILITY_ID,
            0
        )
        if (oldLevel > 0) then
            local towerId = hunit.getId(game.playerTowerLink[playerIndex][targetLi].unit)
            hattr.set(
                game.playerTowerLink[playerIndex][targetLi].unit,
                0,
                {
                    attack_white = "-" .. math.floor(oldLevel * 0.5 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
                }
            )
        end
    end
end
addTowerLinkLevel = function(playerIndex, targetLi, lockLv)
    local unitLv = 0
    if (lockLv ~= nil) then
        unitLv = lockLv
    else
        if (math.random(1, 5) == 1) then
            unitLv = 0
        elseif (math.random(1, 4) == 1) then
            unitLv = 1
        elseif (math.random(1, 3) == 1) then
            unitLv = 2
        elseif (math.random(1, 2) == 1) then
            unitLv = 3
        elseif (math.random(1, 2) == 1) then
            unitLv = 4
        else
            unitLv = 5
        end
    end
    local oldLv = game.playerTowerLink[playerIndex][targetLi].tower_level or -1
    if (lockLv == nil or unitLv > oldLv) then
        hmsg.echo00(hplayer.players[playerIndex], "辅塔天赋变为：" .. hColor.yellow(unitLv) .. "级")
        if (unitLv == 9) then
            hsound.sound2Player(cg.gg_snd_jsws, hplayer.players[playerIndex])
            hmsg.echo(
                hColor.sky("(>▽<)" .. cj.GetPlayerName(hplayer.players[playerIndex])) ..
                    "得到了" .. hColor.yellow(unitLv) .. "级天赋辅塔，大家祝贺TA！"
            )
        end
        game.playerTowerLink[playerIndex][targetLi].tower_level = unitLv
    else
        unitLv = oldLv
        hmsg.echo00(hplayer.players[playerIndex], "辅塔天赋没有得到提升")
    end
    hskill.add(game.playerTowerLink[playerIndex][targetLi].unit, game.thisUnitLevelAbilities[unitLv].ABILITY_ID, 0)
    
    if (unitLv > 0) then
        local towerId = hunit.getId(game.playerTowerLink[playerIndex][targetLi].unit)
        hattr.set(
            game.playerTowerLink[playerIndex][targetLi].unit,
            0,
            {
                attack_white = "+" .. math.floor(unitLv * 0.5 * hslk_global.unitsKV[towerId].ATTACK_WHITE)
            }
        )
    end
end
onTowerDead = function(evtData)
    local u = evtData.triggerUnit
    local index = hplayer.index(cj.GetOwningPlayer(u))
    hmark.create("war3mapImported\\mark_defeat.blp", 4.00, hplayer.players[index])
    hsound.sound(cg.gg_snd_tluo)
    hplayer.setStatus(hplayer.players[index], "战败")
    hplayer.clearUnit(hplayer.players[index])
    local czb =
        hunit.create(
        {
            register = false,
            whichPlayer = cj.GetOwningPlayer(u),
            unitId = game.couriersDefeat,
            x = game.towerPoint[index][1],
            y = game.towerPoint[index][2]
        }
    )
    
    MAYBE_AI.hammer(czb)
    
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
onTowerLinkSkillUesd = function(evtData)
    local u = evtData.triggerUnit
    local skillid = evtData.triggerSkill
    local abilitiesSLK = hslk_global.abilitiesKV[skillid]
    if (abilitiesSLK == nil) then
        return
    end
    local p = cj.GetOwningPlayer(u)
    local playerIndex = hplayer.index(p)
    if (abilitiesSLK.Name == "上场") then
        local linkIndex = hunit.getUserData(u)
        local linkTowerId = game.playerTowerLink[playerIndex][linkIndex].tower_id
        local linkTowerLevel = game.playerTowerLink[playerIndex][linkIndex].tower_level
        local currentTowerId = hunit.getId(game.playerTower[playerIndex])
        local currentTowerLevel = game.playerTowerLevel[playerIndex]
        game.playerTowerLevel[playerIndex] = linkTowerLevel
        game.playerTowerLink[playerIndex][linkIndex].tower_level = currentTowerLevel
        
        createMyTower(playerIndex, linkTowerId, linkTowerLevel)
        
        createMyTowerLink(playerIndex, linkIndex, currentTowerId, currentTowerLevel)
        
        addTowerSkillsRaceTeam(playerIndex)
        
        hmsg.echo00(p, hColor.yellow(hunit.getName(u)) .. "上场了！")
    end
end
addTowerSkillsRaceAbility = {}
addTowerSkillsRaceAttr = {}
addTowerSkillsRaceAttrPlayer = {}
handleTowerSkillsRaceAttr = function(old, new)
    if (new == nil) then
        return
    end
    local tempDiff = {
        add = {},
        sub = {}
    }
    local tempNew = {}
    for k, v in pairs(new) do
        if (k == "attack_damage_type") then
            if (#v > 0) then
                tempNew[k] = "+" .. string.implode(",", v)
                if (old ~= nil) then
                    if (old[k] == nil or #old[k] == 0) then
                        tempDiff.add[k] = "+" .. string.implode(",", v)
                    elseif (old[k] ~= v) then
                        tempDiff.sub[k] = "-" .. string.implode(",", old[k])
                        tempDiff.add[k] = "+" .. string.implode(",", v)
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and #old[k] > 0) then
                        tempDiff.sub[k] = "-" .. string.implode(",", old[k])
                    end
                end
            end
        elseif (k == "attack_debuff" or k == "attack_effect") then
            if (#v > 0) then
                tempNew[k] = {add = v}
                if (old ~= nil) then
                    if (old[k] == nil or #old[k] == 0) then
                        tempDiff.add[k] = {add = v}
                    elseif (old[k] ~= v) then
                        tempDiff.sub[k] = {sub = old[k]}
                        tempDiff.add[k] = {add = v}
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and #old[k] > 0) then
                        tempDiff.sub[k] = {sub = old[k]}
                    end
                end
            end
        else
            if (v > 0) then
                tempNew[k] = "+" .. v
                if (old ~= nil) then
                    if (old[k] == nil) then
                        tempDiff.add[k] = "+" .. v
                    elseif (old[k] ~= v) then
                        v = v - old[k]
                        if (v > 0) then
                            tempDiff.add[k] = "+" .. v
                        else
                            tempDiff.sub[k] = "-" .. math.abs(v)
                        end
                    end
                end
            else
                if (old ~= nil) then
                    if (old[k] ~= nil and old[k] ~= 0) then
                        tempDiff.sub[k] = "-" .. old[k]
                    end
                end
            end
        end
    end
    return {
        diff = tempDiff,
        new = tempNew
    }
end
addTowerSkillsRaceSingleAttr = function(u)
    local currentId = hunit.getId(u)
    local slk = hslk_global.unitsKV[currentId]
    if (slk == nil) then
        return
    end
    local race = slk.RACE
    if (race == "人类") then
        local val = 0.03
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人杰") then
        local val = 0.04
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人王") then
        local val = 0.05
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "矮人") then
        hattr.set(
            u,
            0,
            {
                aim = "+40"
            }
        )
    elseif (race == "血精灵") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "violence",
                            odds = 15,
                            percent = 12
                        }
                    }
                }
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.075 * slk.ATTACK_WHITE)
            }
        )
    elseif (race == "巨魔") then
        hattr.set(
            u,
            0,
            {
                attack_speed = "+10"
            }
        )
    elseif (race == "牛头人") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "knocking",
                            odds = 10,
                            percent = 25
                        }
                    }
                }
            }
        )
    elseif (race == "暗夜精灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dark"
            }
        )
    elseif (race == "德鲁伊") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+wood"
            }
        )
    elseif (race == "亡灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ice",
                attack_debuff = {
                    add = {
                        {
                            attr = "move",
                            odds = 100,
                            val = 30,
                            during = 3.0,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    }
                }
            }
        )
    elseif (race == "娜迦") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+water",
                natural_fire_oppose = "+30"
            }
        )
    elseif (race == "元素") then
        local vv = "+10"
        hattr.set(
            u,
            0,
            {
                natural_fire_oppose = vv,
                natural_soil_oppose = vv,
                natural_water_oppose = vv,
                natural_ice_oppose = vv,
                natural_wind_oppose = vv,
                natural_light_oppose = vv,
                natural_dark_oppose = vv,
                natural_wood_oppose = vv,
                natural_thunder_oppose = vv,
                natural_poison_oppose = vv,
                natural_ghost_oppose = vv,
                natural_metal_oppose = vv,
                natural_dragon_oppose = vv,
                natural_insect_oppose = vv,
                natural_god_oppose = vv
            }
        )
    elseif (race == "恶魔") then
        hattr.set(
            u,
            0,
            {
                damage_extent = "+6.66",
                attack_speed = "+6.66",
                natural_god_oppose = "-66.66"
            }
        )
    elseif (race == "神族") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+god"
            }
        )
    elseif (race == "昆虫") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+insect"
            }
        )
    elseif (race == "异兽") then
        hattr.set(
            u,
            0,
            {
                resistance = "+15",
                toughness = "+1000"
            }
        )
    elseif (race == "幽魂") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ghost"
            }
        )
    elseif (race == "食人魔") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {attr = "swim", odds = 10, val = 0, during = 0.3}
                    }
                }
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_green = "+" .. (0.15 * slk.INT)
            }
        )
    elseif (race == "龙人") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dragon"
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                life_back = "+0.5",
                str_green = "+" .. (0.08 * slk.STR)
            }
        )
    end
end
addTowerSkillsRaceTeam = function(playerIndex)
    local towers = {
        game.playerTower[playerIndex]
    }
    for i = 1, 4 do
        if
            (game.playerTowerLink[playerIndex] ~= nil and game.playerTowerLink[playerIndex][i] ~= nil and
                game.playerTowerLink[playerIndex][i].tower_level ~= nil)
         then
            table.insert(towers, game.playerTowerLink[playerIndex][i].unit)
        end
    end
    local qtys = {}
    local races = {}
    local attr = {
        life = 0,
        attack_green = 0,
        attack_speed = 0,
        aim = 0,
        defend = 0,
        resistance = 0,
        toughness = 0,
        avoid = 0,
        damage_extent = 0,
        natural_dark = 0,
        natural_god = 0,
        natural_fire_oppose = 0,
        natural_soil_oppose = 0,
        natural_water_oppose = 0,
        natural_ice_oppose = 0,
        natural_wind_oppose = 0,
        natural_light_oppose = 0,
        natural_dark_oppose = 0,
        natural_wood_oppose = 0,
        natural_thunder_oppose = 0,
        natural_poison_oppose = 0,
        natural_ghost_oppose = 0,
        natural_metal_oppose = 0,
        natural_dragon_oppose = 0,
        natural_insect_oppose = 0,
        natural_god_oppose = 0,
        attack_damage_type = {},
        attack_debuff = {},
        attack_effect = {}
    }
    local attrPlayer = {
        gold_ratio = 0,
        exp_ratio = 0
    }
    for k, v in pairs(towers) do
        local cid = hunit.getId(v)
        local r = hslk_global.unitsKV[cid].RACE
        if (r ~= nil) then
            if (qtys[r] == nil) then
                qtys[r] = 0
            end
            qtys[r] = qtys[r] + 1
            
            if (r == "人杰") then
                if (qtys["人类"] == nil) then
                    qtys["人类"] = 0
                end
                qtys["人类"] = qtys["人类"] + 1
            elseif (r == "人王") then
                if (qtys["人类"] == nil) then
                    qtys["人类"] = 0
                end
                if (qtys["人杰"] == nil) then
                    qtys["人杰"] = 0
                end
                qtys["人类"] = qtys["人类"] + 1
                qtys["人杰"] = qtys["人杰"] + 1
            end
            races[v] = r
            if (r == "人类") then
                if (qtys[r] == 2) then
                    attr.defend = attr.defend + 10
                elseif (qtys[r] == 3) then
                    attr.defend = attr.defend + 25
                elseif (qtys[r] == 4) then
                    attr.defend = attr.defend + 40
                elseif (qtys[r] == 5) then
                    attr.defend = attr.defend + 75
                end
            elseif (r == "人杰") then
                if (qtys[r] == 2) then
                    attr.defend = attr.defend + 100
                elseif (qtys[r] == 4) then
                    attr.attack_green = attr.attack_green + 1000
                end
            elseif (r == "人王") then
                if (qtys[r] == 2) then
                    attr.defend = attr.defend + 250
                    attr.attack_green = attr.attack_green + 2500
                end
            elseif (r == "矮人") then
                if (qtys[r] == 1) then
                    attrPlayer.exp_ratio = attrPlayer.exp_ratio + 5
                elseif (qtys[r] == 2) then
                    attrPlayer.exp_ratio = attrPlayer.exp_ratio + 7
                elseif (qtys[r] == 4) then
                    attrPlayer.exp_ratio = attrPlayer.exp_ratio + 11
                end
            elseif (r == "血精灵") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "violence",
                            odds = 15,
                            percent = 18
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "violence",
                            odds = 20,
                            percent = 25
                        }
                    )
                elseif (qtys[r] == 5) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "violence",
                            odds = 20,
                            percent = 40
                        }
                    )
                end
            elseif (r == "兽人") then
                if (qtys[r] == 2) then
                    attr.attack_green = attr.attack_green + 40
                elseif (qtys[r] == 3) then
                    attr.attack_green = attr.attack_green + 65
                elseif (qtys[r] == 4) then
                    attr.attack_green = attr.attack_green + 125
                elseif (qtys[r] == 5) then
                    attr.attack_green = attr.attack_green + 325
                    table.insert(attr.attack_damage_type, "fire")
                end
            elseif (r == "巨魔") then
                if (qtys[r] == 2) then
                    attr.attack_speed = attr.attack_speed + 10
                elseif (qtys[r] == 3) then
                    attr.attack_speed = attr.attack_speed + 13
                elseif (qtys[r] == 4) then
                    attr.attack_speed = attr.attack_speed + 16
                elseif (qtys[r] == 5) then
                    attr.attack_speed = attr.attack_speed + 21
                end
            elseif (r == "牛头人") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 8,
                            percent = 13
                        }
                    )
                elseif (qtys[r] == 3) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 11,
                            percent = 16
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 14,
                            percent = 19
                        }
                    )
                elseif (qtys[r] == 5) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "knocking",
                            odds = 25,
                            percent = 25
                        }
                    )
                end
            elseif (r == "暗夜精灵") then
                if (qtys[r] == 2) then
                    attr.natural_dark = attr.natural_dark + 16
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "dark")
                end
            elseif (r == "德鲁伊") then
                if (qtys[r] == 2) then
                    attr.attack_speed = attr.attack_speed + 25
                elseif (qtys[r] == 4) then
                    attr.attack_speed = attr.attack_speed + 40
                    attr.natural_wind_oppose = attr.natural_wind_oppose + 50
                end
            elseif (r == "亡灵") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_debuff,
                        {
                            attr = "move",
                            odds = 100,
                            val = 4,
                            during = 2.5,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    )
                elseif (qtys[r] == 3) then
                    table.insert(
                        attr.attack_debuff,
                        {
                            attr = "move",
                            odds = 100,
                            val = 5,
                            during = 3,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(attr.attack_damage_type, "wind")
                end
            elseif (r == "娜迦") then
                if (qtys[r] == 1) then
                    attr.natural_water_oppose = attr.natural_water_oppose + 7
                    attr.natural_ice_oppose = attr.natural_ice_oppose + 7
                elseif (qtys[r] == 3) then
                    attr.natural_water_oppose = attr.natural_water_oppose + 13
                    attr.natural_ice_oppose = attr.natural_ice_oppose + 13
                elseif (qtys[r] == 4) then
                    attr.natural_water_oppose = attr.natural_water_oppose + 25
                    attr.natural_ice_oppose = attr.natural_ice_oppose + 25
                end
            elseif (r == "元素") then
                if (qtys[r] == 5) then
                    local vv = 10
                    attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                    attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                    attr.natural_water_oppose = attr.natural_water_oppose + vv
                    attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                    attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                    attr.natural_light_oppose = attr.natural_light_oppose + vv
                    attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                    attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                    attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                    attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                    attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                    attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                    attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                    attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                    attr.natural_god_oppose = attr.natural_god_oppose + vv
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "dark")
                    table.insert(attr.attack_damage_type, "light")
                elseif (qtys[r] == 4) then
                    table.insert(attr.attack_damage_type, "fire")
                    table.insert(attr.attack_damage_type, "soil")
                elseif (qtys[r] == 5) then
                    local vv = 28
                    attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                    attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                    attr.natural_water_oppose = attr.natural_water_oppose + vv
                    attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                    attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                    attr.natural_light_oppose = attr.natural_light_oppose + vv
                    attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                    attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                    attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                    attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                    attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                    attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                    attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                    attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                    attr.natural_god_oppose = attr.natural_god_oppose + vv
                end
            elseif (r == "恶魔") then
                if (qtys[r] == 1) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 2) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 3) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 4) then
                    attr.damage_extent = attr.damage_extent + 6.66
                elseif (qtys[r] == 5) then
                    attr.damage_extent = attr.damage_extent + 6.66
                end
            elseif (r == "神族") then
                if (qtys[r] == 1) then
                    attr.attack_speed = attr.attack_speed + 30
                elseif (qtys[r] == 2) then
                    attr.natural_god = attr.natural_god + 30
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "god")
                end
            elseif (r == "昆虫") then
                if (qtys[r] == 1) then
                    attr.defend = attr.defend + 50
                elseif (qtys[r] == 2) then
                    attr.resistance = attr.resistance + 30
                elseif (qtys[r] == 3) then
                    attr.toughness = attr.toughness + 3000
                end
            elseif (r == "异兽") then
                if (qtys[r] == 2) then
                    attr.toughness = "+1000"
                elseif (qtys[r] == 3) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "split",
                            odds = 100,
                            range = 400,
                            percent = 10
                        }
                    )
                elseif (qtys[r] == 4) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "split",
                            odds = 100,
                            range = 500,
                            percent = 10
                        }
                    )
                end
            elseif (r == "幽魂") then
                if (qtys[r] == 2) then
                    attr.avoid = attr.avoid + 10
                elseif (qtys[r] == 2) then
                    attr.avoid = attr.avoid + 20
                elseif (qtys[r] == 3) then
                    attr.avoid = attr.avoid + 25
                end
            elseif (r == "食人魔") then
                if (qtys[r] == 2) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "swim",
                            odds = 10,
                            during = 0.75
                        }
                    )
                elseif (qtys[r] == 5) then
                    table.insert(
                        attr.attack_effect,
                        {
                            attr = "swim",
                            odds = 20,
                            during = 1.25
                        }
                    )
                end
            elseif (r == "地精") then
                if (qtys[r] == 1) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 7
                elseif (qtys[r] == 2) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 10
                elseif (qtys[r] == 3) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 13
                elseif (qtys[r] == 4) then
                    attrPlayer.gold_ratio = attrPlayer.gold_ratio + 15
                end
            elseif (r == "龙人") then
                if (qtys[r] == 1) then
                    attr.attack_green = attr.attack_green + 1200
                elseif (qtys[r] == 2) then
                    table.insert(attr.attack_damage_type, "thunder")
                elseif (qtys[r] == 3) then
                    table.insert(attr.attack_damage_type, "wind")
                end
            elseif (r == "熊猫") then
                if (qtys[r] == 1) then
                    attr.life = attr.life + 2500
                elseif (qtys[r] == 2) then
                    attr.life = attr.life + 5000
                elseif (qtys[r] == 3) then
                    attr.life = attr.life + 15000
                elseif (qtys[r] == 4) then
                    attr.life = attr.life + 30000
                end
            end
        end
    end
    if (addTowerSkillsRaceAttr[playerIndex] == nil) then
        addTowerSkillsRaceAttr[playerIndex] = {}
        addTowerSkillsRaceAttrPlayer[playerIndex] = {}
    else
        
        if (addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio > 0) then
            hplayer.subGoldRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio, 0)
        end
        if (addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio > 0) then
            hplayer.subExpRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio, 0)
        end
    end
    
    local mixAttrs = handleTowerSkillsRaceAttr(addTowerSkillsRaceAttr[playerIndex], attr)
    
    addTowerSkillsRaceAttr[playerIndex] = attr
    addTowerSkillsRaceAttrPlayer[playerIndex] = attrPlayer
    attr = nil
    attrPlayer = nil
    
    if (addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio > 0) then
        hplayer.addGoldRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio, 0)
    end
    if (addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio > 0) then
        hplayer.addExpRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio, 0)
    end
    if (addTowerSkillsRaceAbility[playerIndex] == nil) then
        addTowerSkillsRaceAbility[playerIndex] = {}
    end
    for k, v in pairs(towers) do
        if (addTowerSkillsRaceAbility[playerIndex][k] ~= nil) then
            hskill.del(v, addTowerSkillsRaceAbility[playerIndex][k], 0)
        end
        local index = races[v] .. qtys[races[v]]
        addTowerSkillsRaceAbility[playerIndex][k] = game.thisUnitRaceAbilities[index].ABILITY_ID
        hskill.add(v, addTowerSkillsRaceAbility[playerIndex][k], 0)
        if (hRuntime.unit[v] == nil) then
            hRuntime.unit[v] = {}
        end
        if (hRuntime.unit[v]["raceTeamInit"] == nil) then
            hRuntime.unit[v]["raceTeamInit"] = 1
            if (mixAttrs.new ~= nil) then
                if (his.alive(v)) then
                    hattr.set(v, 0, mixAttrs.new)
                end
            end
        else
            if (mixAttrs.diff.add ~= nil) then
                if (his.alive(v)) then
                    hattr.set(v, 0, mixAttrs.diff.add)
                end
            end
            if (mixAttrs.diff.sub ~= nil) then
                if (his.alive(v)) then
                    hattr.set(v, 0, mixAttrs.diff.sub)
                end
            end
        end
    end
    races = nil
end
addTowerSkillsx = function(u)
    for k, v in ipairs(game.towersOriginSkill) do
        local abid = v.ABILITY_ID
        if (abid ~= nil and v.Val ~= nil) then
            local Val = v.Val
            if (hskill.has(u, abid)) then
                local name = v.Name
                if (name == "突击匕首" or name == "月神强击" or name == "魔力之源" or name == "屠龙刀" or name == "利爪") then
                    hattr.set(u, 0, {attack_green = "+" .. Val[1]})
                elseif
                    (name == "巾帼" or name == "剑圣" or name == "气定神闲" or name == "风风拳" or name == "牙牙拳" or name == "电激穴道" or
                        name == "加速")
                 then
                    hattr.set(u, 0, {attack_speed = "+" .. Val[1]})
                elseif (name == "皮糙" or name == "肉厚") then
                    hattr.set(u, 0, {life = "+" .. Val[1]})
                elseif (name == "治疗" or name == "精灵守护") then
                    hattr.set(u, 0, {life_back = "+" .. Val[1]})
                elseif
                    (name == "铁壁" or name == "金甲" or name == "矮人之盾" or name == "捍卫守护" or name == "铁石心肠" or
                        name == "坚硬外皮")
                 then
                    hattr.set(u, 0, {defend = "+" .. Val[1]})
                elseif (name == "国王") then
                    hattr.set(u, 0, {defend = "+" .. Val[1], resistance = "+" .. Val[2]})
                elseif
                    (name == "远古身躯" or name == "牛头人" or name == "重拳出击" or name == "骑士精神" or name == "威武体魄" or
                        name == "落难领袖" or
                        name == "汇聚" or
                        name == "浪涛之力")
                 then
                    hattr.set(u, 0, {str_green = "+" .. Val[1]})
                elseif
                    (name == "蛇皮" or name == "修仙之体" or name == "恶魔之躯" or name == "魔爪" or name == "聚气" or name == "海浪之形")
                 then
                    hattr.set(u, 0, {agi_green = "+" .. Val[1]})
                elseif (name == "冥想" or name == "大智慧" or name == "三千年智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1]})
                elseif (name == "六刃智慧") then
                    hattr.set(u, 0, {int_green = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (name == "古代帝王") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1], agi_green = "+" .. Val[2], int_green = "+" .. Val[3]})
                elseif (name == "塞壬之歌" or name == "甲虫之盔" or name == "洁白无瑕") then
                    hattr.set(u, 0, {resistance = "+" .. Val[1]})
                elseif (name == "石像化" or name == "腰马合一" or name == "折磨耐性") then
                    hattr.set(u, 0, {toughness = "+" .. Val[1]})
                elseif (name == "黑暗舞步" or name == "恶灵披风" or name == "猎影" or name == "虚幻" or name == "无欲无求") then
                    hattr.set(u, 0, {avoid = "+" .. Val[1]})
                elseif (name == "影子替身") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+magic",
                            avoid = "+" .. Val[1]
                        }
                    )
                elseif (name == "猫头鹰怒视" or name == "捕猎者") then
                    hattr.set(u, 0, {aim = "+" .. Val[1]})
                elseif (name == "激灵一箭") then
                    hattr.set(u, 0, {aim = "+" .. Val[1], attack_green = "+" .. Val[2]})
                elseif (name == "鸦仇") then
                    hattr.set(u, 0, {aim = "+" .. Val[1], attack_speed = "+" .. Val[2]})
                elseif (name == "恶魔巫术" or name == "剃骨之刃") then
                    hattr.set(u, 0, {damage_extent = "+" .. Val[1]})
                elseif (name == "野生龙种" or name == "龙骑士") then
                    hattr.set(u, 0, {attack_damage_type = "+dragon"})
                elseif (name == "树木之妖") then
                    hattr.set(u, 0, {attack_damage_type = "+wood"})
                elseif (name == "山岭之灵") then
                    hattr.set(u, 0, {attack_damage_type = "+soil"})
                elseif (name == "水之元素") then
                    hattr.set(u, 0, {attack_damage_type = "+water"})
                elseif (name == "火之元素") then
                    hattr.set(u, 0, {attack_damage_type = "+fire"})
                elseif (name == "随风" or name == "追风") then
                    hattr.set(u, 0, {attack_damage_type = "+wind"})
                elseif (name == "毒龙液") then
                    hattr.set(u, 0, {attack_damage_type = "+poison"})
                elseif (name == "金属元素") then
                    hattr.set(u, 0, {attack_damage_type = "+metal"})
                elseif (name == "战鬼" or name == "魂鬼" or name == "幽鬼灯火") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost"})
                elseif (name == "冰魂") then
                    hattr.set(u, 0, {attack_damage_type = "+ice"})
                elseif (name == "绘画之妙") then
                    hattr.set(u, 0, {attack_damage_type = "+light,dark"})
                elseif (name == "冥王之剑") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,dark,metal"})
                elseif (name == "千年龙骨") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,ice"})
                elseif (name == "神赐之力") then
                    hattr.set(u, 0, {attack_damage_type = "+god,light"})
                elseif (name == "金睛火眼") then
                    hattr.set(u, 0, {attack_damage_type = "+fire,metal"})
                elseif (name == "霹雳化身" or name == "电离之子") then
                    hattr.set(u, 0, {attack_damage_type = "+thunder", attack_speed = "+" .. Val[1]})
                elseif (name == "噬日") then
                    hattr.set(u, 0, {attack_damage_type = "+dark", natural_dark = "+" .. Val[1]})
                elseif (name == "魂丧双鬼") then
                    hattr.set(u, 0, {attack_damage_type = "+ghost,dark", attack_green = "+" .. Val[1]})
                elseif (name == "冰雪之殇") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+ice",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "move",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "十月冰封") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "move",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[3],
                                        effect = "Abilities\\Spells\\Undead\\FreezingBreath\\FreezingBreathTargetArt.mdl"
                                    },
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[2],
                                        during = Val[3]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "爱的火种" or name == "火焰之剑") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+fire",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "life_back",
                                        odds = Val[1],
                                        val = Val[2],
                                        during = Val[3],
                                        effect = Val[4]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "水刀") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+water",
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2],
                                        effect = "war3mapImported\\eff_WaterBlast.mdl"
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "海洋之心" or name == "深海之心") then
                    hattr.set(u, 0, {natural_water = "+" .. Val[1]})
                elseif (name == "暗夜之魂" or name == "暗神之魂") then
                    hattr.set(u, 0, {natural_dark = "+" .. Val[1]})
                elseif (name == "大地种子") then
                    hattr.set(u, 0, {natural_wood = "+" .. Val[1]})
                elseif (name == "神启") then
                    hattr.set(u, 0, {natural_god = "+" .. Val[1]})
                elseif (name == "海妖特质") then
                    hattr.set(u, 0, {natural_water_oppose = "+" .. Val[1]})
                elseif (name == "巫术" or name == "中和") then
                    hattr.set(u, 0, {natural_poison_oppose = "+" .. Val[1]})
                elseif (name == "屠龙勇士") then
                    hattr.set(u, 0, {natural_dragon_oppose = "+" .. Val[1]})
                elseif (name == "吞光") then
                    hattr.set(u, 0, {natural_dark_oppose = "+" .. Val[1]})
                elseif (name == "诡秘空间") then
                    hattr.set(
                        u,
                        0,
                        {
                            natural_fire_oppose = "+" .. Val[1],
                            natural_soil_oppose = "+" .. Val[1],
                            natural_water_oppose = "+" .. Val[1],
                            natural_ice_oppose = "+" .. Val[1],
                            natural_wind_oppose = "+" .. Val[1],
                            natural_light_oppose = "+" .. Val[1],
                            natural_dark_oppose = "+" .. Val[1],
                            natural_wood_oppose = "+" .. Val[1],
                            natural_thunder_oppose = "+" .. Val[1],
                            natural_poison_oppose = "+" .. Val[1],
                            natural_ghost_oppose = "+" .. Val[1],
                            natural_metal_oppose = "+" .. Val[1],
                            natural_dragon_oppose = "+" .. Val[1],
                            natural_insect_oppose = "+" .. Val[1],
                            natural_god_oppose = "+" .. Val[1]
                        }
                    )
                elseif (name == "反抗神命") then
                    hattr.set(u, 0, {attack_damage_type = "+absolute", natural_god_oppose = "+" .. Val[1]})
                elseif (name == "针刺外壳") then
                    hattr.set(u, 0, {damage_rebound = "+" .. Val[1]})
                elseif (name == "机械之心") then
                    hattr.set(u, 0, {str_green = "+" .. Val[1], agi_green = "+" .. Val[2], defend = "+" .. Val[3]})
                end
                if (name == "深渊之刃") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+dark",
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "小牛粉碎" or name == "分裂大刀" or name == "分裂狂刀") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "split",
                                        odds = 100,
                                        range = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif
                    (name == "熊掌战意" or name == "马索格爆锤" or name == "致命剑术" or name == "恩赐解脱" or name == "爆头" or
                        name == "刺客信条" or
                        name == "醉拳" or
                        name == "短棘戟" or
                        name == "长棘戟")
                 then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "knocking",
                                        odds = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                elseif (name == "法术研究" or name == "图腾祭奠") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "violence",
                                        odds = Val[1],
                                        percent = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "黑暗之箭" or name == "黑夜之箭" or name == "黑狱之箭") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+dark",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "透彻寒骨" or name == "冰晶") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_damage_type = "+ice",
                            attack_debuff = {
                                add = {
                                    {
                                        attr = "defend",
                                        odds = 100,
                                        val = Val[1],
                                        during = Val[2]
                                    }
                                }
                            }
                        }
                    )
                end
                if
                    (table.includes(
                        name,
                        {
                            
                            "追魂狩猎",
                            "狂魂狩猎",
                            "狂魂骑猎",
                            "噬魂",
                            
                            "狂战士之血",
                            "鬼枪术"
                        }
                    ))
                 then
                    local a
                    if (name == "追魂狩猎" or name == "狂魂狩猎" or name == "狂魂骑猎" or name == "噬魂") then
                        a = "attack_green"
                    elseif (name == "狂战士之血" or name == "鬼枪术") then
                        a = "attack_speed"
                    end
                    if (a ~= nil) then
                        hattr.set(
                            u,
                            0,
                            {
                                attack_buff = {
                                    add = {
                                        {
                                            attr = a,
                                            odds = Val[1],
                                            val = Val[2],
                                            during = Val[3],
                                            effect = Val[4]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
                if
                    (table.includes(
                        name,
                        {
                            
                            "净化",
                            "灵魂净化",
                            
                            "蛊毒",
                            "蛛毒",
                            "腐尸毒",
                            "燃油烧弹",
                            "奇美拉毒液",
                            "蛙毒",
                            "剧毒虾皮细胞",
                            "三昧真火",
                            "撕咬",
                            "无声的死亡旋律",
                            
                            "鬼歌"
                        }
                    ))
                 then
                    local a
                    if (name == "净化" or name == "灵魂净化") then
                        a = "move"
                    elseif
                        (name == "蛊毒" or name == "蛛毒" or name == "腐尸毒" or name == "燃油烧弹" or name == "奇美拉毒液" or
                            name == "蛙毒" or
                            name == "外界毒虫" or
                            name == "剧毒虾皮细胞" or
                            name == "三昧真火" or
                            name == "撕咬" or
                            name == "无声的死亡旋律")
                     then
                        a = "life_back"
                    elseif (name == "鬼歌") then
                        a = "defend"
                    end
                    if (name == "蛙毒" or name == "外界毒虫") then
                        hattr.set(u, 0, {attack_damage_type = "+poison"})
                    end
                    if (a ~= nil) then
                        hattr.set(
                            u,
                            0,
                            {
                                attack_debuff = {
                                    add = {
                                        {
                                            attr = a,
                                            odds = Val[1],
                                            val = Val[2],
                                            during = Val[3],
                                            effect = Val[4]
                                        }
                                    }
                                }
                            }
                        )
                    end
                end
                if
                    (name == "震荡光弹" or name == "暴力倾向" or name == "旋风" or name == "魅惑" or name == "撸战棍" or name == "恍惚灯路" or
                        name == "晴天霹雳" or
                        name == "沉痛打击" or
                        name == "深情一吻")
                 then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "swim",
                                        odds = Val[1],
                                        val = Val[2],
                                        during = Val[3],
                                        effect = Val[4]
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "诡异闪电" or name == "狂异闪电" or name == "狂徒闪电" or name == "痛苦链" or name == "神灭斩") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "lightning_chain",
                                        lightning_type = hlightning.type.si_wang_zhi_zhi,
                                        odds = Val[1],
                                        val = Val[2],
                                        qty = 1,
                                        effect = "Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl"
                                    }
                                }
                            }
                        }
                    )
                end
                if (name == "风暴之锤" or name == "离火之锤" or name == "闪电雷霆" or name == "闪电连链" or name == "誓神劈愿") then
                    hattr.set(
                        u,
                        0,
                        {
                            attack_effect = {
                                add = {
                                    {
                                        attr = "lightning_chain",
                                        odds = Val[1],
                                        qty = Val[2],
                                        val = Val[3],
                                        effect = "Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl"
                                    }
                                }
                            }
                        }
                    )
                end
            end
        end
    end
end
enemyBeDamage = function(evtData)
    local u = evtData.triggerUnit
    if (his.alive(u) and cj.GetRandomInt(1, 10) == 5) then
        htextTag.style(
            htextTag.create2Unit(u, game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)], 10.00, "", 1, 1.1, 11.00),
            "scale",
            cj.GetRandomReal(-0.05, 0.05),
            0
        )
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        if (game.rule.cur == "hz") then
            hattr.set(
                u,
                2.50,
                {
                    move = "+" .. math.random(50, 100)
                }
            )
        end
    end
end
towerShadowTtgCount = 1
towerShadowTtg = function(u, string)
    htextTag.style(
        htextTag.create2Unit(u, string, 6.9 + onTowerAttackTtgCount * 0.1, "FFFF00", 1, 2, 10),
        "scale",
        0,
        towerShadowTtgCount * 0.05
    )
    towerShadowTtgCount = towerShadowTtgCount + 1
    htime.setTimeout(
        2,
        function(t)
            htime.delTimer(t)
            towerShadowTtgCount = towerShadowTtgCount - 1
        end
    )
end
towerShadowBeDamage = function(evtData)
    local u = evtData.triggerUnit
    local sourceUnit = evtData.sourceUnit
    local playerIndex = hunit.getUserData(u)
    local shadow = game.playerTower[playerIndex]
    local hasShadowCloatItem = false
    for _, sctId in ipairs(game.thisShadowCloatItems) do
        if (his.ownItem(shadow, sctId) == true) then
            hasShadowCloatItem = true
            break
        end
    end
    if (hasShadowCloatItem == true and math.random(1, 10) == 4) then
        towerShadowTtg(u, "影子风衣")
        hskill.invisible(u, 2)
    end
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(shadow, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            local val = v.Val
            level = level * 2 - 1
            if (Name ~= nil) then
                if (Name == "恶心粘液") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        sourceUnit,
                        5,
                        {
                            attack_speed = "-" .. val[1] * level
                        }
                    )
                end
                if (Name == "降格打击") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        sourceUnit,
                        6,
                        {
                            str_green = "-" .. val[1] * level,
                            agi_green = "-" .. val[1] * level,
                            int_green = "-" .. val[1] * level
                        }
                    )
                end
                if (Name == "变相移动") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        4,
                        {
                            move = "+" .. val[1] * level
                        }
                    )
                end
                if (Name == "钢铁身躯") then
                    towerShadowTtg(u, Name)
                    hattr.set(
                        u,
                        6,
                        {
                            defend = "+" .. val[1] * level
                        }
                    )
                end
                if (Name == "回音击" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.swim(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * val[1]
                        }
                    )
                end
                if (Name == "寂静督视" and math.random(1, 5) == 3) then
                    towerShadowTtg(u, Name)
                    hskill.unarm(
                        {
                            odds = 100,
                            whichUnit = sourceUnit,
                            during = level * val[1]
                        }
                    )
                end
                if (Name == "巫术") then
                    if (math.random(1, 100) <= val[2]) then
                        towerShadowTtg(u, Name)
                        hskill.invulnerable(u, val[3], "Abilities\\Spells\\Orc\\Voodoo\\VoodooAura.mdl")
                    end
                end
                if (Name == "不朽传说") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hskill.invulnerable(u, val[2], "Abilities\\Spells\\Demon\\ReviveDemon\\ReviveDemon.mdl")
                    end
                end
                if (Name == "回光返照" or Name == "自然之力") then
                    if (hunit.getCurLifePercent(u) < 75) then
                        towerShadowTtg(u, Name)
                        hattr.set(u, val[2], { life_back = val[1] })
                    end
                end
                if (Name == "逃命" or Name == "着草" or Name == "加速") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hattr.set(
                            u,
                            val[3],
                            {
                                move = "+" .. val[2]
                            }
                        )
                    end
                end
                if (Name == "潜行" or Name == "隐术") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hskill.invisible(u, val[2])
                    end
                end
                if (Name == "复命" or Name == "涅槃") then
                    if (math.random(1, 100) <= val[1]) then
                        towerShadowTtg(u, Name)
                        hunit.addCurLife(u, val[2])
                    end
                end
            end
        end
    end
end
towerShadowDead = function(evtData)
    local shadow = evtData.triggerUnit
    local killer = evtData.killer
    local shadowName = hunit.getName(shadow)
    local shadowPName = cj.GetPlayerName(hplayer.players[hunit.getUserData(shadow)])
    if (killer ~= nil) then
        local killerPlayer = cj.GetOwningPlayer(killer)
        local killerName = cj.GetPlayerName(killerPlayer)
        if (shadowPName ~= nil and shadowName ~= nil and killerName ~= nil) then
            hmsg.echo(
                hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被" .. hColor.green(killerName) .. "干掉了~"
            )
        end
        local gold = 50 * game.rule.dk.wave[hplayer.index(killerPlayer)]
        hplayer.addGold(killerPlayer, gold, killer)
    else
        if (shadowPName ~= nil and shadowName ~= nil) then
            hmsg.echo(hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被干掉了~")
        end
    end
    hunit.del(shadow, 3)
    
    local playerIndex = hunit.getUserData(shadow)
    local tower = game.playerTower[playerIndex]
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(tower, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            local val = v.Val or {}
            if (Name ~= nil) then
                if (Name == "复仇" and killer ~= nil) then
                    local p = cj.GetOwningPlayer(killer)
                    local pindex = hplayer.index(p)
                    local killerName = cj.GetPlayerName(p)
                    local blood = level * val[1]
                    if (shadowPName ~= nil and shadowName ~= nil) then
                        hmsg.echo(
                            hColor.green(shadowPName) ..
                                "的" ..
                                    hColor.yellow(shadowName) ..
                                        "对" .. hColor.sky(killerName) .. "施展了复仇扣了" .. hColor.red(blood) .. "点血"
                        )
                    end
                    hunit.subCurLife(game.playerTower[pindex], blood)
                end
            end
        end
    end
end
towerShadowGen = function(playerIndex)
    local tower = game.playerTower[playerIndex]
    local tid = hunit.getId(tower)
    local next = getNextRect(playerIndex)
    if (next == -1) then
        return
    end
    if (game.towersShadow[tid] == nil) then
        return
    end
    local u =
        henemy.create(
        {
            unitId = game.towersShadow[tid].UNIT_ID,
            qty = 1,
            x = game.pathPoint[next][1][1],
            y = game.pathPoint[next][1][2],
            modelScale = 1.9,
            facing = playerIndex * -90 + 180
        }
    )
    cj.IssuePointOrderById(u, 851986, game.pathPoint[next][2][1], game.pathPoint[next][2][2])
    cj.SetUnitPathing(u, false)
    hskill.add(u, game.effectModel["影子兵塔特效"].ABILITY_ID, 0)
    hunit.setColor(u, playerIndex)
    hattr.set(
        u,
        0,
        {
            move = "=" .. (180 + 2 * htime.min),
            life = "=" .. hattr.get(tower, "life"),
            life_back = "=" .. hattr.get(tower, "life_back"),
            defend = "=" .. hattr.get(tower, "defend"),
            resistance = "=" .. hattr.get(tower, "resistance"),
            toughness = "=" .. hattr.get(tower, "toughness"),
            avoid = "=" .. hattr.get(tower, "avoid"),
            damage_rebound = "=" .. hattr.get(tower, "damage_rebound"),
            knocking_oppose = "=" .. hattr.get(tower, "knocking_oppose"),
            violence_oppose = "=" .. hattr.get(tower, "violence_oppose"),
            hemophagia_oppose = "=" .. hattr.get(tower, "hemophagia_oppose"),
            hemophagia_skill_oppose = "=" .. hattr.get(tower, "hemophagia_skill_oppose"),
            swim_oppose = "=" .. hattr.get(tower, "swim_oppose"),
            broken_oppose = "=" .. hattr.get(tower, "broken_oppose"),
            silent_oppose = "=" .. hattr.get(tower, "silent_oppose"),
            unarm_oppose = "=" .. hattr.get(tower, "unarm_oppose"),
            fetter_oppose = "=" .. hattr.get(tower, "fetter_oppose"),
            bomb_oppose = "=" .. hattr.get(tower, "bomb_oppose"),
            lightning_chain_oppose = "=" .. hattr.get(tower, "lightning_chain_oppose"),
            natural_fire_oppose = "=" .. hattr.get(tower, "natural_fire_oppose"),
            natural_soil_oppose = "=" .. hattr.get(tower, "natural_soil_oppose"),
            natural_water_oppose = "=" .. hattr.get(tower, "natural_water_oppose"),
            natural_ice_oppose = "=" .. hattr.get(tower, "natural_ice_oppose"),
            natural_wind_oppose = "=" .. hattr.get(tower, "natural_wind_oppose"),
            natural_light_oppose = "=" .. hattr.get(tower, "natural_light_oppose"),
            natural_dark_oppose = "=" .. hattr.get(tower, "natural_dark_oppose"),
            natural_wood_oppose = "=" .. hattr.get(tower, "natural_wood_oppose"),
            natural_thunder_oppose = "=" .. hattr.get(tower, "natural_thunder_oppose"),
            natural_poison_oppose = "=" .. hattr.get(tower, "natural_poison_oppose"),
            natural_ghost_oppose = "=" .. hattr.get(tower, "natural_ghost_oppose"),
            natural_metal_oppose = "=" .. hattr.get(tower, "natural_metal_oppose"),
            natural_dragon_oppose = "=" .. hattr.get(tower, "natural_dragon_oppose"),
            natural_insect_oppose = "=" .. hattr.get(tower, "natural_insect_oppose"),
            natural_god_oppose = "=" .. hattr.get(tower, "natural_god_oppose")
        }
    )
    hunit.setUserData(u, playerIndex)
    hevent.onBeDamage(u, towerShadowBeDamage)
    hevent.onDead(u, towerShadowDead)
    local slk = hslk_global.unitsKV[tid]
    local towerName = slk.Name
    hmsg.echo(
        hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
            "达到了|cffffff00第" ..
                game.rule.dk.wave[playerIndex] .. "级|r，TA的兵塔" .. hColor.red(towerName) .. "开始进攻！其他人注意防守！"
    )
    dzSetLumber(hplayer.players[playerIndex], game.rule.dk.wave[playerIndex])
end
enemyDeadTowerDrop = {}
enemyDeadAward = function(triggerUnit, killer)
    local x = cj.GetUnitX(triggerUnit)
    local y = cj.GetUnitY(triggerUnit)
    hunit.del(triggerUnit, 2)
    
    if (cj.GetRandomInt(1, 15) == 13) then
        hunit.create(
            {
                register = false,
                whichPlayer = hplayer.player_passive,
                unitId = game.thisUnits["河草"].UNIT_ID,
                qty = 1,
                x = x,
                y = y,
                during = cj.GetRandomReal(20, 45)
            }
        )
    end
    local playerIndex = 0
    if (killer ~= nil) then
        playerIndex = hplayer.index(cj.GetOwningPlayer(killer))
    end
    
    local curWave = 1
    if (game.rule.cur == "yb") then
        curWave = game.rule.yb.wave
    elseif (game.rule.cur == "hz") then
        curWave = game.rule.hz.wave
    elseif (game.rule.cur == "dk" and killer ~= nil) then
        curWave = game.rule.dk.wave[playerIndex]
    end
    
    if (cj.GetRandomInt(1, 30) == 13 and curWave >= 2) then
        
        local tarBLv = getBookPowLevel(curWave)
        if (game.rule.cur == "dk") then
            if (#game.thisOptionAbilityItem["blue"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItem["blue"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                
                MAYBE_AI.item(playerIndex, it, "book")
            end
        else
            if (#game.thisOptionAbilityItemNODK["blue"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItemNODK["blue"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                
                MAYBE_AI.item(playerIndex, it, "book")
            end
        end
    end
    if (cj.GetRandomInt(1, 60) == 27 and curWave >= 7) then
        
        local tarBLv = getBookPowLevel(curWave)
        if (game.rule.cur == "dk") then
            if (#game.thisOptionAbilityItem["yellow"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItem["yellow"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                
                MAYBE_AI.item(playerIndex, it, "book")
            end
        else
            if (#game.thisOptionAbilityItemNODK["yellow"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItemNODK["yellow"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                
                MAYBE_AI.item(playerIndex, it, "book")
            end
        end
    end
    if (cj.GetRandomInt(1, 90) == 46 and curWave >= 19) then
        
        local tarBLv = getBookPowLevel(curWave)
        if (game.rule.cur == "dk") then
            if (#game.thisOptionAbilityItem["purple"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItem["purple"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                
                MAYBE_AI.item(playerIndex, it, "book")
            end
        else
            if (#game.thisOptionAbilityItemNODK["purple"][tarBLv] > 0) then
                local itId = table.random(game.thisOptionAbilityItemNODK["purple"][tarBLv]).ITEM_ID
                local it =
                    hitem.create(
                    {
                        itemId = itId,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                
                MAYBE_AI.item(playerIndex, it, "book")
            end
        end
    end
    
    if (playerIndex > 0) then
        if (enemyDeadTowerDrop[playerIndex] == nil) then
            enemyDeadTowerDrop[playerIndex] = 2
        end
        if (enemyDeadTowerDrop[playerIndex] < 10 or cj.GetRandomInt(1, enemyDeadTowerDrop[playerIndex]) == 1) then
            
            local targetTPow = getTowerPowLevel(curWave)
            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                local it =
                    hitem.create(
                    {
                        itemId = rand.ITEM_ID,
                        x = x,
                        y = y,
                        during = 30
                    }
                )
                
                MAYBE_AI.item(playerIndex, it, "stone")
            end
            if (enemyDeadTowerDrop[playerIndex] < 25) then
                enemyDeadTowerDrop[playerIndex] = enemyDeadTowerDrop[playerIndex] + 1
            end
        end
    end
end
enemyDeadYB = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forUnitGold(evtData.killer, 1)
        haward.forGroupExp(evtData.killer, 27 * game.rule.yb.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end
enemyDeadHZ = function(evtData)
    game.currentMon = game.currentMon - 1
    if (evtData.killer ~= nil) then
        haward.forUnitGold(evtData.killer, 1)
        haward.forGroupExp(evtData.killer, 23 * game.rule.hz.wave)
    end
    enemyDeadAward(evtData.triggerUnit, evtData.killer)
end
enemyDeadDK = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        local pi = hplayer.index(cj.GetOwningPlayer(u))
        local exp = 25 * game.rule.dk.wave[pi]
        local gold = 3 * game.rule.dk.wave[pi]
        haward.forUnitGold(u, gold)
        haward.forGroupExp(u, exp)
        game.rule.dk.playerQty[pi] = game.rule.dk.playerQty[pi] + 1
        if (game.rule.dk.playerQty[pi] >= game.rule.dk.perWaveQty) then
            game.rule.dk.playerQty[pi] = 0
            game.rule.dk.wave[pi] = game.rule.dk.wave[pi] + 1
            game.rule.dk.mon[pi] = game.thisEnemys[cj.GetRandomInt(1, game.thisEnemysLen)].UNIT_ID
            
            if (math.fmod(game.rule.dk.wave[pi], 10) == 0) then
                awardGenForOne(game.rule.dk.wave[pi], pi)
            end
            
            if (math.fmod(game.rule.dk.wave[pi], game.rule.dk.shadowMod[pi]) == 0) then
                towerShadowGen(pi)
                if (game.rule.dk.shadowMod[pi] > 1) then
                    game.rule.dk.shadowMod[pi] = game.rule.dk.shadowMod[pi] - 1
                elseif (game.rule.dk.shadowMod[pi] == 1) then
                    game.rule.dk.shadowMod[pi] = 4
                end
            end
        end
    end
    local ui = game.rule.dk.monData[cj.GetTriggerUnit()].pathIndex
    game.rule.dk.monLimit[ui] = game.rule.dk.monLimit[ui] - 1
    enemyDeadAward(evtData.triggerUnit, u)
end
bossBeDamage = function(evtData)
    local u = evtData.triggerUnit
    if (his.alive(u) and cj.GetRandomInt(1, 5) == 3) then
        htextTag.style(
            htextTag.create2Unit(u, game.enemyTips[cj.GetRandomInt(1, #game.enemyTips)], 10.00, "", 1, 1.1, 11.00),
            "scale",
            cj.GetRandomReal(-0.05, 0.05),
            0
        )
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "head", 2.50)
        heffect.bindUnit("Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl", u, "origin", 2.50)
        if (game.rule.cur == "yb") then
            hattr.set(
                u,
                1.50,
                {
                    move = "+" .. math.random(60, 90)
                }
            )
        elseif (game.rule.cur == "hz") then
            hattr.set(
                u,
                1.50,
                {
                    move = "+" .. math.random(120, 150)
                }
            )
        end
    end
    if (game.rule.cur == "hz") then
        local sourceUnit = evtData.sourceUnit
        if (sourceUnit ~= nil) then
            if (game.rule.hz.wave >= 60 and cj.GetRandomInt(1, 30) == 7) then
                towerShadowTtg(u, "回音击")
                hskill.swim(
                    {
                        odds = 100,
                        whichUnit = sourceUnit,
                        during = 0.5 + 0.01 * game.rule.hz.wave
                    }
                )
            end
            if (game.rule.hz.wave >= 90 and cj.GetRandomInt(1, 40) == 7) then
                towerShadowTtg(u, "降格打击")
                hattr.set(
                    sourceUnit,
                    10,
                    {
                        str_green = "-" .. math.floor(game.rule.hz.wave / 6),
                        agi_green = "-" .. math.floor(game.rule.hz.wave / 6),
                        int_green = "-" .. math.floor(game.rule.hz.wave / 6)
                    }
                )
            end
            if (game.rule.hz.wave >= 140 and cj.GetRandomInt(1, 50) == 7) then
                towerShadowTtg(u, "恶心粘液")
                hattr.set(
                    sourceUnit,
                    5,
                    {
                        attack_speed = "-" .. (15 + 0.02 * game.rule.hz.wave)
                    }
                )
            end
            if (game.rule.hz.wave >= 180 and cj.GetRandomInt(1, 60) == 7) then
                towerShadowTtg(u, "寂静督视")
                hskill.unarm(
                    {
                        odds = 100,
                        whichUnit = sourceUnit,
                        during = 2 + 0.02 * game.rule.hz.wave
                    }
                )
            end
        end
    end
end
bossDead = function(evtData)
    game.currentMon = game.currentMon - 1
    local u = evtData.killer
    if (u ~= nil) then
        local p = cj.GetOwningPlayer(u)
        local playerIndex = hplayer.index(p)
        local curWave = 0
        if (game.rule.cur == "yb") then
            haward.forGroupExp(u, 350 * game.rule.yb.wave)
            curWave = game.rule.yb.wave
        elseif (game.rule.cur == "hz") then
            haward.forGroupExp(u, 300 * game.rule.hz.wave)
            curWave = game.rule.hz.wave
        else
            haward.forGroupExp(u, 1200)
            curWave = game.rule.dk.wave[playerIndex]
        end
        local killerName = cj.GetPlayerName(p)
        local bossName = hunit.getName(evtData.triggerUnit)
        if (killerName ~= nil) then
            hmsg.echo(hColor.sky(killerName) .. "干掉了" .. hColor.yellow(bossName))
        end
        
        local x = cj.GetUnitX(evtData.triggerUnit)
        local y = cj.GetUnitY(evtData.triggerUnit)
        for i = 1, 3 do
            local targetTPow = getTowerPowLevel(curWave)
            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                hitem.create(
                    {
                        itemId = rand.ITEM_ID,
                        x = x,
                        y = y,
                        during = 60
                    }
                )
            end
        end
    end
    hunit.del(evtData.triggerUnit, 3)
end
bossGenLife = 300
bossGen = function(curWave)
    local boss = game.thisEnemysBoss[cj.GetRandomInt(1, game.thisEnemysBossLen)].UNIT_ID
    local move = 120
    if (game.rule.cur == "hz") then
        move = move + curWave
        if (move > 180) then
            move = 180
        end
    end
    for k, v in pairs(game.pathPoint) do
        if (his.playing(hplayer.players[k])) then
            local u =
                henemy.create(
                {
                    unitId = boss,
                    qty = 1,
                    x = v[1][1],
                    y = v[1][2],
                    facing = k * -90 + 180
                }
            )
            cj.SetUnitPathing(u, false)
            cj.IssuePointOrderById(u, 851986, v[2][1], v[2][2])
            hattr.set(
                u,
                0,
                {
                    life = "=" .. (bossGenLife * curWave),
                    move = "=" .. move,
                    defend = "=" .. curWave * 2,
                    toughness = "=" .. curWave * 15,
                    resistance = "=" .. curWave * 0.5,
                    avoid = "=" .. curWave * 0.18,
                    knocking_oppose = "=" .. curWave * 0.3,
                    violence_oppose = "=" .. curWave * 0.3,
                    swim_oppose = "=" .. curWave * 0.1,
                    fetter_oppose = "=" .. curWave * 0.2,
                    lightning_chain_oppose = "=" .. curWave * 0.1,
                    natural_fire_oppose = "=" .. curWave * 0.06,
                    natural_water_oppose = "=" .. curWave * 0.06,
                    natural_ice_oppose = "=" .. curWave * 0.06,
                    natural_wind_oppose = "=" .. curWave * 0.06,
                    natural_light_oppose = "=" .. curWave * 0.05,
                    natural_dark_oppose = "=" .. curWave * 0.05,
                    natural_wood_oppose = "=" .. curWave * 0.05,
                    natural_thunder_oppose = "=" .. curWave * 0.05,
                    natural_soil_oppose = "=" .. curWave * 0.04,
                    natural_poison_oppose = "=" .. curWave * 0.04,
                    natural_ghost_oppose = "=" .. curWave * 0.04,
                    natural_metal_oppose = "=" .. curWave * 0.04,
                    natural_dragon_oppose = "=" .. curWave * 0.03,
                    natural_insect_oppose = "=" .. curWave * 0.02,
                    natural_god_oppose = "=" .. curWave * 0.01
                }
            )
            game.currentMon = game.currentMon + 1
            hevent.onBeDamage(u, bossBeDamage)
            hevent.onDead(u, bossDead)
            hskill.add(u, game.effectModel["影子兵塔特效"].ABILITY_ID, 0)
        end
    end
    hmark.create("war3mapImported\\mark_boss_coming.blp", 4.00)
    if (game.rule.cur == "yb") then
        bossGenLife = bossGenLife + 200
    elseif (game.rule.cur == "hz") then
        bossGenLife = bossGenLife + 300 + curWave * 4
    end
end
awardDead = function(evtData)
    game.currentMon = game.currentMon - 1
    hunit.del(evtData.triggerUnit, 3)
end
awardBeDamage = function(evtData)
    local u = evtData.triggerUnit
    local sourceUnit = evtData.sourceUnit
    htextTag.style(htextTag.create2Unit(u, "哎呀~", 10.00, "", 1, 1.1, 11.00), "scale", cj.GetRandomReal(-0.05, 0.05), 0)
    if (sourceUnit ~= nil) then
        local name = hunit.getName(u)
        local damage = evtData.damage
        if (name == "[AWARD]大金币") then
            haward.forUnitGold(sourceUnit, math.floor(damage * 0.14))
        elseif (name == "[AWARD]大本书") then
            haward.forGroupExp(sourceUnit, math.floor(damage * 0.28))
        end
    end
end
awardGenForOne = function(curWave, pi, awardMon)
    if (awardMon == nil) then
        awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    end
    local u =
        henemy.create(
        {
            unitId = awardMon.UNIT_ID,
            qty = 1,
            x = game.pathPoint[pi][1][1],
            y = game.pathPoint[pi][1][2],
            facing = pi * -90 + 180
        }
    )
    cj.SetUnitPathing(u, false)
    cj.IssuePointOrderById(u, 851986, game.pathPoint[pi][2][1], game.pathPoint[pi][2][2])
    hattr.set(
        u,
        0,
        {
            life = "=99999",
            move = "=200",
            defend = "=" .. curWave * 3,
            toughness = "=" .. curWave * 10,
            resistance = "=" .. curWave * 1,
            avoid = "=" .. curWave * 0.25,
            swim_oppose = "=" .. curWave * 0.2,
            fetter_oppose = "=" .. curWave * 0.2,
            lightning_chain_oppose = "=" .. curWave * 0.1,
            natural_fire_oppose = "=" .. curWave * 0.06,
            natural_water_oppose = "=" .. curWave * 0.06,
            natural_ice_oppose = "=" .. curWave * 0.06,
            natural_wind_oppose = "=" .. curWave * 0.06,
            natural_light_oppose = "=" .. curWave * 0.05,
            natural_dark_oppose = "=" .. curWave * 0.05,
            natural_wood_oppose = "=" .. curWave * 0.05,
            natural_thunder_oppose = "=" .. curWave * 0.05,
            natural_soil_oppose = "=" .. curWave * 0.04,
            natural_poison_oppose = "=" .. curWave * 0.04,
            natural_ghost_oppose = "=" .. curWave * 0.04,
            natural_metal_oppose = "=" .. curWave * 0.04,
            natural_dragon_oppose = "=" .. curWave * 0.03,
            natural_insect_oppose = "=" .. curWave * 0.02,
            natural_god_oppose = "=" .. curWave * 0.01
        }
    )
    if (game.rule.cur == "dk") then
        if (game.rule.dk.ai == true) then
            hunit.setPeriod(u, 100)
        else
            hunit.setPeriod(u, 25 * hplayer.qty_current)
        end
    else
        hunit.setPeriod(u, 30)
    end
    game.currentMon = game.currentMon + 1
    hevent.onDead(u, awardDead)
    hevent.onBeDamage(u, awardBeDamage)
    if (awardMon.Name == "大金币") then
        hmark.create("war3mapImported\\mark_award_gold.blp", 4.00, hplayer.players[pi])
    elseif (awardMon.Name == "大本书") then
        hmark.create("war3mapImported\\mark_award_exp.blp", 4.00, hplayer.players[pi])
    end
end
awardGen = function(curWave)
    local awardMon = game.thisEnemysAward[cj.GetRandomInt(1, game.thisEnemysAwardLen)]
    for k, v in pairs(game.pathPoint) do
        if (hplayer.getStatus(hplayer.players[k]) == hplayer.player_status.gaming) then
            awardGenForOne(curWave, k, awardMon)
        end
    end
end
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
                        
                        if (math.fmod(game.rule.hz.wave, 10) == 0) then
                            bossGen(game.rule.hz.wave)
                            nextWaitTime = 18
                            game.rule.hz.monLife = game.rule.hz.monLife + game.rule.hz.monLifeInc + hplayer.qty_current
                            if (game.rule.hz.fresh > 0.25) then
                                game.rule.hz.fresh = game.rule.hz.fresh - 0.06
                            end
                        end
                        if (game.rule.hz.wave > 3 and math.fmod((game.rule.hz.wave - 3), 10) == 0) then
                            awardGen(game.rule.hz.wave)
                            nextWaitTime = 18
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
MAYBE_AI = {
    
    item = function(playerIndex, it, type)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            local itId = hitem.getId(it)
            local itemSLK = hslk_global.itemsKV[itId]
            hitem.del(it, 0)
            if (type == "book") then
                
                local sites = {}
                if (itemSLK.ABILITY_COLOR == "yellow") then
                    sites = { "S", "D" }
                elseif (itemSLK.ABILITY_COLOR == "blue") then
                    sites = { "X", "C", "V" }
                elseif (itemSLK.ABILITY_COLOR == "purple") then
                    sites = { "F" }
                end
                local emptySite = nil
                for k, v in ipairs(sites) do
                    if (game.towersAbilities[playerIndex][v].ABILITY_LEVEL == nil) then
                        if (emptySite == nil) then
                            emptySite = v
                            break
                        end
                    end
                end
                if (emptySite == nil and math.random(1, 2) == 1) then
                    emptySite = table.random(sites)
                end
                if (emptySite ~= nil) then
                    delTowerSkillByBook(
                        game.playerTower[playerIndex],
                        emptySite,
                        game.towersAbilities[playerIndex][emptySite]
                    )
                    local abils = game.thisOptionAbility[itemSLK.INDEX]
                    addTowerSkillByBook(game.playerTower[playerIndex], emptySite, abils[emptySite])
                    if (itemSLK.ABILITY_COLOR == "yellow") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_gold.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "blue") then
                        heffect.toUnit("war3mapImported\\eff_burst_round.mdl", game.playerTower[playerIndex], 0)
                    elseif (itemSLK.ABILITY_COLOR == "purple") then
                        heffect.toUnit("war3mapImported\\eff_burst_round_purple.mdl", game.playerTower[playerIndex], 0)
                    end
                else
                    hplayer.addGold(hplayer.players[playerIndex], 100)
                end
            elseif (type == "stone") then
                local linkSite = nil
                for i = 1, 4, 1 do
                    local n = hunit.getName(game.playerTowerLink[playerIndex][i].unit)
                    if (n == "空位") then
                        linkSite = i
                        break
                    end
                end
                if (linkSite ~= nil) then
                    
                    local u = createMyTowerLink(playerIndex, linkSite, game.towers[itemSLK.INDEX].UNIT_ID)
                    hmsg.echo(
                        hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                            "召唤了辅塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                    )
                    addTowerSkillsRaceTeam(playerIndex)
                else
                    local marks = {
                        hunit.getSlk(game.playerTower[playerIndex]).MARK or 0,
                        game.playerTowerLink[playerIndex][1].mark or 0,
                        game.playerTowerLink[playerIndex][2].mark or 0,
                        game.playerTowerLink[playerIndex][3].mark or 0,
                        game.playerTowerLink[playerIndex][4].mark or 0
                    }
                    local min = game.towers[itemSLK.INDEX].MARK
                    local mini = -1
                    for k, v in ipairs(marks) do
                        if (v < min) then
                            min = v
                            mini = k
                            break
                        end
                    end
                    if (mini >= 1 and mini <= 5) then
                        mini = mini - 1
                        if (mini == 0) then
                            local u = createMyTower(playerIndex, game.towers[itemSLK.INDEX].UNIT_ID)
                            hmsg.echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "召唤了主塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        else
                            local u = createMyTowerLink(playerIndex, mini, game.towers[itemSLK.INDEX].UNIT_ID)
                            hmsg.echo(
                                hColor.sky(cj.GetPlayerName(hplayer.players[playerIndex])) ..
                                    "召唤了辅塔：[" .. hColor.yellow(game.towers[itemSLK.INDEX].Name) .. "]"
                            )
                            addTowerSkillsRaceTeam(playerIndex)
                        end
                    else
                        
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            2 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    end
                end
            end
        end
    end,
    
    courier = function(playerIndex)
        if (game.rule.dk.ai == true and his.playing(hplayer.players[playerIndex]) == false) then
            
            htime.setTimeout(
                math.random(4, 20),
                function(t)
                    htime.delTimer(t)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        return
                    end
                    if (game.playerTowerEffectModel[playerIndex] == nil) then
                        game.playerTowerEffectModel[playerIndex] = {}
                    end
                    local models = {
                        "青龙碧翼套装",
                        "炎炎焚烧套装",
                        "邪鬼怨灵套装",
                        "金碧辉煌套装",
                        "迷幻黑紫套装",
                        "血色炽热套装",
                        "出云剑仙套装"
                    }
                    local turn = math.random(1, #models)
                    hplayer.addGoldRatio(hplayer.players[playerIndex], (8 - turn) * 8, 0)
                    local btnIdx = models[turn]
                    local tips
                    if (btnIdx == "金碧辉煌套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀公正特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀天堂特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["金耀精灵特效"].ABILITY_ID)
                        tips = "金耀翅膀、公正光辉、天堂圣音、金色精灵"
                    elseif (btnIdx == "迷幻黑紫套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷紫特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["幻黑迷阵特效"].ABILITY_ID)
                        tips = "幻黑翅膀、迷紫幻象、迷惑雾阵"
                    elseif (btnIdx == "血色炽热套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色翅膀特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色漩涡特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["血色符文特效"].ABILITY_ID)
                        tips = "血色翅膀、赤红漩涡、祭奠符文"
                    elseif (btnIdx == "青龙碧翼套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青空之翼特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["游龙欢悦特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["青龙吐息特效"].ABILITY_ID)
                        tips = "青空之翼、游龙欢悦、龙腾吐息"
                    elseif (btnIdx == "邪鬼怨灵套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼怨灵特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼阵法特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼符文特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["邪鬼之眼特效"].ABILITY_ID)
                        tips = "邪鬼怨灵、邪鬼阵法、超度符文、逗趣鬼眼"
                    elseif (btnIdx == "炎炎焚烧套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎旋风特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎领域特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎燃烧特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["炎炎三球特效"].ABILITY_ID)
                        tips = "炎炎旋风、烧灼圈圈、焚烧之火、鬼马火球"
                    elseif (btnIdx == "出云剑仙套装") then
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞剑特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云气场特效"].ABILITY_ID)
                        table.insert(game.playerTowerEffectModel[playerIndex], game.effectModel["出云飞龙特效"].ABILITY_ID)
                        tips = "盘旋飞剑、灵剑气场、飞龙在天"
                    end
                    if (#game.playerTowerEffectModel[playerIndex] > 0) then
                        for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                            hskill.add(game.playerTower[playerIndex], v, 0)
                        end
                    end
                end
            )
            
            htime.setInterval(
                math.random(15, 25),
                function(t)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delTimer(t)
                        return
                    end
                    if (htime.count > 120) then
                        hplayer.addGold(hplayer.players[playerIndex], 3 * htime.count)
                    end
                    local dist = math.getDistanceBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                    local deg = math.random(0, 360)
                    local dis = math.random(100, 300)
                    if (dist > 1200) then
                        deg = math.getDegBetweenUnit(game.playerCourier[playerIndex], game.playerTower[playerIndex])
                        dis = math.random(500, 1000)
                        hplayer.addGold(hplayer.players[playerIndex], 12 * htime.count)
                    end
                    local xy = math.polarProjection(
                        cj.GetUnitX(game.playerCourier[playerIndex]),
                        cj.GetUnitY(game.playerCourier[playerIndex]),
                        dis,
                        deg
                    )
                    cj.IssuePointOrderById(game.playerCourier[playerIndex], 851986, xy.x, xy.y)
                end
            )
            
            htime.setInterval(
                3,
                function(t)
                    if (hplayer.getStatus(hplayer.players[playerIndex]) ~= hplayer.player_status.gaming) then
                        htime.delTimer(t)
                        return
                    end
                    local stone = 750
                    local gold = hplayer.getGold(hplayer.players[playerIndex])
                    if (gold >= 50000 and math.random(1, 8) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 50000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            math.floor(50000 / stone) + 10 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= 30000 and math.random(1, 10) == 6) then
                        hplayer.subGold(hplayer.players[playerIndex], 30000)
                        local typei = math.random(1, 3)
                        local ts = {}
                        if (typei == 1) then
                            hmsg.echo(hplayer.getName(hplayer.players[playerIndex]) .. "发动了" .. hColor.red("剑敕令!"))
                            for pi = 1, 4, 1 do
                                if
                                (playerIndex ~= pi and
                                    hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming)
                                then
                                    table.insert(ts, game.playerTower[pi])
                                    for i = 1, 4, 1 do
                                        if (his.alive(game.playerTowerLink[pi][i].unit) == true) then
                                            table.insert(ts, game.playerTowerLink[pi][i].unit)
                                        end
                                        if (his.alive(game.playerCourier[pi]) == true) then
                                            table.insert(ts, game.playerCourier[pi])
                                        end
                                    end
                                end
                            end
                            for _, u in ipairs(ts) do
                                hskill.swim(
                                    {
                                        whichUnit = u,
                                        during = 10,
                                        odds = 999,
                                        effect = "war3mapImported\\eff_flame_Great_Sword_Falls.mdl"
                                    }
                                )
                            end
                        elseif (typei == 2) then
                            hmsg.echo(hplayer.getName(hplayer.players[playerIndex]) .. "发动了" .. hColor.red("斧敕令!"))
                            for pi = 1, 4, 1 do
                                if
                                (playerIndex ~= pi and
                                    hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming)
                                then
                                    table.insert(ts, game.playerTower[pi])
                                end
                            end
                            for _, u in ipairs(ts) do
                                hunit.setCurLife(u, hunit.getCurLife(u) * 0.8)
                                heffect.toUnit("war3mapImported\\eff_black_chain_flash.mdl", u, 0)
                            end
                        elseif (typei == 3) then
                            hmsg.echo(hplayer.getName(hplayer.players[playerIndex]) .. "发动了" .. hColor.red("锤敕令!"))
                            local hummarDur = 10 / 0.75
                            htime.setInterval(
                                0.75,
                                function(t)
                                    hummarDur = hummarDur - 1
                                    if (hummarDur < 0 or game.runing == false) then
                                        htime.delTimer(t)
                                        return
                                    end
                                    for pi = 1, 4, 1 do
                                        if (hplayer.getStatus(hplayer.players[pi]) == hplayer.player_status.gaming) then
                                            local dmg = 0
                                            if (playerIndex == pi) then
                                                dmg = math.random(50, 38 * htime.min)
                                            else
                                                dmg = math.random(100, 76 * htime.min)
                                            end
                                            hunit.subCurLife(game.playerTower[pi], dmg)
                                            hmsg.echo(
                                                hColor.sky(cj.GetPlayerName(hplayer.players[pi])) ..
                                                    "被黑色悍马雷劈掉了" .. hColor.red(dmg) .. "血"
                                            )
                                            heffect.toUnit(
                                                "war3mapImported\\eff_lighting_black.mdl",
                                                game.playerTower[pi],
                                                0
                                            )
                                        end
                                    end
                                end
                            )
                        end
                    elseif (gold >= 10000 and math.random(1, 6) == 4) then
                        
                        local tarTower
                        if (hitem.getEmptySlot(game.playerTower[playerIndex]) <= 5) then
                            for i = 0, 5, 1 do
                                local it = cj.UnitItemInSlot(game.playerTower[playerIndex], i)
                                if (it ~= nil and hitem.getCharges(it) < 3) then
                                    local itid = hitem.getId(it)
                                    hitem.setCharges(it, 1 + hitem.getCharges(it))
                                    hitem.addAttribute(game.playerTower[playerIndex], itid, 1)
                                    hplayer.subGold(hplayer.players[playerIndex], 5 * hitem.getGoldCost(itid))
                                    break
                                end
                            end
                        else
                            for li = 1, 4 do
                                if (hitem.getEmptySlot(game.playerTowerLink[playerIndex][li].unit) <= 5) then
                                    for i = 0, 5, 1 do
                                        local it = cj.UnitItemInSlot(game.playerTowerLink[playerIndex][li].unit, i)
                                        if (it ~= nil and hitem.getCharges(it) < 3) then
                                            local itid = hitem.getId(it)
                                            hitem.setCharges(it, 1 + hitem.getCharges(it))
                                            hitem.addAttribute(game.playerTowerLink[playerIndex][li].unit, itid, 1)
                                            hplayer.subGold(hplayer.players[playerIndex], 5 * hitem.getGoldCost(itid))
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    elseif (gold >= 10000 and math.random(1, 7) == 4) then
                        hplayer.subGold(hplayer.players[playerIndex], 10000)
                        hhero.setCurLevel(
                            game.playerTower[playerIndex],
                            math.floor(10000 / stone) + 10 + hhero.getCurLevel(game.playerTower[playerIndex]),
                            false
                        )
                    elseif (gold >= 4 * stone and math.random(1, 3) == 2) then
                        local curWave
                        if (game.rule.cur == "yb") then
                            curWave = game.rule.yb.wave
                        elseif (game.rule.cur == "hz") then
                            curWave = game.rule.hz.wave
                        elseif (game.rule.cur == "dk") then
                            curWave = game.rule.dk.wave[playerIndex]
                        end
                        if (curWave ~= nil) then
                            hplayer.subGold(hplayer.players[playerIndex], stone / 2)
                            local targetTPow = getTowerPowLevel(curWave)
                            if (game.thisOptionTowerPowerItem[targetTPow] ~= nil) then
                                local rand = table.random(game.thisOptionTowerPowerItem[targetTPow])
                                local it = hitem.create(
                                    {
                                        itemId = rand.ITEM_ID,
                                        x = cj.GetUnitX(game.playerCourier[playerIndex]),
                                        y = cj.GetUnitY(game.playerCourier[playerIndex])
                                    }
                                )
                                MAYBE_AI.item(playerIndex, it, "stone")
                            end
                        end
                    elseif (gold >= 8000 and math.random(1, 6) == 4) then
                        
                        local tarTower
                        if (hitem.getEmptySlot(game.playerTower[playerIndex]) > 0) then
                            tarTower = game.playerTower[playerIndex]
                        else
                            for li = 1, 4 do
                                if (hitem.getEmptySlot(game.playerTowerLink[playerIndex][li].unit) > 0) then
                                    tarTower = game.playerTowerLink[playerIndex][li].unit
                                    break
                                end
                            end
                        end
                        if (tarTower == nil) then
                            return
                        end
                        local lvT = math.floor(gold / 2000)
                        local lvB = 4
                        local comboIt = {}
                        for cbi = lvB, lvT, 1 do
                            if (tarTower == game.playerTower[playerIndex]) then
                                if (game.thisEquipItem[cbi] ~= nil) then
                                    for _, civ in ipairs(game.thisEquipItem[cbi]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                                if (game.thisComboItem[cbi + 3] ~= nil) then
                                    for _, civ in ipairs(game.thisComboItem[cbi + 3]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                            else
                                if (game.thisEquipItemNODK[cbi] ~= nil) then
                                    for _, civ in ipairs(game.thisEquipItemNODK[cbi]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                                if (game.thisComboItemNODK[cbi + 3] ~= nil) then
                                    for _, civ in ipairs(game.thisComboItemNODK[cbi + 3]) do
                                        table.insert(comboIt, civ)
                                    end
                                end
                            end
                        end
                        if (#comboIt <= 0) then
                            return
                        end
                        local randIt = table.random(comboIt)
                        local tarLv = randIt.LEVEL
                        comboIt = nil
                        hitem.create(
                            {
                                itemId = randIt.ITEM_ID,
                                charges = 1,
                                whichUnit = tarTower
                            }
                        )
                        hplayer.subGold(hplayer.players[playerIndex], tarLv * 1500)
                        tarTower = nil
                    end
                end
            )
        end
    end,
    
    hammer = function(czb)
        local czbPlayer = cj.GetOwningPlayer(czb)
        if (game.rule.dk.ai == true and his.playing(czbPlayer) == false) then
            htime.setInterval(
                math.random(14, 18),
                function(t)
                    if (game.runing == false) then
                        htime.delTimer(t)
                        return
                    end
                    local ps = {}
                    hplayer.loop(
                        function(p, pi)
                            if (hplayer.getStatus(p) == hplayer.player_status.gaming) then
                                table.insert(ps, pi)
                            end
                        end
                    )
                    local psi = table.random(ps)
                    if (math.random(1, 2) == 1) then
                        cj.IssueTargetOrder(czb, "thunderbolt", game.playerTower[psi])
                    else
                        cj.IssueTargetOrder(czb, "thunderbolt", game.playerCourier[psi])
                    end
                    ps = nil
                end
            )
        end
    end
}
getNextRect = function(current)
    local next = -1
    local realEnd = 4
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.player_status.gaming == hplayer.getStatus(hplayer.players[i])) then
            realEnd = i
        end
    end
    for i = 1, hplayer.qty_max, 1 do
        if (hplayer.player_status.gaming == hplayer.getStatus(hplayer.players[i])) then
            if (next == -1) then
                if (current == realEnd or i > current) then
                    next = i
                end
            end
        end
    end
    return next
end
updateMyTower = function(evtData)
    local u = evtData.triggerUnit
    local uid = string.id2char(cj.GetUnitTypeId(u))
    local lv = cj.GetHeroLevel(u)
    local diffLv = cj.I2R(lv - hhero.getPrevLevel(u))
    local slk = hslk_global.unitsKV[uid]
    local tpv = slk.TOWER_POWER
    local attackWhite = slk.ATTACK_WHITE
    local race = slk.RACE
    local percent = 0
    if (tpv == "E") then
        percent = 0.02
    elseif (tpv == "D") then
        percent = 0.024
    elseif (tpv == "C") then
        percent = 0.028
    elseif (tpv == "B") then
        percent = 0.033
    elseif (tpv == "A") then
        percent = 0.042
    elseif (tpv == "S") then
        percent = 0.053
    elseif (tpv == "SS") then
        percent = 0.067
    elseif (tpv == "SSS") then
        percent = 0.081
    end
    attackWhite = diffLv * attackWhite * percent
    hattr.set(
        u,
        0,
        {
            attack_white = "+" .. attackWhite
        }
    )
    if (race == "人类") then
        local val = 0.03
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "人杰") then
        local val = 0.04
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "人王") then
        local val = 0.05
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR * diffLv),
                agi_green = "+" .. (val * slk.AGI * diffLv),
                int_green = "+" .. (val * slk.INT * diffLv)
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.075 * slk.ATTACK_WHITE * diffLv)
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_green = "+" .. (0.12 * slk.INT * diffLv)
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (0.08 * slk.STR * diffLv)
            }
        )
    end
    hsound.sound2Unit(cg.gg_snd_level_up, 100, u)
    htextTag.style(htextTag.create2Unit(u, "升级 ↑" .. cj.R2I(diffLv), 12.00, "ffff00", 1, 2.0, 10.00), "scale", 0, 0.1)
end
createMyTowerLink = function(playerIndex, linkIndex, towerId, unitLv)
    if (playerIndex == nil or linkIndex == nil) then
        print("createMyTowerLink wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        if (game.playerTowerLink[playerIndex] == nil) then
            game.playerTowerLink[playerIndex] = {}
        end
        if (game.playerTowerLink[playerIndex][linkIndex] == nil) then
            game.playerTowerLink[playerIndex][linkIndex] = {}
        end
        local linkId = game.thisUnits["空位"].UNIT_ID
        if (towerId ~= nil) then
            linkId = game.towersShadow[towerId].UNIT_ID
        end
        
        local isFirst = true
        if (game.playerTowerLink[playerIndex][linkIndex] ~= nil) then
            isFirst = false
            cj.ShowUnit(game.playerTowerLink[playerIndex][linkIndex].unit, false)
        end
        local isUnSelectable = (linkId == game.thisUnits["空位"].UNIT_ID)
        local isOpenSlot = (linkId ~= game.thisUnits["空位"].UNIT_ID)
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = linkId,
                qty = 1,
                x = game.towerPoint[playerIndex][1] + game.towerLinkOffset[linkIndex][1],
                y = game.towerPoint[playerIndex][2] + game.towerLinkOffset[linkIndex][2],
                opacity = 0.4,
                modelScale = 1.0,
                isUnSelectable = isUnSelectable,
                isOpenSlot = isOpenSlot
            }
        )
        hunit.setUserData(u, linkIndex)
        
        if (isFirst == false) then
            hitem.copy(game.playerTowerLink[playerIndex][linkIndex].unit, u)
            hunit.del(game.playerTowerLink[playerIndex][linkIndex].unit, 0)
        else
            hunit.del(game.playerTowerLink[playerIndex][linkIndex].unit, 0)
        end
        game.playerTowerLink[playerIndex][linkIndex].unit = u
        if (towerId ~= nil) then
            game.playerTowerLink[playerIndex][linkIndex].tower_id = towerId
            
            local tpv = hslk_global.unitsKV[towerId].TOWER_POWER
            local Primary = hslk_global.unitsKV[towerId].Primary
            local attack_damage_type = "physical"
            if (Primary == "INT") then
                attack_damage_type = "magic"
            end
            hattr.set(
                u,
                0,
                {
                    life = "=1000",
                    life_back = "=1000",
                    attack_damage_type = "=" .. attack_damage_type,
                    attack_white = "+" .. hslk_global.unitsKV[towerId].ATTACK_WHITE,
                    move = "=0",
                    damage_rebound_oppose = "=9999"
                }
            )
            hevent.onAttack(u, onTowerAttack)
            hevent.onItemUsed(u, onUnitItemsUesd)
            hevent.onSkillHappen(u, onTowerLinkSkillUesd)
            
            addTowerSkillsx(u)
            game.playerTowerLink[playerIndex][linkIndex].tower_level = unitLv
            game.playerTowerLink[playerIndex][linkIndex].mark = hslk_global.unitsKV[towerId].MARK
            
            if (isFirst) then
                addTowerLinkLevel(playerIndex, linkIndex, 0)
            else
                addTowerLinkLevel(playerIndex, linkIndex, unitLv)
            end
            
            addTowerSkillsRaceSingleAttr(u)
            
            cj.TriggerRegisterUnitEvent(game.TRIGGER_DE, u, EVENT_UNIT_ISSUED_POINT_ORDER)
        end
        return u
    end
end
createMyTower = function(playerIndex, towerId, towerLevel)
    if (playerIndex == nil or towerId == nil or towerId == "") then
        hmsg.echo("兵塔石出bug了")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        if (game.towersAbilities[playerIndex] == nil) then
            game.towersAbilities[playerIndex] = {}
        end
        local isFirst = false
        if (game.playerTower[playerIndex] == nil) then
            isFirst = true
        end
        
        
        local prevHeroLevel = 1
        local prevHeroLifePercent = 100
        if (isFirst == false) then
            prevHeroLevel = cj.GetHeroLevel(game.playerTower[playerIndex])
            prevHeroLifePercent = hunit.getCurLifePercent(game.playerTower[playerIndex])
            cj.ShowUnit(game.playerTower[playerIndex], false)
        end
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = towerId,
                qty = 1,
                x = game.towerPoint[playerIndex][1],
                y = game.towerPoint[playerIndex][2]
            }
        )
        hhero.setIsHero(u, true)
        hunit.setCurLifePercent(u, prevHeroLifePercent)
        
        local tpv = hslk_global.unitsKV[towerId].TOWER_POWER
        local life = 400
        if (tpv == "E") then
            life = 1000
        elseif (tpv == "D") then
            life = 4000
        elseif (tpv == "C") then
            life = 7500
        elseif (tpv == "B") then
            life = 15000
        elseif (tpv == "A") then
            life = 30000
        elseif (tpv == "S") then
            life = 75000
        elseif (tpv == "SS") then
            life = 150000
        elseif (tpv == "SSS") then
            life = 300000
        end
        hattr.set(
            u,
            0,
            {
                move = "=0",
                life = "=" .. life,
                attack_white = "+" .. hslk_global.unitsKV[towerId].ATTACK_WHITE
            }
        )
        hevent.onLevelUp(u, updateMyTower)
        hevent.onAttack(u, onTowerAttack)
        hevent.onDead(u, onTowerDead)
        hhero.setCurLevel(u, prevHeroLevel)
        
        if (game.towersAbilities[playerIndex] ~= nil) then
            for k, v in pairs(game.towersAbilities[playerIndex]) do
                addTowerSkillByBook(u, k, v)
            end
        end
        
        if (game.playerTower[playerIndex] ~= nil) then
            subTowerLevel(playerIndex)
            hitem.copy(game.playerTower[playerIndex], u)
            hunit.del(game.playerTower[playerIndex], 0)
        end
        game.playerTower[playerIndex] = u
        cj.PingMinimapEx(game.towerPoint[playerIndex][1], game.towerPoint[playerIndex][2], 10, 255, 255, 255, true)
        hevent.onItemUsed(u, onUnitItemsUesd)
        
        addTowerSkillsx(u)
        
        if (isFirst) then
            addTowerLevel(playerIndex, 0)
        else
            addTowerLevel(playerIndex, towerLevel)
        end
        
        for k, v in pairs(game.thisEmptyAbilities) do
            if (game.towersAbilities[playerIndex][k] == nil) then
                v.Name = "空技能槽"
                v.ABILITY_LEVEL = nil
                addTowerSkillByBook(u, k, v)
            end
        end
        
        addTowerSkillsRaceSingleAttr(u)
        
        if (game.playerTowerEffectModel[playerIndex] ~= nil and #game.playerTowerEffectModel[playerIndex] > 0) then
            for _, v in ipairs(game.playerTowerEffectModel[playerIndex]) do
                hskill.add(u, v, 0)
            end
        end
        
        cj.TriggerRegisterUnitEvent(game.TRIGGER_DE, u, EVENT_UNIT_ISSUED_POINT_ORDER)
        return u
    end
end
createMyCourier = function(playerIndex, courierId)
    if (playerIndex == nil or courierId == nil) then
        print("createMyCourier wtf")
        return nil
    end
    if (hplayer.getStatus(hplayer.players[playerIndex]) == hplayer.player_status.gaming) then
        
        if (game.playerCourier[playerIndex] ~= nil) then
            cj.ShowUnit(game.playerCourier[playerIndex], false)
        end
        local x, y
        if (game.playerCourier[playerIndex] ~= nil) then
            x = cj.GetUnitX(game.playerCourier[playerIndex])
            y = cj.GetUnitY(game.playerCourier[playerIndex])
        else
            x = game.courierPoint[playerIndex][1]
            y = game.courierPoint[playerIndex][2]
        end
        local u =
            hunit.create(
            {
                whichPlayer = hplayer.players[playerIndex],
                unitId = courierId,
                qty = 1,
                x = x,
                y = y
            }
        )
        hattr.set(
            u,
            0,
            {
                weight = "=1000"
            }
        )
        hevent.onItemUsed(u, onUnitItemsUesd)
        hevent.onSkillHappen(u, onCourierSkillUesd)
        
        if (game.playerCourier[playerIndex] ~= nil) then
            hitem.copy(game.playerCourier[playerIndex], u)
            hunit.del(game.playerCourier[playerIndex], 0)
        end
        
        game.playerCourier[playerIndex] = u
        hcamera.toUnit(hplayer.players[playerIndex], 0.50, u)
        
        if (hslk_global.unitsKV[courierId].Name == "冰戟剑灵") then
            heffect.bindUnit("war3mapImported\\eff_flying_sword_ice.mdl", u, "origin", -1)
        end
        
        MAYBE_AI.courier(playerIndex)
        return u
    end
end
hevent.onPlayerLeave(
    function(evtData)
        
        
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
                    if
                    (game.playerTowerLink[pi] == nil or game.playerTowerLink[pi][i] == nil or
                        his.alive(game.playerTowerLink[pi][i].unit) == false)
                    then
                        createMyTowerLink(pi, i)
                    end
                end
            end
        )
    end
)
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
    if (cs >= 500 and ss >= 100) then
        prestige = "九天至尊"
    elseif (cs >= 300 and ss >= 75) then
        prestige = "六道大仙"
    elseif (cs >= 200 and ss >= 50) then
        prestige = "神游三界"
    elseif (cs >= 150 and ss >= 25) then
        prestige = "灭劫星窍"
    elseif (cs >= 125 and ss >= 15) then
        prestige = "灵通三魂"
    elseif (cs >= 100 and ss >= 13) then
        prestige = "身越七魄"
    elseif (cs >= 90 and ss >= 11) then
        prestige = "超凡入圣"
    elseif (cs >= 80 and ss >= 9) then
        prestige = "超然世外"
    elseif (cs >= 70 and ss >= 7) then
        prestige = "猎尽天下"
    elseif (cs >= 60 and ss >= 5) then
        prestige = "登峰造极"
    elseif (cs >= 50 and ss >= 3) then
        prestige = "当世雄豪"
    elseif (cs >= 40 and ss >= 2) then
        prestige = "名扬四方"
    elseif (cs >= 30 and ss >= 1) then
        prestige = "一战成名"
    elseif (cs >= 20 and ss >= 0) then
        prestige = "游刃有余"
    elseif (cs >= 10 and ss >= 0) then
        prestige = "初露锋芒"
    elseif (cs >= 5 and ss >= 0) then
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
        
        cj.FogEnable(false)
        cj.FogMaskEnable(false)
        hsound.bgmStop(nil)
        
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
                    if
                    (his.playing(hplayer.players[i]) == true and his.playerSite(hplayer.players[i]) == true and
                        hplayer.getLumber(hplayer.players[i]) > game.playerOriginLumber[i])
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
                                                                    cj  .GetRandomInt(1, #game.bigElfTips)
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
                                                                    cj  .GetRandomInt(1, #game.bigElfTips)
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
                    
                    cj.AddPlayerTechResearched(game.ALLY_PLAYER, game.odkTecId, 1)
                end
                
                for k, v in pairs(game.courierPoint) do
                    
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
                
                for k, v in pairs(game.towerPoint) do
                    createMyTower(k, game.towers["人类·农民"].UNIT_ID)
                    addTowerSkillsRaceTeam(k)
                end
                
                for k, v in pairs(game.towerLinkOffset) do
                    for i = 1, 4 do
                        createMyTowerLink(k, i)
                    end
                end
                
                hmultiBoard.create(
                    "player",
                    1.5,
                    function(mb, curPi)
                        
                        hmultiBoard.setTitle(mb, "玩家兵塔属性列表，地上怪物：" .. game.currentMon .. "只")
                        
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
