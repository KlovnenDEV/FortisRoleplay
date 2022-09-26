Config = {}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(StringCharset, string.char(i)) end
for i = 97, 122 do table.insert(StringCharset, string.char(i)) end

Config.RandomStr = function(length)
	if length > 0 then
		return Config.RandomStr(length-1) .. StringCharset[math.random(1, #StringCharset)]
	else
		return ''
	end
end

Config.RandomInt = function(length)
	if length > 0 then
		return Config.RandomInt(length-1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

Config.VendingObjects = {
    "prop_vend_soda_01",
    "prop_vend_soda_02",
    "prop_vend_water_01"
}

Config.BinObjects = {
    "prop_bin_05a",
}

Config.VendingItem = {
    [1] = {
        name = "kurkakola",
        price = 3,
        amount = 100,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        price = 3,
        amount = 100,
        info = {},
        type = "item",
        slot = 2,
    },
    [3] = {
        name = "sandwich",
        price = 3,
        amount = 30,
        info = {},
        type = "item",
        slot = 3,
    },
}

Config.CraftingItems = {
    -- HQ Scraps
    [1] = {
        name = "hq_aluminum",
        amount = 50,
        info = {},
        costs = {
            ["aluminum"] = 100,
        },
        type = "item",
        slot = 1,
        threshold = 0,
        points = 1,
    },
    [2] = {
        name = "hq_copper",
        amount = 50,
        info = {},
        costs = {
            ["copper"] = 100,
        },
        type = "item",
        slot = 2,
        threshold = 0,
        points = 1,
    },
    [3] = {
        name = "hq_glassplate",
        amount = 50,
        info = {},
        costs = {
            ["glass"] = 100,
        },
        type = "item",
        slot = 3,
        threshold = 0,
        points = 1,
    },
    [4] = {
        name = "hq_ironplate",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 100,
        },
        type = "item",
        slot = 4,
        threshold = 0,
        points = 1,
    },
    [5] = {
        name = "hq_metalscrap",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 100,
        },
        type = "item",
        slot = 5,
        threshold = 0,
        points = 1,
    },
    [6] = {
        name = "hq_plastic",
        amount = 50,
        info = {},
        costs = {
            ["plastic"] = 100,
        },
        type = "item",
        slot = 6,
        threshold = 0,
        points = 1,
    },
    [7] = {
        name = "hq_rubber",
        amount = 50,
        info = {},
        costs = {
            ["rubber"] = 100,
        },
        type = "item",
        slot = 7,
        threshold = 0,
        points = 1,
    },
    [8] = {
        name = "hq_steel",
        amount = 50,
        info = {},
        costs = {
            ["steel"] = 100,
        },
        type = "item",
        slot = 8,
        threshold = 0,
        points = 1,
    },
    -- Normaal
    [9] = {
        name = "lockpick",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 22,
            ["plastic"] = 32,
        },
        type = "item",
        slot = 9,
        threshold = 0,
        points = 1,
    },
    [10] = {
        name = "screwdriverset",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 42,
        },
        type = "item",
        slot = 10,
        threshold = 0,
        points = 2,
    },
    [11] = {
        name = "electronickit",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 45,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 11,
        threshold = 0,
        points = 3,
    },
    [12] = {
        name = "fortel",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 30,
            ["aluminum"] = 30,
            ["electronickit"] = 1,
        },
        type = "item",
        slot = 12,
        threshold = 0,
        points = 2,
    },
    [13] = {
        name = "radioscanner",
        amount = 50,
        info = {},
        costs = {
            ["electronickit"] = 2,
            ["plastic"] = 52,
            ["steel"] = 40,
        },
        type = "item",
        slot = 13,
        threshold = 0,
        points = 4,
    },
    [14] = {
        name = "gatecrack",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 10,
            ["plastic"] = 50,
            ["aluminum"] = 30,
            ["iron"] = 17,
            ["electronickit"] = 1,
        },
        type = "item",
        slot = 14,
        threshold = 120,
        points = 5,
    },
    [15] = {
        name = "handcuffs",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 36,
            ["steel"] = 24,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 15,
        threshold = 150,
        points = 6,
    },
    [16] = {
        name = "cagoule",
        amount = 50,
        info = {},
        costs = {
            ["plastic"] = 55,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 16,
        threshold = 150,
        points = 6,
    },
    [17] = {
        name = "ironoxide",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 180,
            ["glass"] = 90,
        },
        type = "item",
        slot = 17,
        threshold = 300,
        points = 8,
    },
    [18] = {
        name = "aluminumoxide",
        amount = 50,
        info = {},
        costs = {
            ["aluminum"] = 180,
            ["glass"] = 90,
        },
        type = "item",
        slot = 18,
        threshold = 300,
        points = 8,
    },
    [19] = {
        name = "stickybomb",
        amount = 50,
        info = {},
        costs = {
            ["aluminumoxide"] = 1,
            ["ironoxide"] = 1, 
            ["plastic"] = 75,
        },
        type = "item",
        slot = 19,
        threshold = 300,
        points = 12,
    },
    [20] = {
        name = "armor",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 33,
            ["steel"] = 44,
            ["plastic"] = 55,
            ["aluminum"] = 22,
        },
        type = "item",
        slot = 20,
        threshold = 300,
        points = 10,
    },
    [21] = {
        name = "drill",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 50,
            ["steel"] = 50,
            ["screwdriverset"] = 3,
            ["advancedlockpick"] = 2,
        },
        type = "item",
        slot = 21,
        threshold = 800,
        points = 11,
    },
    [22] = {
        name = "thermite_bomb",
        amount = 50,
        info = {},
        costs = {
            ["aluminumoxide"] = 1,
            ["ironoxide"] = 1, 
            ["aluminum"] = 75,
        },
        type = "item",
        slot = 22,
        threshold = 800,
        points = 11,
    },
    -- Black market items
    [23] = {
        name = "craft_switchblade_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 1,
            ["hq_plastic"] = 10,
        },
        type = "item",
        slot = 23,
        threshold = 850,
        points = 15,
    },
    [24] = {
        name = "craft_switchblade_mes",
        amount = 50,
        info = {},
        costs = {
            ["hq_steel"] = 10,
            ["hq_ironplate"] = 10,
        },
        type = "item",
        slot = 24,
        threshold = 850,
        points = 15,
    },
    [25] = {
        name = "craft_machete_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 1,
            ["hq_plastic"] = 15,
        },
        type = "item",
        slot = 25,
        threshold = 850,
        points = 15,
    },
    [26] = {
        name = "craft_machete_mes",
        amount = 50,
        info = {},
        costs = {
            ["hq_steel"] = 15,
            ["hq_ironplate"] = 15,
        },
        type = "item",
        slot = 26,
        threshold = 850,
        points = 15,
    },
    [27] = {
        name = "craft_snspistol_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_plastic"] = 10,
            ["hq_ironplate"] = 10,
            ["hq_copper"] = 10,
        },
        type = "item",
        slot = 27,
        threshold = 880,
        points = 15,
    },
    [28] = {
        name = "craft_snspistol_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 20,
            ["hq_steel"] = 20,
        },
        type = "item",
        slot = 28,
        threshold = 880,
        points = 15,
    },
    [29] = {
        name = "craft_pistol_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_plastic"] = 12,
            ["hq_ironplate"] = 12,
            ["hq_copper"] = 12,
        },
        type = "item",
        slot = 29,
        threshold = 880,
        points = 15,
    },
    [30] = {
        name = "craft_pistol_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 25,
            ["hq_steel"] = 25,
        },
        type = "item",
        slot = 30,
        threshold = 880,
        points = 15,
    },
    [31] = {
        name = "craft_ceramic_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_plastic"] = 13,
            ["hq_ironplate"] = 13,
            ["hq_copper"] = 13,
        },
        type = "item",
        slot = 31,
        threshold = 880,
        points = 15,
    },
    [32] = {
        name = "craft_ceramic_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 28,
            ["hq_steel"] = 28,
        },
        type = "item",
        slot = 32,
        threshold = 880,
        points = 15,
    },
    [33] = {
        name = "craft_machinepistol_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_plastic"] = 15,
            ["hq_ironplate"] = 15,
            ["hq_copper"] = 15,
        },
        type = "item",
        slot = 33,
        threshold = 880,
        points = 15,
    },
    [34] = {
        name = "craft_machinepistol_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_copper"] = 10,
            ["hq_aluminum"] = 20,
        },
        type = "item",
        slot = 34,
        threshold = 880,
        points = 15,
    },
    [35] = {
        name = "craft_machinepistol_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 25,
            ["hq_steel"] = 25,
        },
        type = "item",
        slot = 35,
        threshold = 880,
        points = 15,
    },
    [36] = {
        name = "craft_minismg_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_plastic"] = 20,
            ["hq_ironplate"] = 20,
            ["hq_copper"] = 15,
        },
        type = "item",
        slot = 36,
        threshold = 1400,
        points = 15,
    },
    [37] = {
        name = "craft_minismg_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_copper"] = 15,
            ["hq_aluminum"] = 25,
        },
        type = "item",
        slot = 37,
        threshold = 1400,
        points = 15,
    },
    [38] = {
        name = "craft_minismg_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 25,
            ["hq_steel"] = 25,
        },
        type = "item",
        slot = 38,
        threshold = 1400,
        points = 15,
    },
    [39] = {
        name = "craft_sawnoffshotgun_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 5,
            ["hq_plastic"] = 40,
            ["hq_copper"] = 40,
        },
        type = "item",
        slot = 39,
        threshold = 1400,
        points = 15,
    },
    [40] = {
        name = "craft_sawnoffshotgun_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 40,
            ["hq_steel"] = 40,
        },
        type = "item",
        slot = 40,
        threshold = 1400,
        points = 15,
    },
    [41] = {
        name = "craft_compactrifle_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 3,
            ["hq_ironplate"] = 30,
            ["hq_plastic"] = 30,
        },
        type = "item",
        slot = 41,
        threshold = 1400,
        points = 15,
    },
    [42] = {
        name = "craft_compactrifle_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_copper"] = 20,
            ["hq_aluminum"] = 20,
        },
        type = "item",
        slot = 42,
        threshold = 1400,
        points = 15,
    },
    [43] = {
        name = "craft_compactrifle_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 25,
            ["hq_steel"] = 25,
        },
        type = "item",
        slot = 43,
        threshold = 1400,
        points = 15,
    },   
    [44] = {
        name = "craft_pumpshotgun_kolf",
        amount = 50,
        info = {},
        costs = {
            ["hq_ironplate"] = 10,
            ["hq_plastic"] = 10,
        },
        type = "item",
        slot = 44,
        threshold = 1500,
        points = 15,
    },
    [45] = {
        name = "craft_pumpshotgun_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 5,
            ["hq_ironplate"] = 40,
            ["hq_plastic"] = 40,
        },
        type = "item",
        slot = 45,
        threshold = 1500,
        points = 15,
    },
    [46] = {
        name = "craft_pumpshotgun_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 40,
            ["hq_steel"] = 40,
        },
        type = "item",
        slot = 46,
        threshold = 1500,
        points = 15,
    }, 
    [47] = {
        name = "craft_assaultrifle_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 5,
            ["hq_ironplate"] = 35,
            ["hq_plastic"] = 35,
        },
        type = "item",
        slot = 47,
        threshold = 1500,
        points = 15,
    },
    [48] = {
        name = "craft_assaultrifle_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_copper"] = 25,
            ["hq_aluminum"] = 25,
        },
        type = "item",
        slot = 48,
        threshold = 1500,
        points = 15,
    },
    [49] = {
        name = "craft_assaultrifle_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 30,
            ["hq_steel"] = 30,
        },
        type = "item",
        slot = 49,
        threshold = 1500,
        points = 15,
    },
    [50] = {
        name = "craft_bullpuprifle_kolf",
        amount = 50,
        info = {},
        costs = {
            ["hq_ironplate"] = 5,
            ["hq_plastic"] = 5,
        },
        type = "item",
        slot = 50,
        threshold = 1500,
        points = 15,
    },
    [51] = {
        name = "craft_bullpuprifle_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 7,
            ["hq_ironplate"] = 40,
            ["hq_plastic"] = 40,
        },
        type = "item",
        slot = 51,
        threshold = 1500,
        points = 15,
    },
    [52] = {
        name = "craft_bullpuprifle_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_copper"] = 30,
            ["hq_aluminum"] = 30,
        },
        type = "item",
        slot = 52,
        threshold = 1500,
        points = 15,
    },
    [53] = {
        name = "craft_bullpuprifle_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 35,
            ["hq_steel"] = 35,
        },
        type = "item",
        slot = 53,
        threshold = 1500,
        points = 15,
    },
    [54] = {
        name = "craft_gusenberg_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_plastic"] = 50,
            ["hq_rubber"] = 9,
        },
        type = "item",
        slot = 54,
        threshold = 1500,
        points = 15,
    },
    [55] = {
        name = "craft_gusenberg_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_ironplate"] = 25,
            ["hq_steel"] = 40,
            ["hq_aluminum"] = 35,
        },
        type = "item",
        slot = 55,
        threshold = 1500,
        points = 15,
    },
    [56] = {
        name = "craft_gusenberg_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_ironplate"] = 25,
            ["hq_metalscrap"] = 40,
        },
        type = "item",
        slot = 56,
        threshold = 1500,
        points = 15,
    },
    [57] = {
        name = "craft_specialcarbine_kolf",
        amount = 50,
        info = {},
        costs = {
            ["hq_ironplate"] = 5,
            ["hq_plastic"] = 5,
        },
        type = "item",
        slot = 57,
        threshold = 1500,
        points = 15,
    },
    [58] = {
        name = "craft_specialcarbine_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 9,
            ["hq_ironplate"] = 45,
            ["hq_plastic"] = 45,
        },
        type = "item",
        slot = 58,
        threshold = 1500,
        points = 15,
    },
    [59] = {
        name = "craft_specialcarbine_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_copper"] = 35,
            ["hq_aluminum"] = 35,
        },
        type = "item",
        slot = 59,
        threshold = 1500,
        points = 15,
    },
    [60] = {
        name = "craft_specialcarbine_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 40,
            ["hq_steel"] = 40,
        },
        type = "item",
        slot = 60,
        threshold = 1500,
        points = 15,
    },
    [61] = {
        name = "craft_sniper_kolf",
        amount = 50,
        info = {},
        costs = {
            ["hq_ironplate"] = 10,
            ["hq_plastic"] = 10,
        },
        type = "item",
        slot = 61,
        threshold = 1500,
        points = 15,
    },
    [62] = {
        name = "craft_sniper_handvat",
        amount = 50,
        info = {},
        costs = {
            ["hq_rubber"] = 9,
            ["hq_ironplate"] = 45,
            ["hq_plastic"] = 45,
        },
        type = "item",
        slot = 62,
        threshold = 1500,
        points = 15,
    },
    [63] = {
        name = "craft_sniper_magazijn",
        amount = 50,
        info = {},
        costs = {
            ["hq_copper"] = 35,
            ["hq_aluminum"] = 35,
        },
        type = "item",
        slot = 63,
        threshold = 1500,
        points = 15,
    },
    [64] = {
        name = "craft_sniper_loop",
        amount = 50,
        info = {},
        costs = {
            ["hq_metalscrap"] = 50,
            ["hq_steel"] = 50,
            ["hq_glassplate"] = 50,
        },
        type = "item",
        slot = 64,
        threshold = 1500,
        points = 15,
    },
    [65] = {
        name = "nightvision",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 180,
            ["steel"] = 290,
            ["hq_glassplate"] = 10,
        },
        type = "item",
        slot = 65,
        threshold = 1500,
        points = 15,
    },
}


Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

MaxInventorySlots = 41

BackEngineVehicles = {
    'ninef',
    'adder',
    'vagner',
    't20',
    'infernus',
    'zentorno',
    'reaper',
    'comet2',
    'comet3',
    'jester',
    'jester2',
    'cheetah',
    'cheetah2',
    'prototipo',
    'turismor',
    'pfister811',
    'ardent',
    'nero',
    'nero2',
    'tempesta',
    'vacca',
    'bullet',
    'osiris',
    'entityxf',
    'turismo2',
    'fmj',
    're7b',
    'tyrus',
    'italigtb',
    'penetrator',
    'monroe',
    'ninef2',
    'stingergt',
    'surfer',
    'surfer2',
    'comet3',
}

Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
}