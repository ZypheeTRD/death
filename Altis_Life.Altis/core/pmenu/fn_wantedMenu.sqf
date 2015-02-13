#include <macro.h>
/*
	File: fn_wantedMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];
disableSerialization;

createDialog "life_wanted_menu";

_display = findDisplay 2400;
_list = _display displayCtrl 2401;
_players = _display displayCtrl 2406;
lbClear _list;
_units = [];

lbClear _players;

{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
    _players lbAdd format["%1 - %2", name _x,_side];
    _players lbSetdata [(lbSize _players)-1,str(_x)];
} foreach playableUnits;

_list2 = getControl(2400,2407);
lbClear _list2; //Purge the list

_crimes = [["Driving w/o lights","350","1"],
           ["Driving w/o license","1500","2"],
           ["Excessive Speed","2500","3"],
           ["Reckless Driving","3500","4"],
           ["Driving Stolen Vehicle","8000","5"],
           ["Hit and Run","5000","6"],
           ["Attempted Theft of a Police Vehicle","5000","7"],
           ["Theft of a Police Vehicle","12350","8"],
           ["Public Indeceny","500","9"],
           ["Disturbing the Peace","500","10"],
           ["Driving Illegal Vehicle","5500","11"],
           ["Evading from Police","8000","12"],
           ["Assault on an Officer","9000","13"],
           ["Illegal Roadblocks","10000","14"],
           ["Resisting Arrest","1350","15"],
           ["Trade in Exotic Goods","1500","16"],
           ["Masturbating in Public","2500","17"],
           ["Insulting the Authorities","500","18"],
           ["Harassment","800","19"],
           ["Sexual Harassment","1500","20"],
           ["Entering a Restricted Area","10000","21"],
           ["Possesion of a Firearm w/o a License","2500","22"],
           ["Possession of an Illegal Firearm","6500","23"],
           ["Use of Firearms within City Limits","8000","24"],
           ["Bank Robbery","5000","250000"],
           ["Flying without a Licensee","10000","26"],
           ["Flying/Hovering in a No-Fly Zone","5350","27"],
           ["Landing in a No-Fly Zone","1500","28"],
           ["Flying/Hovering below 150m in City Limits","2500","29"],
           ["Resisting Sloth Rape","350000","30"],
           ["Prison Break","8000","31"],
           ["Vehicular Manslaughter","6500","187V"],
           ["Manslaughter","20000","187"],
           ["Escaping Jail","4500","901"],
           ["Rape","5000","261"],
           ["Attempted Rape","10000","261A"],
           ["Beastiality","3500","261AB"],
           ["Attempted Auto Theft","10000","215"],
           ["Use of Illegal Explosives","100000","213"],
           ["Robbery","1000","211"],
           ["Kidnapping","3500","207"],
           ["Attempted Kidnapping","2000","207A"],
           ["Public Intoxication","15000","390"],
           ["Grand Theft","1500","487"],
           ["Petty Theft","700","488"],
           ["Hit and Run","1300","480"],
           ["Drug Possession","1000","481"],
           ["Intent to Distribute","5000","482"],
           ["Drug Trafficking","9500","483"],
           ["Burglary","6500","459"],
           ["Tax Evasion","2000","666"],
           ["Terrorism","45000","667"],
           ["Unlicensed Hunting","1500","668"],
           ["Organ Theft","15000","919"],
           ["Attempted Organ Theft","5000","919A"]];

{
	_list2 lbAdd format["%1 - $%2 (%3)",(_x select 0),(_x select 1),(_x select 2)];
	_list2 lbSetData [(lbSize _list2)-1,(_x select 2)];
} foreach _crimes;

ctrlSetText[2404,"Establishing connection..."];

if(__GETC__(life_coplevel) < 3 && __GETC__(life_adminlevel) == 0) then
{
	ctrlShow[2405,false];
};

[[player],"life_fnc_wantedFetch",false,false] spawn life_fnc_MP; 