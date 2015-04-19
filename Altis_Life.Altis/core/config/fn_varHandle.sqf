/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "tobacco": {"life_inv_tobacco"};
			case "cigarettes": {"life_inv_cigarettes"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "shrooms": {"life_inv_shrooms"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
            case "handcuffs": {"life_inv_handcuffs"};
            case "handcuffkeys": {"life_inv_handcuffkeys"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "banana": {"life_inv_banana"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "topaz": {"life_inv_topaz"};
			case "topazc": {"life_inv_topazr"};
			case "garnet": {"life_inv_garnet"};
			case "garnetc": {"life_inv_garnetr"};
			case "sapphire": {"life_inv_sapphire"};
			case "sapphirec": {"life_inv_sapphirer"};
			case "ruby": {"life_inv_ruby"};
			case "rubyc": {"life_inv_rubyr"};
			case "emerald": {"life_inv_emerald"};
			case "emeraldc": {"life_inv_emeraldr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "goldnugget": {"life_inv_goldnugget"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
            case "debitcard": {"life_inv_debitcard"};
            case "speedbomb": {"life_inv_speedbomb"};
            case "diaper": {"life_inv_diaper"};
            case "dirtydiaper": {"life_inv_dirtydiaper"};
            case "kidney": {"life_inv_kidney"};
            case "scalpel": {"life_inv_scalpel"};
            case "organcooler": {"life_inv_organcooler"};
            case "uwsl": {"life_inv_uwsl"};
            case "rye": {"life_inv_rye"};
			case "hops": {"life_inv_hops"};
			case "agave": {"life_inv_agave"};
			case "grapes": {"life_inv_grapes"};
			case "potato": {"life_inv_potato"};
			case "yeast": {"life_inv_yeast"};
			case "cornmeal": {"life_inv_cornmeal"};
			case "moonshine": {"life_inv_moonshine"};
			case "bottles": {"life_inv_bottles"};
			case "bottledshine": {"life_inv_bottledshine"};
			case "bottledbeer": {"life_inv_bottledbeer"};
			case "bottledwhiskey": {"life_inv_bottledwhiskey"};
			case "bottledwine": {"life_inv_bottledwine"};
			case "bottledvodka": {"life_inv_bottledvodka"};
			case "bottledtequila": {"life_inv_bottledtequila"};
			case "beerp": {"life_inv_beerp"};
			case "whiskey": {"life_inv_whiskey"};
			case "vodka": {"life_inv_vodka"};
			case "wine": {"life_inv_wine"};
			case "tequila": {"life_inv_tequila"};
			case "mash": {"life_inv_mash"};
			case "wort": {"life_inv_wort"};
			case "corn": {"life_inv_corn"};


		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_tobacco": {"tobacco"};
			case "life_inv_cigarettes": {"cigarettes"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_shrooms": {"shrooms"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
            case "life_inv_handcuffs": {"handcuffs"};
            case "life_inv_handcuffkeys": {"handcuffkeys"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_banana": {"banana"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_ruby": {"ruby"};
			case "life_inv_rubyr": {"rubyc"};
			case "life_inv_sapphire": {"sapphire"};
			case "life_inv_sapphirer": {"sapphirec"};
			case "life_inv_emerald": {"emerald"};
			case "life_inv_emeraldr": {"emeraldc"};
			case "life_inv_topaz": {"topaz"};
			case "life_inv_topazr": {"topazc"};
			case "life_inv_garnet": {"garnet"};
			case "life_inv_garnetr": {"garnetc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_goldnugget": {"goldnugget"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
            case "life_inv_debitcard": {"debitcard"};
            case "life_inv_speedbomb": {"speedbomb"};
            case "life_inv_diaper": {"diaper"};
            case "life_inv_dirtydiaper": {"dirtydiaper"};      
            case "life_inv_kidney": {"kidney"};   
            case "life_inv_scalpel": {"scalpel"}; 
            case "life_inv_organcooler": {"organcooler"}; 
            case "life_inv_uwsl": {"uwsl"};
			case "life_inv_mash": {"mash"};
			case "life_inv_wort": {"wort"};
			case "life_inv_yeast": {"yeast"};
			case "life_inv_rye": {"rye"};
			case "life_inv_agave": {"agave"};
			case "life_inv_grapes": {"grapes"};
			case "life_inv_potato": {"potato"};
			case "life_inv_hops": {"hops"};
			case "life_inv_whiskey": {"whiskey"};
			case "life_inv_vodka": {"vodka"};
			case "life_inv_tequila": {"tequila"};
			case "life_inv_beerp": {"beerp"};
			case "life_inv_bottles": {"bottles"};
			case "life_inv_cornmeal": {"cornmeal"};
			case "life_inv_bottledwhiskey": {"bottledwhiskey"};
			case "life_inv_bottledbeer": {"bottledbeer"};;
			case "life_inv_bottledvodka": {"bottledvodka"};;
			case "life_inv_bottledtequila": {"bottledtequila"};
			case "life_inv_bottledshine": {"bottledshine"};
			case "life_inv_bottledwine": {"bottledwine"};
			case "life_inv_moonshine": {"moonshine"};
			case "life_inv_wine": {"wine"};
			case "life_inv_corn": {"corn"};

		};
	};
};
