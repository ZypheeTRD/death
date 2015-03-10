#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
    
case "vip_vehicles":
	{
		if(__GETC__(life_donatorlvl) > 0) then
		{
			_return set[count _return,["C_Kart_01_Fuel_F",1330]];
			_return set[count _return,["C_Kart_01_Blu_F",1330]];
			_return set[count _return,["C_Kart_01_Red_F",1330]];
			_return set[count _return,["C_Kart_01_Vrana_F",1330]];
			_return set[count _return,["C_Hatchback_01_F",3330]];
			_return set[count _return,["C_SUV_01_F",33330]];
			_return set[count _return,["C_Offroad_01_F",14220]];
			_return set[count _return,["C_Hatchback_01_sport_F",24220]];
			_return set[count _return,["O_G_Offroad_01_F",14220]];
			_return set[count _return,["O_Truck_03_covered_F",45000]];
			_return set[count _return,["O_Truck_03_repair_F",45000]];
			_return set[count _return,["O_Truck_03_device_F",67500]];
			_return set[count _return,["O_MRAP_02_F",190000]];
			_return set[count _return,["I_MRAP_03_F",280000]];
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",1800000]];
			_return set[count _return,["O_Heli_Transport_04_F",1692500]];
			_return set[count _return,["O_Heli_Transport_04_covered_F",1692500]];
			_return set[count _return,["O_Heli_Transport_04_bench_F",1692500]];
			_return set[count _return,["O_Heli_Transport_04_repair_F",1692500]];
			_return set[count _return,["O_Heli_Transport_04_ammo_F",1692500]];
			_return set[count _return,["O_Heli_Transport_04_box_F",1605000]];
			_return set[count _return,["C_Heli_Light_01_civil_F",40500]];
			_return set[count _return,["B_Heli_Light_01_F",675000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",72000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",72000]];
			_return set[count _return,["I_Heli_Transport_02_F",675000]];
		};
		if(__GETC__(life_donatorlvl) == 2) then
		{
			_return set[count _return,["C_Kart_01_Fuel_F",0]];
			_return set[count _return,["C_Kart_01_Blu_F",0]];
			_return set[count _return,["C_Kart_01_Red_F",0]];
			_return set[count _return,["C_Kart_01_Vrana_F",0]];
			_return set[count _return,["C_Hatchback_01_F",2110]];
			_return set[count _return,["C_SUV_01_F",21110]];
			_return set[count _return,["C_Offroad_01_F",11112]];
			_return set[count _return,["C_Hatchback_01_sport_F",11110]];
			_return set[count _return,["O_Truck_03_covered_F",40000]];
			_return set[count _return,["O_Truck_03_repair_F",40000]];
			_return set[count _return,["O_Truck_03_device_F",60000]];
			_return set[count _return,["O_MRAP_02_F",80000]];
			_return set[count _return,["I_MRAP_03_F",160000]];
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",1600000]];
			_return set[count _return,["O_Heli_Transport_04_F",1060000]];
			_return set[count _return,["O_Heli_Transport_04_covered_F",1060000]];
			_return set[count _return,["O_Heli_Transport_04_bench_F",1060000]];
			_return set[count _return,["O_Heli_Transport_04_repair_F",1060000]];
			_return set[count _return,["O_Heli_Transport_04_ammo_F",1060000]];
			_return set[count _return,["O_Heli_Transport_04_box_F",1760000]];
			_return set[count _return,["C_Heli_Light_01_civil_F",40000]];
			_return set[count _return,["B_Heli_Light_01_F",600000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",64000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",64000]];
			_return set[count _return,["I_Heli_Transport_02_F",600000]];		
			_return set[count _return,["O_MRAP_02_hmg_F",1560000]];
			_return set[count _return,["I_MRAP_03_hmg_F",2000000]];
			_return set[count _return,["O_Heli_Light_02_F",2800000]];
			_return set[count _return,["O_Heli_Transport_04_fuel_F",5060000]];
		};
		if(__GETC__(life_donatorlvl) == 3) then
		{
			_return set[count _return,["C_Kart_01_Fuel_F",0]];
			_return set[count _return,["C_Kart_01_Blu_F",0]];
			_return set[count _return,["C_Kart_01_Red_F",0]];
			_return set[count _return,["C_Kart_01_Vrana_F",0]];
			_return set[count _return,["C_Hatchback_01_F",0]];
			_return set[count _return,["C_SUV_01_F",0]];
			_return set[count _return,["C_Offroad_01_F",0]];
			_return set[count _return,["C_Hatchback_01_sport_F",0]];
			_return set[count _return,["O_G_Offroad_01_F",0]];
			_return set[count _return,["O_G_Offroad_01_armed_F",0]];			
			_return set[count _return,["O_Truck_03_covered_F",35000]];
			_return set[count _return,["O_Truck_03_repair_F",35000]];
			_return set[count _return,["O_Truck_03_device_F",52500]];
			_return set[count _return,["O_MRAP_02_F",70000]];
			_return set[count _return,["I_MRAP_03_F",140000]];
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",900000]];
			_return set[count _return,["O_Heli_Transport_04_F",927500]];
			_return set[count _return,["O_Heli_Transport_04_covered_F",927500]];
			_return set[count _return,["O_Heli_Transport_04_bench_F",927500]];
			_return set[count _return,["O_Heli_Transport_04_repair_F",927500]];
			_return set[count _return,["O_Heli_Transport_04_ammo_F",927500]];
			_return set[count _return,["O_Heli_Transport_04_box_F",915000]];
			_return set[count _return,["C_Heli_Light_01_civil_F",35000]];
			_return set[count _return,["B_Heli_Light_01_F",525000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",56000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",56000]];
			_return set[count _return,["I_Heli_Transport_02_F",525000]];
			_return set[count _return,["O_MRAP_02_hmg_F",1365000]];
			_return set[count _return,["I_MRAP_03_hmg_F",1750000]];
			_return set[count _return,["O_Heli_Light_02_F",1715000]];
			_return set[count _return,["O_Heli_Transport_04_fuel_F",4427500]];				
			_return set[count _return,["O_MRAP_02_hmg_F",1365000]];	
			_return set[count _return,["I_MRAP_03_hmg_F",1575000]];		
			_return set[count _return,["O_MRAP_02_gmg_F",1750000]];	
			_return set[count _return,["I_MRAP_03_gmg_F",2065000]];		
			_return set[count _return,["B_Heli_Transport_01_camo_F",1715000]];
			_return set[count _return,["O_Heli_Transport_04_fuel_F",4427500]];
			_return set[count _return,["O_Heli_Light_02_F",1715000]];				
			_return set[count _return,["I_Heli_light_03_F",1715000]];
		};
		if(__GETC__(life_donatorlvl) == 4) then
		{
			_return set[count _return,["C_Kart_01_Fuel_F",0]];
			_return set[count _return,["C_Kart_01_Blu_F",0]];
			_return set[count _return,["C_Kart_01_Red_F",0]];
			_return set[count _return,["C_Kart_01_Vrana_F",0]];
			_return set[count _return,["C_Hatchback_01_F",0]];
			_return set[count _return,["C_SUV_01_F",0]];
			_return set[count _return,["C_Offroad_01_F",0]];
			_return set[count _return,["C_Hatchback_01_sport_F",0]];
			_return set[count _return,["O_G_Offroad_01_F",0]];
			_return set[count _return,["O_G_Offroad_01_armed_F",0]];			
			_return set[count _return,["O_Truck_03_covered_F",25000]];
			_return set[count _return,["O_Truck_03_repair_F",25000]];
			_return set[count _return,["O_Truck_03_device_F",37500]];
			_return set[count _return,["O_MRAP_02_F",50000]];
			_return set[count _return,["I_MRAP_03_F",100000]];
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",1000000]];
			_return set[count _return,["O_Heli_Transport_04_F",3162500]];
			_return set[count _return,["O_Heli_Transport_04_covered_F",3162500]];
			_return set[count _return,["O_Heli_Transport_04_bench_F",3162500]];
			_return set[count _return,["O_Heli_Transport_04_repair_F",3162500]];
			_return set[count _return,["O_Heli_Transport_04_ammo_F",3162500]];
			_return set[count _return,["O_Heli_Transport_04_box_F",4225000]];
			_return set[count _return,["C_Heli_Light_01_civil_F",25000]];
			_return set[count _return,["B_Heli_Light_01_F",375000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",40000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",40000]];
			_return set[count _return,["I_Heli_Transport_02_F",375000]];		
			_return set[count _return,["I_MRAP_03_hmg_F",1125000]];		
			_return set[count _return,["O_MRAP_02_gmg_F",1250000]];		
			_return set[count _return,["B_Heli_Transport_01_camo_F",1750000]];
			_return set[count _return,["O_Heli_Transport_04_fuel_F",3162500]];				
			_return set[count _return,["I_Heli_light_03_F",1750000]];					
			_return set[count _return,["O_MRAP_02_hmg_F",975000]];		
			_return set[count _return,["I_MRAP_03_gmg_F",1475000]];		
			_return set[count _return,["B_Heli_Transport_03_F",3000000]];	
			_return set[count _return,["O_Heli_Light_02_F",1625000]];			
			_return set[count _return,["B_Heli_Light_01_armed_F",1875000]];	
			_return set[count _return,["O_APC_Wheeled_02_rcws_F",2000000]];	
			_return set[count _return,["I_Plane_Fighter_03_AA_F",2000000]];
		};
		if(__GETC__(life_donatorlvl) == 5) then
		{
			_return set[count _return,["C_Kart_01_Fuel_F",0]];
			_return set[count _return,["C_Kart_01_Blu_F",0]];
			_return set[count _return,["C_Kart_01_Red_F",0]];
			_return set[count _return,["C_Kart_01_Vrana_F",0]];
			_return set[count _return,["C_Hatchback_01_F",0]];
			_return set[count _return,["C_SUV_01_F",0]];
			_return set[count _return,["C_Offroad_01_F",0]];
			_return set[count _return,["C_Hatchback_01_sport_F",0]];
			_return set[count _return,["O_G_Offroad_01_F",0]];
			_return set[count _return,["O_G_Offroad_01_armed_F",0]];			
			_return set[count _return,["O_Truck_03_covered_F",12500]];
			_return set[count _return,["O_Truck_03_repair_F",12500]];
			_return set[count _return,["O_Truck_03_device_F",18750]];
			_return set[count _return,["O_MRAP_02_F",25000]];
			_return set[count _return,["I_MRAP_03_F",50000]];
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",500000]];
			_return set[count _return,["O_Heli_Transport_04_F",581250]];
			_return set[count _return,["O_Heli_Transport_04_covered_F",581250]];
			_return set[count _return,["O_Heli_Transport_04_bench_F",581250]];
			_return set[count _return,["O_Heli_Transport_04_repair_F",581250]];
			_return set[count _return,["O_Heli_Transport_04_ammo_F",581250]];
			_return set[count _return,["O_Heli_Transport_04_box_F",2112500]];
			_return set[count _return,["C_Heli_Light_01_civil_F",82500]];
			_return set[count _return,["B_Heli_Light_01_F",187500]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",20000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",20000]];
			_return set[count _return,["I_Heli_Transport_02_F",187500]];
			_return set[count _return,["I_MRAP_03_hmg_F",562500]];					
			_return set[count _return,["I_Heli_light_03_F",875000]];			
			_return set[count _return,["O_MRAP_02_gmg_F",625000]];	
			_return set[count _return,["B_Heli_Transport_03_F",1500000]];										
			_return set[count _return,["O_MRAP_02_hmg_F",487500]];		
			_return set[count _return,["I_MRAP_03_gmg_F",737500]];	
			_return set[count _return,["B_Heli_Transport_01_camo_F",625000]];
			_return set[count _return,["O_Heli_Transport_04_fuel_F",758250]];
			_return set[count _return,["O_Heli_Light_02_F",812500]];		
			_return set[count _return,["B_Heli_Light_01_armed_F",937500]];		
			_return set[count _return,["O_APC_Wheeled_02_rcws_F",1000000]];	
			_return set[count _return,["I_Plane_Fighter_03_AA_F",1000000]];
			_return set[count _return,["I_Plane_Fighter_03_CAS_F",1000000]];
			_return set[count _return,["I_MBT_03_cannon_F",1250000]];
			_return set[count _return,["I_APC_tracked_03_cannon_F",1500000]];
		};
	};
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_medevac_F",100000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_Hatchback_01_sport_F",25000],
			["C_SUV_01_F",45000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_transport_F",60000],
            ["C_Van_01_box_F",80000],
			["I_Truck_02_transport_F",105000],
			["I_Truck_02_transport_F",135000],
			["I_Truck_02_covered_F",150000],
			["B_Truck_01_mover_F",250000]
		];	
	};
	
    case "civ_tontruck"
    	{
		_return =
		[
			["O_Truck_03_transport_F",385000],
			["B_Truck_01_transport_F",475000],
			["O_Truck_03_covered_F",550000],
			["B_Truck_01_covered_F",675000],
			["O_Truck_03_box_F",850000],
			["B_Truck_01_box_F",1250000],
			["O_Truck_03_device_F",1500000]
		];	
	};
    
	case "civ_fuel":
	{
		_return =
		[
			["C_Van_01_fuel_F",515000],
			["O_Truck_02_fuel_F",855000],
			["B_Truck_01_fuel_F",1235000],
			["O_Truck_03_fuel_F",1285000],
			["O_Heli_Transport_04_fuel_F",37500000]
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["O_MRAP_02_F",750000];
		};
	};
	
	case "reb_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",325000]
		];
	};
    
	case "cop_car":
	{
		_return pushBack
		["C_Hatchback_01_F",5000];
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",20000];
		_return pushBack
		["C_Hatchback_01_sport_F",20000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",30000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["C_heli_light_01_civil_f",353000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",1400000],
			["I_Heli_light_03_unarmed_F",1800000],
			["B_Heli_Transport_03_unarmed_F",6000000],
			["O_Heli_Transport_04_F",6500000],
			["O_Heli_Transport_04_box_F",8000000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
            
        };
		if(__GETC__(life_coplevel) > 4) then
		{
            _return pushBack
			["B_Heli_Light_01_armed_F",200000];
        };
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["O_SDV_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
    
	case "adac_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_adaclevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	case "adac_car":
	{
		_return pushBack
		["C_Hatchback_01_F",5000];
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",20000];
		_return pushBack
		["C_Hatchback_01_sport_F",20000];
		if(__GETC__(life_adaclevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",100000];
		};
	};


};

_return;
