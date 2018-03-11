
## Charcoal UI v1.1i
## 
## Author: Crash <crashvegas@gmail.com>
## Thanks: Lozareth, Soote, Ansi, Adeher, NightmareX, Nour

Required Dependencies:

DiscordActionBars 3.16 (included)
DiscordUnitFrames 2.46 (included)
DiscordLibrary 1.36 or higher (included)

Charcoal Options slash command: /cho or /charcoal


Charcoal Installation
#########################################################################################

1. Extract the Charcoal and the CharcoalOptions folder into your WorldOfWarcraft/Interface/AddOns folder.
CharcoalOptions is completely...optional. After you have your Charcoal settings the way you want them you don't even need it anymore.
Extract the supplied DiscordUnitFrames and DiscordActionBars folders overtop of your existing ones. These two folders just contain custom fonts and images.

2. Before you log in for the first time, it's strongly suggested that you disable frame modifying addons such as DFM or MoveAnything. 
If you have conflicts, please report them! Charcoal is a very early beta and still needs a TON of optimization.

3. Log into the game and you'll see a welcome message. Click the Continue button.
Select a profile from the dropdown list. Preview them all and see what you want to play with first.
Click the Close button when you're satisfied. 

4. Now would be a good time to create a profile so that you can save your changes. Open the Charcoal options by left clicking on the minimap icon or using the /cho slash command. Go to the profiles and create a new profile. Any changes you make will be saved to that new profile.

5. To view the Charcoal movable panels right click on the minimap icon. Move them where you want, and then right click again to hide them.

You can also set keybindings in the game's keybinding menu to toggle the option panel and another one to toggle the movables.


Charcoal Custom Extractor Instructions
#########################################################################################

Extract this folder into your WorldOfWarcraft/Interface/AddOns folder.

Log-in to WoW.
Load the Charcoal settings you want to extract.
Type /che or /chextract.
Log out of WoW or type /console reloadui.
Go to your WorldOfWarcraft/WTF/Account/ACCOUNT'S NAME/SavedVariables folder.
Look for the Charcoal_Custom.lua file.
Make a copy of it outside of the SavedVariables folder.
Open the copy in any text editor, such as Windows Notepad.
Change the first line:

	CH_Extracted_Settings = {

to the following:

	CH_CUSTOM_SETTINGS = {

Save your changes and place it in the WorldOfWarcraft/Interface/AddOns/Charcoal folder.  
Log back into WoW and open the Charcoal options panel, select the Profiles tab
From the Load Profile dropdown menu, select 'custom' and click the Load button