#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
*/
private["_side","_ret"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_ret = [
			["cop_spawn_1","Sheriff Station","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_5","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
            
            if(__GETC__(life_coplevel) > 3) then {
			_ret = _ret + [
							
                            ["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
                            ["cop_spawn_6","Border Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
						  ];
		};
		 //SWAT SPAWNS
		 //You can as many PUID's in here as you want and this could be a gang spawn, or whatever the hell you want!
		if(__GETC__(life_coplevel) > 5) then {
			_ret = _ret + [
							
                            ["cop_spawn_7","Southeast Highway Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
                            ["cop_spawn_8","Northwest Highway Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
						  ];
		};
		
		
		 //PMC SPAWNS
		 //You can as many PUID's in here as you want and this could be a gang spawn, or whatever the hell you want!
		if(__GETC__(life_coplevel) > 12) then {
			_ret = _ret + [
							["nato_1","NATO Air Support Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
							["nato_2","NATO Ground Support Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};
            
            		if(__GETC__(life_donatorlvl) > 0) then {
			_ret = _ret + [
				["vip_cop","Cop Vacation Home","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				
				
			];
		};
	};
	
	case civilian:
	{
	
		//if have reb license, only spawn here
		if(license_civ_rebel && playerSide == civilian) then {
		_ret = [
				["rebel_spawn_1","North Rebel Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["rebel_spawn_2","South Rebel Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["rebel_spawn_3","Southeast Rebel Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["rebel_spawn_4","West Rebel Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
					
				];
		};
		//if no rebel license, than can spawn normal loc
		
		if(!license_civ_rebel && playerSide == civilian) then {
		_ret = [
					["civ_spawn_1","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],					
					["civ_spawn_2","Neochori","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Panagia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_5","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				
				];
		};
		
		//if trusted, they also get these options
		if(__GETC__(life_donatorlvl) > 0) then {
			_ret = _ret + [
				["vip_beach","VIP Beach","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				
				
			];
		};
		
		//if trusted, they also get these options
		if(__GETC__(life_donatorlvl) > 3) then {
			_ret = _ret + [
				["vip_compound","VIP Compound","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				
				
			];
		};
	/*	if((getPlayerUID player) in [""])then {
			_ret = _ret + [
							["666_spawn","JUCO Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
						  ];
		};			
	*/	
        
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_ret set[count _ret,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
		
	case independent:
	{
		_ret = [
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]			
		];
	};
    
        case east: 
	{
		_ret = [
			["adac_headquarters","ADAC Headquarters","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["adac_Outpost","ADAC Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
};

_ret;