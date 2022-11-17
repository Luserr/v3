-- Version Checker do not remove --

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

local branding = 
[[
	 //	_______                         _          _____           _       _   
	 ||	|__   __|                       | |        / ____|         (_)     | |  
	 ||	   | | ___  _ __ _ __   __ _  __| | ___   | (___   ___ _ __ _ _ __ | |_ 
	 ||	   | |/ _ \| '__| '_ \ / _` |/ _` |/ _ \   \___ \ / __| '__| | '_ \| __|
	 ||	   | | (_) | |  | | | | (_| | (_| | (_) |  ____) | (__| |  | | |_) | |_ 
	 ||	   |_|\___/|_|  |_| |_|\__,_|\__,_|\___/  |_____/ \___|_|  |_| .__/ \__|
	 ||																 | |        
	 ||																 |_|        
	 ||                        Created by Rhys19
	 ||]]

-- Grabs the latest version number from the web GitHub
PerformHttpRequest( "https://rhys19.github.io/tornado-script-web/version.txt", function( err, text, headers )
	-- Wait to reduce spam
	Citizen.Wait( 2000 )

	-- Print the branding!
	print( branding )

	-- Get the current resource version
	local curVer = GetCurrentVersion()

	print( "  ||    Current version: " .. curVer )

	if ( text ~= nil ) then
		-- Print latest version
		print( "  ||    Latest recommended version: " .. text .."\n  ||" )

		-- If the versions are different, print it out
		if ( text ~= curVer ) then
			print( "  ||    ^1Your Tornado Script version is outdated, visit the FiveM forum post to get the latest version.\n^0  \\\\\n" )
		else
			print( "  ||    ^2Tornado Script is up to date!\n^0  ||\n  \\\\\n" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "  ||    ^1There was an error getting the latest version information.\n^0  ||\n  \\\\\n" )
	end
end )