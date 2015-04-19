/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
        //Suicide Bomb 
        life_actions = life_actions + [player addAction["Activate Suicide Jacket",life_fnc_suicideBomb,"",0,false,false,"",
        'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !life_isSuicide && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
         // take them organs
		life_actions = life_actions + [player addAction["Harvest Organs",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
        //sell player                                                
        life_actions = life_actions + [player addAction["Sell Hostage",life_fnc_sellHostage,"",0,false,false,"",'  !isNull cursorTarget && isPlayer cursorTarget && (side cursorTarget != independent) && (cursorTarget getVariable ["restrained",FALSE]) && alive cursorTarget && (player distance cursorTarget < 3.5) && ((player distance (getMarkerPos "slave_trader_marker") < 10)) && !(cursorTarget getVariable ["escorting",FALSE]) ']];
	};
                                                        
    case west:
    {
     // nano EMP Little Bird
		life_actions = life_actions + [player addAction["<t color='#FF0000'>EMP Operator Console</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
                                                      
                                       //Saisir les objets au sol
life_actions = life_actions + [player addAction["Seize Ground Objects",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']]; 
};