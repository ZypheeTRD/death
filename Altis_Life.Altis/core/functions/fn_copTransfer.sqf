/*
File: fn_copTransfer.sqf
Author: BlackShot/COG
*/
private["_val"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;


titleText[format["You have received $%1 for taking an ADAC member down!",[_val] call life_fnc_numberText],"PLAIN"];


life_atmcash = life_atmcash + _val;