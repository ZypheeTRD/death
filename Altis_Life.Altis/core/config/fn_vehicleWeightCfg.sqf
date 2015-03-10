/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
    
    //regular civ vehicles
	case "B_Quadbike_01_F": {25};
	case "O_Quadbike_01_F": {25};
	case "I_Quadbike_01_F": {25};
	case "C_Hatchback_01_F": {100};
	case "C_Hatchback_01_sport_F": {115};
	case "C_Offroad_01_F": {120};
	case "B_G_Offroad_01_F": {120};
	case "C_SUV_01_F": {150};
    
    //trucks
	case "C_Van_01_transport_F": {175};
	case "C_Van_01_box_F": {200};
	case "I_Truck_02_transport_F": {225};
	case "I_Truck_02_covered_F": {250};
	case "O_Truck_03_transport_F": {275};
	case "B_Truck_01_transport_F": {300};
	case "O_Truck_03_covered_F": {325};
	case "B_Truck_01_covered_F": {350};
	case "O_Truck_03_box_F": {375};
	case "B_Truck_01_box_F": {400};
	case "O_Truck_03_device_F": {450};
    
    //armored vehicles
	case "O_MRAP_02_F": {160}; //ifrit
	case "B_MRAP_01_F": {165};  //hunter
	case "I_MRAP_03_F": {175};  //strider
    
    //liquidvehicles
	case "C_Van_01_fuel_F": {575};
	case "O_Truck_02_fuel_F": {1075};
	case "O_Truck_03_fuel_F": {1975};
	case "B_Truck_01_fuel_F": {2275};
	case "O_Heli_Transport_04_fuel_F": {3875};
    
    
    //light air
	case "B_Heli_Light_01_F": {125};
	case "C_heli_light_01_civil_f": {125};
    
    //heavy air
	case "I_Heli_light_03_unarmed_F": {180};
	case "I_Heli_light_03_F": {180};
	case "O_Heli_Light_02_unarmed_F": {325};
	case "I_Heli_Transport_02_F": {375};
	case "I_Heli_Transport_02_F": {420};
	case "B_Heli_Transport_03_unarmed_F": {475};
	case "O_Heli_Transport_04_box_F": {875};
    
    //boats
	case "C_Rubberboat": {100};
	case "B_G_Boat_Transport_01_F": {100};
	case "B_Boat_Transport_01_F": {100};
	case "C_Boat_Civil_01_F": {250};
	case "C_Boat_Civil_01_police_F": {250};
	case "C_Boat_Civil_01_rescue_F": {250};
	case "O_Boat_Armed_01_hmg_F": {275};
	case "B_Boat_Armed_01_minigun_F": {275};
	case "I_Boat_Armed_01_minigun_F": {275};
    
    //othershit
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "Land_CargoBox_V1_F": {5000};
    case "Land_Wreck_Traw_F": {10000000};
    case "Land_Wreck_Traw2_F": {10000000};
	default {-1};
};