
CH_DAB_SETTINGS = {
	["defaultTexture"] = "Interface\\AddOns\\DiscordActionBars\\CustomTextures\\",
	["EventMacros"] = {
		["UNIT_MANA"] = "if(CH_UILoaded) then\
   CH_CheckMana(arg1);\
end",
		["UNIT_RAGE"] = "if(CH_UILoaded) then\
   CH_CheckMana(arg1);\
end",
		["UNIT_ENERGY"] = "if(CH_UILoaded) then\
   CH_CheckMana(arg1);\
end",
		["PLAYER_REGEN_DISABLED"] = "if(CH_UILoaded) then\
   CH_CheckThreat();\
end\
",
		["UNIT_HEALTH"] = "if(CH_UILoaded) then\
   CH_CheckHealth(arg1);\
end",
		["UNIT_PET"] = "if(CH_UILoaded) then\
   CH_CheckPet();\
end",
		["PLAYER_TARGET_CHANGED"] = "if(CH_UILoaded) then\
   CH_CheckTarget();\
        if(CH_Class == CH_CLASSES.hunter.cname) then\
            CH_CheckRange();\
        end\
end",
		["UPDATE_BONUS_ACTIONBAR"] = "if(CH_UILoaded) then\
   CH_CheckForm();\
end",
	},
	["FrameLocs"] = {
	},
	["INITIALIZED3.1i"] = 1,
	["INITIALIZED3.1g"] = 1,
	["INITIALIZED3.1"] = 1,
	["INITIALIZED3.0H"] = 1,
	["optionsScale"] = 90,
	["ControlBox"] = {
		[1] = {
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["mbgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["bgalpha"] = 0.5,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["Scripts"] = {
				[2] = "if(CH_UILoaded) then\
   CH_CheckControlBoxes(this:GetID());\
end",
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Page 1",
			["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
			["mbordalpha"] = 0.4,
			["b4hide"] = 1,
			["b2hide"] = 1,
			["malpha"] = 1,
			["group"] = 1,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["changePagePage"] = 1,
			["justifyH"] = "CENTER",
			["height"] = 20,
			["Anchor"] = {
				["y"] = -640,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["changePageType"] = 3,
			["b2width"] = 1,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["bordalpha"] = 0.15,
			["changePageBar"] = 3,
			["mbgalpha"] = 0.5,
			["alpha"] = 1,
			["frameStrata"] = "LOW",
			["width"] = 68,
			["mcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["color"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["fontsize"] = 14,
			["b1hide"] = 1,
			["delay"] = 0.5,
			["b3hide"] = 1,
		},
		[2] = {
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["bgalpha"] = 0.5,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["Scripts"] = {
				[2] = "if(CH_UILoaded) then\
   CH_CheckControlBoxes(this:GetID());\
end",
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Page 2",
			["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
			["bordalpha"] = 0.15,
			["changePagePage"] = 2,
			["b2hide"] = 1,
			["malpha"] = 1,
			["group"] = 2,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b4hide"] = 1,
			["fontsize"] = 14,
			["height"] = 20,
			["Anchor"] = {
				["y"] = -680,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["changePageType"] = 3,
			["b2width"] = 1,
			["changePageBar"] = 3,
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["justifyH"] = "CENTER",
			["mbgalpha"] = 0.5,
			["mcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["alpha"] = 1,
			["width"] = 68,
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["frameStrata"] = "LOW",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["mbgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["mbordalpha"] = 0.4,
			["b1hide"] = 1,
			["delay"] = 0.5,
			["b3hide"] = 1,
		},
		[3] = {
			["mcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["bgalpha"] = 0.5,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["Scripts"] = {
				[2] = "if(CH_UILoaded) then\
   CH_CheckControlBoxes(this:GetID());\
end",
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Page 3",
			["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
			["bordalpha"] = 0.15,
			["changePagePage"] = 3,
			["b2hide"] = 1,
			["malpha"] = 1,
			["group"] = 3,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b4hide"] = 1,
			["fontsize"] = 14,
			["height"] = 20,
			["Anchor"] = {
				["y"] = -720,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["mbgalpha"] = 0.5,
			["b2width"] = 1,
			["changePageBar"] = 3,
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["mbordalpha"] = 0.4,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["changePageType"] = 3,
			["frameStrata"] = "LOW",
			["alpha"] = 1,
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["width"] = 68,
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["mbgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["justifyH"] = "CENTER",
			["b1hide"] = 1,
			["delay"] = 0.5,
			["b3hide"] = 1,
		},
		[4] = {
			["mcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["bgalpha"] = 0.5,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["Scripts"] = {
				[2] = "if(CH_UILoaded) then\
   CH_CheckControlBoxes(this:GetID());\
end",
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Page 1",
			["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
			["mbordalpha"] = 0.4,
			["b4hide"] = 1,
			["b2hide"] = 1,
			["malpha"] = 1,
			["group"] = 4,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["height"] = 20,
			["justifyH"] = "CENTER",
			["changePagePage"] = 2,
			["Anchor"] = {
				["y"] = -760,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["changePageType"] = 3,
			["b2width"] = 1,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["bordalpha"] = 0.15,
			["changePageBar"] = 5,
			["mbgalpha"] = 0.5,
			["frameStrata"] = "LOW",
			["alpha"] = 1,
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["width"] = 102,
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["mbgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["fontsize"] = 14,
			["b1hide"] = 1,
			["delay"] = 0.5,
			["b3hide"] = 1,
		},
		[5] = {
			["mcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["bgalpha"] = 0.5,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["Scripts"] = {
				[2] = "if(CH_UILoaded) then\
   CH_CheckControlBoxes(this:GetID());\
end",
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Page 2",
			["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
			["bordalpha"] = 0.15,
			["changePagePage"] = 1,
			["b2hide"] = 1,
			["malpha"] = 1,
			["group"] = 5,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b4hide"] = 1,
			["justifyH"] = "CENTER",
			["height"] = 20,
			["Anchor"] = {
				["y"] = -800,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["changePageType"] = 3,
			["b2width"] = 1,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 0.7647058823529411,
				["b"] = 0,
			},
			["mbordalpha"] = 0.4,
			["changePageBar"] = 5,
			["mbgalpha"] = 0.5,
			["frameStrata"] = "LOW",
			["alpha"] = 1,
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["width"] = 101,
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["mbgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["fontsize"] = 14,
			["b1hide"] = 1,
			["delay"] = 0.5,
			["b3hide"] = 1,
		},
		[6] = {
			["mcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["bgalpha"] = 1,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["Scripts"] = {
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["onclick"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Control Box 6",
			["font"] = "Fonts\\FRIZQT__.TTF",
			["bordalpha"] = 1,
			["height"] = 25,
			["malpha"] = 1,
			["group"] = 6,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["fontsize"] = 14,
			["Anchor"] = {
				["y"] = -240,
				["x"] = 100,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["mbgalpha"] = 1,
			["hide"] = true,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["b2width"] = 1,
			["alpha"] = 1,
			["changePagePage"] = 1,
			["frameStrata"] = "LOW",
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["mbordalpha"] = 1,
			["bgcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["width"] = 120,
			["justifyH"] = "CENTER",
			["changePageBar"] = 1,
			["mbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["delay"] = 0.5,
			["changePageType"] = 1,
		},
		[7] = {
			["mcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["bgalpha"] = 1,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["Scripts"] = {
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["onclick"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Control Box 7",
			["font"] = "Fonts\\FRIZQT__.TTF",
			["bordalpha"] = 1,
			["height"] = 25,
			["malpha"] = 1,
			["group"] = 7,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["fontsize"] = 14,
			["Anchor"] = {
				["y"] = -280,
				["x"] = 100,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["mbgalpha"] = 1,
			["hide"] = true,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["b2width"] = 1,
			["alpha"] = 1,
			["changePagePage"] = 1,
			["frameStrata"] = "LOW",
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["mbordalpha"] = 1,
			["bgcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["width"] = 120,
			["justifyH"] = "CENTER",
			["changePageBar"] = 1,
			["mbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["delay"] = 0.5,
			["changePageType"] = 1,
		},
		[8] = {
			["mcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["bgalpha"] = 1,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["Scripts"] = {
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["onclick"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Control Box 8",
			["font"] = "Fonts\\FRIZQT__.TTF",
			["bordalpha"] = 1,
			["height"] = 25,
			["malpha"] = 1,
			["group"] = 8,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["fontsize"] = 14,
			["Anchor"] = {
				["y"] = -320,
				["x"] = 100,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["mbgalpha"] = 1,
			["hide"] = true,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["b2width"] = 1,
			["alpha"] = 1,
			["changePagePage"] = 1,
			["frameStrata"] = "LOW",
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["mbordalpha"] = 1,
			["bgcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["width"] = 120,
			["justifyH"] = "CENTER",
			["changePageBar"] = 1,
			["mbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["delay"] = 0.5,
			["changePageType"] = 1,
		},
		[9] = {
			["mcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["bgalpha"] = 1,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["Scripts"] = {
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["onclick"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Control Box 9",
			["font"] = "Fonts\\FRIZQT__.TTF",
			["bordalpha"] = 1,
			["height"] = 25,
			["malpha"] = 1,
			["group"] = 9,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["fontsize"] = 14,
			["Anchor"] = {
				["y"] = -360,
				["x"] = 100,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["mbgalpha"] = 1,
			["hide"] = true,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["b2width"] = 1,
			["alpha"] = 1,
			["changePagePage"] = 1,
			["frameStrata"] = "LOW",
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["mbordalpha"] = 1,
			["bgcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["width"] = 120,
			["justifyH"] = "CENTER",
			["changePageBar"] = 1,
			["mbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["delay"] = 0.5,
			["changePageType"] = 1,
		},
		[10] = {
			["mcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["bgalpha"] = 1,
			["mbordcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["Scripts"] = {
			},
			["b3width"] = 1,
			["b1width"] = 1,
			["onclick"] = 1,
			["b3texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["b1texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["text"] = "Control Box 10",
			["font"] = "Fonts\\FRIZQT__.TTF",
			["bordalpha"] = 1,
			["height"] = 25,
			["malpha"] = 1,
			["group"] = 10,
			["justifyV"] = "CENTER",
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["fontsize"] = 14,
			["Anchor"] = {
				["y"] = -400,
				["x"] = 100,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["b4width"] = 1,
			["mbgalpha"] = 1,
			["hide"] = true,
			["b2texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["bordcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["TextAnchor"] = {
				["y"] = 0,
				["x"] = 0,
				["point"] = "CENTER",
				["to"] = "CENTER",
			},
			["b2width"] = 1,
			["alpha"] = 1,
			["changePagePage"] = 1,
			["frameStrata"] = "LOW",
			["b4texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["mbordalpha"] = 1,
			["bgcolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["width"] = 120,
			["justifyH"] = "CENTER",
			["changePageBar"] = 1,
			["mbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["delay"] = 0.5,
			["changePageType"] = 1,
		},
	},
	["ButtonLockOverride"] = 3,
	["Floaters"] = {
		[78] = {
			["unusablerecolor"] = 1,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["b"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["r"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["trimEdges"] = 1,
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["hide"] = 1,
			["Scripts"] = {
			},
			["Anchor"] = {
				["y"] = 0,
				["x"] = -10,
				["point"] = "LEFT",
				["frame"] = "DAB_OtherBar_Bag",
				["to"] = "RIGHT",
			},
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 49,
			["cooldownCount"] = 1,
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["rightClick"] = 117,
			["Macro"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 0.7647058823529411,
					["r"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["frameStrata"] = "LOW",
			["rangecolor"] = {
				["r"] = 1,
				["g"] = 0.1,
				["b"] = 0.1,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["middleClick"] = 117,
			["alpha"] = 1,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
		},
		[79] = {
			["middleClick"] = 118,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["b"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["r"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
			},
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["Anchor"] = {
				["y"] = -602.03,
				["x"] = 248,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["trimEdges"] = 1,
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 50,
			["cooldownCount"] = 1,
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["rightClick"] = 118,
			["Macro"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 0.7647058823529411,
					["r"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["alpha"] = 1,
			["frameStrata"] = "LOW",
			["rangecolor"] = {
				["r"] = 1,
				["g"] = 0.1,
				["b"] = 0.1,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["unusablerecolor"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["buttonbgcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hide"] = 1,
		},
	},
	["MainMenuBar"] = {
		["xpbcolor"] = {
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["xpscale"] = 0.96,
		["xpcolor"] = {
			["r"] = 0.58,
			["g"] = 0,
			["b"] = 0.55,
		},
		["xpalpha"] = 1,
		["hideEverything"] = 1,
		["latencyscale"] = 0.9375,
	},
	["Buttons"] = {
		[1] = {
			["action"] = 25,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[2] = {
			["action"] = 26,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[3] = {
			["action"] = 27,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[4] = {
			["action"] = 28,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[5] = {
			["action"] = 29,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[6] = {
			["action"] = 30,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[7] = {
			["action"] = 31,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[8] = {
			["action"] = 32,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[9] = {
			["action"] = 33,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[10] = {
			["action"] = 34,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[11] = {
			["action"] = 35,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[12] = {
			["action"] = 36,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 1,
		},
		[13] = {
			["action"] = 111,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[14] = {
			["action"] = 112,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[15] = {
			["action"] = 113,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[16] = {
			["action"] = 114,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[17] = {
			["action"] = 115,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[18] = {
			["action"] = 116,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[19] = {
			["action"] = 117,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[20] = {
			["action"] = 118,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[21] = {
			["action"] = 119,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[22] = {
			["action"] = 120,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[23] = {
			["action"] = 101,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[24] = {
			["action"] = 102,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 2,
		},
		[25] = {
			["action"] = 19,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[26] = {
			["action"] = 20,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[27] = {
			["action"] = 21,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[28] = {
			["action"] = 22,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[29] = {
			["action"] = 23,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[30] = {
			["action"] = 24,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[31] = {
			["action"] = 25,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[32] = {
			["action"] = 26,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[33] = {
			["action"] = 27,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[34] = {
			["action"] = 28,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[35] = {
			["action"] = 29,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[36] = {
			["action"] = 30,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 3,
		},
		[37] = {
			["action"] = 31,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 4,
		},
		[38] = {
			["action"] = 32,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 4,
		},
		[39] = {
			["action"] = 33,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 4,
		},
		[40] = {
			["action"] = 34,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 4,
		},
		[41] = {
			["action"] = 35,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 4,
		},
		[42] = {
			["action"] = 36,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 4,
		},
		[43] = {
			["action"] = 73,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[44] = {
			["action"] = 74,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[45] = {
			["action"] = 75,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[46] = {
			["action"] = 76,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[47] = {
			["action"] = 77,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[48] = {
			["action"] = 78,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[49] = {
			["action"] = 79,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[50] = {
			["action"] = 80,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[51] = {
			["action"] = 81,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[52] = {
			["action"] = 82,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[53] = {
			["action"] = 83,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[54] = {
			["action"] = 84,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 5,
		},
		[55] = {
			["action"] = 67,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 6,
		},
		[56] = {
			["action"] = 68,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 6,
		},
		[57] = {
			["action"] = 69,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 6,
		},
		[58] = {
			["action"] = 70,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 6,
		},
		[59] = {
			["action"] = 71,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 6,
		},
		[60] = {
			["action"] = 72,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 6,
		},
		[61] = {
			["action"] = 91,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 7,
		},
		[62] = {
			["action"] = 92,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 7,
		},
		[63] = {
			["action"] = 93,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 7,
		},
		[64] = {
			["action"] = 94,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 7,
		},
		[65] = {
			["action"] = 95,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 7,
		},
		[66] = {
			["action"] = 101,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 8,
		},
		[67] = {
			["action"] = 102,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 8,
		},
		[68] = {
			["action"] = 103,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 8,
		},
		[69] = {
			["action"] = 104,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 8,
		},
		[70] = {
			["action"] = 109,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 9,
		},
		[71] = {
			["action"] = 110,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 9,
		},
		[72] = {
			["action"] = 111,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 9,
		},
		[73] = {
			["action"] = 112,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 9,
		},
		[74] = {
			["action"] = 113,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 10,
		},
		[75] = {
			["action"] = 114,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 10,
		},
		[76] = {
			["action"] = 115,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 10,
		},
		[77] = {
			["action"] = 116,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = 10,
		},
		[78] = {
			["action"] = 117,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = "F",
		},
		[79] = {
			["action"] = 118,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
			["Bar"] = "F",
		},
		[80] = {
			["action"] = 80,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[81] = {
			["action"] = 81,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[82] = {
			["action"] = 82,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[83] = {
			["action"] = 83,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[84] = {
			["action"] = 84,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[85] = {
			["action"] = 85,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[86] = {
			["action"] = 86,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[87] = {
			["action"] = 87,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[88] = {
			["action"] = 88,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[89] = {
			["action"] = 89,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[90] = {
			["action"] = 90,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[91] = {
			["action"] = 91,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[92] = {
			["action"] = 92,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[93] = {
			["action"] = 93,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[94] = {
			["action"] = 94,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[95] = {
			["action"] = 95,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[96] = {
			["action"] = 96,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[97] = {
			["action"] = 97,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[98] = {
			["action"] = 98,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[99] = {
			["action"] = 99,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[100] = {
			["action"] = 100,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[101] = {
			["action"] = 101,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[102] = {
			["action"] = 102,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[103] = {
			["action"] = 103,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[104] = {
			["action"] = 104,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[105] = {
			["action"] = 105,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[106] = {
			["action"] = 106,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[107] = {
			["action"] = 107,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[108] = {
			["action"] = 108,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[109] = {
			["action"] = 109,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[110] = {
			["action"] = 110,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[111] = {
			["action"] = 111,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[112] = {
			["action"] = 112,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[113] = {
			["action"] = 113,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[114] = {
			["action"] = 114,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[115] = {
			["action"] = 115,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[116] = {
			["action"] = 116,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[117] = {
			["action"] = 117,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[118] = {
			["action"] = 118,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[119] = {
			["action"] = 119,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
		[120] = {
			["action"] = 120,
			["Scripts"] = {
			},
			["Conditions"] = {
			},
		},
	},
	["DragLockOverride"] = 2,
	["OtherBar"] = {
		[12] = {
			["scale"] = 1,
			["layout"] = 1,
			["frameStrata"] = "HIGH",
			["hspacing"] = 6,
			["alpha"] = 1,
			["vspacing"] = 0,
			["Anchor"] = {
				["y"] = 297.26,
				["x"] = 213.53,
				["to"] = "TOPLEFT",
				["frame"] = "MainMenuBar",
				["point"] = "BOTTOMLEFT",
			},
			["Background"] = {
				["leftpadding"] = 8,
				["color"] = {
					["b"] = 0.2313725490196079,
					["g"] = 0.2313725490196079,
					["r"] = 0.2313725490196079,
				},
				["right"] = 5,
				["left"] = 5,
				["btexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["toppadding"] = 8,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 16,
				["tile"] = true,
				["bcolor"] = {
					["r"] = 0.05490196078431373,
					["g"] = 0.05490196078431373,
					["b"] = 0.05490196078431373,
				},
				["alpha"] = 0.85,
				["top"] = 5,
				["tileSize"] = 16,
				["bottompadding"] = 8,
				["rightpadding"] = 8,
				["bottom"] = 5,
				["balpha"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hide"] = 1,
		},
		[14] = {
			["scale"] = 0.98,
			["layout"] = 1,
			["frameStrata"] = "LOW",
			["hide"] = 1,
			["alpha"] = 1,
			["Anchor"] = {
				["y"] = -580,
				["x"] = 0,
				["to"] = "TOPLEFT",
				["frame"] = "UIParent",
				["point"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["b"] = 0.2313725490196079,
					["g"] = 0.2313725490196079,
					["r"] = 0.2313725490196079,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["toppadding"] = 0,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["rightpadding"] = 0,
				["bottom"] = 1,
				["bcolor"] = {
					["b"] = 0.05490196078431373,
					["g"] = 0.05490196078431373,
					["r"] = 0.05490196078431373,
				},
				["alpha"] = 0.85,
				["top"] = 1,
				["tileSize"] = 1,
				["bottompadding"] = 0,
				["edgeSize"] = 1,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["vspacing"] = 0,
			["hspacing"] = -3,
		},
		[11] = {
			["scale"] = 1,
			["layout"] = 2,
			["frameStrata"] = "HIGH",
			["alpha"] = 1,
			["vspacing"] = 5.5,
			["Anchor"] = {
				["y"] = 211.77,
				["x"] = 225.66,
				["to"] = "TOPLEFT",
				["frame"] = "MainMenuBar",
				["point"] = "BOTTOMLEFT",
			},
			["Background"] = {
				["leftpadding"] = 9,
				["color"] = {
					["r"] = 0.2313725490196079,
					["g"] = 0.2313725490196079,
					["b"] = 0.2313725490196079,
				},
				["right"] = 5,
				["left"] = 5,
				["btexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["toppadding"] = 9,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 16,
				["tile"] = true,
				["bcolor"] = {
					["r"] = 0.05490196078431373,
					["g"] = 0.05490196078431373,
					["b"] = 0.05490196078431373,
				},
				["alpha"] = 0.85,
				["top"] = 5,
				["tileSize"] = 16,
				["bottompadding"] = 9,
				["bottom"] = 5,
				["rightpadding"] = 8,
				["balpha"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 2,
		},
		[13] = {
			["scale"] = 0.86,
			["layout"] = 1,
			["frameStrata"] = "LOW",
			["hide"] = 1,
			["alpha"] = 1,
			["Anchor"] = {
				["y"] = -536.05,
				["x"] = 1.98,
				["to"] = "TOPLEFT",
				["frame"] = "UIParent",
				["point"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 3,
				["color"] = {
					["b"] = 0.2313725490196079,
					["g"] = 0.2313725490196079,
					["r"] = 0.2313725490196079,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["b"] = 0.05490196078431373,
					["g"] = 0.05490196078431373,
					["r"] = 0.05490196078431373,
				},
				["alpha"] = 0.85,
				["top"] = 1,
				["toppadding"] = 3,
				["bottompadding"] = 3,
				["rightpadding"] = 3,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["vspacing"] = 0,
			["hspacing"] = 3,
		},
	},
	["Keybindings"] = {
		[1] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 1,
			["down"] = 1,
		},
		[2] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 2,
			["down"] = 1,
		},
		[3] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 3,
			["down"] = 1,
		},
		[4] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 4,
			["down"] = 1,
		},
		[5] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 5,
			["down"] = 1,
		},
		[6] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 6,
			["down"] = 1,
		},
		[7] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 7,
			["down"] = 1,
		},
		[8] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 8,
			["down"] = 1,
		},
		[9] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 9,
			["down"] = 1,
		},
		[10] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 10,
			["down"] = 1,
		},
		[11] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 11,
			["down"] = 1,
		},
		[12] = {
			["suboption"] = 1,
			["option"] = 1,
			["suboption2"] = 12,
			["down"] = 1,
		},
		[13] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 1,
			["down"] = 1,
		},
		[14] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 2,
			["down"] = 1,
		},
		[15] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 3,
			["down"] = 1,
		},
		[16] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 4,
			["down"] = 1,
		},
		[17] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 5,
			["down"] = 1,
		},
		[18] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 6,
			["down"] = 1,
		},
		[19] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 7,
			["down"] = 1,
		},
		[20] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 8,
			["down"] = 1,
		},
		[21] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 9,
			["down"] = 1,
		},
		[22] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 10,
			["down"] = 1,
		},
		[23] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 11,
			["down"] = 1,
		},
		[24] = {
			["suboption"] = 2,
			["option"] = 1,
			["suboption2"] = 12,
			["down"] = 1,
		},
		[25] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 1,
			["down"] = 1,
		},
		[26] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 2,
			["down"] = 1,
		},
		[27] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 3,
			["down"] = 1,
		},
		[28] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 4,
			["down"] = 1,
		},
		[29] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 5,
			["down"] = 1,
		},
		[30] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 6,
			["down"] = 1,
		},
		[31] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 7,
			["down"] = 1,
		},
		[32] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 8,
			["down"] = 1,
		},
		[33] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 9,
			["down"] = 1,
		},
		[34] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 10,
			["down"] = 1,
		},
		[35] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 11,
			["down"] = 1,
		},
		[36] = {
			["suboption"] = 3,
			["option"] = 1,
			["suboption2"] = 12,
			["down"] = 1,
		},
		[37] = {
			["suboption"] = 4,
			["option"] = 1,
			["suboption2"] = 1,
			["down"] = 1,
		},
		[38] = {
			["suboption"] = 4,
			["option"] = 1,
			["suboption2"] = 2,
			["down"] = 1,
		},
		[39] = {
			["suboption"] = 4,
			["option"] = 1,
			["suboption2"] = 3,
			["down"] = 1,
		},
		[40] = {
			["suboption"] = 4,
			["option"] = 1,
			["suboption2"] = 4,
			["down"] = 1,
		},
		[41] = {
			["suboption"] = 4,
			["option"] = 1,
			["suboption2"] = 5,
			["down"] = 1,
		},
		[42] = {
			["suboption"] = 4,
			["option"] = 1,
			["suboption2"] = 6,
			["down"] = 1,
		},
		[43] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 1,
			["down"] = 1,
		},
		[44] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 2,
			["down"] = 1,
		},
		[45] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 3,
			["down"] = 1,
		},
		[46] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 4,
			["down"] = 1,
		},
		[47] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 5,
			["down"] = 1,
		},
		[48] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 6,
			["down"] = 1,
		},
		[49] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 7,
			["down"] = 1,
		},
		[50] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 8,
			["down"] = 1,
		},
		[51] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 9,
			["down"] = 1,
		},
		[52] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 10,
			["down"] = 1,
		},
		[53] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 11,
			["down"] = 1,
		},
		[54] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 12,
			["down"] = 1,
		},
		[55] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 13,
			["down"] = 1,
		},
		[56] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 14,
			["down"] = 1,
		},
		[57] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 15,
			["down"] = 1,
		},
		[58] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 16,
			["down"] = 1,
		},
		[59] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 17,
			["down"] = 1,
		},
		[60] = {
			["suboption"] = 5,
			["option"] = 1,
			["suboption2"] = 18,
			["down"] = 1,
		},
		[61] = {
			["suboption"] = 78,
			["option"] = 3,
			["down"] = 1,
		},
		[62] = {
			["suboption"] = 79,
			["option"] = 3,
			["down"] = 1,
		},
		[63] = {
			["suboption"] = 80,
			["option"] = 3,
			["down"] = 1,
		},
		[64] = {
			["suboption"] = 81,
			["option"] = 3,
			["down"] = 1,
		},
		[65] = {
			["suboption"] = 82,
			["option"] = 3,
			["down"] = 1,
		},
		[66] = {
			["suboption"] = 1,
			["option"] = 4,
			["down"] = 1,
		},
		[67] = {
			["suboption"] = 2,
			["option"] = 4,
			["down"] = 1,
		},
		[68] = {
			["suboption"] = 3,
			["option"] = 4,
			["down"] = 1,
		},
		[69] = {
			["suboption"] = 4,
			["option"] = 4,
			["down"] = 1,
		},
		[70] = {
			["suboption"] = 5,
			["option"] = 4,
			["down"] = 1,
		},
		[71] = {
			["suboption"] = 6,
			["option"] = 4,
			["down"] = 1,
		},
		[72] = {
			["suboption"] = 7,
			["option"] = 4,
			["down"] = 1,
		},
		[73] = {
			["suboption"] = 8,
			["option"] = 4,
			["down"] = 1,
		},
		[74] = {
			["suboption"] = 9,
			["option"] = 4,
			["down"] = 1,
		},
		[75] = {
			["suboption"] = 10,
			["option"] = 4,
			["down"] = 1,
		},
		[76] = {
			["suboption"] = 1,
			["option"] = 7,
			["down"] = 1,
		},
		[77] = {
			["suboption"] = 1,
			["option"] = 8,
			["down"] = 1,
		},
		[78] = {
			["suboption"] = 2,
			["option"] = 7,
			["down"] = 1,
		},
		[79] = {
			["suboption"] = 2,
			["option"] = 8,
			["down"] = 1,
		},
		[80] = {
			["suboption"] = 3,
			["option"] = 7,
			["down"] = 1,
		},
		[81] = {
			["suboption"] = 3,
			["option"] = 8,
			["down"] = 1,
		},
		[82] = {
			["suboption"] = 4,
			["option"] = 7,
			["down"] = 1,
		},
		[83] = {
			["suboption"] = 4,
			["option"] = 8,
			["down"] = 1,
		},
		[84] = {
			["suboption"] = 5,
			["option"] = 7,
			["down"] = 1,
		},
		[85] = {
			["suboption"] = 5,
			["option"] = 8,
			["down"] = 1,
		},
		[86] = {
			["suboption"] = 6,
			["option"] = 7,
			["down"] = 1,
		},
		[87] = {
			["suboption"] = 6,
			["option"] = 8,
			["down"] = 1,
		},
		[88] = {
			["suboption"] = 7,
			["option"] = 7,
			["down"] = 1,
		},
		[89] = {
			["suboption"] = 7,
			["option"] = 8,
			["down"] = 1,
		},
		[90] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 1,
			["down"] = 1,
		},
		[91] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 2,
			["down"] = 1,
		},
		[92] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 3,
			["down"] = 1,
		},
		[93] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 4,
			["down"] = 1,
		},
		[94] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 5,
			["down"] = 1,
		},
		[95] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 6,
			["down"] = 1,
		},
		[96] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 7,
			["down"] = 1,
		},
		[97] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 8,
			["down"] = 1,
		},
		[98] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 9,
			["down"] = 1,
		},
		[99] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 10,
			["down"] = 1,
		},
		[100] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 11,
			["down"] = 1,
		},
		[101] = {
			["suboption"] = 1,
			["option"] = 2,
			["suboption2"] = 12,
			["down"] = 1,
		},
		[102] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 1,
			["down"] = 1,
		},
		[103] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 2,
			["down"] = 1,
		},
		[104] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 3,
			["down"] = 1,
		},
		[105] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 4,
			["down"] = 1,
		},
		[106] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 5,
			["down"] = 1,
		},
		[107] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 6,
			["down"] = 1,
		},
		[108] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 7,
			["down"] = 1,
		},
		[109] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 8,
			["down"] = 1,
		},
		[110] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 9,
			["down"] = 1,
		},
		[111] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 10,
			["down"] = 1,
		},
		[112] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 11,
			["down"] = 1,
		},
		[113] = {
			["suboption"] = 2,
			["option"] = 2,
			["suboption2"] = 12,
			["down"] = 1,
		},
		[114] = {
			["option"] = 0,
			["down"] = 1,
		},
		[115] = {
			["option"] = 0,
			["down"] = 1,
		},
		[116] = {
			["option"] = 0,
			["down"] = 1,
		},
		[117] = {
			["option"] = 0,
			["down"] = 1,
		},
		[118] = {
			["option"] = 0,
			["down"] = 1,
		},
		[119] = {
			["option"] = 0,
			["down"] = 1,
		},
		[120] = {
			["option"] = 0,
			["down"] = 1,
		},
	},
	["SelfCast"] = 1,
	["CDFormat"] = 1,
	["UpdateSpeed"] = 10,
	["CustomEvents"] = {
	},
	["FreeButtons"] = {
		[1] = 120,
		[2] = 119,
		[3] = 118,
		[4] = 117,
		[5] = 116,
		[6] = 115,
		[7] = 114,
		[8] = 113,
		[9] = 112,
		[10] = 111,
		[11] = 110,
		[12] = 109,
		[13] = 108,
		[14] = 107,
		[15] = 106,
		[16] = 105,
		[17] = 104,
		[18] = 103,
		[19] = 102,
		[20] = 101,
		[21] = 100,
		[22] = 99,
		[23] = 98,
		[24] = 97,
		[25] = 96,
		[26] = 95,
		[27] = 94,
		[28] = 93,
		[29] = 92,
		[30] = 91,
		[31] = 90,
		[32] = 89,
		[33] = 88,
		[34] = 87,
		[35] = 86,
		[36] = 85,
		[37] = 84,
		[38] = 83,
		[39] = 80,
		[40] = 81,
		[41] = 82,
	},
	["KBGroups"] = {
	},
	["defaultFont"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\",
	["Bar"] = {
		[1] = {
			["unusablerecolor"] = 1,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 34,
			["cooldownCount"] = 1,
			["rightClick"] = 1,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["b"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["r"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["numBars"] = 6,
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["Conditions"] = {
				[1] = {
					["page2"] = 1,
					["overrides"] = {
					},
					["page"] = 1,
					["form"] = 0,
					["condition"] = 22,
					["response"] = 32,
				},
				[2] = {
					["page2"] = 1,
					["overrides"] = {
					},
					["page"] = 6,
					["form"] = 1,
					["condition"] = 22,
					["response"] = 32,
				},
				[3] = {
					["page2"] = 1,
					["overrides"] = {
					},
					["page"] = 8,
					["form"] = 3,
					["condition"] = 22,
					["response"] = 32,
				},
				[4] = {
					["overrides"] = {
					},
					["response"] = 0,
					["text"] = "Druid",
					["condition"] = 24,
					["unit"] = "player",
				},
				[5] = {
					["page2"] = 1,
					["overrides"] = {
						[1] = 4,
					},
					["page"] = 7,
					["form"] = 2,
					["condition"] = 22,
					["response"] = 32,
				},
			},
			["trimEdges"] = 1,
			["cbgroup"] = 1,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 15,
				["attachto"] = "TOP",
				["bgalpha"] = 1,
				["justifyV"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["attachpoint"] = "BOTTOM",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["text"] = "Default 1",
				["alpha"] = 1,
				["width"] = 100,
				["top"] = 1,
				["x"] = 0,
				["bordalpha"] = 1,
				["y"] = 10,
				["height"] = 20,
				["justifyH"] = "CENTER",
				["tileSize"] = 1,
				["hide"] = 1,
			},
			["Anchor"] = {
				["y"] = -45,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["toppadding"] = 0,
				["bottompadding"] = 0,
				["rightpadding"] = 0,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["numButtons"] = 12,
			["hide"] = 1,
			["skipPages"] = "",
			["alpha"] = 1,
			["manacolor"] = {
				["b"] = 1,
				["g"] = 0.2,
				["r"] = 0.2,
			},
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["Macro"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 0.7647058823529411,
					["r"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["frameStrata"] = "BACKGROUND",
			["middleClick"] = 1,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["page"] = 3,
			["Scripts"] = {
			},
			["vspacing"] = 0,
			["pages"] = {
				[1] = {
					[1] = 1,
					[2] = 2,
					[3] = 3,
					[4] = 4,
					[5] = 5,
					[6] = 6,
					[7] = 7,
					[8] = 8,
					[9] = 9,
					[10] = 10,
					[11] = 11,
					[12] = 12,
				},
				[2] = {
					[1] = 13,
					[2] = 14,
					[3] = 15,
					[4] = 16,
					[5] = 17,
					[6] = 18,
					[7] = 19,
					[8] = 20,
					[9] = 21,
					[10] = 22,
					[11] = 23,
					[12] = 24,
				},
				[3] = {
					[1] = 25,
					[2] = 26,
					[3] = 27,
					[4] = 28,
					[5] = 29,
					[6] = 30,
					[7] = 31,
					[8] = 32,
					[9] = 33,
					[10] = 34,
					[11] = 35,
					[12] = 36,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
			},
		},
		[2] = {
			["unusablerecolor"] = 1,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
			},
			["pages"] = {
				[1] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[2] = {
					[1] = 111,
					[2] = 112,
					[3] = 113,
					[4] = 114,
					[5] = 115,
					[6] = 116,
					[7] = 117,
					[8] = 118,
					[9] = 119,
					[10] = 120,
					[11] = 101,
					[12] = 102,
				},
				[3] = {
					[1] = 25,
					[2] = 26,
					[3] = 27,
					[4] = 28,
					[5] = 29,
					[6] = 30,
					[7] = 31,
					[8] = 32,
					[9] = 33,
					[10] = 34,
					[11] = 35,
					[12] = 36,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["size"] = 34,
			["cooldownCount"] = 1,
			["rightClick"] = 2,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["trimEdges"] = 1,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["bgalpha"] = 1,
				["justifyV"] = "CENTER",
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["attachto"] = "TOP",
				["attachpoint"] = "BOTTOM",
				["left"] = 1,
				["hide"] = 1,
				["right"] = 1,
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["x"] = 0,
				["text"] = "Default 2",
				["alpha"] = 1,
				["width"] = 100,
				["y"] = 10,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["top"] = 1,
				["height"] = 20,
				["fontsize"] = 15,
				["justifyH"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			},
			["cbgroup"] = 1,
			["Conditions"] = {
			},
			["Anchor"] = {
				["y"] = -5,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["toppadding"] = 0,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["rightpadding"] = 0,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["tileSize"] = 1,
				["bottompadding"] = 0,
				["edgeSize"] = 1,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["numButtons"] = 12,
			["hide"] = 1,
			["skipPages"] = "",
			["frameStrata"] = "BACKGROUND",
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["numBars"] = 2,
			["Macro"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 0.7647058823529411,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["middleClick"] = 2,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["alpha"] = 1,
			["page"] = 2,
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["vspacing"] = 0,
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
		},
		[3] = {
			["unusablerecolor"] = 1,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
				[9] = "if(CH_UILoaded) then\
   CH_CheckCurrentPage(3,param);\
end",
			},
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 34,
			["cooldownCount"] = 1,
			["rightClick"] = 3,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["hideGlobalCD"] = 1,
			["rows"] = 2,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["attachpoint"] = "BOTTOM",
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["attachto"] = "TOP",
				["right"] = 1,
				["justifyV"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bgalpha"] = 1,
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["text"] = "Main Right",
				["alpha"] = 1,
				["width"] = 100,
				["top"] = 1,
				["x"] = 0,
				["bordalpha"] = 1,
				["y"] = 10,
				["height"] = 20,
				["tileSize"] = 1,
				["fontsize"] = 15,
				["hide"] = 1,
			},
			["cbgroup"] = 1,
			["Conditions"] = {
			},
			["Anchor"] = {
				["y"] = -85,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["toppadding"] = 0,
				["bottompadding"] = 0,
				["rightpadding"] = 0,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["numButtons"] = 12,
			["trimEdges"] = 1,
			["skipPages"] = "",
			["frameStrata"] = "BACKGROUND",
			["manacolor"] = {
				["b"] = 0.2352941176470588,
				["g"] = 0.2352941176470588,
				["r"] = 0.2352941176470588,
			},
			["numBars"] = 3,
			["Macro"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 0.7647058823529411,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["page"] = 2,
			["middleClick"] = 3,
			["rangecolor"] = {
				["r"] = 1,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["alpha"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["unusablecolor"] = {
				["b"] = 0.3411764705882353,
				["g"] = 0.3411764705882353,
				["r"] = 0.3411764705882353,
			},
			["vspacing"] = 0,
			["pages"] = {
				[1] = {
					[1] = 1,
					[2] = 2,
					[3] = 3,
					[4] = 4,
					[5] = 5,
					[6] = 6,
					[7] = 7,
					[8] = 8,
					[9] = 9,
					[10] = 10,
					[11] = 11,
					[12] = 12,
				},
				[2] = {
					[1] = 19,
					[2] = 20,
					[3] = 21,
					[4] = 22,
					[5] = 23,
					[6] = 24,
					[7] = 25,
					[8] = 26,
					[9] = 27,
					[10] = 28,
					[11] = 29,
					[12] = 30,
				},
				[3] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
		},
		[4] = {
			["unusablerecolor"] = 1,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
				[9] = "if(CH_UILoaded) then\
   CH_CheckCurrentPage(4,param);\
end",
			},
			["target"] = "player",
			["pages"] = {
				[1] = {
					[1] = 13,
					[2] = 14,
					[3] = 15,
					[4] = 16,
					[5] = 17,
					[6] = 18,
				},
				[2] = {
					[1] = 31,
					[2] = 32,
					[3] = 33,
					[4] = 34,
					[5] = 35,
					[6] = 36,
				},
				[3] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["size"] = 34,
			["cooldownCount"] = 1,
			["rightClick"] = 4,
			["buttonbgcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["b"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["r"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["numBars"] = 3,
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["trimEdges"] = 1,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["attachpoint"] = "BOTTOM",
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["attachto"] = "TOP",
				["right"] = 1,
				["justifyV"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bgalpha"] = 1,
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["text"] = "Sub Right",
				["alpha"] = 1,
				["width"] = 100,
				["top"] = 1,
				["x"] = 0,
				["bordalpha"] = 1,
				["y"] = 10,
				["height"] = 20,
				["tileSize"] = 1,
				["fontsize"] = 15,
				["hide"] = 1,
			},
			["cbgroup"] = 1,
			["Conditions"] = {
			},
			["Anchor"] = {
				["y"] = -160,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["vspacing"] = 0,
			["numButtons"] = 6,
			["hide"] = 1,
			["skipPages"] = "",
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["frameStrata"] = "BACKGROUND",
			["Macro"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 0.7647058823529411,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["page"] = 2,
			["middleClick"] = 4,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["alpha"] = 1,
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["toppadding"] = 0,
				["bottompadding"] = 0,
				["rightpadding"] = 0,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
		},
		[5] = {
			["unusablerecolor"] = 1,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
				[9] = "if(CH_UILoaded) then\
   CH_CheckCurrentPage(5,param);\
end",
			},
			["pages"] = {
				[1] = {
					[1] = 55,
					[2] = 56,
					[3] = 57,
					[4] = 58,
					[5] = 59,
					[6] = 60,
					[7] = 61,
					[8] = 62,
					[9] = 63,
					[10] = 64,
					[11] = 65,
					[12] = 66,
				},
				[2] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["size"] = 34,
			["cooldownCount"] = 1,
			["rightClick"] = 5,
			["buttonbgcolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["hideGlobalCD"] = 1,
			["rows"] = 2,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["right"] = 1,
				["justifyV"] = "CENTER",
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 15,
				["attachto"] = "TOP",
				["bgalpha"] = 1,
				["left"] = 1,
				["hide"] = 1,
				["attachpoint"] = "BOTTOM",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["x"] = 0,
				["text"] = "Main Left",
				["alpha"] = 1,
				["width"] = 100,
				["y"] = 10,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["top"] = 1,
				["height"] = 20,
				["justifyH"] = "CENTER",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			},
			["cbgroup"] = 1,
			["Conditions"] = {
			},
			["Anchor"] = {
				["y"] = -200,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["toppadding"] = 0,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["rightpadding"] = 0,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["tileSize"] = 1,
				["bottompadding"] = 0,
				["edgeSize"] = 1,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["numButtons"] = 12,
			["trimEdges"] = 1,
			["skipPages"] = "",
			["frameStrata"] = "BACKGROUND",
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["numBars"] = 2,
			["Macro"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 0.7647058823529411,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["alpha"] = 1,
			["middleClick"] = 5,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["vspacing"] = 0,
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["page"] = 2,
		},
		[6] = {
			["middleClick"] = 6,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["target"] = "player",
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 34,
			["cooldownCount"] = 1,
			["rightClick"] = 6,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["trimEdges"] = 1,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["attachpoint"] = "BOTTOM",
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["attachto"] = "TOP",
				["right"] = 1,
				["justifyV"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bgalpha"] = 1,
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["text"] = "Sub Left",
				["alpha"] = 1,
				["width"] = 100,
				["top"] = 1,
				["x"] = 0,
				["bordalpha"] = 1,
				["y"] = 10,
				["height"] = 20,
				["tileSize"] = 1,
				["fontsize"] = 15,
				["hide"] = 1,
			},
			["cbgroup"] = 1,
			["Conditions"] = {
			},
			["Anchor"] = {
				["y"] = -275,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["vspacing"] = 0,
			["numButtons"] = 6,
			["hide"] = 1,
			["skipPages"] = "",
			["numBars"] = 2,
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["frameStrata"] = "BACKGROUND",
			["Macro"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 0.7647058823529411,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["unusablerecolor"] = 1,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["alpha"] = 1,
			["Scripts"] = {
				[9] = "if(CH_UILoaded) then\
   CH_CheckCurrentPage(6,param);\
end",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["toppadding"] = 0,
				["bottompadding"] = 0,
				["rightpadding"] = 0,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["pages"] = {
				[1] = {
					[1] = 67,
					[2] = 68,
					[3] = 69,
					[4] = 70,
					[5] = 71,
					[6] = 72,
					[7] = 7,
					[8] = 8,
					[9] = 9,
					[10] = 10,
					[11] = 11,
					[12] = 12,
				},
				[2] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 19,
					[8] = 20,
					[9] = 21,
					[10] = 22,
					[11] = 23,
					[12] = 24,
				},
				[3] = {
					[1] = 25,
					[2] = 26,
					[3] = 27,
					[4] = 28,
					[5] = 29,
					[6] = 30,
					[7] = 31,
					[8] = 32,
					[9] = 33,
					[10] = 34,
					[11] = 35,
					[12] = 36,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["page"] = 1,
		},
		[7] = {
			["middleClick"] = 7,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
				[9] = "if(CH_UILoaded) then\
   CH_CheckCurrentPage(7,param);\
end",
			},
			["target"] = "player",
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 34,
			["cooldownCount"] = 1,
			["rightClick"] = 7,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["trimEdges"] = 1,
			["cbgroup"] = 1,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["attachpoint"] = "BOTTOM",
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["attachto"] = "TOP",
				["right"] = 1,
				["justifyV"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bgalpha"] = 1,
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["text"] = "Bot Middle",
				["alpha"] = 1,
				["width"] = 100,
				["top"] = 1,
				["x"] = 0,
				["bordalpha"] = 1,
				["y"] = 10,
				["height"] = 20,
				["tileSize"] = 1,
				["fontsize"] = 15,
				["hide"] = 1,
			},
			["Anchor"] = {
				["y"] = -385,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["skipPages"] = "",
			["numButtons"] = 5,
			["Conditions"] = {
			},
			["vspacing"] = 2,
			["frameStrata"] = "BACKGROUND",
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["numBars"] = 2,
			["Macro"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 0.7647058823529411,
					["r"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["alpha"] = 1,
			["unusablerecolor"] = 1,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["page"] = 1,
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["toppadding"] = 0,
				["bottompadding"] = 0,
				["rightpadding"] = 0,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["pages"] = {
				[1] = {
					[1] = 91,
					[2] = 92,
					[3] = 93,
					[4] = 94,
					[5] = 95,
					[6] = 6,
					[7] = 7,
					[8] = 8,
					[9] = 9,
					[10] = 10,
					[11] = 11,
					[12] = 12,
				},
				[2] = {
					[1] = 96,
					[2] = 97,
					[3] = 98,
					[4] = 99,
					[5] = 100,
					[6] = 18,
					[7] = 19,
					[8] = 20,
					[9] = 21,
					[10] = 22,
					[11] = 23,
					[12] = 24,
				},
				[3] = {
					[1] = 25,
					[2] = 26,
					[3] = 27,
					[4] = 28,
					[5] = 29,
					[6] = 30,
					[7] = 31,
					[8] = 32,
					[9] = 33,
					[10] = 34,
					[11] = 35,
					[12] = 36,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
		},
		[8] = {
			["middleClick"] = 8,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
				[9] = "if(CH_UILoaded) then\
   CH_CheckCurrentPage(8,param);\
end",
			},
			["target"] = "player",
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 43,
			["cooldownCount"] = 1,
			["rightClick"] = 8,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 0,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["numBars"] = 2,
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["trimEdges"] = 1,
			["cbgroup"] = 1,
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["attachpoint"] = "BOTTOM",
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["attachto"] = "TOP",
				["right"] = 1,
				["justifyV"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bgalpha"] = 1,
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["text"] = "Top Middle",
				["alpha"] = 1,
				["width"] = 100,
				["top"] = 1,
				["x"] = 0,
				["bordalpha"] = 1,
				["y"] = 10,
				["height"] = 20,
				["tileSize"] = 1,
				["fontsize"] = 15,
				["hide"] = 1,
			},
			["Anchor"] = {
				["y"] = -435,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["toppadding"] = 0,
				["bottompadding"] = 0,
				["rightpadding"] = 0,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["numButtons"] = 4,
			["Conditions"] = {
			},
			["vspacing"] = 2,
			["frameStrata"] = "BACKGROUND",
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["Macro"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 0.7647058823529411,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["page"] = 1,
			["unusablerecolor"] = 1,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["skipPages"] = "",
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["pages"] = {
				[1] = {
					[1] = 101,
					[2] = 102,
					[3] = 103,
					[4] = 104,
					[9] = 9,
					[10] = 10,
					[11] = 11,
					[12] = 12,
				},
				[2] = {
					[1] = 105,
					[2] = 106,
					[3] = 107,
					[4] = 108,
				},
				[3] = {
					[1] = 25,
					[2] = 26,
					[3] = 27,
					[4] = 28,
					[5] = 29,
					[6] = 30,
					[7] = 31,
					[8] = 32,
					[9] = 33,
					[10] = 34,
					[11] = 35,
					[12] = 36,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["alpha"] = 1,
		},
		[9] = {
			["middleClick"] = 9,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["attachpoint"] = "BOTTOM",
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["justifyH"] = "CENTER",
				["attachto"] = "TOP",
				["right"] = 1,
				["justifyV"] = "CENTER",
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["bgalpha"] = 1,
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["text"] = "Thresholds",
				["alpha"] = 1,
				["width"] = 100,
				["top"] = 1,
				["x"] = 0,
				["bordalpha"] = 1,
				["y"] = 10,
				["height"] = 20,
				["tileSize"] = 1,
				["fontsize"] = 15,
				["hide"] = 1,
			},
			["forceTarget"] = 1,
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["target"] = "player",
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["size"] = 41,
			["cooldownCount"] = 1,
			["rightClick"] = 9,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 2,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["numBars"] = 1,
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["Conditions"] = {
			},
			["trimEdges"] = 1,
			["cbgroup"] = 1,
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["Anchor"] = {
				["y"] = -485,
				["x"] = 0,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["edgeSize"] = 1,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["toppadding"] = 0,
				["bottompadding"] = 0,
				["rightpadding"] = 0,
				["balpha"] = 1,
				["hide"] = 1,
			},
			["numButtons"] = 4,
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["alpha"] = 1,
			["Macro"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 0.7647058823529411,
					["r"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["page"] = 1,
			["unusablerecolor"] = 1,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["Scripts"] = {
			},
			["frameStrata"] = "BACKGROUND",
			["vspacing"] = 2,
			["pages"] = {
				[1] = {
					[1] = 109,
					[2] = 110,
					[3] = 111,
					[4] = 112,
					[5] = 5,
					[6] = 6,
					[7] = 7,
					[8] = 8,
					[9] = 9,
					[10] = 10,
					[11] = 11,
					[12] = 12,
				},
				[2] = {
					[1] = 13,
					[2] = 14,
					[3] = 15,
					[4] = 16,
					[5] = 17,
					[6] = 18,
					[7] = 19,
					[8] = 20,
					[9] = 21,
					[10] = 22,
					[11] = 23,
					[12] = 24,
				},
				[3] = {
					[1] = 25,
					[2] = 26,
					[3] = 27,
					[4] = 28,
					[5] = 29,
					[6] = 30,
					[7] = 31,
					[8] = 32,
					[9] = 33,
					[10] = 34,
					[11] = 35,
					[12] = 36,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["skipPages"] = "",
		},
		[10] = {
			["middleClick"] = 10,
			["checked"] = "Interface\\Buttons\\CheckButtonHilight",
			["Label"] = {
				["bgcolor"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["right"] = 1,
				["justifyV"] = "CENTER",
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["fontsize"] = 15,
				["attachto"] = "TOP",
				["bgalpha"] = 1,
				["left"] = 1,
				["hide"] = 1,
				["attachpoint"] = "BOTTOM",
				["bordcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["edgeSize"] = 1,
				["bottom"] = 1,
				["x"] = 0,
				["text"] = "Events",
				["alpha"] = 1,
				["width"] = 100,
				["y"] = 10,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["bordalpha"] = 1,
				["top"] = 1,
				["height"] = 20,
				["justifyH"] = "CENTER",
				["tileSize"] = 1,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			},
			["checkedcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Scripts"] = {
			},
			["target"] = "player",
			["pages"] = {
				[1] = {
					[1] = 113,
					[2] = 114,
					[3] = 115,
					[4] = 116,
					[5] = 5,
					[6] = 6,
					[7] = 7,
					[8] = 8,
					[9] = 9,
					[10] = 10,
					[11] = 11,
					[12] = 12,
				},
				[2] = {
					[1] = 13,
					[2] = 14,
					[3] = 15,
					[4] = 16,
					[5] = 17,
					[6] = 18,
					[7] = 19,
					[8] = 20,
					[9] = 21,
					[10] = 22,
					[11] = 23,
					[12] = 24,
				},
				[3] = {
					[1] = 25,
					[2] = 26,
					[3] = 27,
					[4] = 28,
					[5] = 29,
					[6] = 30,
					[7] = 31,
					[8] = 32,
					[9] = 33,
					[10] = 34,
					[11] = 35,
					[12] = 36,
				},
				[4] = {
					[1] = 37,
					[2] = 38,
					[3] = 39,
					[4] = 40,
					[5] = 41,
					[6] = 42,
					[7] = 43,
					[8] = 44,
					[9] = 45,
					[10] = 46,
					[11] = 47,
					[12] = 48,
				},
				[5] = {
					[1] = 49,
					[2] = 50,
					[3] = 51,
					[4] = 52,
					[5] = 53,
					[6] = 54,
					[7] = 55,
					[8] = 56,
					[9] = 57,
					[10] = 58,
					[11] = 59,
					[12] = 60,
				},
				[6] = {
					[1] = 61,
					[2] = 62,
					[3] = 63,
					[4] = 64,
					[5] = 65,
					[6] = 66,
					[7] = 67,
					[8] = 68,
					[9] = 69,
					[10] = 70,
					[11] = 71,
					[12] = 72,
				},
				[7] = {
					[1] = 73,
					[2] = 74,
					[3] = 75,
					[4] = 76,
					[5] = 77,
					[6] = 78,
					[7] = 79,
					[8] = 80,
					[9] = 81,
					[10] = 82,
					[11] = 83,
					[12] = 84,
				},
				[8] = {
					[1] = 85,
					[2] = 86,
					[3] = 87,
					[4] = 88,
					[5] = 89,
					[6] = 90,
					[7] = 91,
					[8] = 92,
					[9] = 93,
					[10] = 94,
					[11] = 95,
					[12] = 96,
				},
			},
			["size"] = 41,
			["cooldownCount"] = 1,
			["rightClick"] = 10,
			["buttonbgcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Cooldown"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 18,
			},
			["hspacing"] = 2,
			["ButtonBorder"] = {
				["rightpadding"] = 13,
				["leftpadding"] = 12,
				["color"] = {
					["r"] = 0.7294117647058823,
					["g"] = 0.7294117647058823,
					["b"] = 0.7294117647058823,
				},
				["alpha"] = 1,
				["ecolor"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["bottompadding"] = 13,
				["toppadding"] = 12,
				["etexture"] = "Interface\\Buttons\\ButtonHilight-Square",
				["texture"] = "Interface\\Buttons\\UI-Quickslot2",
			},
			["highlight"] = "Interface\\Buttons\\ButtonHilight-Square",
			["numBars"] = 1,
			["hideGlobalCD"] = 1,
			["rows"] = 1,
			["Conditions"] = {
			},
			["trimEdges"] = 1,
			["Keybinding"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["cbgroup"] = 1,
			["forceTarget"] = 1,
			["Anchor"] = {
				["y"] = -485,
				["x"] = 200,
				["point"] = "TOPLEFT",
				["frame"] = "UIParent",
				["to"] = "TOPLEFT",
			},
			["vspacing"] = 2,
			["numButtons"] = 4,
			["hide"] = 1,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["pageconditions"] = {
				[1] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[2] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[3] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[4] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[5] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[6] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[7] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
				[8] = {
					[1] = {
					},
					[2] = {
					},
					[3] = {
					},
					[4] = {
					},
					[5] = {
					},
					[6] = {
					},
					[7] = {
					},
					[8] = {
					},
					[9] = {
					},
					[10] = {
					},
					[11] = {
					},
					[12] = {
					},
				},
			},
			["manacolor"] = {
				["r"] = 0.2,
				["g"] = 0.2,
				["b"] = 1,
			},
			["alpha"] = 1,
			["Macro"] = {
				["color"] = {
					["r"] = 1,
					["g"] = 0.7647058823529411,
					["b"] = 0,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 12,
			},
			["rangerecolor"] = 1,
			["frameStrata"] = "BACKGROUND",
			["unusablerecolor"] = 1,
			["rangecolor"] = {
				["r"] = 0.7411764705882353,
				["g"] = 0,
				["b"] = 0,
			},
			["manarecolor"] = 1,
			["Count"] = {
				["color"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0.007843137254901961,
				},
				["font"] = "Interface\\AddOns\\DiscordActionBars\\CustomFonts\\Charcoal.ttf",
				["size"] = 13,
			},
			["page"] = 1,
			["unusablecolor"] = {
				["b"] = 0.392156862745098,
				["g"] = 0.392156862745098,
				["r"] = 0.392156862745098,
			},
			["skipPages"] = "",
			["buttonbg"] = "Interface\\AddOns\\DiscordLibrary\\EmptyButton",
			["Background"] = {
				["leftpadding"] = 0,
				["color"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["right"] = 1,
				["left"] = 1,
				["btexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["toppadding"] = 0,
				["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
				["rightpadding"] = 0,
				["bottom"] = 1,
				["bcolor"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["alpha"] = 1,
				["top"] = 1,
				["tileSize"] = 1,
				["bottompadding"] = 0,
				["edgeSize"] = 1,
				["balpha"] = 1,
				["hide"] = 1,
			},
		},
	},
}