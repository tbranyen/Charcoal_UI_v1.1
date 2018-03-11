
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


-- Constants
CH_PlayerName = nil;
CH_PlayerRealm = nil;
CH_INDEX = nil;
CH_PLAYER_INDEX = nil;

CH_UILoaded = false;
CH_FirstRun = true;
CH_UIScale = nil;
CH_RangeCheckID = 2;
CH_CurrentScale = nil;
CH_Class = nil;
CH_DebugOn = true;
CH_UpdateTimer = 0.5;
CH_UpdateIncrement = 0.0;
CH_ToggleMovables = 0;
CH_DUF_Loaded = false;
CH_DAB_Loaded = false;

-- Font colours
CH_FONT_RED				= "|cffff0000";
CH_FONT_GREEN				= "|cff00ff00";
CH_FONT_BLUE				= "|cff0000ff";
CH_FONT_MAGENTA			= "|cffff00ff";
CH_FONT_YELLOW				= "|cffffff00";
CH_FONT_CYAN				= "|cff00ffff";
CH_FONT_WHITE				= "|cffffffff";
CH_FONT_GOLD				= "|c00ffd100";
CH_INFO_COLOUR				= "|cffffffff";

-- English Translation Follows

CH_TITLE					= "Charcoal UI ";
CH_VERSION				= "v1.1";
CH_FRAME_TITLE				= CH_TITLE;
CH_DESCRIPTION				= "A custom Discord setup.";

CH_DAB_VERSION				= "3.16";
CH_DUF_VERSION				= "2.46";
CH_DL_VERSION				=  1.36;

-- Wizard Strings
CH_INTRO					= CH_FONT_WHITE .. "Welcome to " .. CH_TITLE; 
CH_INTRO_VERBOSE			= "You are seeing this message because this is your first time running Charcoal with this character.\n\nYou have the correct versions of Discord Action Bars and Discord Unit Frames installed.\n\nClick Continue to initialize Charcoal for this character.";
CH_ERROR					= CH_FONT_WHITE .. CH_TITLE .. "has encountered an error";
CH_ERROR_VERBOSE			= "Charcoal requires both Discord Action Bars 3.15, Discord Unit Frames 2.45 and Discord Library 1.36.\n\nYou can get these addons from discordmods.com.\n\nCharcoal will not load, press OK to continue.";
CH_PROFILE				= CH_FONT_WHITE .. CH_TITLE .. "Profile Selection";
CH_PROFILE_VERBOSE			= "Choose from a pre-built Charcoal profile below to get started. You can modify these profiles through the Charcoal options panel but you can't save them, so create a new profile first.";


CH_CANCEL					= "CANCEL";
CH_CONTINUE				= "CONTINUE";
CH_NEXT					= "NEXT";
CH_OK					= "OK";
CH_CLOSE					= "CLOSE";
CH_CREATE					= CH_FONT_WHITE .. "CREATE";
CH_RESET					= "RESET";
CH_LOAD					= CH_FONT_WHITE .. "LOAD";
CH_DELETE					= CH_FONT_WHITE .. "DELETE";
CH_LOADCUSTOM				= "LOAD CUSTOM";
CH_INITALIZED				= CH_FONT_GREEN .. CH_TITLE .. CH_VERSION .. " initialized for ";
CH_CURRENTPROFILE			= "Current Charcoal Profile:   ";
CH_CREATEPROFILE			= "Create New Profile";
CH_LOADPROFILE				= "Load Profile"
CH_RESTED					= "Rested XP";

CH_MOVABLES				= {
							castbar = {frame="CastBar", label="Cast Bar"},
							durability = {frame="Durability", label="Durability"},
							questwatch = {frame="QuestWatch", label="Quest Watch"},
							questtimer = {frame="QuestTimer", label="Quest Timer Display"},
							zonetext = {frame="ZoneText", label="Zone Text"}
						};


-- General Options
CH_GENERAL_OPTIONS			= {
							["ShowIcon"] = { label="Show Minimap Icon", tooltip="Show or hide the Charcoal UI icon on the Minimap"},
							["IconPosition"] = { label="Minimap Icon Position", tooltip="Set the position of the Charcoal icon on the Minimap"},
							["ShowTooltips"] = { label="Show Tooltips", tooltip="Toggle the Charcoal Options tooltips on or off"},
							["UseAutoThreat"] = { label="Auto Threat Page Changing", tooltip="Turning this option on will make Charcoal automatically switch to the specified page when you gain threat"},
							["AutoThreatPage"] = { label="Auto Threat Page #", tooltip="Set the page Charcoal will automatically switch to when you gain threat"},
							["MasterScale"] = { label="Charcoal UI Master Scale", tooltip="Set the overall scale of the Charcoal UI"}
						};

-- General Options
CH_XP_OPTIONS				= {
							["XPBarLocation"] = { label="Bar Location", tooltip="Set the location of the experience bar text"},
							["XPBarWidth"] = { label="Width", tooltip="Set the width of the experience bar "},
							["XPBarHeight"] = { label="Height", tooltip="Set the height of the experience bar"},
							["XPBarOffsetX"] = { label="Horizontal Offset", tooltip="Set the horizontal offset of the experience bar"},
							["XPBarOffsetY"] = { label="Vertical Offset", tooltip="Set the vertical offset of the experience bar"},

							["XPColour"] = {label="Bar Colour", tooltip="Set the colour the experience bar"},
							["XPRestedColour"] = {label="Rested Bar Colour", tooltip="Set the colour the rested experience bar"},
							["XPAlpha"] = {label="Bar Alpha", tooltip="Set the alpha of the experience bar"},
							["XPBGPadding"] = {label="Background Padding", tooltip="Set the background for the experience bar"},

							["XPBGColour"] = {label="Background Colour", tooltip="Set the colour the experience bar background"},
							["XPBGAlpha"] = {label="Background Alpha", tooltip="Set the alpha of the experience bar background"},
							["XPBorderColour"] = {label="Background Border Colour", tooltip="Set the colour of the experience bar background"},
							["XPBorderAlpha"] = {label="Background Border Alpha", tooltip="Set the border alpha of the experience bar background"},

							["XPTextLocation"] = { label="Text Location", tooltip="Set the location of the experience bar text relative to the experience bar"},
							["XPTextOffsetX"] = { label="Text Horizontal Offset", tooltip="Set the horizontal offset of the experience bar label text"},
							["XPTextOffsetY"] = { label="Text Vertical Offset", tooltip="Set the vertical offset of the experience bar label text"},
							["XPTextMouseOver"] = { label="Show Text on Mouseover", tooltip="Show the experience bar text on mouseover only"}

						};

-- Minimap Options
CH_MINIMAP_OPTIONS			= {
							["HideZoneText"] = {label="Hide the Minimap Zone Text", tooltip="Toggle the visibility of the Minimap Zone Text"},
							["HideZoneTextButton"] = {label="Hide the Minimap Zone Text Button", tooltip="Toggle the visibility of the Minimap Zone Text Button"},
							["HideGameTime"] = {label="Hide the Game Time Frame", tooltip="Toggle the visibility of the Minimap Game Time Frame"},
							["HideZoomButtons"] = {label="Hide the Minimap Zoom Buttons", tooltip="Toggle the visibility of the Minimap Zoom Buttons"},
							["SquareFrame"] = {label="Use the Square Minimap", tooltip="Enable this to use a square Minimap instead of the default circular Minimap"},
							["HideBorder"] = {label="Hide the Minimap Border", tooltip="Hides the border around the Minimap in either shape"},
							["BorderPadding"] = {label="Border Padding", tooltip="Minimap Border padding"},
							["Location"] = {label="Minimap Location", tooltip="Set the location of the Minimap"},
							["Scale"] = {label="Minimap Scale", tooltip="Set the scale of the Minimap. Has no effect if the 'Synch Scale to Charcoal' option is selected"},
							["SynchScale"] = {label="Synch Scale to Charcoal", tooltip="This option allows the Charcoal Master scale to override the Minimap Scale"},
							["OffsetX"] = {label="Minimap Horizontal Offset", tooltip="Move the Minimap left or right"},
							["OffsetY"] = {label="Minimap Vertical Offset", tooltip="Move the Minimap up or down"},
							["BackgroundColour"] = {label="Background Colour", tooltip="Set the background colour for the Minimap"},
							["BackgroundAlpha"] = {label="Background Alpha", tooltip="Set the background alpha for the Minimap"},
							["BackgroundBorderColour"] = {label="Background Border Colour", tooltip="Set the background border colour for the Minimap"},
							["BackgroundBorderAlpha"] = {label="Background Border Alpha", tooltip="Set the background border alpha for the Minimap"}						
						};

-- Action Bar Options
CH_ACTIONBARS_OPTIONS		= {
							["UseDefaultBars"] = {label="Use basic, two-bar layout", tooltip="This option hides all of the Charcoal specific bars and replaces them with two default style bars. Most Charcoal options do not apply if this option is enabled."},
							["UseClassBars"] = {label="Change bar pages based on class", tooltip="Disable this option to stop Charcoal from changing bar pages automatically based on stance, shapeshift form, stealth or range (hunter)"},
							["UseSubBars"] = {label="Use Lower Main Bars", tooltip="Adds two extra bars under the left and right main bars with 6 buttons and 3 pages each."},
							["SynchSubBars"] = {label="Synch Lower Main Bars with Upper Main Bars", tooltip="Synchronize the bottom 6 buttons on the left and right side with the top 12 buttons on each side when you change pages"},
							["SynchMidBars"] = {label="Synch the Top and Bottom Middle Bars", tooltip="Synchronize the top and bottom middle bars when you change pages on one"},
							["SwitchBars"] = {label="Reverse the Left and Right Main Bars", tooltip="Reverse the positions of left and right main bars"},
							["UseFriendly"] = {label="Use The Friendly Target Bars", tooltip="Enabling this option will automatically change bars to certain pages when a friendly target is selected"},
							["BagsAndMenu"] = {label="Attach the MicroMenu and Bags to Charcoal", tooltip="This option allows Charcoal to position the MicroMenu and Bags. Turn this option off to move these frames using the DAB options."},
							["ControlBoxes"] = {label="Show the Control Boxes", tooltip="Toggle the visibility of the DAB Control Boxes"},
							["ReverseBoxes"] = {label="Reverse the Control Boxes", tooltip="Reverse the order of the primary DAB Control Boxes"},
							["LabelBoxes"] = {label="Label the Control Boxes by Class", tooltip="Allow Charcoal to label the DAB Control Boxes depending on Class (requires a reload if you disable this option)"},
							["ShowContext"] = {label="Show the Context Bar", tooltip="Toggle the visibility of the Classic Charcoal Bar"},
							["ContextOffsetX"] = {label="Context Bar Horizontal Offset", tooltip="Move the Context Bar left or right"},
							["ContextOffsetY"] = {label="Context Bar Vertical Offset", tooltip="Move the Classic Charcoal Bar up or down"},
							["HideMidTop"] = {label="Show the Top Middle Bar", tooltip="Toggle the visibility of the Top Middle Bar"},
							["HideMidBottom"] = {label="Show the Bottom Middle Bar", tooltip="Toggle the visibility of the Bottom Middle Bar"},
							["MidOffsetX"] = {label="Middle Bars Horizontal Offset", tooltip="Move the Middle Bars left or right"},
							["MidOffsetY"] = {label="Middle Bars Vertical Offset", tooltip="Move the Middle Bars up or down"},
							["HideShapeshift"] = {label="Show the Stance/ShapeShift Bar", tooltip="Not used in this version"},
							["PetActionBar"] = {label="Attach the Pet Action Bar to Charcoal", tooltip="This option lets Charcoal position the Pet Action Bar. When a pet is summoned it will swap positions with the two Middle Bars. Disable this option to place the Pet Action Bar where you like using DAB"},
							["UsePetFloater"] = {label="Use the Pet Frame Floater", tooltip="Enable the DAB floater that is attached to the Pet Frame"},
							["PetFloaterUse"] = {label="Use the Pet Frame Floater for: ", tooltip="Selecting Happiness will make the Pet Floater show when you're pet is less than happy (green)"},
							["PetFloaterPos"] = {label="Attach the Pet Floater To: ", tooltip="Select which side of the Pet Frame you want to attach the Pet Floater to."}
						};

-- Unit Frame Options
CH_UNITFRAMES_OPTIONS		= {
							["AttachPlayerAndTarget"] = {label="Attach the Player and Target Frames to Charcoal", tooltip="Allow Charcoal to position the Player and Target Frames"},
							["AttachTargetOfTarget"] = {label="Attach the Target of Target Frame to Charcoal", tooltip="Allow Charcoal to position the Target of Target Frame"},
							["AttachPet"] = {label="Attach the Pet Frame to Charcoal", tooltip="Allow Charcoal to position the Pet Frame"},
							["ShowCombatInfo"] = {label="Show Combat Info on the Player and Target Frames", tooltip="Toggle the visibility of the recent damage and heals text boxes on the Player and Target Frames"},
							["ShowBuffs"] = {label="Show Buffs/Debuffs on the Player and Target Frames", tooltip="Toggle the visibility of the Buffs and Debuffs on the Player and Target Frames."},
							["ShowHealthLost"] = {label="Show Health Lost on the all unit frames", tooltip="Toggle the visibility of the Health Lost textbox on all unit frames"},
							["ShowPortraits"] = {label="Show Portraits on the Party and Party Pet Frames", tooltip="Toggle the visibility of the portraits on the Party Frame and Party Pet Frames"},
							["ShowXP"] = {label="Show XP Needed to Level on the Player Frame", tooltip="Toggle the visibility of the 'XP to level' text on the Player Frame. This text will not show if you are level 60"}
						};
						
-- Background Options
CH_BACKGROUND_OPTIONS		= {
							["MainOffsetX"] = {label="Main BG Horizontal Offset", tooltip="Move the entire Charcoal UI left or right"},
							["MainOffsetY"] = {label="Main BG Vertical Offset", tooltip="Move the entire Charcoal UI up or down"},
							["MainColour"] = {label="Main BG Colour", tooltip="Set the colour of the main Charcoal background"},
							["MainAlpha"] = {label="Main BG Alpha", tooltip="Set the alpha of the main Charcoal background"},
							["MainBorderColour"] = {label="Main BG Border Colour", tooltip="Set the border colour of the main Charcoal background"},
							["MainBorderAlpha"] = {label="Main BG Border Alpha", tooltip="Set the border alpha of the main Charcoal background"},
							["MainPadX"] = {label="Extend Main BG Left", tooltip="Extend the size of the Main background to the left"},
							["MainPadY"] = {label="Extend Main BG Right", tooltip="Extend the size of the Main background to the right"},
							["MainPadI"] = {label="Main BG Inner Padding", tooltip="Set the inner padding of the main Charcoal background. This will push the left and right bars apart"},

							["LeftColour"] = {label="Left BG Colour", tooltip="Set the colour of the left background"},
							["LeftAlpha"] = {label="Left BG Alpha", tooltip="Set the alpha of the left background"},
							["LeftBorderColour"] = {label="Left BG Border Colour", tooltip="Set the border colour of the left background"},
							["LeftBorderAlpha"] = {label="Left BG Border Alpha", tooltip="Set the border alpha of the left background"},
							["LeftHeight"] = {label="Left BG Height", tooltip="Set the height of the left background"},

							["RightColour"] = {label="Right BG Colour", tooltip="Set the colour of the right background"},
							["RightAlpha"] = {label="Right BG Alpha", tooltip="Set the alpha of the right background"},
							["RightBorderColour"] = {label="Right BG Border Colour", tooltip="Set the border colour of the right background"},
							["RightBorderAlpha"] = {label="Right BG Border Alpha", tooltip="Set the border alpha of the right background"},
							["RightHeight"] = {label="Right BG Height", tooltip="Set the height of the right background"}

						};

-- Threshold Options
CH_THRESHOLD_OPTIONS		= {
							["IHealth"] = {label="Use Inner Health Floater", tooltip="This option will check your health and show the inside health floater when it reaches the specified threshold"},
							["IHealthLimit"] = {label="Health Threshold", tooltip="Set when the inner health floater will show"},
							["IMana"] = {label="Use Inner Mana Floater", tooltip="This option will check your mana/energy/rage and show the inside mana floater when it reaches the specified threshold"},
							["IManaLimit"] = {label="Mana Threshold", tooltip="Set when the inner mana/energy/rage floater will show"},
							["OHealth"] = {label="Use Outer Health Floater", tooltip="This option will check your health and show the outside health floater when it reaches the specified threshold"},
							["OHealthLimit"] = {label="Health Threshold", tooltip="Set when the outer health floater will show"},
							["OMana"] = {label="Use Outer Mana Floater", tooltip="This option will check your mana/energy/rage and show the outside mana floater when it reaches the specified threshold"},
							["OManaLimit"] = {label="Mana Threshold", tooltip="Set when the outer mana/energy/rage floater will show"}
						};

-- Movable Options
CH_MOVABLE_OPTIONS			= {
							["ShowDurabilityBG"] = {label="Always Show the Durability Capsule", tooltip="Show the Durability Capsule background all the time"},
							["ShowCastBarBG"] = {label="Always Show the Cast Bar Capsule", tooltip="Show the Cast Bar Capsule background all the time"},
							["ShowQuestWatchBG"] = {label="Always Show the Quest Watch Capsule", tooltip="Show the Quest Watch Capsule background all the time"},
							["ShowQuestTimerBG"] = {label="Always Show the Quest Timer Capsule", tooltip="Show the Quest Timer Capsule background all the time"},
							["ShowZoneTextBG"] = {label="Show The Zone Text Capsule", tooltip="Show the Zone Text Capsule"},
							["MovablesColour"] = {label="Movables BG Colour", tooltip="Set the background colour for all movables"},
							["MovablesAlpha"] = {label="Movables BG Alpha", tooltip="Set the background alpha for all movables"},
							["MovablesBorderColour"] = {label="Movables BG Border Colour", tooltip="Set the background border colour for all movables"},
							["MovablesBorderAlpha"] = {label="Movables BG Border Alpha", tooltip="Set the background border alpha for all movables"}						
						};

-- Profile Options
CH_PROFILE_OPTIONS			= {
							["Load"] = {label="Load Profile", tooltip="Load a Charcoal profile"}
						};


-- Options Panels
CH_OPTION_PANELS			= {
							[1] = { label="General", panel="Charcoal_OptionsGeneral", settings=CH_GENERAL_OPTIONS, title="General Options", tooltip=CH_FONT_WHITE.."General Options"..CH_FONT_GOLD.."\nChange the minimap icon location, the XP bar, etc"},
							[2] = { label="XP Bar", panel="Charcoal_OptionsXPBar", settings=CH_GENERAL_OPTIONS, title="XP Bar Options", tooltip=CH_FONT_WHITE.."XP Bar Options"..CH_FONT_GOLD.."\nCustomize the Charcoal Experience Bar"},
							[3] = { label="Minimap", panel="Charcoal_OptionsMinimap", settings=CH_GENERAL_OPTIONS, title="Minimap Options", tooltip=CH_FONT_WHITE.."Minimap Options"..CH_FONT_GOLD.."\nChange options having to do with the Minimap"},
							[4] = { label="Action Bars", panel="Charcoal_OptionsActionBars", settings=CH_GENERAL_OPTIONS, title="Action Bar Options", tooltip=CH_FONT_WHITE.."Action Bar Options"..CH_FONT_GOLD.."\nCustomize the various Discord Action Bars"},
							[5] = { label="Unit Frames", panel="Charcoal_OptionsUnitFrames", settings=CH_GENERAL_OPTIONS, title="Unit Frame Options", tooltip=CH_FONT_WHITE.."Unit Frame Options"..CH_FONT_GOLD.."\nCustomize the various Discord Unit Frames"},
							[6] = { label="Thresholds", panel="Charcoal_OptionsThresholds", settings=CH_GENERAL_OPTIONS, title="Health and Mana Thresholds", tooltip=CH_FONT_WHITE.."Health and Mana Thresholds"..CH_FONT_GOLD.."\nSet thresholds for the health and mana floaters"},
							[7] = { label="Backgrounds", panel="Charcoal_OptionsBackgrounds", settings=CH_GENERAL_OPTIONS, title="Background Options", tooltip=CH_FONT_WHITE.."Background Options"..CH_FONT_GOLD.."\nChange the way the Charcoal backgrounds look"},
							[8] = { label="Movables", panel="Charcoal_OptionsMovables", settings=CH_GENERAL_OPTIONS, title="Charcoal Movables", tooltip=CH_FONT_WHITE.."Charcoal Movables"..CH_FONT_GOLD.."\nSet options for the movable default UI frames"},
							[9] = { label="Profiles", panel="Charcoal_OptionsProfiles", settings=CH_GENERAL_OPTIONS, title="Profile Options", tooltip=CH_FONT_WHITE.."Profile Options"..CH_FONT_GOLD.."\nCreate, load and save Charcoal profiles"},
						};

-- Dropdown lists
CH_GN_AUTOTHREATPAGENUMS		= {{text="Secondary Page 1", value=1}, { text="Secondary Page 2", value=2}};
CH_XP_XPBARLOCATIONS		= {{text="UI Top",value=1}, {text="UI Bottom",value=2}, {text="Titan - Main",value=3}, {text="Titan - Aux",value=4}, {text="BossPanel",value=5}, {text="FuBar",value=6}, {text="Off", value=7}};
CH_XP_XPTEXTLOCATIONS		= {{text="Left", value=1}, { text="Center", value=2}, {text="Right", value=3}, { text="Off", value=4}};
CH_MM_LOCATIONS			= {{text="Charcoal", value=1}, { text="UI Top Right", value=2}, { text="UI Top Center", value=3}, { text="UI TopLeft", value=4}};
CH_AB_PETFLOATERUSES		= {{text="Happiness", value=1}, { text="Nothing", value=2}};
CH_AB_PETFLOATERPOSS		= {{text="Left of Pet Frame", value=1}, { text="Right of Pet Frame", value=2}};

-- Background Headers
CH_MAIN_BG_HEADER			= CH_FONT_WHITE.."Main Background Options";
CH_LEFT_BG_HEADER			= CH_FONT_WHITE.."Left Background Options";
CH_RIGHT_BG_HEADER			= CH_FONT_WHITE.."Right Background Options";
CH_XP_BG_HEADER			= CH_FONT_WHITE.."XP Bar Background Options";

CH_NOCHANGES				= CH_FONT_GOLD.."You cannot make changes to this profile.  It is used only to load settings from your current Charcoal_Custom.lua file.  Start a new profile before making any changes.";
CH_NODELETE				= CH_FONT_GOLD.."You cannot delete the profile you currently have loaded."
CH_NOOPTIONS				= CH_FONT_GOLD.."Charcoal Options AddOn not found!";
CH_DABCHANGED				= CH_FONT_GOLD.."You cannot change DAB profiles while Charcoal is running.";



CH_CONTROLBOXES_PRIMARY		= {"Page 1", "Page 2", "Page 3"};
CH_CONTROLBOXES_SECONDARY	= {"Profs & Items", "Threat"};

CH_FACTIONS				= {
							[0] = "Unknown",
							[1] = "Hated",
							[2] = "Hostile",
							[3] = "Unfriendly",
							[4] = "Neutral",
							[5] = "Friendly",
							[6] = "Honored",
							[7] = "Revered",
							[8] = "Exalted"
						};


CH_CLASSES				= {	
							hunter	= { cname = "Hunter", boxes = {"Ranged", "Melee", "Skills"} },
							rogue	= { cname = "Rogue", boxes = {"Combat", "Stealth", "Skills"} },
							druid	= { cname = "Druid", boxes = {"Combat", "Bear Form", "Cat Form"} },
							warrior	= { cname = "Warrior", boxes = {"Battle", "Defensive", "Berserker"} },
							paladin	= { cname = "Paladin", boxes = CH_CONTROLBOXES_PRIMARY },
							priest	= { cname = "Priest", boxes = CH_CONTROLBOXES_PRIMARY },
							shaman	= { cname = "Shaman", boxes = CH_CONTROLBOXES_PRIMARY },
							warlock	= { cname = "Warlock", boxes = CH_CONTROLBOXES_PRIMARY },
							mage		= { cname = "Mage", boxes = CH_CONTROLBOXES_PRIMARY },
						};



CH_FORMS					= { 
							humanoid="Humanoid",
							stealth="Stealth",
							battle="Battle Stance",
							berserker="Berserker Stance",
							defensive="Defensive Stance",
							bear="Bear Form",
							direbear="Dire Bear Form",
							cat="Cat Form",
						};


CH_PRESETS				= {
							{ text="Charcoal Default", value=CH_PROFILE_DEFAULT },
							{ text="Charcoal Deluxe", value=CH_PROFILE_DELUXE },
							{ text="Charcoal Compact", value=CH_PROFILE_COMPACT },
							{ text="Charcoal Simple", value=CH_PROFILE_SIMPLE },
							{ text="Discord Theme", value=CH_PROFILE_DISCORD },
							{ text="Crash's Rogue", value=CH_PROFILE_ROGUE },
							{ text="Crash's Hunter", value=CH_PROFILE_HUNTER },
						};

-- Bindings
BINDING_HEADER_CHARCOAL		= "Charcoal Options";
BINDING_NAME_CH_OPTIONS		= "Toggle the Options Panel";
BINDING_NAME_CH_MOVABLES		= "Toggle the Threshold Floaters and Movables";

