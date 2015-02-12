/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if ( life_cash < 6000 ) exitWith { systemChat "You don't have enough money to broadcast a message!"; }; // Hint if person haves no 6000 dollar
if !( life_channel_send ) exitWith { systemChat "You must wait 10 minutes to send another message!"; }; //Gives Player the Hint to Wait 10 mins
life_cash = life_cash - 6000;

_message = ctrlText 9001;
[[3,format ["%1 sends this from Channel7 to all: %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
life_channel_send = false;

[] spawn
{
	sleep 600;
	life_channel_send = true;
};
