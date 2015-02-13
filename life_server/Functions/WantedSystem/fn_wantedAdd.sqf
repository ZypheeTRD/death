/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine"
	Database Persistence By: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_pastCrimes","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
    
	case "1": {_type = ["Driving without Lights",350]};
    case "2": {_type = ["Driving without License",1500]};
    case "3": {_type = ["Driving over the Speed",2500]};
    case "4": {_type = ["Reckless Driving",3500]};
    case "5": {_type = ["Driving Stolen Vehicle",8000]};
    case "6": {_type = ["Hit and Run",5000]};
	case "7": {_type = ["Attempted Theft of a Police Vehicle",5000]};
	case "8": {_type = ["Theft of a Police Vehicle",12350]};
    case "9": {_type = ["Public Indeceny",500]};
    case "10": {_type = ["Disturbing the Peace",500]};
    case "11": {_type = ["Driving Illegal Vehicle",5500]};
    case "12": {_type = ["Evading from Police",8000]};
    case "13": {_type = ["Assault on an Officer",9000]};
	case "14": {_type = ["Illegal Roadblocks",10000]};
	case "15": {_type = ["Resisting Arrest",1350]};
    case "16": {_type = ["Trade in Exotic Goods",1500]};
    case "17": {_type = ["Masturbating in Public",2500]};
    case "18": {_type = ["Insulting the Authorities",500]};
    case "19": {_type = ["Harassment",800]};
    case "20": {_type = ["Sexual Harassment",1500]};
	case "21": {_type = ["Entering a Restricted Area",10000]};
    case "22": {_type = ["Possesion of a Firearm without a License",2500]};
    case "23": {_type = ["Possession of an Illegal Firearm",6500]};
    case "24": {_type = ["Use of Firearms within City Limits",8000]};
    case "25": {_type = ["Bank Robbery",25000]};
	case "26": {_type = ["Flying without a Licensee",10000]};
	case "27": {_type = ["Flying/Hovering in a No-Fly Zone",5350]};
    case "28": {_type = ["Landing in a No-Fly Zone",1500]};
    case "29": {_type = ["Flying/Hovering below 150m in City Limits",2500]};
    case "30": {_type = ["Resisting Sloth Rape",350000]};
    case "31": {_type = ["Prison Break",8000]};
	case "187V": {_type = ["Vehicular Manslaughter",6500]};
	case "187": {_type = ["Manslaughter",20000]};
	case "901": {_type = ["Escaping Jail",4500]};
	case "261": {_type = ["Rape",5000]};
	case "261A": {_type = ["Attempted Rape",3000]};
	case "261AB": {_type = ["Beastiality",7000]};
	case "215": {_type = ["Attempted Auto Theft",2000]};
	case "213": {_type = ["Use of Illegal Explosives",100000]};
	case "211": {_type = ["Robbery",1000]};
	case "207": {_type = ["Kidnapping",3500]};
	case "207A": {_type = ["Attempted Kidnapping",2000]};
	case "390": {_type = ["Public Intoxication",15000]};
	case "487": {_type = ["Grand Theft",1500]};
	case "488": {_type = ["Petty Theft",700]};
	case "480": {_type = ["Hit and Run",1300]};
	case "481": {_type = ["Drug Possession",1000]};
	case "482": {_type = ["Intent to Distribute",5000]};
	case "483": {_type = ["Drug Trafficking",9500]};
	case "459": {_type = ["Burglary",6500]};
	case "666": {_type = ["Tax Evasion",2000]};
	case "667": {_type = ["Terrorism",45000]};
	case "668": {_type = ["Unlicensed Hunting",15000]};
	case "919": {_type = ["Organ Theft",15000]};
	case "919A": {_type = ["Attempted Organ Theft",5000]};

	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.

_result = format["SELECT wantedID, wantedCrimes FROM wanted WHERE wantedID='%1'",_uid];
waitUntil{!DB_Async_Active};
_queryResult = [_result,2] call DB_fnc_asyncCall;

_name = [_name] call DB_fnc_mresString;
_val = [(_type select 1)] call DB_fnc_numberSafe;

if(count _queryResult != 0) then
{
	_pastCrimes = [(_queryResult select 1)] call DB_fnc_mresToArray;
	_pastCrimes pushBack (_type select 0);
	_pastCrimes = [_pastCrimes] call DB_fnc_mresArray;
	_query = format["UPDATE wanted SET wantedCrimes = '%1', wantedBounty = wantedBounty + '%2', active = '1' WHERE wantedID='%3'",_pastCrimes,_val,_uid];
} else {
	_crimes = [[(_type select 0)]] call DB_fnc_mresArray;
	_query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes, wantedBounty, active) VALUES('%1','%2','%3','%4', '1')",_uid,_name,_crimes,_val];
};

if(!isNil "_query") then {
	waitUntil{!DB_Async_Active};
	[_query,2] call DB_fnc_asyncCall;
};