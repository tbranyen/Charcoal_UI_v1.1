function CHE_OnLoad()
	SlashCmdList["CHE"] = CHE_ExtractSettings;
	SLASH_CHE1 = "/che";
	SLASH_CHE2 = "/chextract";
end

function CHE_ExtractSettings()
	CH_Extracted_Settings = {};
	CHE_Extract_Table(CH_Config[CH_INDEX], CH_Extracted_Settings);
	DEFAULT_CHAT_FRAME:AddMessage( "Charcoal UI settings extracted.  Read the readme.txt file to see what further steps to take.", 1.0, 1.0, 0.0 );
end

function CHE_Extract_Table(src, dest)
	for index, value in src do
		if (type(value) == "table") then
			dest[index] = {};
			CHE_Extract_Table(value, dest[index]);
		else
			dest[index] = value;
		end
	end
end