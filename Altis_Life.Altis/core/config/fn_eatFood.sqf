/*
	File: fn_eatFood.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main handling system for eating food.
	*Needs to be revised and made more modular and more indept effects*
*/
private["_food","_val","_sum"];
_food = [_this,0,"",[""]] call BIS_fnc_param;
if(_food == "") exitWith {};

if([false,_food,1] call life_fnc_handleInv) then {
	switch (_food) do
	{
		case "apple": {_val = 10};
		case "rabbit":{ _val = 20};
		case "salema": {_val = 30};
		case "ornate": {_val = 25};
		case "mackerel": {_val = 30};
		case "tuna": {_val = 100};
		case "mullet": {_val = 80};
		case "catshark": {_val = 100};
		case "turtle": {_val = 100};
		case "turtlesoup": {_val = 100};
		case "donuts": {_val = 30};
		case "tbacon": {_val = 40};
		case "peach": {_val = 10};
	};
    
    life_toilet = life_toilet - (round  (_val/2) );
if(life_toilet <= 0) then {
life_toilet = 100;
player setFatigue 1;
parseText format["<t color='#ffff00'>You just peed your pants! That's exhausting. And disgusting. Maybe you should buy a diaper next time?</t>"];
};

	_sum = life_hunger + _val;
	if(_sum > 100) then {_sum = 100; player setFatigue 1; hint "You have over eaten, you are now feeling fatigued.";};
	life_hunger = _sum;
};