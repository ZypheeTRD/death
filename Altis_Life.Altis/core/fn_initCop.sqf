#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

	if(!(str(player) in ["cop_99"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

player setVariable["rank",(__GETC__(life_coplevel)),true];

[] spawn
{
	private["_texture"];
	while {true} do
	{
		waitUntil{uniform player == "U_Rangemaster"};
		_texture =
		switch (__GETC__(life_coplevel)) do
		{
			case 0: {"textures\police\outfits\officer_shirt.jpg"};
			case 1: {"textures\police\outfits\officer_shirt.jpg"};
			case 2: {"textures\police\outfits\officer_shirt.jpg"};
			case 3: {"textures\police\outfits\officer_shirt.jpg"};
			case 4: {"textures\police\outfits\officer_shirt.jpg"};
			case 5: {"textures\police\outfits\officer_shirt.jpg"};
			case 6: {"textures\police\outfits\officer_shirt.jpg"};
			case 7: {"textures\police\outfits\officer_shirt.jpg"};
			case 8: {"textures\police\outfits\officer_shirt.jpg"};
			case 9: {"textures\police\outfits\officer_shirt.jpg"};
			case 10: {"textures\police\outfits\officer_shirt.jpg"};
			case 11: {"textures\police\outfits\officer_shirt.jpg"};
			case 12: {"textures\police\outfits\officer_shirt.jpg"};
			case 13: {"textures\civilian\outfits\jagershirt.jpg"};
			case 14: {"textures\civilian\outfits\obeyblack.jpg"};
			case 15: {"textures\civilian\outfits\getrekt.jpg"};
		};
		
		player setObjectTextureGlobal [0,_texture];
		waitUntil{uniform player != "U_Rangemaster"};
	};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam_vest"};
player setObjectTextureGlobal [0,"textures\police\outfits\sniper_shirt.jpg"];
waitUntil {uniform player != "U_B_CombatUniform_mcam_vest"};
	};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
player setObjectTextureGlobal [0,"textures\police\outfits\sniper_shirt.jpg"];
waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
	};
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
