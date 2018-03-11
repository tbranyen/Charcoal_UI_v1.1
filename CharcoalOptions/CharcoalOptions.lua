
--[[
#################################################################
#
#	AddOn:		Charcoal UI
#	Version:		v1.1
#	Date:		04-05-2006
#	Author:		Crash
#	Email:		crashvegas@gmail.com
#
#	Thanks To:	Lozareth, Soote, Ansi, Adeher, NightmareX, Nour
#
#################################################################
]]

-- Track current section
CH_CurrentOptionsPanel = "Charcoal_OptionsGeneral";
CH_Options = true;

local Charcoal_LeftCombatPages = {1,2,3};
local Charcoal_CheckButtons = {};
local Charcoal_Sliders = {};
local Charcoal_DropDowns = {};
local Charcoal_ColourButtons = {};

-- Set color functions
local Charcoal_Options_ColourCallback = {
	["bg1"] = function(x) Charcoal_Options_SetColour(1, "Charcoal_OptionsBackgrounds") end,
	["bg2"] = function(x) Charcoal_Options_SetColour(2, "Charcoal_OptionsBackgrounds") end,
	["bg3"] = function(x) Charcoal_Options_SetColour(3, "Charcoal_OptionsBackgrounds") end,
	["bg4"] = function(x) Charcoal_Options_SetColour(4, "Charcoal_OptionsBackgrounds") end,
	["bg5"] = function(x) Charcoal_Options_SetColour(5, "Charcoal_OptionsBackgrounds") end,
	["bg6"] = function(x) Charcoal_Options_SetColour(6, "Charcoal_OptionsBackgrounds") end,

	["bg9"] = function(x) Charcoal_Options_SetColour(1, "Charcoal_OptionsMovables") end,
	["bg10"] = function(x) Charcoal_Options_SetColour(2, "Charcoal_OptionsMovables") end,
	["bg11"] = function(x) Charcoal_Options_SetColour(1, "Charcoal_OptionsMinimap") end,
	["bg12"] = function(x) Charcoal_Options_SetColour(2, "Charcoal_OptionsMinimap") end,
	["bg13"] = function(x) Charcoal_Options_SetColour(1, "Charcoal_OptionsXPBar") end,
	["bg14"] = function(x) Charcoal_Options_SetColour(2, "Charcoal_OptionsXPBar") end,
	["bg15"] = function(x) Charcoal_Options_SetColour(3, "Charcoal_OptionsXPBar") end,
	["bg16"] = function(x) Charcoal_Options_SetColour(4, "Charcoal_OptionsXPBar") end
};

local Charcoal_Options_ColourCancleCallback = {
	["bg1"] = function(x) Charcoal_Options_CancleColour(1, "Charcoal_OptionsBackgrounds") end,
	["bg2"] = function(x) Charcoal_Options_CancleColour(2, "Charcoal_OptionsBackgrounds") end,
	["bg3"] = function(x) Charcoal_Options_CancleColour(3, "Charcoal_OptionsBackgrounds") end,
	["bg4"] = function(x) Charcoal_Options_CancleColour(4, "Charcoal_OptionsBackgrounds") end,
	["bg5"] = function(x) Charcoal_Options_CancleColour(5, "Charcoal_OptionsBackgrounds") end,
	["bg6"] = function(x) Charcoal_Options_CancleColour(6, "Charcoal_OptionsBackgrounds") end,

	["bg9"] = function(x) Charcoal_Options_CancleColour(1, "Charcoal_OptionsMovables") end,
	["bg10"] = function(x) Charcoal_Options_CancleColour(2, "Charcoal_OptionsMovables") end,
	["bg11"] = function(x) Charcoal_Options_CancleColour(1, "Charcoal_OptionsMinimap") end,
	["bg12"] = function(x) Charcoal_Options_CancleColour(2, "Charcoal_OptionsMinimap") end,
	["bg13"] = function(x) Charcoal_Options_CancleColour(1, "Charcoal_OptionsXPBar") end,
	["bg14"] = function(x) Charcoal_Options_CancleColour(2, "Charcoal_OptionsXPBar") end,
	["bg15"] = function(x) Charcoal_Options_CancleColour(3, "Charcoal_OptionsXPBar") end,
	["bg16"] = function(x) Charcoal_Options_CancleColour(4, "Charcoal_OptionsXPBar") end
};


function Charcoal_OptionsFrame_OnShow() 
	PlaySound("igSpellBookOpen");
	local panel, tabButton, tabTitle;
	local previousTabButton = getglobal("Charcoal_OptionsFrame");
	local xoffset = 15;
	local yoffset = -40;
	local point = "TOPLEFT";

	for key, value in CH_OPTION_PANELS do
		tabButton = getglobal(value.panel .. "TabButton");
		tabButton:ClearAllPoints();
		tabButton:SetParent("Charcoal_OptionsFrame");
		tabButton:SetPoint("TOPLEFT", previousTabButton, point, xoffset, yoffset);
		tabButton:SetText(value.label);
		tabButton.id = key;

		tabTitle = getglobal(value.panel .. "_Text");
		tabTitle:SetText(value.title);

		xoffset = 0;
		yoffset = 0;
		point = "BOTTOMLEFT";
		previousTabButton = tabButton;
	end

	Charcoal_OptionsProfiles_CurrentProfile:SetText(CH_FONT_GOLD..CH_CURRENTPROFILE..CH_FONT_WHITE..CH_INDEX);
	CH_InitUI();
end


function Charcoal_OptionsFrame_OnHide()
	PlaySound("igSpellBookClose");
	CH_InitUI();
end

function Charcoal_OptionsPanel_OnShow()

	-- Initial Values
	local button, string, checked, swatch, border, iAlpha, iRed, iGreen, iBlue;
	
	-- Setup check buttons
	for key, value in Charcoal_CheckButtons do
		if(value.panel == this:GetName()) then
			button = getglobal(this:GetName() .. "Check_" .. value.id);
			string = getglobal(this:GetName() .. "Check_" .. value.id .. "_Text");
			checked = nil;
			button.disabled = nil;
			button.saveCat = value.saveCat;
			button.saveVar = value.saveVar;
			
			--Check Box
			if (CH_Config[CH_INDEX][value.saveCat][value.saveVar] == true) then
				checked = 1;
			else
				checked = 0;
			end
			
			button:SetChecked(checked);
			string:SetText(key.label);
		end
	end

	local slider, string, low, high;

	-- Setup Sliders
	for key, value in Charcoal_Sliders do
		if(value.panel == this:GetName()) then
			slider = getglobal(value.panel .. "Slider_"..value.id);
			string = getglobal(value.panel .. "Slider_"..value.id.."_Text");
			low = getglobal(value.panel .. "Slider_"..value.id.."Low");
			high = getglobal(value.panel .. "Slider_"..value.id.."High");
			
			slider.id = value.id;
			slider.saveCat = value.saveCat;
			slider.saveVar = value.saveVar;
			slider.percentage = value.percentage;
			
			slider:SetMinMaxValues(value.minValue, value.maxValue);
			slider:SetValueStep(value.valueStep);
			slider:SetValue(CH_Config[CH_INDEX][value.saveCat][value.saveVar]);
			string:SetText(key.label);
			low:SetText(value.minText);
			high:SetText(value.maxText);
		end
	end
	
	-- Setup colour buttons
	for key, value in Charcoal_ColourButtons do
		if(value.panel == this:GetName()) then
			button = getglobal(value.panel .. "Colour_" .. value.id);
			swatch = getglobal(value.panel .. "Colour_" .. value.id .. "_SwatchTexture");
			border = getglobal(value.panel .. "Colour_" .. value.id .. "_BorderTexture");
			string = getglobal(value.panel .. "Colour_" .. value.id .. "Text");

			button.disabled = nil;
			button.saveCat = value.saveCat;
			button.saveVar = value.saveVar;
			
			--Color Swatch
			iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(CH_Config[CH_INDEX][value.saveCat][value.saveVar]);

			button.a = iAlpha;
			button.r = iRed;
			button.g = iGreen;
			button.b = iBlue;
			button.initFunc = value.initFunc;
			button.swatchFunc = Charcoal_Options_ColourCallback[value.callback];
			button.cancelFunc = Charcoal_Options_ColourCancleCallback[value.callback];
			
			swatch:SetVertexColor(iRed, iGreen, iBlue);
			border:SetVertexColor(.341, .341, .341);
			
			button.id = value.id;
			button.strVar = value.strVar;
			string:SetText(key.label);
		end
	end

	-- Setup drop menus
	CH_Init_MenuControl(Charcoal_OptionsGeneral_AutoThreatPage, CH_Config[CH_INDEX].General.AutoThreatPage);
	CH_Init_MenuControl(Charcoal_OptionsXPBar_XPDropDown, CH_Config[CH_INDEX].XPBar.XPBarLocation);
	CH_Init_MenuControl(Charcoal_OptionsXPBar_XPTextDropDown, CH_Config[CH_INDEX].XPBar.XPTextLocation);
	CH_Init_MenuControl(Charcoal_OptionsMinimap_MiniMapDropDown, CH_Config[CH_INDEX].Minimap.Location);
	CH_Init_MenuControl(Charcoal_PetUseDropDown, CH_Config[CH_INDEX].ActionBars.PetFloaterUse);
	CH_Init_MenuControl(Charcoal_PetPosDropDown, CH_Config[CH_INDEX].ActionBars.PetFloaterPos);

end

-- Set tab tooltip OnEnter
function Charcoal_OptionsTabButton_OnEnter ()
	local tooltip = CH_OPTION_PANELS[this.id].tooltip;
	if(CH_Config[CH_INDEX].General.ShowTooltips) then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
		GameTooltip:SetText(tooltip, 1.0, 1.0, 1.0, 1.0, true);
	end
end


-- Set clicked tab and show coresponding panel
function Charcoal_OptionsTabButton_OnClick ()

	if(CH_OPTION_PANELS[this.id].panel ~= CH_CurrentOptionsPanel) then
		local panel = getglobal(CH_OPTION_PANELS[this.id].panel);
		-- hide previous panel
		if(CH_CurrentOptionsPanel ~= nil) then
			local oldPanel = getglobal(CH_CurrentOptionsPanel);
			oldPanel:Hide();
		end
		-- Show options panel
		panel:Show();
		CH_CurrentOptionsPanel = CH_OPTION_PANELS[this.id].panel;
		-- Play clicking sound
		PlaySound("igCharacterInfoTab");
		GameTooltip:Hide();
	end
end


function Charcoal_OptionsCheck_OnEnter ()
	local tooltip = "";
	local id = this:GetID();
	for key, value in Charcoal_CheckButtons do
		if(value.panel == CH_CurrentOptionsPanel and value.id == id) then
			tooltip = key.label .. "\n" .. CH_FONT_GOLD .. key.tooltip;
		end
	end
	if(CH_Config[CH_INDEX].General.ShowTooltips) then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
		GameTooltip:SetText(tooltip, 1.0, 1.0, 1.0, 1.0, true);
	end
end

function CharcoalCheckButton_OnClick(setting)
	local bChecked;
	
	if (this:GetChecked()) then
		bChecked = true;
	else
		bChecked = false;
	end

	-- Update saved settings
	CH_Config[CH_INDEX][this.saveCat][this.saveVar] = bChecked;		

	-- Execute
	CH_InitUI();
end

function Charcoal_OptionsSlider_OnValueChanged()
	local tooltip = "";
	local label = "";
	local id = this:GetID();
	
	for key, value in Charcoal_Sliders do
		if(value.panel == CH_CurrentOptionsPanel and value.id == id) then
			tooltip = key.label .. "\n" .. CH_FONT_GOLD .. key.tooltip;
		end
	end

	-- Update saved settings
	CH_Config[CH_INDEX][this.saveCat][this.saveVar] = this:GetValue();
	
	if(this.percentage) then
		getglobal(this:GetName().."_Display"):SetText(floor(this:GetValue()*100));
	else
		getglobal(this:GetName().."_Display"):SetText(this:GetValue());
	end

	-- set the tool tip text
	if(CH_Config[CH_INDEX].General.ShowTooltips) then
		GameTooltip:SetText(tooltip, 1.0, 1.0, 1.0, 1.0, true);
	end

	CH_InitUI();
end



function Charcoal_OptionsSlider_OnEnter()
	local tooltip = "";
	local label = "";
	local id = this:GetID();

	for key, value in Charcoal_Sliders do
		if(value.panel == CH_CurrentOptionsPanel and value.id == id) then
			tooltip = key.label .. "\n" .. CH_FONT_GOLD .. key.tooltip;
		end
	end
	
	-- set the tool tip text
	if(CH_Config[CH_INDEX].General.ShowTooltips) then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
		GameTooltip:SetText(tooltip, 1.0, 1.0, 1.0, 1.0, true);	
		GameTooltip:Show();
	end
end

function Charcoal_OptionsSlider_OnLeave()
	GameTooltip:Hide();
end

function Charcoal_OptionsSlider_UpdateFromEditBox()
	
	local value = this:GetNumber();
	if (not value) then value = 0; end
	local min, max = this:GetParent():GetMinMaxValues();
	if (this:GetParent().minlocked and value < min) then value = min; end
	if (this:GetParent().maxlocked and value > max) then value = max; end
	this:SetText(value);
	if(this:GetParent().percentage) then
		value = value / 100;
	end
	if (value >= min and value <= max) then
		this:GetParent():SetValue(value);
	end
	this:ClearFocus();
end


function CH_Init_MenuControl(frame, setting, override)
	local text;

	for _, value in getglobal(frame.table) do
		if (value.value == setting) then
			text = value.text;
			
			break;
		end
	end
	if ((not text) and frame.addoptions) then
		
		for _, value in frame.addoptions do
			if (value.value == setting) then
				text = value.text;
				break;
			end
		end
	end
	if (not text) then
		if (override) then
			text = setting;
			if (not text) then
				text = "";
			end
		else
			text = "";
		end
	end
	getglobal(frame:GetName().."_Setting"):SetText(text);
end

function CH_DropMenu_OnClick()
	local index = Charcoal_DropMenu.index;
	local subindex = Charcoal_DropMenu.subindex;
	getglobal(Charcoal_DropMenu.controlbox):SetText(getglobal(this:GetName().."_Text"):GetText());
	Charcoal_DropMenu:Hide();

	if(index ~= nil) then
		CH_Config[CH_INDEX][index][subindex] = this.value;
	end
	if (Charcoal_DropMenu.initFunc) then
		Charcoal_DropMenu.initFunc();
	end
end


function Charcoal_Options_SetColour(id, panel)
	local iRed, iGreen, iBlue = ColorPickerFrame:GetColorRGB();
	local swatch, button;
	button = getglobal(panel .. "Colour_" .. id);
	swatch = getglobal(panel .. "Colour_" .. id .. "_SwatchTexture");
	
	swatch:SetVertexColor(iRed, iGreen, iBlue);

	button.r = iRed;
	button.g = iGreen;
	button.b = iBlue;
	
	CH_Config[CH_INDEX][button.saveCat][button.saveVar] = Charcoal_ARGBToColourStr(1.0, iRed, iGreen, iBlue);
	if(button.initFunc ~= nil) then
		button.initFunc();
	else
		CH_InitUI();
	end
	
end

function Charcoal_Options_CancleColour(id, panel)
	local iRed = ColorPickerFrame.previousValues.r;
	local iGreen = ColorPickerFrame.previousValues.g;
	local iBlue = ColorPickerFrame.previousValues.b;
	
	local swatch, button;
	
	button = getglobal(panel .. "Colour_" .. id);
	swatch = getglobal(panel .. "Colour_" .. id .. "_SwatchTexture");
	
	swatch:SetVertexColor(iRed, iGreen, iBlue);

	button.r = iRed;
	button.g = iGreen;
	button.b = iBlue;
	
	CH_Config[CH_INDEX][button.saveCat][button.saveVar] = Charcoal_ARGBToColourStr(1.0, iRed, iGreen, iBlue);
	if(button.initFunc ~= nil) then
		button.initFunc();
	else
		CH_InitUI();
	end
end

function Charcoal_ColourStrToARGB(strColour)
	local i = 3;
	
	local iAlpha = tonumber(string.sub(strColour, i, i + 1), 16);
	local iRed = tonumber(string.sub(strColour, i + 2, i + 3), 16);
	local iGreen = tonumber(string.sub(strColour, i + 4, i + 5), 16);
	local iBlue = tonumber(string.sub(strColour, i + 6, i + 7), 16);
	
	iAlpha = iAlpha / 255;
	iRed = iRed / 255;
	iGreen = iGreen / 255;
	iBlue = iBlue / 255;
	
	return iAlpha, iRed, iGreen, iBlue;
end


function Charcoal_ARGBToColourStr(iAlpha, iRed, iGreen, iBlue)
	local strColour;
	
	iAlpha = floor(iAlpha * 255);
	iRed = floor(iRed * 255);
	iGreen = floor(iGreen * 255);
	iBlue = floor(iBlue * 255);
	
	strColour = format("|c%2x%2x%2x%2x", iAlpha, iRed, iGreen, iBlue);

	return strColour;
end


function CH_SetLabel(text)
	getglobal(this:GetName().."_Label"):SetText(CH_FONT_GOLD..text);
end

function CH_NewProfile(profile)
	if ((not profile) or profile == "") then
		return;
	end

	Charcoal_OptionsProfiles_NewProfile:SetText("");
	Charcoal_OptionsProfiles_NewProfile:ClearFocus();

	if (CH_Config[profile]) then
		return;
	elseif (string.find(profile, " :: ")) then
		return;
	elseif (profile == "Custom") then
		return;
	end

	CH_Config[profile] = {};
	DL_Copy_Table(CH_Config[CH_INDEX], CH_Config[profile]);
	CH_INDEX = profile;
	CH_Config[CH_PLAYER_INDEX] = profile;
	DL_Feedback("New profile, "..profile..", created.");
	CH_Update_ProfileList();
	Charcoal_OptionsProfiles_CurrentProfile:SetText(CH_FONT_GOLD..CH_CURRENTPROFILE..CH_FONT_WHITE..profile);
end

function CH_Delete_Profile(index)
	if ((not index) or index == "") then
		return;
	end

	Charcoal_OptionsProfiles_LoadProfile_Setting:SetText("");

	if (index == CH_INDEX) then
		DL_Error(CH_NODELETE);
		return;
	end

	CH_Config[index] = nil;
	CH_Update_ProfileList();
	DL_Feedback("Profile name "..index.." deleted.");
end

--[[
#################################################################
# Options Panel Arrays
#################################################################
]]

-- Colour Options
Charcoal_ColourButtons[CH_BACKGROUND_OPTIONS.MainColour] = { 
	panel = "Charcoal_OptionsBackgrounds",
	id = 1,
	callback = "bg1",
	initFunc = CH_InitBackgrounds,
	saveCat = "Backgrounds",
	saveVar = "MainColour"
};
Charcoal_ColourButtons[CH_BACKGROUND_OPTIONS.MainBorderColour] = { 
	panel = "Charcoal_OptionsBackgrounds",
	id = 2,
	callback = "bg2",
	initFunc = CH_InitBackgrounds,
	saveCat = "Backgrounds",
	saveVar = "MainBorderColour"
};
Charcoal_ColourButtons[CH_BACKGROUND_OPTIONS.LeftColour] = { 
	panel = "Charcoal_OptionsBackgrounds",
	id = 3,
	callback = "bg3",
	initFunc = CH_InitBackgrounds,
	saveCat = "Backgrounds",
	saveVar = "LeftColour"
};
Charcoal_ColourButtons[CH_BACKGROUND_OPTIONS.LeftBorderColour] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 4,
	callback = "bg4",
	initFunc = CH_InitBackgrounds,
	saveCat = "Backgrounds",
	saveVar = "LeftBorderColour"
};
Charcoal_ColourButtons[CH_BACKGROUND_OPTIONS.RightColour] = { 
	panel = "Charcoal_OptionsBackgrounds",
	id = 5,
	callback = "bg5",
	initFunc = CH_InitBackgrounds,
	saveCat = "Backgrounds",
	saveVar = "RightColour"
};
Charcoal_ColourButtons[CH_BACKGROUND_OPTIONS.RightBorderColour] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 6,
	callback = "bg6",
	initFunc = CH_InitBackgrounds,
	saveCat = "Backgrounds",
	saveVar = "RightBorderColour"
};
Charcoal_ColourButtons[CH_MOVABLE_OPTIONS.MovablesColour] = { 
	panel = "Charcoal_OptionsMovables",
	id = 1,
	callback = "bg9",
	initFunc = CH_InitBackgrounds,
	saveCat = "Movables",
	saveVar = "MovablesColour"
};
Charcoal_ColourButtons[CH_MOVABLE_OPTIONS.MovablesBorderColour] = { 
	panel = "Charcoal_OptionsMovables",
	id = 2,
	callback = "bg10",
	saveCat = "Movables",
	initFunc = CH_InitBackgrounds,
	saveVar = "MovablesBorderColour"
};
Charcoal_ColourButtons[CH_MINIMAP_OPTIONS.BackgroundColour] = { 
	panel = "Charcoal_OptionsMinimap",
	id = 1,
	callback = "bg11",
	initFunc = CH_InitBackgrounds,
	saveCat = "Minimap",
	saveVar = "BackgroundColour"
};
Charcoal_ColourButtons[CH_MINIMAP_OPTIONS.BackgroundBorderColour] = { 
	panel = "Charcoal_OptionsMinimap",
	id = 2,
	callback = "bg12",
	initFunc = CH_InitBackgrounds,
	saveCat = "Minimap",
	saveVar = "BackgroundBorderColour"
};
Charcoal_ColourButtons[CH_XP_OPTIONS.XPColour] = { 
	panel = "Charcoal_OptionsXPBar",
	id = 1,
	callback = "bg13",
	initFunc = CH_InitXPBar,
	saveCat = "XPBar",
	saveVar = "XPColour"
};
Charcoal_ColourButtons[CH_XP_OPTIONS.XPRestedColour] = { 
	panel = "Charcoal_OptionsXPBar",
	id = 2,
	callback = "bg14",
	initFunc = CH_InitXPBar,
	saveCat = "XPBar",
	saveVar = "XPRestedColour"
};
Charcoal_ColourButtons[CH_XP_OPTIONS.XPBGColour] = { 
	panel = "Charcoal_OptionsXPBar",
	id = 3,
	callback = "bg15",
	initFunc = CH_InitXPBar,
	saveCat = "XPBar",
	saveVar = "XPBGColour"
};
Charcoal_ColourButtons[CH_XP_OPTIONS.XPBorderColour] = { 
	panel = "Charcoal_OptionsXPBar",
	id = 4,
	callback = "bg16",
	initFunc = CH_InitXPBar,
	saveCat = "XPBar",
	saveVar = "XPBorderColour"
};



-- Checkbox Options
Charcoal_CheckButtons[CH_GENERAL_OPTIONS.ShowIcon] = {
	panel = "Charcoal_OptionsGeneral",
	id = 1,
	saveCat = "General",
	saveVar = "ShowIcon"
};
Charcoal_CheckButtons[CH_GENERAL_OPTIONS.ShowTooltips] = {
	panel = "Charcoal_OptionsGeneral",
	id = 2, 
	saveCat = "General",
	saveVar = "ShowTooltips"
};
Charcoal_CheckButtons[CH_GENERAL_OPTIONS.UseAutoThreat] = {
	panel = "Charcoal_OptionsGeneral",
	id = 3, 
	saveCat = "General",
	saveVar = "UseAutoThreat"
};
Charcoal_CheckButtons[CH_XP_OPTIONS.XPTextMouseOver] = {
	panel = "Charcoal_OptionsXPBar",
	id = 1, 
	saveCat = "XPBar",
	saveVar = "XPTextMouseOver"
};
Charcoal_CheckButtons[CH_MINIMAP_OPTIONS.HideZoneText] = {
	panel = "Charcoal_OptionsMinimap",
	id = 1, 
	saveCat = "Minimap",
	saveVar = "HideZoneText"
};
Charcoal_CheckButtons[CH_MINIMAP_OPTIONS.HideZoneTextButton] = {
	panel = "Charcoal_OptionsMinimap",
	id = 2, 
	saveCat = "Minimap",
	saveVar = "HideZoneTextButton"
};
Charcoal_CheckButtons[CH_MINIMAP_OPTIONS.HideGameTime] = {
	panel = "Charcoal_OptionsMinimap",
	id = 3, 
	saveCat = "Minimap",
	saveVar = "HideGameTime"
};
Charcoal_CheckButtons[CH_MINIMAP_OPTIONS.HideZoomButtons] = {
	panel = "Charcoal_OptionsMinimap",
	id = 4, 
	saveCat = "Minimap",
	saveVar = "HideZoomButtons"
};
Charcoal_CheckButtons[CH_MINIMAP_OPTIONS.SquareFrame] = {
	panel = "Charcoal_OptionsMinimap",
	id = 5, 
	saveCat = "Minimap",
	saveVar = "SquareFrame"
};
Charcoal_CheckButtons[CH_MINIMAP_OPTIONS.HideBorder] = {
	panel = "Charcoal_OptionsMinimap",
	id = 6, 
	saveCat = "Minimap",
	saveVar = "HideBorder"
};
Charcoal_CheckButtons[CH_MINIMAP_OPTIONS.SynchScale] = {
	panel = "Charcoal_OptionsMinimap",
	id = 7, 
	saveCat = "Minimap",
	saveVar = "SynchScale"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.UseDefaultBars] = {
	panel = "Charcoal_OptionsActionBars",
	id = 1, 
	saveCat = "ActionBars",
	saveVar = "UseDefaultBars"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.UseClassBars] = {
	panel = "Charcoal_OptionsActionBars",
	id = 2, 
	saveCat = "ActionBars",
	saveVar = "UseClassBars"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.SwitchBars] = {
	panel = "Charcoal_OptionsActionBars",
	id = 3, 
	saveCat = "ActionBars",
	saveVar = "SwitchBars"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.UseFriendly] = {
	panel = "Charcoal_OptionsActionBars",
	id = 4, 
	saveCat = "ActionBars",
	saveVar = "UseFriendly"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.BagsAndMenu] = {
	panel = "Charcoal_OptionsActionBars",
	id = 5, 
	saveCat = "ActionBars",
	saveVar = "BagsAndMenu"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.ControlBoxes] = {
	panel = "Charcoal_OptionsActionBars",
	id = 6, 
	saveCat = "ActionBars",
	saveVar = "ControlBoxes"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.ReverseBoxes] = {
	panel = "Charcoal_OptionsActionBars",
	id = 15, 
	saveCat = "ActionBars",
	saveVar = "ReverseBoxes"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.LabelBoxes] = {
	panel = "Charcoal_OptionsActionBars",
	id = 16, 
	saveCat = "ActionBars",
	saveVar = "LabelBoxes"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.ShowContext] = {
	panel = "Charcoal_OptionsActionBars",
	id = 7, 
	saveCat = "ActionBars",
	saveVar = "ShowContext"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.HideMidTop] = {
	panel = "Charcoal_OptionsActionBars",
	id = 8, 
	saveCat = "ActionBars",
	saveVar = "HideMidTop"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.HideMidBottom] = {
	panel = "Charcoal_OptionsActionBars",
	id = 9, 
	saveCat = "ActionBars",
	saveVar = "HideMidBottom"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.PetActionBar] = {
	panel = "Charcoal_OptionsActionBars",
	id = 10, 
	saveCat = "ActionBars",
	saveVar = "PetActionBar"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.UsePetFloater] = {
	panel = "Charcoal_OptionsActionBars",
	id = 11, 
	saveCat = "ActionBars",
	saveVar = "UsePetFloater"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.UseSubBars] = {
	panel = "Charcoal_OptionsActionBars",
	id = 12, 
	saveCat = "ActionBars",
	saveVar = "UseSubBars"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.SynchSubBars] = {
	panel = "Charcoal_OptionsActionBars",
	id = 13, 
	saveCat = "ActionBars",
	saveVar = "SynchSubBars"
};
Charcoal_CheckButtons[CH_ACTIONBARS_OPTIONS.SynchMidBars] = {
	panel = "Charcoal_OptionsActionBars",
	id = 14, 
	saveCat = "ActionBars",
	saveVar = "SynchMidBars"
};
Charcoal_CheckButtons[CH_UNITFRAMES_OPTIONS.AttachPlayerAndTarget] = {
	panel = "Charcoal_OptionsUnitFrames",
	id = 1, 
	saveCat = "UnitFrames",
	saveVar = "AttachPlayerAndTarget"
};
Charcoal_CheckButtons[CH_UNITFRAMES_OPTIONS.AttachTargetOfTarget] = {
	panel = "Charcoal_OptionsUnitFrames",
	id = 2, 
	saveCat = "UnitFrames",
	saveVar = "AttachTargetOfTarget"
};
Charcoal_CheckButtons[CH_UNITFRAMES_OPTIONS.AttachPet] = {
	panel = "Charcoal_OptionsUnitFrames",
	id = 3, 
	saveCat = "UnitFrames",
	saveVar = "AttachPet"
};
Charcoal_CheckButtons[CH_UNITFRAMES_OPTIONS.ShowCombatInfo] = {
	panel = "Charcoal_OptionsUnitFrames",
	id = 4, 
	saveCat = "UnitFrames",
	saveVar = "ShowCombatInfo"
};
Charcoal_CheckButtons[CH_UNITFRAMES_OPTIONS.ShowBuffs] = {
	panel = "Charcoal_OptionsUnitFrames",
	id = 5, 
	saveCat = "UnitFrames",
	saveVar = "ShowBuffs"
};
Charcoal_CheckButtons[CH_UNITFRAMES_OPTIONS.ShowHealthLost] = {
	panel = "Charcoal_OptionsUnitFrames",
	id = 6, 
	saveCat = "UnitFrames",
	saveVar = "ShowHealthLost"
};
Charcoal_CheckButtons[CH_UNITFRAMES_OPTIONS.ShowXP] = {
	panel = "Charcoal_OptionsUnitFrames",
	id = 7, 
	saveCat = "UnitFrames",
	saveVar = "ShowXP"
};
Charcoal_CheckButtons[CH_THRESHOLD_OPTIONS.IHealth] = {
	panel = "Charcoal_OptionsThresholds",
	id = 1, 
	saveCat = "Thresholds",
	saveVar = "IHealth"
};
Charcoal_CheckButtons[CH_THRESHOLD_OPTIONS.IMana] = {
	panel = "Charcoal_OptionsThresholds",
	id = 2, 
	saveCat = "Thresholds",
	saveVar = "IMana"
};
Charcoal_CheckButtons[CH_THRESHOLD_OPTIONS.OHealth] = {
	panel = "Charcoal_OptionsThresholds",
	id = 3, 
	saveCat = "Thresholds",
	saveVar = "OHealth"
};
Charcoal_CheckButtons[CH_THRESHOLD_OPTIONS.OMana] = {
	panel = "Charcoal_OptionsThresholds",
	id = 4, 
	saveCat = "Thresholds",
	saveVar = "OMana"
};
Charcoal_CheckButtons[CH_MOVABLE_OPTIONS.ShowDurabilityBG] = {
	panel = "Charcoal_OptionsMovables",
	id = 1, 
	saveCat = "Movables",
	saveVar = "ShowDurabilityBG"
};
Charcoal_CheckButtons[CH_MOVABLE_OPTIONS.ShowCastBarBG] = {
	panel = "Charcoal_OptionsMovables",
	id = 2, 
	saveCat = "Movables",
	saveVar = "ShowCastBarBG"
};
Charcoal_CheckButtons[CH_MOVABLE_OPTIONS.ShowQuestWatchBG] = {
	panel = "Charcoal_OptionsMovables",
	id = 3, 
	saveCat = "Movables",
	saveVar = "ShowQuestWatchBG"
};
Charcoal_CheckButtons[CH_MOVABLE_OPTIONS.ShowQuestTimerBG] = {
	panel = "Charcoal_OptionsMovables",
	id = 4, 
	saveCat = "Movables",
	saveVar = "ShowQuestTimerBG"
};
Charcoal_CheckButtons[CH_MOVABLE_OPTIONS.ShowZoneTextBG] = {
	panel = "Charcoal_OptionsMovables",
	id = 5, 
	saveCat = "Movables",
	saveVar = "ShowZoneTextBG"
};


-- Slider Options
Charcoal_Sliders[CH_GENERAL_OPTIONS.IconPosition] = {
	panel = "Charcoal_OptionsGeneral",
	id = 1,
	minValue = 0,
	maxValue = 360,
	valueStep = 1,
	minText="0",
	maxText="360",
	func = CH_InitMinimapIcon,
	saveCat = "General",
	saveVar = "IconPosition"

};
Charcoal_Sliders[CH_GENERAL_OPTIONS.MasterScale] = {
	panel = "Charcoal_OptionsGeneral",
	id = 2,
	percentage=true,
	minValue = 0.75,
	maxValue = 1.25,
	valueStep = .01,
	minText="75%",
	maxText="125%",
	saveCat = "General",
	saveVar = "MasterScale"
};

Charcoal_Sliders[CH_XP_OPTIONS.XPBarWidth] = {
	panel = "Charcoal_OptionsXPBar",
	id = 1,
	minValue = 200,
	maxValue = 1600,
	valueStep = 1,
	minText="200",
	maxText="1600",
	saveCat = "XPBar",
	saveVar = "XPBarWidth"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPBarHeight] = {
	panel = "Charcoal_OptionsXPBar",
	id = 2,
	minValue = 5,
	maxValue = 100,
	valueStep = 1,
	minText="5",
	maxText="100",
	saveCat = "XPBar",
	saveVar = "XPBarHeight"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPBarOffsetX] = {
	panel = "Charcoal_OptionsXPBar",
	id = 3,
	minValue = -100,
	maxValue = 100,
	valueStep = 1,
	minText="-100",
	maxText="100",
	saveCat = "XPBar",
	saveVar = "XPBarOffsetX"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPBarOffsetY] = {
	panel = "Charcoal_OptionsXPBar",
	id = 4,
	minValue = -100,
	maxValue = 100,
	valueStep = 1,
	minText="-100",
	maxText="100",
	saveCat = "XPBar",
	saveVar = "XPBarOffsetY"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPAlpha] = {
	panel = "Charcoal_OptionsXPBar",
	id = 5,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = 0.01,
	minText="0%",
	maxText="100%",
	saveCat = "XPBar",
	saveVar = "XPAlpha"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPBGPadding] = {
	panel = "Charcoal_OptionsXPBar",
	id = 6,
	minValue = 0,
	maxValue = 100,
	valueStep = 1,
	minText="0",
	maxText="100",
	saveCat = "XPBar",
	saveVar = "XPBGPadding"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPBGAlpha] = {
	panel = "Charcoal_OptionsXPBar",
	id = 7,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = 0.01,
	minText="0%",
	maxText="100%",
	saveCat = "XPBar",
	saveVar = "XPBGAlpha"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPBorderAlpha] = {
	panel = "Charcoal_OptionsXPBar",
	id = 8,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = 0.01,
	minText="0%",
	maxText="100%",
	saveCat = "XPBar",
	saveVar = "XPBorderAlpha"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPTextOffsetX] = {
	panel = "Charcoal_OptionsXPBar",
	id = 9,
	minValue = -100,
	maxValue = 100,
	valueStep = 1,
	minText="-100",
	maxText="100",
	saveCat = "XPBar",
	saveVar = "XPTextOffsetX"
};
Charcoal_Sliders[CH_XP_OPTIONS.XPTextOffsetY] = {
	panel = "Charcoal_OptionsXPBar",
	id = 10,
	minValue = -100,
	maxValue = 100,
	valueStep = 1,
	minText="-100",
	maxText="100",
	saveCat = "XPBar",
	saveVar = "XPTextOffsetY"
};



Charcoal_Sliders[CH_MINIMAP_OPTIONS.Scale] = {
	panel = "Charcoal_OptionsMinimap",
	id = 1,
	percentage=true,
	minValue = .8,
	maxValue = 1.25,
	valueStep = 0.01,
	minText="80%",
	maxText="125%",
	saveCat = "Minimap",
	saveVar = "Scale"
};

Charcoal_Sliders[CH_MINIMAP_OPTIONS.OffsetX] = {
	panel = "Charcoal_OptionsMinimap",
	id = 2,
	minValue = -800,
	maxValue = 800,
	valueStep = 1,
	minText="-800",
	maxText="800",
	saveCat = "Minimap",
	saveVar = "OffsetX"
};
Charcoal_Sliders[CH_MINIMAP_OPTIONS.OffsetY] = {
	panel = "Charcoal_OptionsMinimap",
	id = 3,
	minValue = -800,
	maxValue = 800,
	valueStep = 1,
	minText="-800",
	maxText="800",
	saveCat = "Minimap",
	saveVar = "OffsetY"
};
Charcoal_Sliders[CH_MINIMAP_OPTIONS.BackgroundAlpha] = {
	panel = "Charcoal_OptionsMinimap",
	id = 4,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Minimap",
	saveVar = "BackgroundAlpha"
};
Charcoal_Sliders[CH_MINIMAP_OPTIONS.BackgroundBorderAlpha] = {
	panel = "Charcoal_OptionsMinimap",
	id = 5,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Minimap",
	saveVar = "BackgroundBorderAlpha"
};
Charcoal_Sliders[CH_MINIMAP_OPTIONS.BorderPadding] = {
	panel = "Charcoal_OptionsMinimap",
	id = 6,
	minValue = -20,
	maxValue = 20,
	valueStep = 1,
	minText="-20",
	maxText="20",
	saveCat = "Minimap",
	saveVar = "BorderPadding"
};

Charcoal_Sliders[CH_ACTIONBARS_OPTIONS.ContextOffsetX] = {
	panel = "Charcoal_OptionsActionBars",
	id = 1,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "ActionBars",
	saveVar = "ContextOffsetX"
};
Charcoal_Sliders[CH_ACTIONBARS_OPTIONS.ContextOffsetY] = {
	panel = "Charcoal_OptionsActionBars",
	id = 2,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "ActionBars",
	saveVar = "ContextOffsetY"
};
Charcoal_Sliders[CH_ACTIONBARS_OPTIONS.MidOffsetX] = {
	panel = "Charcoal_OptionsActionBars",
	id = 3,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "ActionBars",
	saveVar = "MidOffsetX"
};
Charcoal_Sliders[CH_ACTIONBARS_OPTIONS.MidOffsetY] = {
	panel = "Charcoal_OptionsActionBars",
	id = 4,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "ActionBars",
	saveVar = "MidOffsetY"
};
Charcoal_Sliders[CH_THRESHOLD_OPTIONS.IHealthLimit] = {
	panel = "Charcoal_OptionsThresholds",
	id = 1,
	percentage=true,
	minValue = 0,
	maxValue = 100,
	valueStep = 1,
	minText="0%",
	maxText="100%",
	saveCat = "Thresholds",
	saveVar = "IHealthLimit"
};
Charcoal_Sliders[CH_THRESHOLD_OPTIONS.IManaLimit] = {
	panel = "Charcoal_OptionsThresholds",
	id = 2,
	percentage=true,
	minValue = 0,
	maxValue = 100,
	valueStep = 1,
	minText="0%",
	maxText="100%",
	saveCat = "Thresholds",
	saveVar = "IManaLimit"
};
Charcoal_Sliders[CH_THRESHOLD_OPTIONS.OHealthLimit] = {
	panel = "Charcoal_OptionsThresholds",
	id = 3,
	percentage=true,
	minValue = 0,
	maxValue = 100,
	valueStep = 1,
	minText="0%",
	maxText="100%",
	saveCat = "Thresholds",
	saveVar = "OHealthLimit"
};
Charcoal_Sliders[CH_THRESHOLD_OPTIONS.OManaLimit] = {
	panel = "Charcoal_OptionsThresholds",
	id = 4,
	percentage=true,
	minValue = 0,
	maxValue = 100,
	valueStep = 1,
	minText="0%",
	maxText="100%",
	saveCat = "Thresholds",
	saveVar = "OManaLimit"
};


Charcoal_Sliders[CH_BACKGROUND_OPTIONS.MainOffsetX] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 1,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "Backgrounds",
	saveVar = "MainOffsetX"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.MainOffsetY] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 2,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "Backgrounds",
	saveVar = "MainOffsetY"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.MainAlpha] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 3,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Backgrounds",
	saveVar = "MainAlpha"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.MainBorderAlpha] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 4,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Backgrounds",
	saveVar = "MainBorderAlpha"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.MainPadX] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 5,
	minValue = -800,
	maxValue = 800,
	valueStep = 1,
	minText="-800",
	maxText="800",
	saveCat = "Backgrounds",
	saveVar = "MainPadX"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.MainPadY] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 6,
	minValue = -800,
	maxValue = 800,
	valueStep = 1,
	minText="-800",
	maxText="800",
	saveCat = "Backgrounds",
	saveVar = "MainPadY"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.MainPadI] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 7,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "Backgrounds",
	saveVar = "MainPadI"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.LeftAlpha] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 8,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Backgrounds",
	saveVar = "LeftAlpha"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.LeftBorderAlpha] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 9,
	minValue = 0,
	percentage=true,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Backgrounds",
	saveVar = "LeftBorderAlpha"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.LeftHeight] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 10,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "Backgrounds",
	saveVar = "LeftHeight"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.RightAlpha] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 11,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Backgrounds",
	saveVar = "RightAlpha"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.RightBorderAlpha] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 12,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Backgrounds",
	saveVar = "RightBorderAlpha"
};
Charcoal_Sliders[CH_BACKGROUND_OPTIONS.RightHeight] = {
	panel = "Charcoal_OptionsBackgrounds",
	id = 13,
	minValue = -500,
	maxValue = 500,
	valueStep = 1,
	minText="-500",
	maxText="500",
	saveCat = "Backgrounds",
	saveVar = "RightHeight"
};

Charcoal_Sliders[CH_MOVABLE_OPTIONS.MovablesAlpha] = {
	panel = "Charcoal_OptionsMovables",
	id = 1,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Movables",
	saveVar = "MovablesAlpha"
};
Charcoal_Sliders[CH_MOVABLE_OPTIONS.MovablesBorderAlpha] = {
	panel = "Charcoal_OptionsMovables",
	id = 2,
	percentage=true,
	minValue = 0,
	maxValue = 1,
	valueStep = .01,
	minText="0%",
	maxText="100%",
	saveCat = "Movables",
	saveVar = "MovablesBorderAlpha"
};

