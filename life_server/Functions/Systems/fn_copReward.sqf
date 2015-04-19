/*
File: fn_copReward.sqf
Author: BlackShot/COG
*/
private["_rewarded","_val"];
_rewarded = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_val = [_this,1,"",["",0]] call BIS_fnc_param;
if(isNull _rewarded) exitWith {};


[[_val],"life_fnc_copTransfer",(owner _rewarded),false] spawn life_fnc_MP;