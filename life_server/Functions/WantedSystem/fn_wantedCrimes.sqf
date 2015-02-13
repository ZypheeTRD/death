/*
	File: fn_wantedCrimes.sqf
	Author: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Grabs a list of crimes committed by a person.
*/
private["_display","_criminal","_tab","_queryResult","_result","_ret","_crimesDb","_crimesArr","_type"];
disableSerialization;
_ret = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_criminal = [_this,1,[],[]] call BIS_fnc_param;

_result = format["SELECT wantedCrimes, wantedBounty FROM wanted WHERE active='1' AND wantedID='%1'",(_criminal select 0)];
waitUntil{!DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_result,2] call DB_fnc_asyncCall;

_ret = owner _ret;
_crimesArr = [];

_crimesDB = [(_queryResult select 0)] call DB_fnc_mresToArray;
if(typeName _crimesDb == "STRING") then {_crimesDb = call compile _crimesDb;};
_queryResult set[0,_crimesDb];
_type = _queryResult select 0;
{
	switch(_x) do
	{
        
		case "1": {_x = "Driving without Lights"};
		case "2": {_x = "Driving without License"};
		case "3": {_x = "Driving over the Speed"};
		case "4": {_x = "Reckless Driving"};
		case "5": {_x = "Driving Stolen Vehicle"};
		case "6": {_x = "Hit and Run"};
		case "7": {_x = "Attempted Theft of a Police Vehicle"};
        case "8": {_x = "Theft of a Police Vehicle"};
		case "9": {_x = "Public Indeceny"};
		case "10": {_x = "Disturbing the Peace"};
		case "11": {_x = "Driving Illegal Vehicles"};
        case "12": {_x = "Evading from Police"};
		case "13": {_x = "Assault on an Officer"};
		case "14": {_x = "Illegal Roadblocks"};
		case "15": {_x = "Resisting Arrest"};
		case "16": {_x = "Trade in Exotic Goods"};
        case "17": {_x = "Masturbating in Public"};
		case "18": {_x = "Insulting the Authorities"};
		case "19": {_x = "Harassment"};
		case "20": {_x = "Sexual Harassment"};
		case "21": {_x = "Entering a Restricted Area"};
        case "22": {_x = "Possession of a Firearm without a License"};
		case "23": {_x = "Possession of an Illegal Firearm"};
		case "24": {_x = "Use of Firearms within City Limits"};
		case "25": {_x = "Bank Robbery"};
		case "26": {_x = "Flying without a License"};
		case "27": {_x = "Flying/Hovering in a No-Fly Zone"};
		case "28": {_x = "Landing in a No-Fly Zone"};
		case "29": {_x = "Flying/Hovering below 150m in City Limits"};
		case "30": {_x = "Resisting Sloth Rape"};
		case "31": {_x = "Prison Break"};
		case "187V": {_x = "Vehicular Manslaughter"};
		case "187": {_x = "Manslaughter"};
		case "901": {_x = "Escaping Jail"};
		case "261": {_x = "Rape"};
		case "261A": {_x = "Attempted Rape"};
		case "261AB": {_x = "Beastiality"};
		case "215": {_x = "Attempted Auto Theft"};
		case "213": {_x = "Use of illegal explosives"};
		case "211": {_x = "Robbery"};
		case "207": {_x = "Kidnapping"};
		case "207A": {_x = "Attempted Kidnapping"};
		case "390": {_x = "Public Intoxication"};
		case "487": {_x = "Grand Theft"};
		case "488": {_x = "Petty Theft"};
		case "480": {_x = "Hit and run"};
		case "481": {_x = "Drug Possession"};
		case "482": {_x = "Intent to distribute"};
		case "483": {_x = "Drug Trafficking"};
		case "459": {_x = "Burglary"};
		case "666": {_x = "Tax Evasion"};
		case "667": {_x = "Terrorism"};
		case "668": {_x = "Unlicensed Hunting"};
		case "919": {_x = "Organ Theft"};
		case "919A": {_x = "Attempted Organ Theft"};		
        
	};
	_crimesArr pushBack _x;
}forEach _type;
_queryResult set[0,_crimesArr];

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_result];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

[[_queryResult],"life_fnc_wantedInfo",_ret,false] spawn life_fnc_MP;