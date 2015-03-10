#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = .5; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fadeSound = false;
life_handcuffs = ObjNull;
life_handcuffkeys = ObjNull;
nn_last_vehicles = [];
nn_empInUse = false;
life_fatigue = 0.5;
life_toilet = 100;
life_request_timer = false;
life_drink = 0;
life_TankLaster = 1; //able to load anything?



//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,1250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 40; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 40; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;
life_isSuicide = false;
life_nlrtimer_stop = false;
life_nlrtimer_running = false;


life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 350; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 50000;
		life_paycheck = 450;
	};
     case east:
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
};

switch(__GETC__(life_donatorlvl)) do
{
	case 1: {life_paycheck = life_paycheck + 1500;};
	case 2: {life_paycheck = life_paycheck + 3500;};
	case 3: {life_paycheck = life_paycheck + 5500;};
	case 4: {life_paycheck = life_paycheck + 7500;};
	case 5: {life_paycheck = life_paycheck + 9500;};
};
/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_shrooms",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_handcuffs",
	"life_inv_handcuffkeys",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
    "life_inv_debitcard",
    "life_inv_speedbomb",
    "life_inv_diaper",
    "life_inv_dirtydiaper",
    "life_inv_scalpel",
    "life_inv_kidney",
    "life_inv_organcooler",
    "life_inv_uwsl",
	"life_inv_cornmeal",
	"life_inv_corn",
	"life_inv_beerp",
	"life_inv_whiskey",
	"life_inv_rye",
	"life_inv_potato",
	"life_inv_agave",
	"life_inv_grapes",
	"life_inv_hops",
	"life_inv_yeast",
	"life_inv_bottles",
	"life_inv_bottledshine",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_bottledwine",
	"life_inv_bottledvodka",
	"life_inv_bottledtequila",
	"life_inv_moonshine",
	"life_inv_wine",
	"life_inv_ethanol",
	"life_inv_redphos",
	"life_inv_hydroacid",
	"life_inv_kroku",
	"life_inv_krokp",
	"life_inv_cocaineleaf",
	"life_inv_tequila",
	"life_inv_vodka",
	"life_inv_mash",
	"life_inv_ephedra",
	"life_inv_fertilizer",
	"life_inv_methu",
	"life_inv_methp",
	"life_inv_wort"

];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_taxi","civ"],
	["license_civ_attorney","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_medmarijuana","civ"],
	["license_civ_stiller","civ"],
	["license_civ_liquor","civ"],
	["license_civ_bottler","civ"],
	["license_civ_gang","civ"],
	["license_civ_mash","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_adac_car","adac"],
	["license_adac_air","adac"],
	["license_adac_assassin","adac"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",5200],["heroinp",6500],["cocaine",4500],["cocainep",5200],["marijuana",3000],["turtle",5000],["blastingcharge",10000],["boltcutter",500],["handcuffs",200],["handcuffkeys",100],["speedbomb",50000],["organcooler",500],["scalpel",500],["kidney",25000],["moonshine",9000],["bottledshine",11000],["mash",5000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",150],
	["corn",175],
    ["shrooms",500],
	["salema",1450],
	["ornate",1400],
	["mackerel",3175],
	["tuna",8300],
	["mullet",3250],
	["catshark",5500],
	["rabbit",165],
	["oilp",3200],
	["turtle",13000],
	["water",35],
	["coffee",35],
	["turtlesoup",1000],
	["donuts",100],
	["tbacon",55],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",105],
	["cocaine",2000],
	["cocainep",15000],
	["heroinu",2550],
	["heroinp",17650],
	["cannabis",3350],
	["marijuana",7350],
	["diamond",1750],
	["diamondc",9000],
	["iron_r",4200],
	["copper_r",3500],
	["salt_r",3650],
	["glass",4450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",6950],
	["goldbar",95000],
    ["handcuffs",200],
    ["handcuffkeys",100],
    ["speedbomb",500000],
    ["debitcard",0],
    ["kidney",75000],
    ["scalpel",0],
    ["organcooler",0],
    ["uwsl",125000],
    ["bottledshine",25000], 
    ["bottledwhiskey",11000], 
    ["bottledwine",10000], 
    ["bottledtequila",13000], 
    ["bottledvodka",16000], 
    ["bottledbeer",5000], 
    ["moonshine",7000], 
    ["whiskey",5000], 
    ["beerp",2500], 
    ["mash",2500], 
    ["rye",2000], 
    ["grapes",200], 
    ["agave",200], 
    ["hops",1800], 
    ["potato",200], 
    ["yeast",2000], 
    ["cornmeal",400], 
    ["bottles",75]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",265],
	["grapes",265],
	["corn",265],
	["agave",265],
	["potato",265],
	["rabbit",275],
	["salema",2550],
	["ornate",2500],
	["mackerel",5200],
	["tuna",12900],
	["mullet",5300],
	["catshark",7350],
	["water",100],
	["turtle",24000],
	["turtlesoup",2500],
	["donuts",150],
	["coffee",100],
	["tbacon",200],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
    ["shrooms",1500],
	["peach",250],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
    ["handcuffs",500],
    ["handcuffkeys",300],
    ["speedbomb",800000],
    ["debitcard",5000],
    ["diaper",100],
    ["kidney",100000],
    ["scalpel",2500],
	["heroinu",15850],
	["heroinp",25650],
	["marijuana",19350],
	["cannabis",14350],
	["cocaine",14560],
	["cocainep",25452],
    ["organcooler",5000],
    ["uwsl",250000],
    ["bottledshine",32500], 
    ["bottledwhiskey",18000], 
    ["bottledbeer",8000], 
    ["bottledwine",14000], 
    ["bottledtequila",17000], 
    ["bottledvodka",21000], 
    ["moonshine",17500], 
    ["whiskey",15500], 
    ["wine",15500], 
    ["vodka",15500], 
    ["tequila",15500], 
    ["beerp",5000], 
    ["cornmeal",500], 
    ["mash",2500], 
    ["bottles",100]

];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",10000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",1200],
	["I_Truck_02_covered_F",1450],
	["B_Truck_01_transport_F",2565],
	["B_Truck_01_box_F", 3500],
	["O_MRAP_02_F",4500],
	["B_Heli_Light_01_F",4500],
	["O_Heli_Light_02_unarmed_F",6500],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",7500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000]
];
__CONST__(life_garage_sell,life_garage_sell);