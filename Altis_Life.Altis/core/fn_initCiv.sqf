/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;


[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_C_Poloshirt_salmon"};
player setObjectTextureGlobal [0,"textures\civilian\outfits\extermination.jpg"];
waitUntil {uniform player != "U_C_Poloshirt_salmon"};
	};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_C_Poloshirt_blue"};
player setObjectTextureGlobal [0,"textures\civilian\outfits\futurama1.jpg"];
waitUntil {uniform player != "U_C_Poloshirt_blue"};
	};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_C_Poloshirt_burgundy"};
player setObjectTextureGlobal [0,"textures\civilian\outfits\futurama2.jpg"];
waitUntil {uniform player != "U_C_Poloshirt_burgundy"};
	};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_C_Poloshirt_stripped"};
player setObjectTextureGlobal [0,"textures\civilian\outfits\chumlee.jpg"];
waitUntil {uniform player != "U_C_Poloshirt_stripped"};
	};
};


