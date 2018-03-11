
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


function Charcoal_OnLoad() 

	-- register events
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
	this:RegisterEvent("PLAYER_LOGIN");
	this:RegisterEvent("UNIT_NAME_UPDATE");
	this:RegisterEvent("PLAYER_XP_UPDATE");
	this:RegisterEvent("PLAYER_LEVEL_UP");
	this:RegisterEvent("UPDATE_FACTION");
	 

	-- Slash Commands
	SlashCmdList["CHARCOAL"] = Charcoal_Slash_Handler;
	SLASH_CHARCOAL1 = "/cho";
	SLASH_CHARCOAL2 = "/charcoal";

end

function Charcoal_Slash_Handler(msg)
	local command, param;
	local index = string.find(msg, " ");
	if( index) then
		command = string.sub(msg, 1, (index - 1));
		param = string.sub(msg, (index + 1)  );
	else
		command = msg;
	end
	
	if (not Charcoal_OptionsFrame) then
		local loaded,reason = LoadAddOn("CharcoalOptions");
		if(loaded==1) then
			DL_Layout_Menu("Charcoal_DropMenu", CH_DropMenu_OnClick);
			Charcoal_OptionsFrameHeaderText:SetText(CH_TITLE..CH_VERSION);
			Charcoal_OptionsFrame:SetBackdropColor(0, 0, 0, 1);
		else
			DEFAULT_CHAT_FRAME:AddMessage(CH_NOOPTIONS);
		end
	end
	if (Charcoal_OptionsFrame) then
		if(Charcoal_OptionsFrame:IsVisible()) then
			Charcoal_OptionsFrame:Hide();
		else
			Charcoal_OptionsFrame:Show();
		end
	end

end

function Charcoal_OnEvent(event)
	if (event == "PLAYER_ENTERING_WORLD") then

		-- Set player class, name and realm
		CH_Class = UnitClass("player");	
		CH_PlayerName = UnitName("player");
		CH_PlayerRealm = GetCVar("realmName");


		CH_PLAYER_INDEX = CH_PlayerName .. " :: " .. CH_PlayerRealm;
		
		-- Check that the required versions of DAB and DUF are present
		if (DAB_VERSION >= CH_DAB_VERSION and DUF_VERSION >= CH_DUF_VERSION and DL_VERSION >= CH_DL_VERSION) then
			
			-- Initialize Charcoal config
			if(CH_Config == nil) then
				CH_Config = {};
				CH_Config.CH_Version = CH_VERSION;
			end

			-- Add exisitng profiles
			CH_Update_ProfileList();

			-- Initialize player data
			if (CH_Config[CH_PLAYER_INDEX] == nil) then
				CH_ShowWizard(1);
			else
				CH_INDEX = CH_Config[CH_PLAYER_INDEX];
			end

		else
			-- Display error
			CH_ShowWizard(0);
		end
	end
	if (event == "PLAYER_XP_UPDATE" or event == "PLAYER_LEVEL_UP" or event == "UNIT_NAME_UPDATE" or event == "VARIABLES_LOADED" or event == "PLAYER_ENTERING_WORLD" or event == "UPDATE_FACTION") then
		CH_CheckXPBar();
	end

	if (event == "PLAYER_ENTERING_WORLD" and CH_UILoaded) then
		CH_InitUI();
	end
end


function Charcoal_OnUpdate(timer)
	
	CH_UpdateIncrement = CH_UpdateIncrement + timer;
	
	if(not CH_UILoaded) then
		if(CH_DABLoaded and CH_DUFLoaded and DAB_INITIALIZED and DUF_INITIALIZED) then
			if(CH_INDEX ~= nil) then
				CH_UILoaded = true;
				CH_InitOneTime();
				CH_InitUI();
				CH_CheckCurrentPage(3);
				CH_CheckCurrentPage(5);
			end
		end
	end
	

	if(CH_UpdateIncrement > CH_UpdateTimer and CH_UILoaded) then
		
		
		CH_UpdateIncrement = 0.0;

		if(CH_Class == CH_CLASSES.hunter.cname) then
			CH_CheckRange();
		end

		CH_SetZoneText();

		if(HasPetUI()) then
			CH_CheckPetHappiness();
		end
	end
	
end


function CH_ShowWizard(frame)

	Charcoal_WizardFrame:Show();

	if (frame == 0) then
		-- Discord missing or wrong version
		Charcoal_ErrorFrame:Show();
	elseif (frame == 1) then
		-- Intall Charcoal on new character
		Charcoal_IntroFrame:Show();
	elseif (frame == 2) then
		-- Show prebuilt profile selections
		Charcoal_ProfileFrame:Show();
	else
		-- Should never fall in here
	end
end


function CH_LoadDiscord()

	-- make sure we're ready to load
	if(CH_DABLoaded and CH_DUFLoaded and DAB_INITIALIZED and DUF_INITIALIZED) then
		
		-- create Charcoal settings
		CH_InitSettingsData();

		if (DUF_Settings["Charcoal v1.1"] == nil) then
			DUF_Settings["Charcoal v1.1"] = {};
			DL_Copy_Table(CH_DUF_SETTINGS_A, DUF_Settings["Charcoal v1.1"]);
		end
		
		-- load Charcoal DUF settings
		DUF_INDEX = "Charcoal v1.1";
		DUF_Settings[DUF_PLAYER_INDEX] = "Charcoal v1.1";
		DUF_Initialize_NewSettings();
		DUF_Initialize_AllFrames();
		DL_Feedback(DUF_TEXT.SettingsLoaded);

		if (DAB_Settings["Charcoal v1.1"] == nil) then
			DAB_Settings["Charcoal v1.1"] = {};
			DL_Copy_Table(CH_DAB_SETTINGS, DAB_Settings["Charcoal v1.1"]);
		end

		-- load Charcoal DAB settings
		DAB_Load_Profile("Charcoal v1.1");
		
		CH_SetMessage(CH_INITALIZED .. CH_PlayerName);

		Charcoal_IntroFrame:Hide();
		CH_ShowWizard(2);

		CH_UILoaded = true;
		CH_InitOneTime();
		CH_InitUI();	
	end
end


function CH_Load_Profile(index)
	if ((not index) or index == "") then
		index = Charcoal_OptionsProfiles_LoadProfile_Setting:GetText();
		if ((not index) or index == "") then return; end
	end
	if (index == CH_INDEX) then return; end

	Charcoal_OptionsProfiles_LoadProfile_Setting:SetText("");
	Charcoal_OptionsProfiles_CurrentProfile:SetText(CH_FONT_GOLD..CH_CURRENTPROFILE..CH_FONT_WHITE..index);

	CH_INDEX = index;
	CH_Config[CH_PLAYER_INDEX] = index;
	CH_InitUI();
	DL_Feedback("Profile named "..index.." loaded.");
end


function CH_Update_ProfileList()
	CH_PROFILES = {};

	local name, value, desc;

	for profile in CH_PRESETS do
		name = CH_PRESETS[profile].text;
		value = CH_PRESETS[profile].value;
		CH_Config[name] = {};
		DL_Copy_Table(value, CH_Config[name]);
	end

	if (CH_CUSTOM_SETTINGS) then
		CH_Config.Custom = {};
		DL_Copy_Table(CH_CUSTOM_SETTINGS, CH_Config.Custom);
		CH_CUSTOM_SETTINGS = nil;
	end

	for profile in CH_Config do
		if ((not string.find(profile, " :: ")) and profile ~= "CH_Version") then
			if (profile == "Custom") then
				DL_AddToMenu(CH_PROFILES, profile, nil, CH_NOCHANGES);
			else
				DL_AddToMenu(CH_PROFILES, profile);
			end
		end
	end
end



--[[
#################################################################
# Interface Functions
#################################################################
]]


function CH_GetCurrentForm()
	for i=1,GetNumShapeshiftForms() do
		local _, name, isActive = GetShapeshiftFormInfo(i);
		if isActive == 1 then return i, name; end
	end
	return 0;
end

function CH_CheckForm()
	if(CH_Class ~= CH_CLASSES.hunter and CH_Config[CH_INDEX].ActionBars.UseClassBars) then
		CH_FormID, CH_FormName = CH_GetCurrentForm();
		if(CH_FormName == CH_FORMS.defensive or CH_FormName == CH_FORMS.bear or CH_FormName == CH_FORMS.direbear or CH_FormName == CH_FORMS.stealth) then
			CH_CheckControlBoxes(2)
		elseif(CH_FormName == CH_FORMS.berserker or CH_FormName == CH_FORMS.cat) then
			CH_CheckControlBoxes(3)
		elseif(CH_FormID == 0 or CH_FormName == CH_FORMS.battle) then
			CH_CheckControlBoxes(1)
		end
	end
end

function CH_CheckHealth(arg)

	local settings;
	if( arg =="player") then
		local settings = CH_Config[CH_INDEX].Thresholds;
		local pHealth = UnitHealth("player") / UnitHealthMax("player") *100;

		if(settings.IHealth) then
			if(pHealth < settings.IHealthLimit and not UnitIsDeadOrGhost("player")) then
				DAB_ActionButton_FauxShow(71);
				
			else
				DAB_ActionButton_FauxHide(71);
			end
		end

		if(settings.OHealth) then
			if(pHealth < settings.OHealthLimit and not UnitIsDeadOrGhost("player")) then
				DAB_ActionButton_FauxShow(70);
			else
				DAB_ActionButton_FauxHide(70);
			end			
		end
	
	end

	if(arg =="pet") then
		if(UnitHealth("pet") <= 0) then
			CH_CheckPet();
		end
	end

end

function CH_CheckMana(arg)
	local settings;
	if( arg =="player") then
		local settings = CH_Config[CH_INDEX].Thresholds;
		local pMana = UnitMana("player") / UnitManaMax("player") *100;

		if(settings.IMana) then
			if(pMana < settings.IManaLimit and not UnitIsDeadOrGhost("player")) then
				DAB_ActionButton_FauxShow(72);
				
			else
				DAB_ActionButton_FauxHide(72);
			end
		end

		if(settings.OMana) then
			if(pMana < settings.OManaLimit and not UnitIsDeadOrGhost("player")) then
				DAB_ActionButton_FauxShow(73);
			else
				DAB_ActionButton_FauxHide(73);
			end			
		end
	
	end
end


function CH_CheckRange()
	if(UnitExists("target") and (not UnitIsFriend("player", "target") or UnitIsEnemy("player", "target")) and CH_Config[CH_INDEX].ActionBars.UseClassBars) then
		if (IsActionInRange(CH_RangeCheckID) == 1 or IsActionInRange(CH_RangeCheckID) == nil) then
			CH_CheckControlBoxes(1);
		else
			if(CheckInteractDistance("target", 1) )then
				CH_CheckControlBoxes(2);
			else
				CH_CheckControlBoxes(1);
			end
		end
	end	
end


function CH_CheckThreat()
	local settings = CH_Config[CH_INDEX].General;
	if(settings.UseAutoThreat) then
		DAB_Bar_SetPage(5, settings.AutoThreatPage);
	end
end


function CH_CheckThresholds()
	local settings = CH_Config[CH_INDEX].UnitFrames;

	if(not settings.IHealth) then
		DAB_ActionButton_FauxHide(71);
	end
	if(not settings.OHealth) then
		DAB_ActionButton_FauxHide(70);
	end
	if(not settings.IMana) then
		DAB_ActionButton_FauxHide(72);
	end
	if(not settings.OMana) then
		DAB_ActionButton_FauxHide(73);
	end
end


function CH_CheckControlBoxes(id)

	local settings = CH_Config[CH_INDEX].ActionBars;
	local highlightFrame = getglobal("Charcoal_RightCBFrame");
	local bar;
	local page;
	local box = getglobal("DAB_ControlBox_"..id);
	
	if (id > 3) then
		highlightFrame = getglobal("Charcoal_LeftCBFrame");
	else

	end
	highlightFrame:ClearAllPoints();
	highlightFrame:SetAllPoints(box);

	if(id == 1) then
		bar = 3;
		page = 1;
	elseif (id == 2) then
		bar = 3;
		page = 2;
	elseif (id == 3) then
		bar = 3;
		page = 3;
	elseif (id == 4) then
		bar = 5;
		page = 1;
	elseif (id == 5) then
		bar = 5;
		page = 2;
	end

	DAB_Bar_SetPage(bar, page);

	if(settings.SynchSubBars) then
		DAB_Bar_SetPage(bar+1, page);
	end
end

function CH_CheckCurrentPage(bar, direction)
	-- so not proud of this code
	local page;
	local highlightFrame;
	local box;
	local settings = CH_Config[CH_INDEX].ActionBars;

	if((bar == 4 or bar == 6) and not settings.SynchSubBars) then
		return;
	end

	page = DAB_Settings[DAB_INDEX].Bar[bar].page;
	

	if(bar == 3 or bar == 4) then

		highlightFrame = getglobal("Charcoal_RightCBFrame");
		if(direction ~= nil) then
			if(direction == -1) then
				page=page+1;
			else
				page=page-1;
			end
			
		end
		if (page > 3) then
			page=1;
		end
		if (page < 1) then
			page = 3;
		end

		if(bar == 3) then
			if(settings.SynchSubBars) then DAB_Bar_SetPage(4,page); end
		else
			DAB_Bar_SetPage(3,page);
		end

		box=page;
	end


	if(bar == 5 or bar == 6) then
		highlightFrame = getglobal("Charcoal_LeftCBFrame");

		if(page == 2) then 
			box=4;
			page=1;
		else
			box=5;
			page=2;
		end

		if(bar == 5) then
			if(settings.SynchSubBars) then DAB_Bar_SetPage(6,page); end
		else
			DAB_Bar_SetPage(5,page);
		end
	end

	if(bar == 7 or bar == 8) then

		if(page == 2) then 
			page=1;
		else
			page=2;
		end

		if(bar == 7) then
			if(settings.SynchMidBars) then DAB_Bar_SetPage(8,page); end
		else
			if(settings.SynchMidBars) then DAB_Bar_SetPage(7,page); end
		end
	end

	if (bar < 7) then
		highlightFrame:SetParent(getglobal("DAB_ControlBox_"..box));
		highlightFrame:SetFrameLevel(0);
		highlightFrame:SetAllPoints(getglobal("DAB_ControlBox_"..box));		
	end

end


function CH_CheckPet()

	local settings = CH_Config[CH_INDEX].ActionBars;

	if(HasPetUI()) then
		if (UnitIsDead("pet")) then
			DAB_OtherBar_Pet:Hide();
			if(settings.HideMidTop) then
				DAB_Bar_Show(8);
			else
				DAB_Bar_Hide(8);
			end
			if(settings.HideMidBottom) then
				DAB_Bar_Show(7);
			else
				DAB_Bar_Hide(7);
			end
		else
			if(settings.PetActionBar) then
				DAB_Bar_Hide(7);
				DAB_Bar_Hide(8);
			else
				if(settings.HideMidTop) then
					DAB_Bar_Show(8);
				else
					DAB_Bar_Hide(8);
				end
				if(settings.HideMidBottom) then
					DAB_Bar_Show(7);
				else
					DAB_Bar_Hide(7);
				end
			end
		end
	else
		if(settings.HideMidTop) then
			DAB_Bar_Show(8);
		else
			DAB_Bar_Hide(8);
		end
		if(settings.HideMidBottom) then
			DAB_Bar_Show(7);
		else
			DAB_Bar_Hide(7);
		end

		DAB_Floater_Hide(79);
	end
end


function CH_CheckPetHappiness()
	local settings = CH_Config[CH_INDEX].ActionBars
	if(CH_Class == CH_CLASSES.hunter.cname and settings.UsePetFloater and settings.PetFloaterUse == 1) then
		pa, pb, pc = GetPetHappiness();
		if(pa < 3) then
			DAB_Floater_Show(79);
		else
			DAB_Floater_Hide(79);
		end
	end
end


function CH_CheckTarget()
	local settings = CH_Config[CH_INDEX].ActionBars;

	if(settings.UseDefaultBars) then
		if(UnitIsEnemy("player", "target") and settings.UseFriendly) then
			DAB_Bar_SetPage(2, 1);
		elseif(UnitIsFriend("player", "target") and settings.UseFriendly) then
			DAB_Bar_SetPage(2, 2);
		elseif (settings.UseFriendly) then
			DAB_Bar_SetPage(2, 1);
		end
	else
		if(UnitIsEnemy("player", "target") and settings.UseFriendly) then
			DAB_Bar_SetPage(7, 1);
			DAB_Bar_SetPage(8, 1);
		elseif(UnitIsFriend("player", "target") and settings.UseFriendly) then
			DAB_Bar_SetPage(7, 2);
			DAB_Bar_SetPage(8, 2);
		elseif (settings.UseFriendly) then
			DAB_Bar_SetPage(7, 1);
			DAB_Bar_SetPage(8, 1);
		end
	end

end


function CH_CheckClass()
	CH_Class = UnitClass("player");
end


function CH_CheckXPBar()

	local name,reaction,min,max,value = GetWatchedFactionInfo();

	if (name and CH_UILoaded and CH_Config[CH_INDEX].XPBar.XPBarLocation ~= 7) then
		local color = FACTION_BAR_COLORS[reaction];
		if (color) then
			if (color.r) then
				Charcoal_RepBar:SetStatusBarColor(color.r,color.g,color.b);
			end
		end
		Charcoal_RepBar:SetMinMaxValues(min,max);
		Charcoal_RepBar:SetValue(value);
		Charcoal_XPTextFrame_Text:SetText(name.." ["..getglobal("FACTION_STANDING_LABEL"..reaction).."] - "..value-min.."/"..max-min);
		Charcoal_RepBar:Show();
		Charcoal_XPBGFrame:Show();
		Charcoal_XPBar:Hide();
		Charcoal_RestXPBar:Hide();

	else
		Charcoal_RepBar:Hide();
		
		CH_CurrXP = UnitXP("player");
		CH_MaxXP = UnitXPMax("player");
		CH_RestXP = GetXPExhaustion();
		if(CH_RestXP == nil) then CH_RestXP = 0; end
		Charcoal_XPBar:SetMinMaxValues(0, CH_MaxXP);
		Charcoal_RestXPBar:SetMinMaxValues(0, CH_MaxXP);
		Charcoal_XPBar:SetValue(CH_CurrXP);
		Charcoal_XPTextFrame_Text:SetText(CH_CurrXP .. " / " .. CH_MaxXP .. " - ".. CH_RestXP .. " " .. CH_RESTED);
		if(CH_UILoaded and CH_Config[CH_INDEX].XPBar.XPBarLocation ~= 7) then
			Charcoal_XPBar:Show();
			Charcoal_XPBGFrame:Show();
			if (CH_RestXP ~= nil) then
				Charcoal_RestXPBar:Show();
				Charcoal_RestXPBar:SetValue(CH_CurrXP + CH_RestXP);
			else 
				CH_RestXP = 0;
				Charcoal_RestXPBar:Hide();
			end
		else
			Charcoal_XPBar:Hide();
			Charcoal_RestXPBar:Hide();
			Charcoal_XPBGFrame:Hide();
		end
	end
end


--[[
#################################################################
# Layout Functions
#################################################################
]]

function CH_InitOneTime()

		ChatFrameEditBox:SetBackdrop({bgFile = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }});
		ChatFrameEditBox:SetBackdropColor(0,0,0,.75);
		ChatFrameEditBox:SetBackdropBorderColor(.415,.415,.415,1);

		ChatFrameEditBoxLeft:Hide();
		ChatFrameEditBoxRight:Hide();
		ChatFrameEditBoxLeft:SetWidth(500);

		Charcoal_XPTextFrame:Hide();
end


function CH_InitBagsAndMenu(default)

	local settings = CH_Config[CH_INDEX].ActionBars;
	
	if (default and settings.BagsAndMenu) then
		-- default bars on, bags and menu showing

		DAB_OtherBar_Menu:SetPoint("BOTTOMRIGHT", "Charcoal_AnchorFrame", "BOTTOM", 1, 9);
		DAB_OtherBar_Bag:SetPoint("BOTTOMLEFT", "Charcoal_AnchorFrame", "BOTTOM", -1, 9);
		DAB_OtherBar_Menu:Show();
		DAB_OtherBar_Bag:Show();
		DAB_Floater_Show(78);
	elseif(not default and settings.BagsAndMenu) then

		DAB_OtherBar_Menu:SetPoint("BOTTOMRIGHT", "Charcoal_AnchorFrame", "BOTTOMLEFT", 1, 7);
		DAB_OtherBar_Bag:SetPoint("BOTTOMLEFT", "Charcoal_AnchorFrame", "BOTTOMRIGHT", -1, 7);
		DAB_OtherBar_Menu:Show();
		DAB_OtherBar_Bag:Show();

		DAB_Floater_Show(78);
	end
	if (not settings.BagsAndMenu) then
		DAB_Floater_Hide(78);
		DAB_OtherBar_Initialize(13);
		DAB_OtherBar_Initialize(14);
	end
end


function CH_InitBars(default, scale)
	
	local settings = CH_Config[CH_INDEX].ActionBars;

	if (default) then
		DAB_Bar_Show(1);
		DAB_Bar_Show(2);
		DAB_Bar_Hide(3);
		DAB_Bar_Hide(4);
		DAB_Bar_Hide(5);
		DAB_Bar_Hide(6);

		if (settings.BagsAndMenu) then
			DAB_ActionBar_2:SetPoint("BOTTOM", "DAB_OtherBar_Menu", "TOPRIGHT", -1, 2);
		else 
			DAB_ActionBar_2:SetPoint("BOTTOM", "Charcoal_AnchorFrame", "BOTTOM", 0, 9);
		end
		DAB_ActionBar_1:SetPoint("BOTTOM", "DAB_ActionBar_2", "TOP", 0, 0);
	else
		DAB_Bar_Hide(1);
		DAB_Bar_Hide(2);
		DAB_Bar_Show(3);
		DAB_Bar_Show(4);
		DAB_Bar_Show(5);
		DAB_Bar_Show(6);

		local attachLeft;
		local attachRight;

		if(settings.UseSubBars) then
			DAB_Bar_Show(4);
			DAB_Bar_Show(6);
			DAB_ActionBar_3:SetPoint("BOTTOMLEFT", "DAB_ActionBar_4", "TOPLEFT", 0, 0);
			DAB_ActionBar_5:SetPoint("BOTTOMLEFT", "DAB_ActionBar_6", "TOPLEFT", 0, 0);
			if(settings.SwitchBars) then
				attachLeft = getglobal("DAB_ActionBar_4");
				attachRight = getglobal("DAB_ActionBar_6");
			else
				attachLeft = getglobal("DAB_ActionBar_6");
				attachRight = getglobal("DAB_ActionBar_4");
			end
		else
			DAB_Bar_Hide(4);
			DAB_Bar_Hide(6);
			if(settings.SwitchBars) then
				attachLeft = getglobal("DAB_ActionBar_3");
				attachRight = getglobal("DAB_ActionBar_5");
			else
				attachLeft = getglobal("DAB_ActionBar_5");
				attachRight = getglobal("DAB_ActionBar_3");
			end
		end

		local boxLeft;
		local boxRight;

		if(settings.SwitchBars) then
			if(settings.ReverseBoxes) then
				boxLeft = getglobal("DAB_ControlBox_3");
				boxRight = getglobal("DAB_ControlBox_5");
			else
				boxLeft = getglobal("DAB_ControlBox_1");
				boxRight = getglobal("DAB_ControlBox_5");
			end
		else
			if(settings.ReverseBoxes) then
				boxLeft = getglobal("DAB_ControlBox_5");
				boxRight = getglobal("DAB_ControlBox_3");
			else
				boxLeft = getglobal("DAB_ControlBox_5");
				boxRight = getglobal("DAB_ControlBox_1");
			end
		end

		if(settings.ControlBoxes) then
			attachRight:SetPoint("BOTTOMLEFT", boxRight, "TOPLEFT", 0, 3);
			attachLeft:SetPoint("BOTTOMRIGHT", boxLeft, "TOPRIGHT", 0, 3);
		elseif(settings.BagsAndMenu) then
			attachRight:SetPoint("BOTTOMLEFT", "DAB_OtherBar_Bag", "TOPLEFT", 1, 0);
			attachLeft:SetPoint("BOTTOMRIGHT", "DAB_OtherBar_Menu", "TOPRIGHT", -1, 0);
		else
			attachRight:SetPoint("BOTTOMLEFT", "Charcoal_AnchorFrame", "BOTTOMRIGHT", 0, 10);
			attachLeft:SetPoint("BOTTOMRIGHT", "Charcoal_AnchorFrame", "BOTTOMLEFT", 0, 10);
		end

	end


	if(not settings.HideMidBottom) then
		DAB_Bar_Hide(7);
	else
		DAB_Bar_Show(7);
	end

	if(not settings.HideMidTop) then
		DAB_Bar_Hide(8);
	else
		DAB_Bar_Show(8);
	end

	DAB_ActionBar_7:SetPoint("BOTTOM", "Charcoal_AnchorFrame", "BOTTOM", 0 + settings.MidOffsetX, 80 + settings.MidOffsetY);
	DAB_ActionBar_8:SetPoint("BOTTOM", "DAB_ActionBar_7", "TOP", 0, 0);

	DAB_ActionBar_9:SetPoint("BOTTOM", "Charcoal_AnchorFrame", "BOTTOM", 0 + settings.ContextOffsetX, 270 + settings.ContextOffsetY);
	DAB_ActionBar_10:SetPoint("BOTTOM", "DAB_ActionBar_9", "TOP", 0, 3);


end


function CH_InitBoxes(default)
	
	local settings = CH_Config[CH_INDEX].ActionBars;

	if (default or not settings.ControlBoxes) then
		for i=1,5 do
			DAB_ControlBox_Hide(i);
		end
	else
		for i=1,5 do
			DAB_ControlBox_Show(i);
		end

		if(settings.BagsAndMenu and settings.SwitchBars) then
			if(settings.ReverseBoxes) then
				DAB_ControlBox_3:SetPoint("BOTTOMRIGHT", "DAB_OtherBar_Menu", "TOPRIGHT", -1, 0);
				DAB_ControlBox_2:SetPoint("RIGHT", "DAB_ControlBox_3", "LEFT", 0, 0);
				DAB_ControlBox_1:SetPoint("RIGHT", "DAB_ControlBox_2", "LEFT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMLEFT", "DAB_OtherBar_Bag", "TOPLEFT", 1, 1);
				DAB_ControlBox_4:SetPoint("LEFT", "DAB_ControlBox_5", "RIGHT", 0, 0);	
			else
				DAB_ControlBox_1:SetPoint("BOTTOMRIGHT", "DAB_OtherBar_Menu", "TOPRIGHT", -1, 0);
				DAB_ControlBox_2:SetPoint("RIGHT", "DAB_ControlBox_1", "LEFT", 0, 0);
				DAB_ControlBox_3:SetPoint("RIGHT", "DAB_ControlBox_2", "LEFT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMLEFT", "DAB_OtherBar_Bag", "TOPLEFT", 1, 1);
				DAB_ControlBox_4:SetPoint("LEFT", "DAB_ControlBox_5", "RIGHT", 0, 0);
			end
	
		elseif (settings.BagsAndMenu) then
			if(settings.ReverseBoxes) then
				DAB_ControlBox_3:SetPoint("BOTTOMLEFT", "DAB_OtherBar_Bag", "TOPLEFT", 1, 0);
				DAB_ControlBox_2:SetPoint("LEFT", "DAB_ControlBox_3", "RIGHT", 0, 0);
				DAB_ControlBox_1:SetPoint("LEFT", "DAB_ControlBox_2", "RIGHT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMRIGHT", "DAB_OtherBar_Menu", "TOPRIGHT", -1, 0);
				DAB_ControlBox_4:SetPoint("RIGHT", "DAB_ControlBox_5", "LEFT", 0, 0);	
			else
				DAB_ControlBox_1:SetPoint("BOTTOMLEFT", "DAB_OtherBar_Bag", "TOPLEFT", 1, 0);
				DAB_ControlBox_2:SetPoint("LEFT", "DAB_ControlBox_1", "RIGHT", 0, 0);
				DAB_ControlBox_3:SetPoint("LEFT", "DAB_ControlBox_2", "RIGHT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMRIGHT", "DAB_OtherBar_Menu", "TOPRIGHT", -1, 0);
				DAB_ControlBox_4:SetPoint("RIGHT", "DAB_ControlBox_5", "LEFT", 0, 0);	
			end
		elseif(settings.SwitchBars) then
			if(settings.ReverseBoxes) then
				DAB_ControlBox_3:SetPoint("BOTTOMRIGHT", "Charcoal_AnchorFrame", "BOTTOMLEFT", 0, 10);
				DAB_ControlBox_2:SetPoint("RIGHT", "DAB_ControlBox_3", "LEFT", 0, 0);
				DAB_ControlBox_1:SetPoint("RIGHT", "DAB_ControlBox_2", "LEFT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMLEFT", "Charcoal_AnchorFrame", "BOTTOMRIGHT", 0, 10);
				DAB_ControlBox_4:SetPoint("LEFT", "DAB_ControlBox_5", "RIGHT", 0, 0);	
			else
				DAB_ControlBox_1:SetPoint("BOTTOMRIGHT", "Charcoal_AnchorFrame", "BOTTOMLEFT", 0, 10);
				DAB_ControlBox_2:SetPoint("RIGHT", "DAB_ControlBox_1", "LEFT", 0, 0);
				DAB_ControlBox_3:SetPoint("RIGHT", "DAB_ControlBox_2", "LEFT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMLEFT", "Charcoal_AnchorFrame", "BOTTOMRIGHT", 0, 10);
				DAB_ControlBox_4:SetPoint("LEFT", "DAB_ControlBox_5", "RIGHT", 0, 0);
			end
		else
			if(settings.ReverseBoxes) then
				DAB_ControlBox_3:SetPoint("BOTTOMLEFT", "Charcoal_AnchorFrame", "BOTTOMRIGHT", 0, 10);
				DAB_ControlBox_2:SetPoint("LEFT", "DAB_ControlBox_3", "RIGHT", 0, 0);
				DAB_ControlBox_1:SetPoint("LEFT", "DAB_ControlBox_2", "RIGHT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMRIGHT", "Charcoal_AnchorFrame", "BOTTOMLEFT", 0, 10);
				DAB_ControlBox_4:SetPoint("RIGHT", "DAB_ControlBox_5", "LEFT", 0, 0);
			else
				DAB_ControlBox_1:SetPoint("BOTTOMLEFT", "Charcoal_AnchorFrame", "BOTTOMRIGHT", 0, 10);
				DAB_ControlBox_2:SetPoint("LEFT", "DAB_ControlBox_1", "RIGHT", 0, 0);
				DAB_ControlBox_3:SetPoint("LEFT", "DAB_ControlBox_2", "RIGHT", 0, 0);
				DAB_ControlBox_5:SetPoint("BOTTOMRIGHT", "Charcoal_AnchorFrame", "BOTTOMLEFT", 0, 10);
				DAB_ControlBox_4:SetPoint("RIGHT", "DAB_ControlBox_5", "LEFT", 0, 0);
			end
		end
	end


	if(settings.LabelBoxes) then
		for key, value in CH_CLASSES do
			if(CH_Class == value.cname) then
				getglobal("DAB_ControlBox_1_Text"):SetText(value.boxes[1]);
				getglobal("DAB_ControlBox_2_Text"):SetText(value.boxes[2]);
				getglobal("DAB_ControlBox_3_Text"):SetText(value.boxes[3]);
				getglobal("DAB_ControlBox_4_Text"):SetText(CH_CONTROLBOXES_SECONDARY[1]);
				getglobal("DAB_ControlBox_5_Text"):SetText(CH_CONTROLBOXES_SECONDARY[2]);
				return;
			end
		end
	end
end


function CH_InitUnits(default)
	
	local settings = CH_Config[CH_INDEX].UnitFrames;

	if(default) then
		if(settings.AttachPlayerAndTarget) then
			DUF_PlayerFrame:ClearAllPoints();
			DUF_PlayerFrame:SetPoint("BOTTOMLEFT", "DAB_ActionBar_1", "TOPLEFT", -5, -1);
			DUF_PlayerFrame:SetScale(CH_Config[CH_INDEX].General.MasterScale);
			DUF_TargetFrame:ClearAllPoints();
			DUF_TargetFrame:SetPoint("BOTTOMRIGHT", "DAB_ActionBar_1", "TOPRIGHT", 5, -1);
			DUF_TargetFrame:SetScale(CH_Config[CH_INDEX].General.MasterScale);

		else
			DUF_PlayerFrame:SetScale(DUF_Settings[DUF_INDEX].player.scale);
			DUF_TargetFrame:SetScale(DUF_Settings[DUF_INDEX].target.scale);
		end
	else
		if(settings.AttachPlayerAndTarget) then
			local attachLeft = getglobal("DAB_ActionBar_5");
			local attachRight = getglobal("DAB_ActionBar_3");

			if(CH_Config[CH_INDEX].ActionBars.SwitchBars) then
				attachLeft = getglobal("DAB_ActionBar_3");
				attachRight = getglobal("DAB_ActionBar_5");
			end
			DUF_PlayerFrame:ClearAllPoints();
			DUF_PlayerFrame:SetPoint("BOTTOMLEFT", attachLeft, "TOPLEFT", -5, -1);
			DUF_PlayerFrame:SetScale(CH_Config[CH_INDEX].General.MasterScale);
			DUF_TargetFrame:ClearAllPoints();
			DUF_TargetFrame:SetPoint("BOTTOMRIGHT", attachRight, "TOPRIGHT", 5, -1);
			DUF_TargetFrame:SetScale(CH_Config[CH_INDEX].General.MasterScale);
		else
			DUF_PlayerFrame:SetScale(DUF_Settings[DUF_INDEX].player.scale);
			DUF_TargetFrame:SetScale(DUF_Settings[DUF_INDEX].target.scale);
		end
	end

	if(settings.AttachPlayerAndTarget) then
			DUF_PlayerFrame_Background:Hide();
			DUF_TargetFrame_Background:Hide();
	else
			DUF_PlayerFrame_Background:Show();
			DUF_TargetFrame_Background:Show();
			--DUF_Settings[DUF_INDEX].player.hidebg;
			--DUF_Settings[DUF_INDEX].target.hidebg;
	end

	if(settings.AttachTargetOfTarget) then
		DUF_TargetOfTargetFrame:ClearAllPoints();
		DUF_TargetOfTargetFrame:SetPoint("BOTTOMLEFT", "Charcoal_RightBGFrame", "TOPLEFT", 10, 15);
		DUF_TargetOfTargetFrame:SetScale(CH_Config[CH_INDEX].General.MasterScale);
	else
		DUF_TargetOfTargetFrame:SetScale(DUF_Settings[DUF_INDEX].targettarget.scale);
	end

	if(settings.AttachPet) then
		DUF_PetFrame:ClearAllPoints();
		DUF_PetFrame:SetPoint("BOTTOMRIGHT", "Charcoal_LeftBGFrame", "TOPRIGHT", -10, 15);
		DUF_PetFrame:SetScale(CH_Config[CH_INDEX].General.MasterScale);
	else
		DUF_PetFrame:SetScale(DUF_Settings[DUF_INDEX].pet.scale);
	end

	if (UnitLevel("player") == 60 or not settings.ShowXP) then
		DUF_PlayerFrame_TextBox_9:Hide();
	else
		DUF_PlayerFrame_TextBox_9:Show();
	end

	if(settings.ShowCombatInfo) then
		DUF_PlayerFrame_TextBox_7:Show();
		DUF_TargetFrame_TextBox_7:Show();
	else
		DUF_PlayerFrame_TextBox_7:Hide();
		DUF_TargetFrame_TextBox_7:Hide();
	end

	--[[
	if(settings.ShowBuffs) then
		DUF_PlayerFrame_Buffs:Show();
		DUF_TargetFrame_Buffs:Show();
		DUF_PlayerFrame_Debuffs:Show();
		DUF_TargetFrame_Debuffs:Show();
	else
		DUF_PlayerFrame_Buffs:Hide();
		DUF_TargetFrame_Buffs:Hide();
		DUF_PlayerFrame_Debuffs:Hide();
		DUF_TargetFrame_Debuffs:Hide();
	end
	]]

	if(settings.ShowHealthLost) then
		DUF_PlayerFrame_TextBox_5:Show();
		DUF_TargetFrame_TextBox_5:Show();
		DUF_PetFrame_TextBox_5:Show();
		DUF_TargetOfTargetFrame_TextBox_5:Show();
		DUF_PartyFrame1_TextBox_5:Show();
		DUF_PartyFrame2_TextBox_5:Show();
		DUF_PartyFrame3_TextBox_5:Show();
		DUF_PartyFrame4_TextBox_5:Show();
	else
		DUF_PlayerFrame_TextBox_5:Hide();
		DUF_TargetFrame_TextBox_5:Hide();
		DUF_PetFrame_TextBox_5:Hide();
		DUF_TargetOfTargetFrame_TextBox_5:Hide();
		DUF_PartyFrame1_TextBox_5:Hide();
		DUF_PartyFrame2_TextBox_5:Hide();
		DUF_PartyFrame3_TextBox_5:Hide();
		DUF_PartyFrame4_TextBox_5:Hide();
	end
end

function CH_InitMinimap()
	local settings = CH_Config[CH_INDEX].Minimap;

	-- Scale the map to start
	if(settings.SynchScale) then
		MinimapCluster:SetScale(CH_Config[CH_INDEX].General.MasterScale);
	else
		MinimapCluster:SetScale(settings.Scale);
	end

	-- Set Minimap options 
	if(settings.HideGameTime) then 
		GameTimeFrame:Hide();
	else 
		GameTimeFrame:Show(); 
	end

	if(settings.HideZoomButtons) then 
		MinimapZoomIn:Hide(); 
		MinimapZoomOut:Hide();
	else 
		MinimapZoomIn:Show(); 
		MinimapZoomOut:Show();
	end

	if(settings.HideZoneText) then 
		MinimapZoneText:Hide();
	else 
		MinimapZoneText:Show(); 
	end

	if(settings.HideZoneTextButton) then 
		MinimapToggleButton:Hide();
		MinimapBorderTop:Hide();
	else 
		MinimapToggleButton:Show();
		MinimapBorderTop:Show();
	end

	if(settings.SquareFrame) then 
		Minimap:SetMaskTexture("Interface\\AddOns\\Charcoal\\Images\\MinimapMask") -- Set the texture for the minimap mask, defaults to "Textures\\MinimapMask".
		MinimapBorder:SetTexture("Interface\\AddOns\\Charcoal\\Images\\UI-Minimap-Border");
	else
		Minimap:SetMaskTexture("Textures\\MinimapMask");
		MinimapBorder:SetTexture("Interface\\Minimap\\UI-Minimap-Border");
	end

	if(settings.HideBorder) then 
		MinimapBorder:Hide();

	else
		MinimapBorder:Show();
	end

	MinimapCluster:ClearAllPoints();
	if(settings.Location == 1) then
		MinimapCluster:SetPoint("BOTTOM", "Charcoal_AnchorFrame", "BOTTOM", -8 + settings.OffsetX, 80 + settings.OffsetY);

	elseif(settings.Location == 2) then
		MinimapCluster:SetPoint("TOPRIGHT", "UIParent", "TOPRIGHT", 0 + settings.OffsetX, 0 + settings.OffsetY);
	elseif(settings.Location == 3) then
		MinimapCluster:SetPoint("TOP", "UIParent", "TOP", -6 + settings.OffsetX, 0 + settings.OffsetY);
	elseif(settings.Location == 4) then
		MinimapCluster:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 0 + settings.OffsetX, 0 + settings.OffsetY);
	end

	MiniMapTrackingFrame:SetFrameLevel(5);
	
end


function CH_InitXPBar()

	local settings = CH_Config[CH_INDEX].XPBar;

	local iAlpha, iRed, iGreen, iBlue;
	local barHeight, barWidth;
	local xPadding, yPadding;

	iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings.XPColour);
	Charcoal_XPBar:SetStatusBarColor(iRed, iGreen, iBlue, settings.XPAlpha);

	iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings.XPRestedColour);
	Charcoal_RestXPBar:SetStatusBarColor(iRed, iGreen, iBlue, settings.XPAlpha);

	iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings.XPBGColour);
	Charcoal_XPBGFrame:SetBackdropColor(iRed, iGreen, iBlue, settings.XPBGAlpha);

	iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings.XPBorderColour);
	Charcoal_XPBGFrame:SetBackdropBorderColor(iRed, iGreen, iBlue, settings.XPBorderAlpha);

	barHeight = settings.XPBarHeight;
	barWidth = settings.XPBarWidth;
	Charcoal_RestXPBar:SetWidth(barWidth);
	Charcoal_XPBar:SetWidth(barWidth);

	barPadding = settings.XPBGPadding;
	barXOffset = settings.XPBarOffsetX;
	barYOffset = settings.XPBarOffsetY;

	Charcoal_XPBGFrame:ClearAllPoints();
	Charcoal_XPBar:ClearAllPoints();
	Charcoal_RestXPBar:ClearAllPoints();
	Charcoal_RepBar:ClearAllPoints();

	Charcoal_XPBar:Show();
	Charcoal_RestXPBar:Show();
	Charcoal_XPBGFrame:Show();
	Charcoal_RepBar:Show();

	if(settings.XPBarLocation == 1) then

		Charcoal_XPBar:SetPoint("TOP", "UIParent", "TOP", barXOffset, barYOffset);
		Charcoal_RestXPBar:SetPoint("TOP", "UIParent", "TOP", barXOffset, barYOffset);
		Charcoal_RepBar:SetPoint("TOP", "UIParent", "TOP", barXOffset, barYOffset);
	elseif(settings.XPBarLocation == 2) then

		Charcoal_XPBar:SetPoint("BOTTOM", "UIParent", "BOTTOM", barXOffset, barYOffset);
		Charcoal_RestXPBar:SetPoint("BOTTOM", "UIParent", "BOTTOM", barXOffset, barYOffset);
		Charcoal_RepBar:SetPoint("BOTTOM", "UIParent", "BOTTOM", barXOffset, barYOffset);

	elseif(settings.XPBarLocation == 3 and TitanPanelBarButton) then
		Charcoal_XPBar:SetAllPoints("TitanPanelBarButton");
		Charcoal_RestXPBar:SetAllPoints("TitanPanelBarButton");
		Charcoal_RepBar:SetAllPoints("TitanPanelBarButton");

		barWidth = math.floor(TitanPanelBarButton:GetWidth());
		barHeight = math.floor(TitanPanelBarButton:GetHeight()-3);

	elseif(settings.XPBarLocation == 4 and TitanPanelAuxBarButton) then
		Charcoal_XPBar:SetAllPoints("TitanPanelAuxBarButton");
		Charcoal_RestXPBar:SetAllPoints("TitanPanelAuxBarButton");
		Charcoal_RepBar:SetAllPoints("TitanPanelAuxBarButton");

		barWidth = math.floor(TitanPanelAuxBarButton:GetWidth());
		barHeight = math.floor(TitanPanelAuxBarButton:GetHeight()-3);

	elseif(settings.XPBarLocation == 5 and BossPanelFrame1) then
		Charcoal_XPBar:SetAllPoints("BossPanelFrame1");
		Charcoal_RestXPBar:SetAllPoints("BossPanelFrame1");
		Charcoal_RepBar:SetAllPoints("BossPanelFrame1");

		barWidth = math.floor(BossPanelFrame1:GetWidth());
		barHeight = math.floor(BossPanelFrame1:GetHeight()-3);
	
	elseif(settings.XPBarLocation == 6 and FuBarFrame1) then
		Charcoal_XPBar:SetAllPoints("FuBarFrame1");
		Charcoal_RestXPBar:SetAllPoints("FuBarFrame1");
		Charcoal_RepBar:SetAllPoints("FuBarFrame1");

		barWidth = math.floor(FuBarFrame1:GetWidth());
		barHeight = math.floor(FuBarFrame1:GetHeight()-3);
	else
		Charcoal_XPBar:Hide();
		Charcoal_RestXPBar:Hide();
		Charcoal_XPBGFrame:Hide();
		Charcoal_RepBar:Hide();
	end

	Charcoal_RestXPBar:SetWidth(barWidth);
	Charcoal_XPBar:SetWidth(barWidth);
	Charcoal_RepBar:SetWidth(barWidth);
	Charcoal_RestXPBar:SetHeight(barHeight);
	Charcoal_XPBar:SetHeight(barHeight);
	Charcoal_RepBar:SetHeight(barHeight);

	Charcoal_XPBGFrame:SetPoint("TOPLEFT", "Charcoal_XPBar", "TOPLEFT", 0 - barPadding, 0 + barPadding );
	Charcoal_XPBGFrame:SetPoint("TOPRIGHT", "Charcoal_XPBar", "TOPRIGHT", barPadding, barPadding);
	Charcoal_XPBGFrame:SetPoint("BOTTOMLEFT", "Charcoal_XPBar", "BOTTOMLEFT", 0 - barPadding, 0 - barPadding);
	Charcoal_XPBGFrame:SetPoint("BOTTOMRIGHT", "Charcoal_XPBar", "BOTTOMRIGHT", 0 + barPadding, 0 - barPadding);

	-- Text label
	Charcoal_XPTextFrame:ClearAllPoints();
	
	if(settings.XPTextLocation == 1) then
		Charcoal_XPTextFrame:SetPoint("LEFT", "Charcoal_XPBar", "LEFT", 0+settings.XPTextOffsetX,0+settings.XPTextOffsetY);
		Charcoal_XPTextFrame_Text:SetJustifyH("LEFT");
		Charcoal_XPTextFrame:Show();
	elseif(settings.XPTextLocation == 2) then
		Charcoal_XPTextFrame:SetPoint("CENTER", "Charcoal_XPBar", "CENTER", 0+settings.XPTextOffsetX,0+settings.XPTextOffsetY);
		Charcoal_XPTextFrame_Text:SetJustifyH("CENTER");
		Charcoal_XPTextFrame:Show();
	elseif(settings.XPTextLocation == 3) then
		Charcoal_XPTextFrame:SetPoint("RIGHT", "Charcoal_XPBar", "RIGHT", 0+settings.XPTextOffsetX,0+settings.XPTextOffsetY);
		Charcoal_XPTextFrame_Text:SetJustifyH("RIGHT");
		Charcoal_XPTextFrame:Show();
	else
		Charcoal_XPTextFrame:Hide();
	end

	if(settings.XPTextMouseOver) then
		Charcoal_XPTextFrame:Hide();
	end

end

function CH_Toggle_XPText(arg)
local settings = CH_Config[CH_INDEX].XPBar;
	if(arg == 1 and settings.XPTextMouseOver) then
		Charcoal_XPTextFrame:Show();
	elseif(arg == 0 and settings.XPTextMouseOver) then
		Charcoal_XPTextFrame:Hide();
	end
end

function CH_MiniMap_OnMouseWheel(value)
	if ( value > 0 ) then Minimap_ZoomIn()
	elseif ( value < 0 ) then Minimap_ZoomOut()
	end
end


function CH_InitMovables()
	local settings = CH_Config[CH_INDEX].Movables;

	if(CH_ToggleMovables == 0) then
		for key, value in CH_MOVABLES do
			frame = getglobal("Charcoal_"..value.frame.."Frame")
			saveVar = "Show"..value.frame.."BG";
			if(settings[saveVar])then
				frame:Show();
			else
				frame:Hide();
			end
			getglobal("Charcoal_"..value.frame.."Frame_Label"):Hide();
		end
	end
end

function CH_InitUI()

	Charcoal_LeftBGFrame:ClearAllPoints();
	Charcoal_RightBGFrame:ClearAllPoints();
	Charcoal_MainBGFrame:ClearAllPoints();
	
	DAB_ActionBar_10:ClearAllPoints();
	DAB_ActionBar_9:ClearAllPoints();
	DAB_ActionBar_8:ClearAllPoints();
	DAB_ActionBar_7:ClearAllPoints();	
	DAB_ActionBar_6:ClearAllPoints();
	DAB_ActionBar_5:ClearAllPoints();
	DAB_ActionBar_4:ClearAllPoints();
	DAB_ActionBar_3:ClearAllPoints();
	DAB_ActionBar_2:ClearAllPoints();
	DAB_ActionBar_1:ClearAllPoints();

	DAB_ControlBox_1:ClearAllPoints();
	DAB_ControlBox_2:ClearAllPoints();
	DAB_ControlBox_3:ClearAllPoints();
	DAB_ControlBox_4:ClearAllPoints();
	DAB_ControlBox_5:ClearAllPoints();

	DAB_OtherBar_Menu:ClearAllPoints();
	DAB_OtherBar_Bag:ClearAllPoints();

	Charcoal_AnchorFrame:ClearAllPoints();

	useDefault = CH_Config[CH_INDEX].ActionBars.UseDefaultBars;
	masterScale = CH_Config[CH_INDEX].General.MasterScale;

	Charcoal_AnchorFrame:SetPoint("BOTTOM", "UIParent", "BOTTOM", 0 + CH_Config[CH_INDEX].Backgrounds.MainOffsetX, 2 + CH_Config[CH_INDEX].Backgrounds.MainOffsetY);
	Charcoal_AnchorFrame:SetWidth(MinimapCluster:GetWidth() + CH_Config[CH_INDEX].Backgrounds.MainPadI);

	CH_InitBagsAndMenu(useDefault, masterScale);
	CH_InitBoxes(useDefault);

	CH_InitBars(useDefault, masterScale);
	CH_InitUnits(useDefault);

	CH_InitMinimap();
	CH_InitMinimapIcon();
	CH_InitBackgrounds();
	CH_InitXPBar();
	CH_CheckXPBar();
	CH_InitMasterScale(masterScale);

	CH_CheckHealth("player");
	CH_CheckMana("player");

	CH_InitPetBar();
	CH_CheckPet();
	CH_CheckTarget();
	CH_CheckClass();
	CH_CheckThresholds();
	CH_CheckForm();
	CH_InitMovables();
end

function CH_InitBackgrounds()

	local frames = {"Main", "Left", "Right", "XP"};
	local name, colour, alpha, borderColour, borderAlpha;
	local settings = CH_Config[CH_INDEX].Backgrounds;

	for i=1, 4 do
		name = frames[i];
		colour = name.."Colour";
		alpha = name.."Alpha";
		borderColour = name.."BorderColour";
		borderAlpha = name.."BorderAlpha";
		frame=getglobal("Charcoal_"..name.."BGFrame");

		frame:SetBackdrop({bgFile = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }});
		
		iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings[colour]);
		frame:SetBackdropColor(iRed, iGreen, iBlue, settings[alpha]);
		iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings[borderColour]);
		frame:SetBackdropBorderColor(iRed, iGreen, iBlue, settings[borderAlpha]);
		frame:SetFrameLevel(0);
		frame:Show();
	end



	local iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings.MainColour);
	local jAlpha, jRed, jGreen, jBlue = Charcoal_ColourStrToARGB(settings.MainBorderColour);

	local frames = {
					["PlayerFrame"] = "player",
					["TargetFrame"] = "target",
					["TargetOfTargetFrame"] = "targettarget",
					["PetFrame"] = "pet", 
					["PartyFrame1"] = "party", 
					["PartyFrame2"] = "party", 
					["PartyFrame3"] = "party", 
					["PartyFrame4"] = "party", 
					["PartyPetFrame1"] = "partypet", 
					["PartyPetFrame2"] = "partypet", 
					["PartyPetFrame3"] = "partypet", 
					["PartyPetFrame4"] = "partypet"
				};
	
	local bgtexture = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop";
	local bgframe;
	local dufSettings;

	for key, value in frames do
		bgframe = getglobal("DUF_"..key.."_Background");
		bgframe:SetBackdrop({bgFile = bgtexture, edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }});
		bgframe:SetBackdropColor(iRed, iGreen, iBlue, settings.MainAlpha);
		bgframe:SetBackdropBorderColor(jRed, jGreen, jBlue, settings.MainBorderAlpha);

		DUF_Settings[DUF_INDEX][value].bgcolor.r = iRed;
		DUF_Settings[DUF_INDEX][value].bgcolor.g = iGreen;
		DUF_Settings[DUF_INDEX][value].bgcolor.b = iBlue;
		DUF_Settings[DUF_INDEX][value].bgalpha = settings.MainAlpha;

		DUF_Settings[DUF_INDEX][value].bordercolor.r = jRed;
		DUF_Settings[DUF_INDEX][value].bordercolor.g = jGreen;
		DUF_Settings[DUF_INDEX][value].bordercolor.b = jBlue;
		DUF_Settings[DUF_INDEX][value].borderalpha = settings.MainBorderAlpha;
	end


	frames = nil;
	frames = {
					["Pet"] = 11,
					["Form"] = 12,
					["Bag"] = 13,
					["Menu"] = 14,
				};
	
	local bgtexture = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop";
	bgframe = nil;

	for key, value in frames do
		bgframe = getglobal("DAB_OtherBar_"..key);
		bgframe:SetBackdrop({bgFile = bgtexture, edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }});
		bgframe:SetBackdropColor(jRed, jGreen, jBlue, .85);
		bgframe:SetBackdropBorderColor(iRed, iGreen, iBlue, settings.MainBorderAlpha);

		DAB_Settings[DAB_INDEX].OtherBar[value].Background.color.r = jRed;
		DAB_Settings[DAB_INDEX].OtherBar[value].Background.color.g = jGreen;
		DAB_Settings[DAB_INDEX].OtherBar[value].Background.color.b = jBlue;
		DAB_Settings[DAB_INDEX].OtherBar[value].Background.alpha = .85;

		DAB_Settings[DAB_INDEX].OtherBar[value].Background.bcolor.r = iRed;
		DAB_Settings[DAB_INDEX].OtherBar[value].Background.bcolor.g = iGreen;
		DAB_Settings[DAB_INDEX].OtherBar[value].Background.bcolor.b = iBlue;
		DAB_Settings[DAB_INDEX].OtherBar[value].Background.balpha = settings.MainBorderAlpha;
	end



	Charcoal_MainBGFrame:SetPoint("BOTTOM", "Charcoal_AnchorFrame", "BOTTOM", 0, 0);

	if(CH_Config[CH_INDEX].UnitFrames.AttachPlayerAndTarget) then
			Charcoal_MainBGFrame:SetPoint("TOPLEFT", "DUF_PlayerFrame", "TOPLEFT", -4 - settings.MainPadX, 3);
			Charcoal_MainBGFrame:SetPoint("TOPRIGHT", "DUF_TargetFrame", "TOPRIGHT", 4 + settings.MainPadY, 3);
	elseif(CH_Config[CH_INDEX].ActionBars.UseDefault) then
			Charcoal_MainBGFrame:SetPoint("TOPLEFT", "DAB_ActionBar_1", "TOPLEFT", -9 - settings.MainPadX, 9);
			Charcoal_MainBGFrame:SetPoint("TOPRIGHT", "DAB_ActionBar_2", "TOPRIGHT", 9 + settings.MainPadY, 9);	
	else
		if(CH_Config[CH_INDEX].ActionBars.SwitchBars) then
			Charcoal_MainBGFrame:SetPoint("TOPLEFT", "DAB_ActionBar_3", "TOPLEFT", -9 - settings.MainPadX, 9);
			Charcoal_MainBGFrame:SetPoint("TOPRIGHT", "DAB_ActionBar_5", "TOPRIGHT", 9 + settings.MainPadY, 9);			
		else
			Charcoal_MainBGFrame:SetPoint("TOPLEFT", "DAB_ActionBar_5", "TOPLEFT", -9 - settings.MainPadX, 9);
			Charcoal_MainBGFrame:SetPoint("TOPRIGHT", "DAB_ActionBar_3", "TOPRIGHT", 9 + settings.MainPadY, 9);	
		end
	end

	Charcoal_RightBGFrame:SetPoint("TOPLEFT", "Charcoal_MainBGFrame", "TOPRIGHT", -2, settings.RightHeight);
	Charcoal_RightBGFrame:SetPoint("BOTTOMLEFT", "Charcoal_MainBGFrame", "BOTTOMRIGHT", -2, 0);
	Charcoal_RightBGFrame:SetPoint("RIGHT", "UIParent", "RIGHT", 0, 2);

	Charcoal_LeftBGFrame:SetPoint("TOPRIGHT", "Charcoal_MainBGFrame", "TOPLEFT", 2, settings.LeftHeight);
	Charcoal_LeftBGFrame:SetPoint("BOTTOMRIGHT", "Charcoal_MainBGFrame", "BOTTOMLEFT", 2, 0);
	Charcoal_LeftBGFrame:SetPoint("LEFT", "UIParent", "LEFT", 0, 2);

	Charcoal_LeftCBFrame:SetBackdrop({bgFile = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 2, right = 2, top = 2, bottom = 2 }});
	Charcoal_LeftCBFrame:SetBackdropColor(1, 1, 1, .4);
	Charcoal_LeftCBFrame:SetBackdropBorderColor(0, 0, 0, 0);
	Charcoal_LeftCBFrame:Show();
	
	Charcoal_RightCBFrame:SetBackdrop({bgFile = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 2, right = 2, top = 2, bottom = 2 }});
	Charcoal_RightCBFrame:SetBackdropColor(1, 1, 1, .4);
	Charcoal_RightCBFrame:SetBackdropBorderColor(0, 0, 0, 0);
	Charcoal_RightCBFrame:Show();

	frames = {"CastBar", "Durability", "QuestWatch", "QuestTimer", "ZoneText"};
	settings = CH_Config[CH_INDEX].Movables;

	for i=1, 5 do
		name = frames[i];
		colour = "MovablesColour";
		alpha = "MovablesAlpha";
		borderColour = "MovablesBorderColour";
		borderAlpha = "MovablesBorderAlpha";
		frame=getglobal("Charcoal_"..name.."Frame");

		frame:SetBackdrop({bgFile = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }});
		
		iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings[colour]);
		frame:SetBackdropColor(iRed, iGreen, iBlue, settings[alpha]);
		iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings[borderColour]);
		frame:SetBackdropBorderColor(iRed, iGreen, iBlue, settings[borderAlpha]);
		frame:SetFrameLevel(0);
	end

	settings = CH_Config[CH_INDEX].Minimap;
	local padding = settings.BorderPadding;
	frame = getglobal("Charcoal_MinimapFrame");
	frame:SetBackdrop({bgFile = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }});

	iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings.BackgroundColour);
	frame:SetBackdropColor(iRed, iGreen, iBlue, settings.BackgroundAlpha);
	iAlpha, iRed, iGreen, iBlue = Charcoal_ColourStrToARGB(settings.BackgroundBorderColour);
	frame:SetBackdropBorderColor(iRed, iGreen, iBlue, settings.BackgroundBorderAlpha);	
	
	frame:ClearAllPoints("MinimapCluster");
	frame:SetParent("MinimapCluster");
	frame:SetPoint("TOPLEFT", "MinimapCluster", "TOPLEFT", 17 - padding , -4 + padding);
	frame:SetPoint("TOPRIGHT", "MinimapCluster", "TOPRIGHT", -1 + padding, -4 + padding);
	frame:SetPoint("BOTTOMLEFT", "MinimapCluster", "BOTTOMLEFT", 17 - padding, 13 - padding);
	frame:SetPoint("BOTTOMRIGHT", "MinimapCluster", "BOTTOMRIGHT", -1 + padding, 13 - padding);
	frame:SetFrameLevel(1);
end

function CH_InitMasterScale(scale)

	if(CH_CurrentScale ~= scale) then
		
		Charcoal_AnchorFrame:SetScale(scale);

		DAB_ActionBar_10:SetScale(scale);
		DAB_ActionBar_9:SetScale(scale);
		DAB_ActionBar_8:SetScale(scale);
		DAB_ActionBar_7:SetScale(scale);
		DAB_ActionBar_6:SetScale(scale);
		DAB_ActionBar_5:SetScale(scale);
		DAB_ActionBar_4:SetScale(scale);
		DAB_ActionBar_3:SetScale(scale);
		DAB_ActionBar_2:SetScale(scale);
		DAB_ActionBar_1:SetScale(scale);

		DAB_ActionButton_78:SetScale(scale*.92);
		DAB_ActionButton_79:SetScale(scale*.92);

		DAB_ControlBox_1:SetScale(scale);
		DAB_ControlBox_2:SetScale(scale);
		DAB_ControlBox_3:SetScale(scale);
		DAB_ControlBox_4:SetScale(scale);
		DAB_ControlBox_5:SetScale(scale);

		DAB_OtherBar_Menu:SetScale(scale);
		DAB_OtherBar_Bag:SetScale(scale);
		DAB_OtherBar_Pet:SetScale(scale);
		DAB_OtherBar_Form:SetScale(scale);


		local settings = CH_Config[CH_INDEX].UnitFrames;

		if(settings.AttachPlayerAndTarget) then
			DUF_PlayerFrame:SetScale(scale);
			DUF_TargetFrame:SetScale(scale);
		end

		if(settings.AttachTargetOfTarget) then
			DUF_TargetOfTargetFrame:SetScale(scale);
		end

		if(settings.AttachPet) then
			DUF_PetFrame:SetScale(scale);
		end

		CH_CurrentScale = scale;
	end	

end


function CH_InitPetBar()
	local settings = CH_Config[CH_INDEX].ActionBars

	if(settings.PetActionBar) then
		if(CH_Class == CH_CLASSES.hunter.cname or CH_Class == CH_CLASSES.warlock.cname) then
			DAB_OtherBar_Pet:ClearAllPoints();
			DAB_OtherBar_Pet:SetPoint("CENTER", "DAB_ActionBar_7", "TOP", 0, 4);
		end
	end

	DAB_ActionButton_79:ClearAllPoints();
	if(settings.PetFloaterPos == 1) then
		DAB_ActionButton_79:SetPoint("TOPRIGHT", "DUF_PetFrame", "TOPLEFT", -3, -2);
	else
		DAB_ActionButton_79:SetPoint("TOPLEFT", "DUF_PetFrame", "TOPRIGHT", 3, -2);
	end

	if(settings.PetFloaterUse == 2 and settings.UsePetFloater and HasPetUI()) then
		DAB_Floater_Show(79);
	else
		DAB_Floater_Hide(79);
	end
end


--[[
#################################################################
# Data Initialization
#################################################################
]]

function CH_InitSettingsData()

	if(CH_Config["Charcoal Default"] == nil) then
		CH_Config["Charcoal Default"] = {};
		CH_Config["Charcoal Default"] = CH_PROFILE_DEFAULT;
	end
	CH_Config[CH_PLAYER_INDEX] = "Charcoal Default";
	CH_INDEX = "Charcoal Default";


end

--[[
#################################################################
# Output functions
#################################################################
]]


function CH_SetMessage(msgString)
	if(CH_DebugOn) then
		DEFAULT_CHAT_FRAME:AddMessage(msgString);
	end
end


--[[
#################################################################
# Minimap Button Functions
#################################################################
]]


function CharcoalMiniMapButton_OnClick(button)
	GameTooltip:Hide();
	if ( arg1 == "RightButton" ) then
		if ( Charcoal_CastBarFrame:IsVisible() ) then
			Charcoal_CastBarFrame:Hide();
		else
			Charcoal_CastBarFrame:Show();
		end
		if ( Charcoal_DurabilityFrame:IsVisible() ) then
			Charcoal_DurabilityFrame:Hide();
		else
			Charcoal_DurabilityFrame:Show();
		end
	else
		Charcoal_Slash_Handler("/cho");
	end
end


function CH_InitMinimapIcon()
	if(CH_Config[CH_INDEX].General.ShowIcon == true) then
		Charcoal_MinimapIcon:Show();
	else
		Charcoal_MinimapIcon:Hide();
	end
	Charcoal_MinimapButton:SetPoint("TOPLEFT", "Minimap", "TOPLEFT", 52 - (80 * cos(CH_Config[CH_INDEX].General.IconPosition)), (80 * sin(CH_Config[CH_INDEX].General.IconPosition)) - 52);
end


--[[
#################################################################
# Colour Functions
#################################################################
]]


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



--[[
#################################################################
# Wizard Functions
#################################################################
]]

function Charcoal_WizardProfileDropDown_Initialize()
	local info;
	for value in CH_PRESETS do
		info = {};
		info.text = CH_PRESETS[value].text;
		info.func = Charcoal_WizardProfileDropDown_OnClick;
		UIDropDownMenu_AddButton(info);
	end
	if(CH_Config.Custom ~= nil) then
		info={};
		info.text = "Custom";
		info.func = Charcoal_WizardProfileDropDown_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end	

function Charcoal_WizardProfileDropDown_OnClick()
	UIDropDownMenu_SetSelectedValue(Charcoal_WizardProfileDropDown, this.value);
	CH_INDEX = this.value;
	CH_Config[CH_PLAYER_INDEX] = this.value;
	CH_InitUI();
end

function Charcoal_WizardProfileDropDown_OnShow()
	UIDropDownMenu_Initialize(this, Charcoal_WizardProfileDropDown_Initialize);
end


--[[
#################################################################
# Discord Hooks
#################################################################
]]


Old_DUF_HonorBar_Update = DUF_HonorBar_Update;
function CH_DUF_HonorBar_Update()	
	Old_DUF_HonorBar_Update();
	CH_DUFLoaded = true;
end
DUF_HonorBar_Update = CH_DUF_HonorBar_Update;


Old_DL_Update_Forms = DL_Update_Forms;
function CH_DL_Update_Forms()
	Old_DL_Update_Forms();
	CH_DABLoaded = true;
end
DL_Update_Forms = CH_DL_Update_Forms;


Old_DUF_Initialize_Frame = DUF_Initialize_Frame;
function CH_DUF_Initialize_Frame(unit)
	Old_DUF_Initialize_Frame(unit);
	if(CH_UILoaded) then
		CH_InitUI();
	end
end
DUF_Initialize_Frame = CH_DUF_Initialize_Frame;



Old_DAB_ControlBox_Initialize = DAB_ControlBox_Initialize;
function CH_DAB_ControlBox_Initialize(id)
	Old_DAB_ControlBox_Initialize(id);
	if(CH_UILoaded) then
		CH_InitUI();
	end
end
DAB_ControlBox_Initialize = CH_DAB_ControlBox_Initialize;


Old_DAB_Initialize_Everything = DAB_Initialize_Everything;
function CH_DAB_Initialize_Everything()
	Old_DAB_Initialize_Everything();
	if(CH_UILoaded) then
		CH_InitUI();
	end
end
DAB_Initialize_Everything = CH_DAB_Initialize_Everything;


Old_DAB_Load_Profile = DAB_Load_Profile;
function CH_DAB_Load_Profile(index, safe)
	
	if(not CH_UILoaded) then
		Old_DAB_Load_Profile(index);
	else
		DEFAULT_CHAT_FRAME:AddMessage(CH_DABCHANGED);
	end
end
DAB_Load_Profile = CH_DAB_Load_Profile;


Old_DUF_Options_LoadSettings = DUF_Options_LoadSettings;
function CH_DUF_Options_LoadSettings(index, safe)
	Old_DUF_Options_LoadSettings(index);
	if(CH_UILoaded) then
		CH_InitUI();
	end
end
DUF_Options_LoadSettings = CH_DUF_Options_LoadSettings;



Old_TitanMovableFrame_MoveFrames = TitanMovableFrame_MoveFrames;
function CH_TitanMovableFrame_MoveFrames(position, override)
	local frameData, frame, frameName, frameArchor, xArchor, y, xOffset, yOffset, panelYOffset;
	
	for index, value in TitanMovable do
		frameData = TitanMovableData[value];
		frame = getglobal(frameData.frameName);
		frameName = frameData.frameName;
		frameArchor = frameData.frameArchor;

		if (not frame:IsUserPlaced() and frameData.frameName ~= "MinimapCluster") then
			xArchor = frameData.xArchor;
			y = frameData.y;
			
			panelYOffset = TitanMovable_GetPanelYOffset(frameData.position, TitanPanelGetVar("BothBars"), override);
	
			xOffset = TitanMovableFrame_GetOffset(frame, xArchor);		
			if (frameName == "TemporaryEnchantFrame" and TicketStatusFrame:IsVisible()) then
				yOffset = (-TicketStatusFrame:GetHeight()) + panelYOffset;
			else
				yOffset = y + panelYOffset;	
			end
			
			frame:ClearAllPoints();		
			frame:SetPoint(frameArchor, "UIParent", frameArchor, xOffset, yOffset);
		else
			--Leave frame where it is as it has been moived by a user
		end
	end
end
TitanMovableFrame_MoveFrames = CH_TitanMovableFrame_MoveFrames;

Old_Titan_CastingBarFrame_UpdatePosition = Titan_CastingBarFrame_UpdatePosition;
function CH_Titan_CastingBarFrame_UpdatePosition()
	return;
end
Titan_CastingBarFrame_UpdatePosition = CH_Titan_CastingBarFrame_UpdatePosition;


Old_Titan_UIParent_ManageRightSideFrames = Titan_UIParent_ManageRightSideFrames;
function CH_Titan_UIParent_ManageRightSideFrames()
	local panelYOffset = TitanMovable_GetPanelYOffset(TITAN_PANEL_PLACE_BOTTOM, TitanPanelGetVar("BothBars"));
	
	local anchorX = 0;
	local anchorY = 0 + panelYOffset;

	-- Update group loot frame anchor
	if ( MultiBarBottomRight:IsVisible() or MultiBarBottomLeft:IsVisible() ) then
		GroupLootFrame1:SetPoint("BOTTOM", "UIParent", "BOTTOM", 0, 102 + panelYOffset);
	else
		GroupLootFrame1:SetPoint("BOTTOM", "UIParent", "BOTTOM", 0, 60 + panelYOffset);
	end
	
	-- Update tutorial anchor
	if ( MultiBarBottomRight:IsVisible() or MultiBarBottomLeft:IsVisible() ) then
		TutorialFrameParent:SetPoint("BOTTOM", "UIParent", "BOTTOM", 0, 94 + panelYOffset);
		FramerateLabel:SetPoint("BOTTOM", "WorldFrame", "BOTTOM", 0, 104 + panelYOffset);
	else
		TutorialFrameParent:SetPoint("BOTTOM", "UIParent", "BOTTOM", 0, 52 + panelYOffset);
		FramerateLabel:SetPoint("BOTTOM", "WorldFrame", "BOTTOM", 0, 64 + panelYOffset);
	end
	
	-- Update bag anchor
	if ( MultiBarBottomRight:IsVisible() ) then
		CONTAINER_OFFSET_Y = 97 + panelYOffset;
	else
		CONTAINER_OFFSET_Y = 70 + panelYOffset;
	end
	-- Setup x anchor
	if ( MultiBarLeft:IsVisible() ) then
		CONTAINER_OFFSET_X = 90;
		anchorX = 90;
	elseif ( MultiBarRight:IsVisible() ) then
		CONTAINER_OFFSET_X = 45;
		anchorX = 45;
	else
		CONTAINER_OFFSET_X = 0;
		anchorX = 0;
	end

	-- Update combat log anchor
	FCF_UpdateCombatLogPosition();
end
Titan_UIParent_ManageRightSideFrames = CH_Titan_UIParent_ManageRightSideFrames;


