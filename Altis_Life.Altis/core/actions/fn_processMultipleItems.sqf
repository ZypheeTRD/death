/* author: preller @ freudenhaus <codepreller@hirnstrom.net> for Freudenhaus Altis Life
*
* processMulitpleItems.sqf
* processes any number of input items into one output item. progress bar is from bryan "tonic" boardwines fn_processAction.sqf.
*
* Please feel free to use and modify it, but remember to credit the author.
*
* PARAMS:
* _this select 3: String - processor type
*
*/

private ["_inputItems", "_outputItem", "_inputItemsNeeded", "_outputItemAmount", "_itemsInv", "_itemsNeeded", "_inputItemsDeleted", "_ui", "_progress", "_pgText", "_cP", "_productionAmount", "_possibleProductionAmount","_processor","_formatedProcessingInfo","_hasLicense","_licenseNeeded","_processingCost","_type","_productionInfo"];

if (isServer) exitWith {};

if (life_is_processing) exitWith {hint "The Processor is busy.  Please wait!";};    

//parameter
_processor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;

//Error check. taken from tonic.
if(isNull _processor OR _type == "" OR (player distance _processor > 5)) exitWith {};
if(vehicle player != player) exitwith {hint format["Lazy ass, you can't process from inside the car."];};

life_is_processing = true;

//define your production line here
_productionInfo = switch (_type) do
{
	case "mash": {[["water","cornmeal"],[1,1],"mash",1,"stiller",2000];};
	case "wort": {[["water","potato"],[1,1],"wort",1,"stiller",2000];};
	case "beerp": {[["yeast","hops"],[1,1],"beerp",1,"liquor",5000];};
	case "wine": {[["yeast","grapes"],[1,1],"wine",1,"liquor",5000];};
	case "whiskey": {[["yeast","rye"],[1,1],"whiskey",1,"stiller",6000];};
	case "vodka": {[["yeast","wort"],[1,1],"vodka",1,"stiller",11000];};
	case "tequila": {[["yeast","agave"],[1,1],"tequila",1,"stiller",12500];};
	case "moonshine": {[["yeast","mash"],[1,1],"moonshine",1,"stiller",15000];};
	case "bottledbeer": {[["bottles","beerp"],[1,1],"bottledbeer",1,"bottler",5000];};
	case "bottledwine": {[["bottles","wine"],[1,1],"bottledwine",1,"bottler",5000];};
	case "bottledwhiskey": {[["bottles","whiskey"],[1,1],"bottledwhiskey",1,"bottler",6000];};
	case "bottledvodka": {[["bottles","vodka"],[1,1],"bottledvodka",1,"bottler",11000];};
	case "bottledtequila": {[["bottles","tequila"],[1,1],"bottledtequila",1,"bottler",12500];};
	case "bottledmoonshine": {[["bottles","moonshine"],[1,1],"bottledmoonshine",1,"bottler",15000];};
	case "meth": {[["ephedra","fuelF","ammonia"],[1,1,1],"methu",2,"meth",10000];};
	case "coke": {[["cocaineleaf","fuelF","hydroacid"],[1,1,1],"cocaine",3,"coke",10000];};
	case "krok": {[["ethanol","fuelF","heroinu","redphos"],[1,2,1,4],"kroku",5,"krok",20000];};
	case "test2": {[["water","apple","peach"],[1,1,1],"tuna",2,"driver",10000];};
	case "test3": {[["water","apple","peach","rabbit"],[1,2,1,4],"goldbar",4,"boat",20000];};
	default {[]};
};

//initialize
_inputItems = _productionInfo select 0;
_inputItemsNeeded = _productionInfo select 1;
_outputItem = _productionInfo select 2;
_outputItemAmount = [(_productionInfo select 3),0,0,[0]] call BIS_fnc_param;
_licenseNeeded = _productionInfo select 4;
_processingCost = [(_productionInfo select 5),0,0,[0]] call BIS_fnc_param;

_hasLicense = missionNamespace getVariable (([_licenseNeeded,0] call life_fnc_licenseType) select 0);
_inputItemsDeleted = true;
_productionAmount = 9999; //infinite

if ((count _inputItems) != (count _inputItemsNeeded)) exitWith 
	{diag_log format["You must have equal amounts of items to begin processing"];life_is_processing = false;};

//check if the player has enough items and determine how much he can produce
for "_x" from 0 to ((count _inputItems) - 1) do {
	//get current amount player has
	_itemsInv = missionNamespace getVariable ([(_inputItems select _x),0] call life_fnc_varHandle);
	_itemsNeeded = _inputItemsNeeded select _x;

	//calculate possible amount of processing cycles
	_possibleProductionAmount = floor (_itemsInv / _itemsNeeded);
	if (_possibleProductionAmount < _productionAmount) then {
		_productionAmount = _possibleProductionAmount;
	};
};

//exit if the player doenst have the required items for one process
if (_productionAmount < 1) exitWith {
	hint "Du hast nicht genug Materialien dabei";
	life_is_processing = false;
};

//check for cash if the player doesnt have the license and calculate possible max production
if (!_hasLicense) then {
	//determine max production by money
	if ((floor (life_cash / _processingCost)) < _productionAmount) then {
		_productionAmount = floor (life_cash / _processingCost);
	};
};

//exit if the player doenst have the required money for one process
if (_productionAmount < 1) exitWith {
	hint "You do not have enough money to process that item";
	life_is_processing = false;
};

//Setup our progress bar. taken from tonic.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%","Processing please wait"];
_progress progressSetPosition 0.01;
_cP = 0.01;	

//progress bar. taken from tonic.
while{true} do
{
	sleep  0.3;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%","Processing please wait."];
	if(_cP >= 1) exitWith {};
	if(player distance _processor > 10) exitWith {};
};

if(player distance _processor > 10) exitWith {hint "You moved too far away from the processor.  Please stay within 5 meters"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

//substract items 
for "_x" from 0 to ((count _inputItems) - 1) do {
	//reduce 
	if (!([false,(_inputItems select _x),((_inputItemsNeeded select _x) * _productionAmount)] call life_fnc_handleInv)) then {
		_inputItemsDeleted = false;
	}
};

//add new items if players items where deleted
if (_inputItemsDeleted) then {
	if (!_hasLicense) then {
		life_cash = life_cash - (_processingCost * _productionAmount);
	};

	//add the new item
	if (!([true,_outputItem,(_outputItemAmount * _productionAmount)] call life_fnc_handleInv)) then {
		hint format["Oops, something went wrong.  Please contact an admin."];
		diag_log format["ERROR: fn_processMultipleItems - new item(s) are not added"];
	};

	//format output
	_formatedProcessingInfo = "You have";
	for "_x" from 0 to ((count _inputItems) - 2) do {
		_formatedProcessingInfo = _formatedProcessingInfo + format[" %1 %2,",((_inputItemsNeeded select _x) * _productionAmount),(_inputItems select _x)];
	};
	_formatedProcessingInfo = _formatedProcessingInfo + format["and %1 %2 processed into %4 %3",((_inputItemsNeeded select ((count _inputItemsNeeded) - 1)) * _productionAmount),(_inputItems select ((count _inputItems) - 1)),_outputItem,(_outputItemAmount * _productionAmount)];

	5 cutText ["","PLAIN"];
	titleText[format["%1",_formatedProcessingInfo],"PLAIN"];
};

life_is_processing = false;