/*
	File: fn_shovelUse.sqf
	Author: Bryan "Tonic" Boardwine
	Rework: blaster
	
	Description:
	Main functionality for shovel in gathering.
*/
closeDialog 0;
private["_mine","_item","_diff","_itemName","_rng","_rng2"];
_mine = "";

switch (true) do {
	case (player distance (getMarkerPos "mve_1") < 40): {_mine = ["dirt",10,"rock",10,"sand",75,"topaz",1,"garnet",1,"quartz",2,"dino",1];};
	case (player distance (getMarkerPos "mve_2") < 40): {_mine = ["dirt",30,"rock",10,"coalu",55,"sulfur",5];};
	case (player distance (getMarkerPos "mve_3") < 40): {_mine = ["dirt",35,"rock",10,"sand",20,"diamond",5,"topaz",10,"garnet",10,"quartz",10];};
	case (player distance (getMarkerPos "mve_4") < 40): {_mine = ["dirt",10,"rock",10,"goldnugget",10,"coalu",65,"sulfur",5];};
	case (player distance (getMarkerPos "mve_5") < 40): {_mine = ["dirt",10,"rock",10,"goldnugget",10,"diamond",10,"ruby",10,"sapphire",10,"topaz",10,"garnet",10,"quartz",10];};
	default {_mine = "";};
};
//Mine check
if(_mine == "")) exitWith {hint localize "STR_ISTR_Shovel_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Shovel_MineVeh";};

_rng = floor(random 101); //rng generator
_rng2 = (round(random 2)+1); //number to give favor 2

switch (count(_mine)) do {
	case 2: 
		{
		_item = [(_mine select 0),_rng2];
		};
	case 4: 
		{
		_x1 = (_mine select 1);
		_x2 = 100;
		switch (true) do 
			{
			case (0 <= _rng && _rng <= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			};
		};
	case 6: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = 100;
		switch (true) do 
			{
			case (0 <= _rng && _rng <= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			};
		};
	case 8: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = 100;
		switch (true) do 
			{
			case (0 <= _rng && _rng <= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			};
		};
	case 10: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = 100;
		switch (true) do 
			{
			case (0 <= _rng && _rng <= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			};
		};
	case 12: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			};
		};
	case 14: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = _x5 + (_mine select 11);
		_x7 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			case (_rng > _x6 && _rng <= _x7): {_item = [(_mine select 12),_rng2];};
			};
		};
	case 16: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = _x5 + (_mine select 11);
		_x7 = _x6 + (_mine select 13);
		_x8 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			case (_rng > _x6 && _rng <= _x7): {_item = [(_mine select 12),_rng2];};
			case (_rng > _x7 && _rng <= _x8): {_item = [(_mine select 14),_rng2];};
			};
		};
	case 18: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = _x5 + (_mine select 11);
		_x7 = _x6 + (_mine select 13);
		_x8 = _x7 + (_mine select 15);
		_x9 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			case (_rng > _x6 && _rng <= _x7): {_item = [(_mine select 12),_rng2];};
			case (_rng > _x7 && _rng <= _x8): {_item = [(_mine select 14),_rng2];};
			case (_rng > _x8 && _rng <= _x9): {_item = [(_mine select 16),_rng2];};
			};
		};
	case 20: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = _x5 + (_mine select 11);
		_x7 = _x6 + (_mine select 13);
		_x8 = _x7 + (_mine select 15);
		_x9 = _x8 + (_mine select 17);
		_x10 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			case (_rng > _x6 && _rng <= _x7): {_item = [(_mine select 12),_rng2];};
			case (_rng > _x7 && _rng <= _x8): {_item = [(_mine select 14),_rng2];};
			case (_rng > _x8 && _rng <= _x9): {_item = [(_mine select 16),_rng2];};
			case (_rng > _x9 && _rng <= _x10): {_item = [(_mine select 18),_rng2];};
			};
		};
	case 22: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = _x5 + (_mine select 11);
		_x7 = _x6 + (_mine select 13);
		_x8 = _x7 + (_mine select 15);
		_x9 = _x8 + (_mine select 17);
		_x10 = _x9 + (_mine select 19);
		_x11 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			case (_rng > _x6 && _rng <= _x7): {_item = [(_mine select 12),_rng2];};
			case (_rng > _x7 && _rng <= _x8): {_item = [(_mine select 14),_rng2];};
			case (_rng > _x8 && _rng <= _x9): {_item = [(_mine select 16),_rng2];};
			case (_rng > _x9 && _rng <= _x10): {_item = [(_mine select 18),_rng2];};
			case (_rng > _x10 && _rng <= _x10): {_item = [(_mine select 20),_rng2];};
			};
		};
	case 24: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = _x5 + (_mine select 11);
		_x7 = _x6 + (_mine select 13);
		_x8 = _x7 + (_mine select 15);
		_x9 = _x8 + (_mine select 17);
		_x10 = _x9 + (_mine select 19);
		_x11 = _x10 + (_mine select 21);
		_x12 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			case (_rng > _x6 && _rng <= _x7): {_item = [(_mine select 12),_rng2];};
			case (_rng > _x7 && _rng <= _x8): {_item = [(_mine select 14),_rng2];};
			case (_rng > _x8 && _rng <= _x9): {_item = [(_mine select 16),_rng2];};
			case (_rng > _x9 && _rng <= _x10): {_item = [(_mine select 18),_rng2];};
			case (_rng > _x10 && _rng <= _x10): {_item = [(_mine select 20),_rng2];};
			case (_rng > _x11 && _rng <= _x12): {_item = [(_mine select 22),_rng2];};
			};
		};
	case 26: 
		{
		_x1 = (_mine select 1);
		_x2 = _x1 + (_mine select 3);
		_x3 = _x2 + (_mine select 5);
		_x4 = _x3 + (_mine select 7);
		_x5 = _x4 + (_mine select 9);
		_x6 = _x5 + (_mine select 11);
		_x7 = _x6 + (_mine select 13);
		_x8 = _x7 + (_mine select 15);
		_x9 = _x8 + (_mine select 17);
		_x10 = _x9 + (_mine select 19);
		_x11 = _x10 + (_mine select 21);
		_x12 = _x11 + (_mine select 23);
		_x13 = 100;
		switch (true) do 
			{
			case (0 >= _rng && _rng >= _x1): {_item = [(_mine select 0),_rng2];};
			case (_rng > _x1 && _rng <= _x2): {_item = [(_mine select 2),_rng2];};
			case (_rng > _x2 && _rng <= _x3): {_item = [(_mine select 4),_rng2];};
			case (_rng > _x3 && _rng <= _x4): {_item = [(_mine select 6),_rng2];};
			case (_rng > _x4 && _rng <= _x5): {_item = [(_mine select 8),_rng2];};
			case (_rng > _x5 && _rng <= _x6): {_item = [(_mine select 10),_rng2];};
			case (_rng > _x6 && _rng <= _x7): {_item = [(_mine select 12),_rng2];};
			case (_rng > _x7 && _rng <= _x8): {_item = [(_mine select 14),_rng2];};
			case (_rng > _x8 && _rng <= _x9): {_item = [(_mine select 16),_rng2];};
			case (_rng > _x9 && _rng <= _x10): {_item = [(_mine select 18),_rng2];};
			case (_rng > _x10 && _rng <= _x10): {_item = [(_mine select 20),_rng2];};
			case (_rng > _x11 && _rng <= _x12): {_item = [(_mine select 22),_rng2];};
			case (_rng > _x12 && _rng <= _x13): {_item = [(_mine select 24),_rng2];};
			};
	};
};	



_diff = [(_item select 0),(_item select 1),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};

life_action_inUse = true;
for "_i" from 0 to 2 do {
	player say3D "shovel";
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 3;
};

if(([true,(_item select 0),_diff] call life_fnc_handleInv)) then {
	_itemName = [((_item select 0),0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Shovel_Success",(localize _itemName),_diff],"PLAIN"];
};

life_action_inUse = false;
life_thirst = life_thirst - 3;
[] call life_fnc_hudUpdate;
[] spawn life_fnc_shovelUse;