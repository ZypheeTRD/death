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
    
case "vip_vehicles1":
	{if(__GETC__(life_donatorlvl) > 1) then
		{
				            _return pushBack["B_Quadbike_01_F",1850];
                            _return pushBack["C_Hatchback_01_F",8000];
                            _return pushBack["C_Offroad_01_F",10000];
                            _return pushBack["C_SUV_01_F",25000];
                            _return pushBack["C_Hatchback_01_sport_F",45000];
                            _return pushBack["C_Van_01_transport_F",35000];
                            _return pushBack["C_Van_01_box_F",60000];
                            _return pushBack["I_Truck_02_transport_F",55000];
                            _return pushBack["I_Truck_02_covered_F",75000];
                            _return pushBack["B_Truck_01_transport_F",175000];
                            _return pushBack["O_Truck_03_transport_F",150000];
                            _return pushBack["O_Truck_03_covered_F",125000];
                            _return pushBack["B_Truck_01_box_F",310000];
                            _return pushBack["O_Truck_03_device_F",320000];
		};
    };
    
case "vip_vehicles2":
	{
        if(__GETC__(life_donatorlvl) > 2) then
		{
				            _return pushBack["B_Quadbike_01_F",1850];
                            _return pushBack["C_Hatchback_01_F",8000];
                            _return pushBack["C_Offroad_01_F",10000];
                            _return pushBack["C_SUV_01_F",25000];
                            _return pushBack["C_Hatchback_01_sport_F",45000];
                            _return pushBack["C_Van_01_transport_F",35000];
                            _return pushBack["C_Van_01_box_F",60000];
                            _return pushBack["I_Truck_02_transport_F",55000];
                            _return pushBack["I_Truck_02_covered_F",75000];
                            _return pushBack["B_Truck_01_transport_F",175000];
                            _return pushBack["O_Truck_03_transport_F",150000];
                            _return pushBack["O_Truck_03_covered_F",125000];
                            _return pushBack["B_Truck_01_box_F",310000];
                            _return pushBack["O_Truck_03_device_F",320000];
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
			["C_SUV_01_F",35000],
			["C_Hatchback_01_sport_F",65000]
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
	
    case "civ_tontruck":
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
			["O_MRAP_02_F",1500000];
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
			["c_heli_light_01_civil_f",353000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",1400000],
			["I_Heli_light_03_unarmed_F",1800000],
			["B_Heli_Transport_03_unarmed_F",6000000],
			["O_Heli_Transport_04_F",7000000],
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
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
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
