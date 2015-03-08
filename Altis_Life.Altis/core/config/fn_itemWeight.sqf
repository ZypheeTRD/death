/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "cocaine": {6};
	case "cocainep": {4};
	case "shrooms": {1};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
    case "handcuffs": {1};
    case "handcuffkeys": {1};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "spikeStrip": {15};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
    case "debitcard": {0};
    case "speedbomb": {10};
    case "kidney": {15};//15 is the weight
	case "scalpel": {1};
	case "organcooler": {2};
    case "uwsl": {5};
	case "rye": {2};
	case "hops": {2};
	case "potato": {2};
	case "agave": {2};
	case "grapes": {2};
	case "yeast": {2};
	case "cornmeal": {2};
	case "mash": {2};
	case "wort": {2};
	case "whiskey": {4};
	case "wine": {3};
	case "vodka": {4};
	case "tequila": {4};
	case "beerp": {4};
	case "moonshine": {5};
	case "bottledwhiskey": {5};
	case "bottledtequila": {5};
	case "bottledvodka": {5};
	case "bottledbeer": {5};
	case "bottledshine": {5};
	case "bottledwine": {4};
	case "bottles": {1};
	default {1};
};
