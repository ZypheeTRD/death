/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",1200,(localize "STR_Process_Oil")];};
	case "diamond": {["diamond","diamondc",1350,(localize "STR_Process_Diamond")];};
	case "heroin": {["heroinu","heroinp",1750,(localize "STR_Process_Heroin")];};
	case "copper": {["copperore","copper_r",750,(localize "STR_Process_Copper")];};
	case "iron": {["ironore","iron_r",1120,(localize "STR_Process_Iron")];};
	case "sand": {["sand","glass",650,(localize "STR_Process_Sand")];};
	case "salt": {["salt","salt_r",450,(localize "STR_Process_Salt")];};
	case "cocaine": {["cocaine","cocainep",1500,(localize "STR_Process_Cocaine")];};
	case "marijuana": {["cannabis","marijuana",500,(localize "STR_Process_Marijuana")];};
	case "cement": {["rock","cement",350,(localize "STR_Process_Cement")];};
	default {[];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

if(_vendor in [mari_processor,coke_processor,heroin_processor]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
_time = 0.3;
_cpUp = 0.01;
_profName = [_type] call life_fnc_profType;
_data  = missionNamespace getVariable "_profName";
if( _profName != "" ) then 
{
switch ( _data select 0 ) do
{
case 1: { _time = 0.4; _cpUp = 0.01; };
case 2: { _time = 0.35; _cpUp = 0.01; };
case 3: { _time = 0.3; _cpUp = 0.01; };
case 4: { _time = 0.25; _cpUp = 0.01; };
case 5: { _time = 0.2; _cpUp = 0.01; };
case 6: { _time = 0.2; _cpUp = 0.02; };
case 7: { _time = 0.2; _cpUp = 0.03; };
case 8: { _time = 0.2; _cpUp = 0.04; };
case 9: { _time = 0.15; _cpUp = 0.05; };
case 10: { _time = 0.1; _cpUp = 0.07; };
};
};
while{true} do
{
sleep _time;
_cP = _cP + _cpUp;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
if(_cP >= 1) exitWith {};
if(player distance _vendor > 10) exitWith {};
};
 
if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format[localize "STR_Process_Processed",_oldVal,_itemName],"PLAIN"];
if( _profName != "" ) then 
{ 
[_profName,40] call life_fnc_addExp;
};
life_is_processing = false;
}
else
{
if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
_time = 0.9;
_cpUp = 0.01;
 
_profName = [_type] call life_fnc_profType;
_data  = missionNamespace getVariable "_profName";
if( _profName != "" ) then 
{
switch ( _data select 0) do
{
case 1: { _time = 0.9; _cpUp = 0.01; };
case 2: { _time = 0.8; _cpUp = 0.01; };
case 3: { _time = 0.7; _cpUp = 0.01; };
case 4: { _time = 0.6; _cpUp = 0.01; };
case 5: { _time = 0.5; _cpUp = 0.01; };
case 6: { _time = 0.4; _cpUp = 0.01; };
case 7: { _time = 0.3; _cpUp = 0.01; };
case 8: { _time = 0.2; _cpUp = 0.01; };
case 9: { _time = 0.2; _cpUp = 0.02; };
case 10: { _time = 0.2; _cpUp = 0.03; };
};
};
while{true} do
{
sleep _time;
_cP = _cP + _cpUp;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
if(_cP >= 1) exitWith {};
if(player distance _vendor > 10) exitWith {};
};
 
if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash - _cost;
if( _profName != "" ) then 
{
[_profName,40] call life_fnc_addExp;
};
life_is_processing = false;
}; 