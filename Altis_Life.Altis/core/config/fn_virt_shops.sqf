/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["cornmeal","bottles","water","rabbit","apple","banana","cigarettes","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","uwsl","storagesmall","storagebig","debitcard","diaper"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","uwsl","handcuffs","handcuffkeys","scalpel","organcooler","speedbomb","debitcard","diaper"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","handcuffs","handcuffkeys"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","shrooms"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass","bottles"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","handcuffs","handcuffkeys","debitcard"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "medmarijuana": {["Dispensary",["marijuana","cannabis"]]};
    case "blackmarket": {["Black Market",["handcuffs","handcuffkeys","scalpel","organcooler","speedbomb","kidney"]]};
    case "adac": {["ADAC Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","uwsl","handcuffs","handcuffkeys","scalpel","organcooler","speedbomb","kidney"]]};
    case "bar": {["The Lounge",["bottledbeer","bottledwine","bottledwhiskey","bottledtequila","bottledvodka"]]};
	case "speakeasy": {["Speakeasy's",["bottledwhiskey","bottledshine","bottledbeer","moonshine","vodka","tequila","bottledtequila","bottledvodka"]]};

};