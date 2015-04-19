/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["tobacco_1","banana_1","banana_2","corn_1","grapes_1","potato_1","agave_1","rye_1","hops_1","yeast_1","apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","heroin_2","cocaine_1","cocaine_2","weed_1","weed_2","shrooms_1","shrooms_2"];
_zone = "";

if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1","heroin_2"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1","cocaine_2"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1","weed_2"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["shrooms_1","shrooms_2"]): {_gather = "shrooms"; _val = 3;};	
    case (_zone in ["rye_1"]): {_gather = "rye"; _val = 2;};
	case (_zone in ["yeast_1"]): {_gather = "yeast"; _val = 2;};
	case (_zone in ["hops_1"]): {_gather = "hops"; _val = 2;}; 	
    case (_zone in ["grapes_1"]): {_gather = "grapes"; _val = 2;};
	case (_zone in ["potato_1"]): {_gather = "potato"; _val = 2;};
	case (_zone in ["agave_1"]): {_gather = "agave"; _val = 2;}; 
	case (_zone in ["corn_1"]): {_gather = "corn"; _val = 2;}; 
	case (_zone in ["tobacco_1"]): {_gather = "tobacco"; _val = 1;}; 
	case (_zone in ["banana_1","banana_2"]): {_gather = "banana"; _val = 1;}; 
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
