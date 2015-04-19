/*
	File: fn_ptoolsUse.sqf
	Author: blaster, Thanks to tonic for code model
	
	Description:
	Main functionality for prospecting tools in mining.
*/

closeDialog 0;
private["_mine","_item1","_item2","_item3","_item4","_item5","_item6","_item7","_item8","_item9","_item10","_item11","_item12","_item13","_msg"];
_mine = "";

switch (true) do {
	case (player distance (getMarkerPos "mve_1") < 40): {_mine = ["dirt",10,"rock",10,"sand",75,"topaz",1,"garnet",1,"quartz",2,"dino",1];};
	case (player distance (getMarkerPos "mve_2") < 40): {_mine = ["dirt",30,"rock",10,"coalu",55,"sulfur",5];};
	case (player distance (getMarkerPos "mve_3") < 40): {_mine = ["dirt",35,"rock",10,"sand",20,"diamond",5,"topaz",10,"garnet",10,"quartz",10];};
	case (player distance (getMarkerPos "mve_4") < 40): {_mine = ["dirt",10,"rock",10,"goldnugget",10,"coalu",65,"sulfur",5];};
	case (player distance (getMarkerPos "mve_5") < 40): {_mine = ["dirt",10,"rock",10,"goldnugget",10,"diamond",10,"ruby",10,"sapphire",10,"topaz",10,"garnet",10,"quartz",10];};
	
	case (player distance (getMarkerPos "me_1") < 40): {_mine = ["dirt",10,"rock",14,"copperore",65,"garnet",5,"quartz",5,"dino",1];};
	case (player distance (getMarkerPos "me_2") < 40): {_mine = ["dirt",5,"salt",85];};
	case (player distance (getMarkerPos "me_3") < 40): {_mine = ["dirt",5,"salt",10];};
	case (player distance (getMarkerPos "me_4") < 40): {_mine = ["dirt",20,"rock",80];};
	case (player distance (getMarkerPos "me_5") < 40): {_mine = ["dirt",10,"rock",20,"sulfur",10,"zincu",30,"leadu",30];};
	case (player distance (getMarkerPos "me_6") < 40): {_mine = ["dirt",10,"rock",25,"copperore",49,"goldnugget",1];};
	case (player distance (getMarkerPos "me_7") < 40): {_mine = ["dirt",10,"rock",20,"tinu",50,"titu",10];};
	case (player distance (getMarkerPos "me_8") < 40): {_mine = ["dirt",5,"rock",5,"coalu",15,"sulfur",75];};
	
	case (player distance (getMarkerPos "mm_1") < 40): {_mine = ["dirt",15,"rock",20,"ruby",1,"emerald",1,"sapphire",1,"topaz",1,"garnet",1];};
	case (player distance (getMarkerPos "mm_2") < 40): {_mine = ["dirt",5,"rock",5,"ironore",85,"garnet",5];};
	case (player distance (getMarkerPos "mm_3") < 40): {_mine = ["dirt",30,"rock",10,"zincu",10,"leadu",10,"mercuryu",40];};
	case (player distance (getMarkerPos "mm_4") < 40): {_mine = ["dirt",20,"rock",20,"zincu",30,"leadu",30];};
	case (player distance (getMarkerPos "mm_5") < 40): {_mine = ["dirt",15,"rock",15,"tinu",65,"diamond",1,"ruby",1,"emerald",1,"sapphire",1,"dino",1];};
	case (player distance (getMarkerPos "mm_6") < 40): {_mine = ["dirt",20,"rock",30,"titu",40,"ruby",5,"emerald",5];};
	case (player distance (getMarkerPos "mm_7") < 40): {_mine = ["dirt",10,"rock",60,"sand",20,"dino",10];};
	case (player distance (getMarkerPos "mm_8") < 40): {_mine = ["dirt",15,"rock",15,"ironore",30,"zincu",5,"leadu",5,"mercuryu",30];};
	case (player distance (getMarkerPos "mm_9") < 40): {_mine = ["dirt",10,"rock",30,"copperore",45,"ironore",10,"goldnugget",5];};
	case (player distance (getMarkerPos "mm_10") < 40): {_mine = ["dirt",10,"rock",20,"copperore",60];};
	
	case (player distance (getMarkerPos "mh_1") < 40): {_mine = ["dirt",5,"rock",5,"tinu",15,"titu",60,"neou",5,"iridiumu",5,"ruby",1,"emerald",1,"sapphire",1,"topaz",1,"garnet",1];};
	case (player distance (getMarkerPos "mh_2") < 40): {_mine = ["dirt",5,"rock",50,"diamond",35,"ruby",2,"emerald",2,"sapphire",2,"topaz",2,"garnet",2];};
	case (player distance (getMarkerPos "mh_3") < 40): {_mine = ["dirt",10,"rock",10,"platinumore",70];};
	case (player distance (getMarkerPos "mh_4") < 40): {_mine = ["dirt",5,"rock",10,"zincu",60,"leadu",25];};
	case (player distance (getMarkerPos "mh_5") < 40): {_mine = ["dirt",5,"rock",10,"zincu",25,"leadu",60];};
	case (player distance (getMarkerPos "mh_6") < 40): {_mine = ["dirt",5,"rock",5,"coalu",80,"sulfur",10];};
	case (player distance (getMarkerPos "mh_7") < 40): {_mine = ["dirt",5,"rock",5,"diamond",5,"ruby",5,"emerald",5,"sapphire",5,"topaz",10,"garnet",20,"quartz",40];};
	case (player distance (getMarkerPos "mh_8") < 40): {_mine = ["dirt",5,"rock",5,"copperore",10,"tinu",3,"titu",3,"iridiumu",2];};
	case (player distance (getMarkerPos "mh_9") < 40): {_mine = ["dirt",5,"rock",10,"tinu",80,"topaz",5];};
	
	case (player distance (getMarkerPos "mvh_1") < 40): {_mine = ["dirt",30,"ironore",10,"goldnugget",55,"platinumore",5];};
	case (player distance (getMarkerPos "mvh_2") < 40): {_mine = ["dirt",20,"rock",50,"uraniumu",30];};
	case (player distance (getMarkerPos "mvh_3") < 40): {_mine = ["dirt",1,"rock",1,"copperore",6,"zincu",46,"leadu",46];};
	case (player distance (getMarkerPos "mvh_4") < 40): {_mine = ["dirt",1,"rock",4,"diamond",20,"ruby",20,"emerald",20,"sapphire",20,"topaz",5,"garnet",5,"quartz",5];};
	case (player distance (getMarkerPos "mvh_5") < 40): {_mine = ["dirt",50,"copperore",5,"ironore",5,"goldnugget",5,"platinumore",5,"iridiumu",5,"mercuryu",5];};
	
	case (player distance (getMarkerPos "muh_1") < 40): {_mine = ["dirt",10,"rock",20,"iridiumu",50];};
	default {_mine = "";};
};

if(EQUAL(_mine,"")) exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

sleep 2;

switch (count(_mine)) do {
	case 2: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_msg = format["Sample Percent Results: \n%1: %2",(_item1 select 0),(_item1 select 1)];
	};
	case 4: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1)];
	};
	case 6: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1)];
		};
	case 8: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1)];
	};
	case 10: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%7: %8",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1)];
	};
	case 12: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1)];
	};
	case 14: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_item7 = [localize ([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1)];
	};
	case 16: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_item7 = [localize ([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13)];
		_item8 = [localize ([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1)];
	};
	case 18: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_item7 = [localize ([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13)];
		_item8 = [localize ([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15)];
		_item9 = [localize ([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1)];
	};
	case 20: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_item7 = [localize ([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13)];
		_item8 = [localize ([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15)];
		_item9 = [localize ([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17)];
		_item10 = [localize ([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1)];
	};
	case 22: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_item7 = [localize ([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13)];
		_item8 = [localize ([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15)];
		_item9 = [localize ([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17)];
		_item10 = [localize ([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19)];
		_item11 = [localize ([_mine,20] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 21)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20 \n%21: %22",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1),(_item11 select 0),(_item11 select 1)];
	};
	case 24: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_item7 = [localize ([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13)];
		_item8 = [localize ([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15)];
		_item9 = [localize ([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17)];
		_item10 = [localize ([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19)];
		_item11 = [localize ([_mine,20] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 21)];
		_item12 = [localize ([_mine,22] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 23)];
		_msg = format["Sample Percent Results: \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20 \n%21: %22 \n%23: %24",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1),(_item11 select 0),(_item11 select 1),(_item12 select 0),(_item12 select 1)];
	};
	case 26: {
		_item1 = [localize ([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 1)];
		_item2 = [localize ([_mine,2] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 3)];
		_item3 = [localize ([_mine,4] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 5)];
		_item4 = [localize ([_mine,6] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 7)];
		_item5 = [localize ([_mine,8] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 9)];
		_item6 = [localize ([_mine,10] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 11)];
		_item7 = [localize ([_mine,12] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 13)];
		_item8 = [localize ([_mine,14] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 15)];
		_item9 = [localize ([_mine,16] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 17)];
		_item10 = [localize ([_mine,18] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 19)];
		_item11 = [localize ([_mine,20] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 21)];
		_item12 = [localize ([_mine,22] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 23)];
		_item13 = [localize ([_mine,24] call life_fnc_varHandle)] call life_fnc_varToStr,_mine select 25)];
		_msg = format["Sample Results (Percent): \n%1: %2 \n%3: %4 \n%5: %6 \n%7: %8 \n%9: %10 \n%11: %12 \n%13: %14 \n%15: %16 \n%17: %18 \n%19: %20 \n%21: %22 \n%23: %24 \n%25: %26",(_item1 select 0),(_item1 select 1),(_item2 select 0),(_item2 select 1),(_item3 select 0),(_item3 select 1),(_item4 select 0),(_item4 select 1),(_item5 select 0),(_item5 select 1),(_item6 select 0),(_item6 select 1),(_item7 select 0),(_item7 select 1),(_item8 select 0),(_item8 select 1),(_item9 select 0),(_item9 select 1),(_item10 select 0),(_item10 select 1),(_item11 select 0),(_item11 select 1),(_item12 select 0),(_item12 select 1),(_item13 select 0),(_item13 select 1)];
	};
};

hint _msg;