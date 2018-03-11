
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


local CH_DurabilityParts = { "Head", "Shoulders", "Chest", "Wrists", "Hands", "Waist", "Legs", "Feet", "Weapon", "Shield", "OffWeapon", "Ranged" };


function Charcoal_CastBar_OnLoad ()
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("SPELLCAST_START");
	this:RegisterEvent("SPELLCAST_STOP");
	this:RegisterEvent("SPELLCAST_FAILED");
	this:RegisterEvent("SPELLCAST_INTERRUPTED");
	this:RegisterEvent("SPELLCAST_DELAYED");
	this:RegisterEvent("SPELLCAST_CHANNEL_START");
	this:RegisterEvent("SPELLCAST_CHANNEL_UPDATE");

	Charcoal_CastBarFrame_Label:SetText(CH_MOVABLES.castbar.label);
	CastingBarText:SetFont("Interface\\AddOns\\DiscordUnitFrames\\CustomFonts\\Charcoal.ttf",14)

	CastingBarFrame:ClearAllPoints();
	CastingBarFrame:SetPoint("BOTTOM", "Charcoal_CastBarFrame", "BOTTOM", 0, 10);

end

function Charcoal_CastBar_OnEvent (event)
	if (event == "VARIABLES_LOADED") then
		return;
	end

	if ( event == "SPELLCAST_CHANNEL_START" ) then
		Charcoal_CastBarFrame.spellName = arg2;
	elseif ( event == "SPELLCAST_START" ) then
		Charcoal_CastBarFrame.spellName = arg1;
	end

	Charcoal_UpdateCastFrameAnchor();

end

function Charcoal_CastBar_OnUpdate ()

	if(CH_Config[CH_INDEX].Movables.UseCastBar) then
		if (CastingBarFrame:IsVisible()) then
			Charcoal_UpdateCastFrameAnchor();
		end
	end
end




function Charcoal_UpdateCastFrameAnchor ()
	CastingBarFrame:ClearAllPoints();
	CastingBarFrame:SetPoint("BOTTOM", "Charcoal_CastBarFrame", "BOTTOM", 0, 10);
end


Charcoal_OldCastingBarFrame_OnUpdate = CastingBarFrame_OnUpdate;
function Charcoal_NewCastingBarFrame_OnUpdate(elapsed)
	Charcoal_OldCastingBarFrame_OnUpdate(elapsed);

	if ( CastingBarFrame.casting ) then
		CastingBarText:SetText(Charcoal_CastBarFrame.spellName .. string.format(" (%.1fs)", CastingBarFrame.maxValue - GetTime() ) );
	elseif ( CastingBarFrame.channeling ) then
		CastingBarText:SetText(Charcoal_CastBarFrame.spellName .. string.format(" (%.1fs)", CastingBarFrame.endTime - GetTime() ) );
	end
end
CastingBarFrame_OnUpdate = Charcoal_NewCastingBarFrame_OnUpdate;



function Charcoal_DurabilityVisible()
	for key, val in CH_DurabilityParts do
		if ( getglobal("Durability" .. val):IsVisible() ) then
			return 1;
		end
	end
	return nil;
end


function Charcoal_DurabilityFrame_OnUpdate()
	DurabilityFrame:ClearAllPoints();
	DurabilityFrame:SetPoint("CENTER", "Charcoal_DurabilityFrame", "CENTER", 5, 5);
	DurabilityFrame:SetFrameLevel(3);
end

	
function Charcoal_DurabilityFrame_OnLoad()
	DurabilityFrame:ClearAllPoints();
	DurabilityFrame:SetPoint("TOP", "Charcoal_DurabilityFrame", "TOP", 0, 0);
	DurabilityFrame:SetFrameLevel(3);
	Charcoal_DurabilityFrame_Label:SetText(CH_MOVABLES.durability.label);
	this:SetFrameLevel(0);
end

function Charcoal_QuestWatchFrame_OnLoad()
	QuestWatchFrame:SetPoint("TOPLEFT", this, "TOPLEFT", 15, 0);
	QuestWatchFrame:SetFrameLevel(3);
	Charcoal_QuestWatchFrame_Label:SetText(CH_MOVABLES.questwatch.label);
	Charcoal_QuestWatchFrame_OnUpdate();
end

function Charcoal_QuestWatchFrame_OnUpdate()
	this:SetHeight(QuestWatchFrame:GetHeight());
	this:SetWidth(QuestWatchFrame:GetWidth());
end

Charcoal_OldQuestWatch_Update = QuestWatch_Update;
function Charcoal_NewQuestWatch_Update()
	Charcoal_OldQuestWatch_Update();
	Charcoal_QuestWatchFrame:SetHeight(QuestWatchFrame:GetHeight()+20);
	Charcoal_QuestWatchFrame:SetWidth(QuestWatchFrame:GetWidth()+20);
end
QuestWatch_Update = Charcoal_NewQuestWatch_Update;

function Charcoal_UIParent_ManageFramePositions()
	Old_UIParent_ManageFramePositions();
	QuestTimerFrame:ClearAllPoints();
	QuestTimerFrame:SetPoint("TOP", Charcoal_QuestTimerFrame, "TOP", 0, -20);
	QuestTimerFrame:SetFrameStrata("MEDIUM");
end

Old_UIParent_ManageFramePositions =  UIParent_ManageFramePositions;
UIParent_ManageFramePositions = Charcoal_UIParent_ManageFramePositions;

function Charcoal_QuestTimerFrame_OnLoad()
	this:SetHeight(QuestTimerFrame:GetHeight()+20);
	this:SetWidth(QuestTimerFrame:GetWidth()+20);
	Charcoal_QuestTimerFrame_Label:SetText(CH_MOVABLES.questtimer.label);
	UIParent_ManageFramePositions();
end


function Charcoal_ZoneText_OnLoad()
	this:RegisterEvent("MINIMAP_ZONE_CHANGED");
	Charcoal_ZoneTextFrame_Label:SetText(CH_MOVABLES.zonetext.label);
	Charcoal_ZoneTextFrame_Text:SetFont("Interface\\AddOns\\DiscordUnitFrames\\CustomFonts\\Charcoal.ttf",14)
	CH_SetZoneText();
	Charcoal_ZoneTextFrame:SetHeight(Charcoal_ZoneTextFrame_Text:GetHeight()+20);
end

function Charcoal_ZoneText_OnEvent()
	if ( event == "MINIMAP_ZONE_CHANGED" ) then
		this:RegisterEvent("MINIMAP_ZONE_CHANGED");
		CH_SetZoneText();
	end
end


function CH_SetZoneText()
	local xpos, ypos = GetPlayerMapPosition("player");
	local zonetext;

	local pvpType, factionName, isArena = GetZonePVPInfo();
	if ( isArena ) then
		zonetext = CH_FONT_RED..GetMinimapZoneText()..CH_FONT_GOLD.." [" .. CH_FONT_WHITE .. math.floor(xpos*100) .. CH_FONT_GOLD.. ", " .. CH_FONT_WHITE .. math.floor(ypos*100) .. CH_FONT_GOLD.."]";		
	elseif ( pvpType == "friendly" ) then
		zonetext = CH_FONT_GREEN..GetMinimapZoneText()..CH_FONT_GOLD.." [" .. CH_FONT_WHITE .. math.floor(xpos*100) .. CH_FONT_GOLD.. ", " .. CH_FONT_WHITE .. math.floor(ypos*100) .. CH_FONT_GOLD.."]";
	elseif ( pvpType == "hostile" ) then
		zonetext = CH_FONT_RED..GetMinimapZoneText()..CH_FONT_GOLD.." [" .. CH_FONT_WHITE .. math.floor(xpos*100) .. CH_FONT_GOLD.. ", " .. CH_FONT_WHITE .. math.floor(ypos*100) .. CH_FONT_GOLD.."]";
	elseif ( pvpType == "contested" ) then
		zonetext = CH_FONT_GOLD..GetMinimapZoneText()..CH_FONT_GOLD.." [" .. CH_FONT_WHITE .. math.floor(xpos*100) .. CH_FONT_GOLD.. ", " .. CH_FONT_WHITE .. math.floor(ypos*100) .. CH_FONT_GOLD.."]";
	else
		zonetext = CH_FONT_GOLD..GetMinimapZoneText()..CH_FONT_GOLD.." [" .. CH_FONT_WHITE .. math.floor(xpos*100) .. CH_FONT_GOLD.. ", " .. CH_FONT_WHITE .. math.floor(ypos*100) .. CH_FONT_GOLD.."]";
	end

	Charcoal_ZoneTextFrame_Text:SetText(zonetext);
	Charcoal_ZoneTextFrame:SetWidth(Charcoal_ZoneTextFrame_Text:GetWidth()+20);
end


function Charcoal_ToggleMovables(arg)

	if ( arg == "RightButton" ) then

		local frame;
		local label;
		local settings = CH_Config[CH_INDEX].UnitFrames;
		
		if(CH_ToggleMovables == 0) then
			CH_ToggleMovables = 1;
			for key, value in CH_MOVABLES do
				frame = getglobal("Charcoal_"..value.frame.."Frame");
				label = getglobal("Charcoal_"..value.frame.."Frame_Label");
				frame:Show();
				label:Show();
			end

			DAB_ActionButton_FauxShow(71);
			DAB_ActionButton_FauxShow(70);
			DAB_ActionButton_FauxShow(72);
			DAB_ActionButton_FauxShow(73);

		else
			CH_ToggleMovables = 0;
			local settings = CH_Config[CH_INDEX].Movables;
			local saveVar;
			for key, value in CH_MOVABLES do
				frame = getglobal("Charcoal_"..value.frame.."Frame");
				label = getglobal("Charcoal_"..value.frame.."Frame_Label");
				saveVar = "Show"..value.frame.."BG";
				if(settings[saveVar]) then
					frame:Show();
				else
					frame:Hide();
				end
				label:Hide();
			end
			DAB_ActionButton_FauxHide(71);
			DAB_ActionButton_FauxHide(70);
			DAB_ActionButton_FauxHide(72);
			DAB_ActionButton_FauxHide(73);
		end

	else
		Charcoal_Slash_Handler("/cho");
	end
	
end


CT_CastBarFrame_Update = Charcoal_CastBar_OnUpdate;