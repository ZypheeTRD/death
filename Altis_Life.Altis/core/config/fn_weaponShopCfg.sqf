#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
    case "cop_basic":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"You are not a whitelisted officer of the law!"};
            default
                        {
				["ALPD Equipment",
					[
							["ItemWatch",nil,250],
						    ["ItemCompass",nil,200],
							["ItemGPS",nil,100],
						    ["ItemRadio",nil,125],
						    ["ItemMap",nil,200],
							["FirstAidKit",nil,100],
						    ["Medikit",nil,125],
						    ["ToolKit",nil,200],
							["Rangefinder",nil,100],
						    ["Binocular",nil,125],
						    ["NVGoggles_OPFOR",nil,200],
							["Laserdesignator",nil,100],
						    ["B_UavTerminal",nil,1250],
							["muzzle_snds_L",nil,1000],
							["muzzle_snds_H",nil,1000],
							["muzzle_snds_acp",nil,1000],
							["muzzle_snds_M",nil,1000],
							["muzzle_snds_L",nil,1000],
							["muzzle_snds_B",nil,1000],
							["acc_flashlight",nil,1000],
							["acc_pointer_IR",nil,1000],
							["optic_Yorris",nil,1000],
							["optic_MRD",nil,1000],
							["optic_ACO_grn",nil,1000],
							["optic_Holosight",nil,1000],
							["optic_Holosight_smg",nil,1000],
							["optic_MRCO",nil,1000],
							["optic_Arco",nil,1000],
							["optic_Hamr",nil,1000],
							["optic_SOS",nil,1000],
							["optic_DMS",nil,1000],
							["optic_LRPS",nil,1000],
							["optic_NVS",nil,10000],
							["optic_Nightstalker",nil,100000],
							["optic_tws",nil,200000],
							["optic_tws_mg",nil,250000]

					 ]
                                ];
                        };
                };
        };
    
            
            
             case "cop_cadet":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"You are not high enough rank"};
            default
                        {
				["ALPD Cadet Weapons",
					[
							["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
						    ["arifle_sdar_F","Taser Rifle",2000],
						    ["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]

					   ]
                                ];
                        };
                };
        };
            
             case "cop_officer":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not high enough rank"};
            default
                        {
				["ALPD Officer Weapons",
					[
							
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
							["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150]

			   ]
                                ];
                        };
                };
        };
    
    
    case "cop_sergeant":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not high enough rank"};
			default
                        {
				["ALPD Sergeant Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
							["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,1500],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500]
					  ]
                                ];
                        };
                };
        };
            
                case "cop_ssergeant":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not high enough rank"};
            default
                        {
				["ALPD Staff Sergeant Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500]

					  ]
                                ];
                        };
                };
        };
    
    case "cop_2lieutenant":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not high enough rank"};
           default
                        {
				["ALPD 2nd Lieutenant Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500]

					  ]
                                ];
                        };
                };
        };
    
            case "cop_1lieutenant":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not high enough rank"};
            default
                        {
				["ALPD 1st Lieutenant Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500]
                        
					  ]
                                ];
                        };
                };
        };
    
            case "cop_captain":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not high enough rank"};
			default
                        {
				["ALPD Captain Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500]
					]
                                ];
                        };
                };
        };
              case "cop_swat":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not high enough rank"};
			default
                        {
				["ALPD SWAT Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500]
					]
                                ];
                        };
                };
        };
             case "cop_achief":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 9): {"You are not high enough rank"};
			default
                        {
				["ALPD Assistant Chief Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500]
				 ]
                                ];
                        };
                };
        };
    
             case "cop_chief":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 10): {"You are not high enough rank"};
			default
                        {
				["ALPD Chief Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000]
					]
                                ];
                        };
                };
        };
            
             case "cop_acommissioner":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 11): {"You are not high enough rank"};
			default
                        {
				["ALPD Assistant Commissioner Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["launch_B_Titan_short_F",nil,150000],
							["Titan_AT",nil,35000],
							["Titan_AP",nil,35000],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000]
					 ]
                                ];
                        };
                };
        };
    
            case "cop_dcommissioner":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 12): {"You are not high enough rank"};
			default
                        {
				["ALPD Deputy Commissioner Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["3Rnd_HE_Grenade_shell",nil,30000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["launch_B_Titan_short_F",nil,150000],
							["Titan_AT",nil,35000],
							["Titan_AP",nil,35000],
							["LMG_Mk200_F",nil,75000],
							["200Rnd_65x39_cased_Box",nil,7500],
							["200Rnd_65x39_cased_Box_Tracer",nil,7500],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000]
					 ]
                                ];
                        };
                };
        };
             case "cop_commissioner":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 12): {"You are not high enough rank"};
			default
                        {
				["ALPD Commissioner Weapons",
				[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["3Rnd_HE_Grenade_shell",nil,30000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["launch_B_Titan_short_F",nil,150000],
							["Titan_AT",nil,35000],
							["Titan_AP",nil,35000],
							["launch_RPG32_F",nil,150000],
							["RPG32_F",nil,25000],
							["RPG32_HE_F",nil,25000],
							["LMG_Mk200_F",nil,75000],
							["200Rnd_65x39_cased_Box",nil,7500],
							["200Rnd_65x39_cased_Box_Tracer",nil,7500],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000]
                ]
                                ];
                        };
                };
        };
             case "cop_nato":
	   {
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 12): {"You are not high enough rank"};
			default
                        {
				["Arcadia Defense NATO Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["3Rnd_HE_Grenade_shell",nil,30000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["launch_B_Titan_short_F",nil,150000],
							["Titan_AT",nil,35000],
							["Titan_AP",nil,35000],
							["launch_RPG32_F",nil,150000],
							["RPG32_F",nil,25000],
							["RPG32_HE_F",nil,25000],
							["LMG_Mk200_F",nil,75000],
							["200Rnd_65x39_cased_Box",nil,7500],
							["200Rnd_65x39_cased_Box_Tracer",nil,7500],
							["ATMine_Range_Mag",nil,150000],
							["APERSMine_Range_Mag",nil,95000],
							["APERSBoundingMine_Range_Mag",nil,85000],
							["SLAMDirectionalMine_Wire_Mag",nil,50000],
							["APERSTripMine_Wire_Mag",nil,35000],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000],
							["SatchelCharge_Remote_Mag",nil,95000],
							["DemoCharge_Remote_Mag",nil,95000]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};


	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,8500],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Katiba_F",nil,10000],
						["30Rnd_65x39_caseless_green",nil,650],
						
						["hgun_ACPC2_F",nil,1500],
						["9Rnd_45ACP_Mag",nil,250],
						["11Rnd_45ACP_Mag",nil,500],
						["launch_RPG32_F",nil,800000],
						["RPG32_F",nil,100000],
                        ["srifle_DMR_01_F",nil,45000],	
                        ["10Rnd_762x51_Mag",nil,750],	
						["LMG_Zafir_F",nil,89000],
						["150Rnd_762x51_Box",nil,3500],
						["MMG_01_hex_F",nil,90000],
						["150Rnd_93x64_Mag",nil,5000
						["srifle_LRR_camo_F",nil,750000],					
					    ["7Rnd_408_Mag",nil,15000],
						["Rangefinder",nil,7500],
						["optic_Holosight",nil,200],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,1000],
						["optic_DMS",nil,1000],
						["optic_Hamr",nil,1000],
						["optic_Yorris",nil,5000],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,1000],
						["muzzle_snds_acp",nil,1000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
    
    	
	case "vip1":
	{
		switch(true) do
		{
			case (!license_civ_vip_1): {"You are not a VIP, please purchase an ingame vip license to use this shop!"};
			case (license_civ_vip_1):
			{
				["VIP Weapons 1",
					[
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["ItemMap",nil,150],
						["optic_MRD",nil,500],
						["FirstAidKit",nil,0],
						["NVGoggles",nil,0],
						["Rangefinder",nil,7500],
						["MineDetector",nil,0],
						["hgun_ACPC2_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_Signal_F",nil,30000],
						["6Rnd_RedSignal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,1000]
					]
				];
			};
		};
	};
	
	case "vip2":
	{
		switch(true) do
		{			
			case (license_civ_vip_2):
			{
				["VIP Weapons 2",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_PDW2000_F",nil,6500],
						["arifle_SDAR_F",nil,15000],
						["arifle_MK20C_plain_F",nil,15000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,990],
						["ToolKit",nil,0],
						["ItemMap",nil,0],
						["FirstAidKit",nil,5000],
						["optic_MRD",nil,500],
						["itemgps",nil,0],
						["LMG_Zafir_F",nil,340000],
						["150Rnd_762x51_Box",nil,4150],
						["Rangefinder",nil,7500],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,5000],
						["optic_Hamr",nil,1000],
						["optic_Yorris",nil,5000],
						["optic_NVS",nil,5000],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,1000],
						["muzzle_snds_acp",nil,1000],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_TRG20_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,25000],
						["30Rnd_65x39_caseless_green",nil,275],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["srifle_EBR_F",nil,80000],
						["20Rnd_762x51_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,200],
					    ["7Rnd_408_Mag",nil,100],
						["RPG32_F",nil,30000],
						["launch_RPG32_F",nil,400000],
						["hgun_Pistol_Signal_F",nil,30000],
						["6Rnd_RedSignal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,1000]
					]
				];
			};
		};
	};
		
	case "vip3":
	{
		switch(true) do
		{								
			case (license_civ_vip_3):
			{
				["VIP Weapons 3",
					[
						["srifle_LRR_F",nil,455000],
						["srifle_LRR_camo_F",nil,455000],
						["arifle_TRG20_F",nil,20000],	
						["arifle_Katiba_F",nil,25000],	
						["LMG_Zafir_F",nil,320000],
						["hgun_Pistol_heavy_01_F",nil,5000],						
					    ["7Rnd_408_Mag",nil,3100],
					    ["LMG_Mk200_F",nil,250000],
						["arifle_MK20C_plain_F",nil,15000],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,4250],
						["150Rnd_762x51_Box",nil,4150],
						["LMG_Zafir_F",nil,340000],
						["optic_MRD",nil,500],
						["arifle_TRG21_F",nil,19000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["30Rnd_65x39_caseless_mag",nil,50],
						["srifle_DMR_01_F",nil,20000],
						["srifle_EBR_F",nil,80000],						
						["10Rnd_762x51_Mag",nil,75],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,20000],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_PDW2000_F",nil,6500],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,5000],
						["optic_Yorris",nil,5000],
						["optic_NVS",nil,5000],
						["optic_Hamr",nil,1000],
						["optic_tws",nil,5000],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["optic_tws_mg",nil,5000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,1000],
						["muzzle_snds_acp",nil,1000],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["ItemMap",nil,0],
						["Rangefinder",nil,7500],
						["FirstAidKit",nil,0],
						["NVGoggles",nil,0],
						["MineDetector",nil,550],
						["SatchelCharge_Remote_Mag",nil,95000],
						["DemoCharge_Remote_Mag",nil,125000],
						["APERSTripMine_Wire_Mag",nil,130000],
						["APERSBoundingMine_Range_Mag",nil,130000],
						["RPG32_F",nil,30000],
						["launch_RPG32_F",nil,370000],
						["hgun_Pistol_Signal_F",nil,30000],
						["6Rnd_RedSignal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,1000],
						["SmokeShell",nil,1000],
 						["SmokeShellRed",nil,1000],
						["SmokeShellGreen",nil,1000],
						["SmokeShellYellow",nil,1000],
						["SmokeShellPurple",nil,1000],
						["SmokeShellBlue",nil,1000],
						["SmokeShellOrange",nil,1000],
						["Chemlight_green",nil,1000],
						["Chemlight_red",nil,1000],
						["Chemlight_yellow",nil,1000],
						["Chemlight_blue",nil,1000]
					]
				];
			};
		};
	};
		
	case "vip4":
	{
		switch(true) do
		{					
			case (license_civ_vip_4):
			{
				["VIP Weapons 4",
					[
						["srifle_LRR_F",nil,455000],
						["srifle_LRR_camo_F",nil,455000],
						["arifle_MXC_F",nil,40000],	
						["arifle_MX_F",nil,70000],
						["arifle_MXM_F",nil,100000],
						["srifle_EBR_F",nil,80000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["arifle_Mk20_F",nil,40000],
						["srifle_GM6_F",nil,550000],
						["srifle_GM6_camo_F",nil,550000],
						["LMG_Mk200_F",nil,250000],
						["arifle_TRG21_F",nil,19000],						
						["arifle_MX_SW_F",nil,90000],
						["hgun_PDW2000_F",nil,6500],
						["SMG_02_F",nil,20000],						
						["arifle_TRG20_F",nil,50000],
						["srifle_DMR_01_F",nil,70000],					
						["arifle_Katiba_F",nil,65000],	
						["hgun_ACPC2_F",nil,5000],	
						["hgun_Pistol_heavy_02_F",nil,5000],	
						["LMG_Zafir_F",nil,320000],					
					    ["7Rnd_408_Mag",nil,3100],
						["optic_MRD",nil,500],
						["arifle_MK20C_plain_F",nil,15000],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,4250],
						["150Rnd_762x51_Box",nil,4150],
						["arifle_TRG21_F",nil,19000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["10Rnd_762x51_Mag",nil,75],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,55],
						["30Rnd_65x39_caseless_mag",nil,55],
						["5Rnd_127x108_Mag",nil,5500],
						["100Rnd_65x39_caseless_mag_Tracer",nil,55],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["6Rnd_45ACP_Cylinder",nil,40],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,3500],
						["optic_Hamr",nil,3500],
						["optic_DMS",nil,5000],
						["optic_Yorris",nil,5000],
						["optic_SOS",nil,40000],
						["optic_NVS",nil,5000],
						["optic_tws",nil,50000],
						["optic_Nightstalker",nil,100000],
						["optic_tws_mg",nil,50000],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,1000],
						["muzzle_snds_acp",nil,1000],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["itemmap",nil,0],
						["FirstAidKit",nil,0],
						["Rangefinder",nil,7500],
						["NVGoggles",nil,0],
						["MineDetector",nil,550],
						["SatchelCharge_Remote_Mag",nil,95000],
						["DemoCharge_Remote_Mag",nil,125000],
						["APERSTripMine_Wire_Mag",nil,130000],
						["APERSBoundingMine_Range_Mag",nil,130000],
						["RPG32_F",nil,30000],
						["launch_RPG32_F",nil,370000],
						["hgun_Pistol_Signal_F",nil,30000],
						["6Rnd_RedSignal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,1000],
						["SmokeShell",nil,1000],
 						["SmokeShellRed",nil,1000],
						["SmokeShellGreen",nil,1000],
						["SmokeShellYellow",nil,1000],
						["SmokeShellPurple",nil,1000],
						["SmokeShellBlue",nil,1000],
						["SmokeShellOrange",nil,1000],
						["Chemlight_green",nil,1000],
						["Chemlight_red",nil,1000],
						["Chemlight_yellow",nil,1000],
						["Chemlight_blue",nil,1000]
					]	
				];
            };				
		};
	};
		
	case "vip5":
	{
		switch(true) do
		{													
			case (license_civ_vip_5):
			{
				["VIP Weapons 5",
					[
						["srifle_LRR_F",nil,455000],
						["srifle_LRR_camo_F",nil,455000],
						["arifle_MXC_F",nil,40000],
						["arifle_MX_F",nil,70000],
						["arifle_MXM_F",nil,100000],
						["srifle_EBR_F",nil,80000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["arifle_Mk20_F",nil,40000],
						["srifle_GM6_F",nil,550000],
						["srifle_GM6_camo_F",nil,550000],
						["LMG_Mk200_F",nil,250000],
						["arifle_TRG21_F",nil,19000],						
						["arifle_MX_SW_F",nil,90000],
						["hgun_PDW2000_F",nil,6500],
						["SMG_02_F",nil,20000],
						["optic_MRD",nil,500],						
						["arifle_TRG20_F",nil,50000],
						["srifle_DMR_01_F",nil,70000],					
						["arifle_Katiba_F",nil,65000],
						["srifle_GM6_LRPS_F",nil,300000],	
						["hgun_ACPC2_F",nil,5000],	
						["hgun_Pistol_heavy_02_F",nil,5000],	
						["LMG_Zafir_F",nil,320000],	
						["optic_LRPS",nil,100000],
					    ["7Rnd_408_Mag",nil,3100],
						["arifle_MK20C_plain_F",nil,15000],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,4250],
						["150Rnd_762x51_Box",nil,4150],
						["arifle_TRG21_F",nil,19000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["10Rnd_762x51_Mag",nil,75],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,55],
						["30Rnd_65x39_caseless_mag",nil,55],
						["5Rnd_127x108_Mag",nil,5500],
						["100Rnd_65x39_caseless_mag_Tracer",nil,55],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["6Rnd_45ACP_Cylinder",nil,40],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,5000],
						["optic_Yorris",nil,5000],
						["optic_NVS",nil,5000],
						["optic_tws",nil,50000],
						["optic_Nightstalker",nil,100000],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["optic_tws_mg",nil,50000],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,1000],
						["muzzle_snds_acp",nil,1000],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["ItemMap",nil,0],
						["FirstAidKit",nil,0],
						["Rangefinder",nil,7500],
						["NVGoggles",nil,0],
						["MineDetector",nil,550],
						["SatchelCharge_Remote_Mag",nil,95000],
						["DemoCharge_Remote_Mag",nil,125000],
						["APERSTripMine_Wire_Mag",nil,130000],
						["APERSBoundingMine_Range_Mag",nil,130000],
						["RPG32_F",nil,50000],
						["launch_RPG32_F",nil,370000],
						["hgun_Pistol_Signal_F",nil,30000],
						["6Rnd_RedSignal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,1000],
						["SmokeShell",nil,1000],
 						["SmokeShellRed",nil,1000],
						["SmokeShellGreen",nil,1000],
						["SmokeShellYellow",nil,1000],
						["SmokeShellPurple",nil,1000],
						["SmokeShellBlue",nil,1000],
						["SmokeShellOrange",nil,1000],
						["Chemlight_green",nil,1000],
						["Chemlight_red",nil,1000],
						["Chemlight_yellow",nil,1000],
						["Chemlight_blue",nil,1000]
					]
				];
			};			
		};
	};
    
    	case "vip":
	{
		switch(true) do
		{
			case (__GETC__(life_donatorlvl) == 0): {"You are not a VIP!"};
			case (__GETC__(life_donatorlvl) == 1): 
			{
				["VIP Weapons Lvl 1",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_PDW2000_F",nil,6500],
						["arifle_SDAR_F",nil,15000],
						["arifle_MK20C_plain_F",nil,15000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,990],
						["ToolKit",nil,0],
						["ItemMap",nil,0],
						["FirstAidKit",nil,5000],
						["optic_MRD",nil,500],
						["itemgps",nil,0],
						["LMG_Zafir_F",nil,340000],
						["150Rnd_762x51_Box",nil,4150],
						["Rangefinder",nil,7500],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,5000],
						["optic_Hamr",nil,1000],
						["optic_Yorris",nil,5000],
						["optic_NVS",nil,5000],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["muzzle_snds_H",nil,1000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,1000],
						["muzzle_snds_B",nil,1000],
						["muzzle_snds_H_MG",nil,1000],
						["muzzle_snds_acp",nil,1000],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_TRG20_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,25000],
						["30Rnd_65x39_caseless_green",nil,275],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["srifle_EBR_F",nil,80000],
						["20Rnd_762x51_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,200],
					    ["7Rnd_408_Mag",nil,100],
						["RPG32_F",nil,30000],
						["launch_RPG32_F",nil,400000],
						["hgun_Pistol_Signal_F",nil,30000],
						["6Rnd_RedSignal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,1000]
					]
				];
			};	
			
			case (__GETC__(life_donatorlvl) == 2):
			{
				["VIP Weapons Lvl 2",
					[
						["hgun_Rook40_F",nil,5200],
						["hgun_PDW2000_F",nil,5200],
						["arifle_SDAR_F",nil,12000],
						["arifle_MK20C_plain_F",nil,12000],
						["hgun_Pistol_heavy_01_F",nil,4000],
						["optic_ACO_grn_smg",nil,600],
						["NVGoggles",nil,792],
						["ToolKit",nil,0],
						["ItemMap",nil,0],
						["FirstAidKit",nil,0],
						["optic_MRD",nil,400],
						["itemgps",nil,0],
						["LMG_Zafir_F",nil,150000],
						["150Rnd_762x51_Box",nil,3320],
						["Rangefinder",nil,6000],
						["optic_Holosight",nil,2000],
						["optic_ACO_grn_smg",nil,600],
						["optic_MRCO",nil,2800],
						["optic_DMS",nil,4000],
						["optic_Hamr",nil,800],
						["optic_Yorris",nil,4000],
						["optic_NVS",nil,4000],
						["acc_pointer_IR",nil,400],
						["acc_flashlight",nil,400],
						["muzzle_snds_H",nil,800],
						["muzzle_snds_L",nil,800],
						["muzzle_snds_M",nil,800],
						["muzzle_snds_B",nil,800],
						["muzzle_snds_H_MG",nil,800],
						["muzzle_snds_acp",nil,800],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_TRG20_F",nil,16000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,20000],
						["30Rnd_65x39_caseless_green",nil,275],
						["hgun_ACPC2_F",nil,4000],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["srifle_EBR_F",nil,64000],
						["20Rnd_762x51_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,200],
					    ["7Rnd_408_Mag",nil,100],
						["RPG32_F",nil,24000],
						["launch_RPG32_F",nil,350000],
						["hgun_Pistol_Signal_F",nil,24000],
						["6Rnd_RedSignal_F",nil,800],
						["6Rnd_GreenSignal_F",nil,800]
					]
				];
			};

			case (__GETC__(life_donatorlvl) == 3):
			{
				["VIP Weapons Lvl 3",
					[
						["srifle_LRR_F",nil,318500],
						["srifle_LRR_camo_F",nil,318500],
						["arifle_TRG20_F",nil,14000],	
						["arifle_Katiba_F",nil,17500],	
						["LMG_Zafir_F",nil,224000],
						["hgun_Pistol_heavy_01_F",nil,3500],						
					    ["7Rnd_408_Mag",nil,2170],
					    ["LMG_Mk200_F",nil,175000],
						["arifle_MK20C_plain_F",nil,10500],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,2905],
						["150Rnd_762x51_Box",nil,2905],
						["LMG_Zafir_F",nil,238000],
						["optic_MRD",nil,500],
						["arifle_TRG21_F",nil,13300],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["30Rnd_65x39_caseless_mag",nil,50],
						["srifle_DMR_01_F",nil,14000],
						["srifle_EBR_F",nil,56000],						
						["10Rnd_762x51_Mag",nil,75],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,1400],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,14000],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_PDW2000_F",nil,4550],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_ACPC2_F",nil,3500],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,3500],
						["6Rnd_45ACP_Cylinder",nil,40],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_Holosight",nil,1750],
						["optic_ACO_grn_smg",nil,525],
						["optic_MRCO",nil,2450],
						["optic_DMS",nil,3500],
						["optic_Yorris",nil,3500],
						["optic_NVS",nil,3500],
						["optic_Hamr",nil,700],
						["optic_tws",nil,2500],
						["acc_pointer_IR",nil,350],
						["acc_flashlight",nil,350],
						["optic_tws_mg",nil,3500],
						["muzzle_snds_H",nil,700],
						["muzzle_snds_L",nil,700],
						["muzzle_snds_M",nil,700],
						["muzzle_snds_B",nil,700],
						["muzzle_snds_H_MG",nil,700],
						["muzzle_snds_acp",nil,700],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["ItemMap",nil,0],
						["Rangefinder",nil,5250],
						["FirstAidKit",nil,0],
						["NVGoggles",nil,0],
						["MineDetector",nil,550],
						["SatchelCharge_Remote_Mag",nil,66500],
						["DemoCharge_Remote_Mag",nil,87500],
						["APERSTripMine_Wire_Mag",nil,91000],
						["APERSBoundingMine_Range_Mag",nil,91000],
						["RPG32_F",nil,21000],
						["launch_RPG32_F",nil,280000],
						["hgun_Pistol_Signal_F",nil,21000],
						["6Rnd_RedSignal_F",nil,700],
						["6Rnd_GreenSignal_F",nil,700],
						["SmokeShell",nil,700],
 						["SmokeShellRed",nil,700],
						["SmokeShellGreen",nil,700],
						["SmokeShellYellow",nil,700],
						["SmokeShellPurple",nil,700],
						["SmokeShellBlue",nil,700],
						["SmokeShellOrange",nil,700],
						["Chemlight_green",nil,700],
						["Chemlight_red",nil,700],
						["Chemlight_yellow",nil,700],
						["Chemlight_blue",nil,700]
					]
				];
			};
			
			case (__GETC__(life_donatorlvl) == 4):
			{
				["VIP Weapons Lvl 4",
					[
						["srifle_LRR_F",nil,227500],
						["srifle_LRR_camo_F",nil,227500],
						["arifle_MXC_F",nil,20000],	
						["arifle_MX_F",nil,14000],
						["arifle_MXM_F",nil,50000],
						["srifle_EBR_F",nil,40000],
						["hgun_Pistol_heavy_01_F",nil,2500],
						["arifle_Mk20_F",nil,20000],
						["srifle_GM6_F",nil,275000],
						["srifle_GM6_camo_F",nil,275000],
						["LMG_Mk200_F",nil,125000],
						["arifle_TRG21_F",nil,9500],						
						["arifle_MX_SW_F",nil,45000],
						["hgun_PDW2000_F",nil,3250],
						["SMG_02_F",nil,10000],						
						["arifle_TRG20_F",nil,25000],
						["srifle_DMR_01_F",nil,35000],					
						["arifle_Katiba_F",nil,32500],	
						["hgun_ACPC2_F",nil,2500],	
						["hgun_Pistol_heavy_02_F",nil,2500],	
						["LMG_Zafir_F",nil,160000],					
					    ["7Rnd_408_Mag",nil,1550],
						["optic_MRD",nil,250],
						["arifle_MK20C_plain_F",nil,7500],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,2125],
						["150Rnd_762x51_Box",nil,2125],
						["arifle_TRG21_F",nil,9500],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["10Rnd_762x51_Mag",nil,75],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,1000],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,55],
						["30Rnd_65x39_caseless_mag",nil,55],
						["5Rnd_127x108_Mag",nil,2000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,55],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["6Rnd_45ACP_Cylinder",nil,40],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_Holosight",nil,1250],
						["optic_ACO_grn_smg",nil,350],
						["optic_MRCO",nil,1750],
						["optic_Hamr",nil,1750],
						["optic_DMS",nil,1750],
						["optic_Yorris",nil,1750],
						["optic_SOS",nil,20000],
						["optic_NVS",nil,1750],
						["optic_tws",nil,25000],
						["optic_Nightstalker",nil,50000],
						["optic_tws_mg",nil,25000],
						["acc_pointer_IR",nil,250],
						["acc_flashlight",nil,250],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["muzzle_snds_acp",nil,500],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["itemmap",nil,0],
						["FirstAidKit",nil,0],
						["Rangefinder",nil,3750],
						["NVGoggles",nil,0],
						["MineDetector",nil,225],
						["SatchelCharge_Remote_Mag",nil,47500],
						["DemoCharge_Remote_Mag",nil,62500],
						["APERSTripMine_Wire_Mag",nil,65000],
						["APERSBoundingMine_Range_Mag",nil,65000],
						["RPG32_F",nil,15000],
						["launch_RPG32_F",nil,185000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_RedSignal_F",nil,500],
						["6Rnd_GreenSignal_F",nil,500],
						["SmokeShell",nil,500],
 						["SmokeShellRed",nil,500],
						["SmokeShellGreen",nil,500],
						["SmokeShellYellow",nil,500],
						["SmokeShellPurple",nil,500],
						["SmokeShellBlue",nil,500],
						["SmokeShellOrange",nil,500],
						["Chemlight_green",nil,500],
						["Chemlight_red",nil,500],
						["Chemlight_yellow",nil,500],
						["Chemlight_blue",nil,500]
					]	
				];
            };				
											
			case (__GETC__(life_donatorlvl) == 5):
			{
				["VIP Weapons Lvl 5",
					[
						["srifle_LRR_F",nil,113750],
						["srifle_LRR_camo_F",nil,113750],
						["arifle_MXC_F",nil,10000],
						["arifle_MX_F",nil,17500],
						["arifle_MXM_F",nil,25000],
						["srifle_EBR_F",nil,20000],
						["hgun_Pistol_heavy_01_F",nil,1250],
						["arifle_Mk20_F",nil,10000],
						["srifle_GM6_F",nil,137500],
						["srifle_GM6_camo_F",nil,137500],
						["LMG_Mk200_F",nil,62500],
						["arifle_TRG21_F",nil,4750],						
						["arifle_MX_SW_F",nil,22500],
						["hgun_PDW2000_F",nil,1625],
						["SMG_02_F",nil,5000],
						["optic_MRD",nil,125],						
						["arifle_TRG20_F",nil,12500],
						["srifle_DMR_01_F",nil,17500],					
						["arifle_Katiba_F",nil,16250],
						["srifle_GM6_LRPS_F",nil,75000],	
						["hgun_ACPC2_F",nil,1250],	
						["hgun_Pistol_heavy_02_F",nil,1250],	
						["LMG_Zafir_F",nil,80000],	
						["optic_LRPS",nil,25000],
					    ["7Rnd_408_Mag",nil,775],
						["arifle_MK20C_plain_F",nil,3750],
					    ["200Rnd_65x39_cased_Box_Tracer",nil,1062.5],
						["150Rnd_762x51_Box",nil,1037.5],
						["arifle_TRG21_F",nil,4750],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["10Rnd_762x51_Mag",nil,75],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,55],
						["30Rnd_65x39_caseless_mag",nil,55],
						["5Rnd_127x108_Mag",nil,1375],
						["100Rnd_65x39_caseless_mag_Tracer",nil,55],
						["9Rnd_45ACP_Mag",nil,25],
						["11Rnd_45ACP_Mag",nil,25],
						["6Rnd_45ACP_Cylinder",nil,40],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_Holosight",nil,750],
						["optic_ACO_grn_smg",nil,200],
						["optic_MRCO",nil,875],
						["optic_DMS",nil,1250],
						["optic_Yorris",nil,1250],
						["optic_NVS",nil,1250],
						["optic_tws",nil,12500],
						["optic_Nightstalker",nil,25000],
						["acc_pointer_IR",nil,500],
						["acc_flashlight",nil,500],
						["optic_tws_mg",nil,12500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["muzzle_snds_acp",nil,500],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["ItemMap",nil,0],
						["FirstAidKit",nil,0],
						["Rangefinder",nil,0],
						["NVGoggles",nil,0],
						["MineDetector",nil,0],
						["SatchelCharge_Remote_Mag",nil,23750],
						["DemoCharge_Remote_Mag",nil,31250],
						["APERSTripMine_Wire_Mag",nil,32500],
						["APERSBoundingMine_Range_Mag",nil,32500],
						["RPG32_F",nil,12500],
						["launch_RPG32_F",nil,92500],
						["hgun_Pistol_Signal_F",nil,7500],
						["6Rnd_RedSignal_F",nil,250],
						["6Rnd_GreenSignal_F",nil,250],
						["SmokeShell",nil,250],
 						["SmokeShellRed",nil,250],
						["SmokeShellGreen",nil,250],
						["SmokeShellYellow",nil,250],
						["SmokeShellPurple",nil,250],
						["SmokeShellBlue",nil,250],
						["SmokeShellOrange",nil,250],
						["Chemlight_green",nil,250],
						["Chemlight_red",nil,250],
						["Chemlight_yellow",nil,250],
						["Chemlight_blue",nil,250]
					]
				];
			};			
		};
	};
case "adac_basic":
	   {
		switch(true) do
		{
			case (playerSide != east): {"You are not ADAC!"};
			case (__GETC__(life_adaclevel) < 0): {"You are not high enough rank in ADAC!"};
            default
                        {
				["ALPD Equipment",
					[
							["ItemWatch",nil,250],
						    ["ItemCompass",nil,200],
							["ItemGPS",nil,100],
						    ["ItemRadio",nil,125],
						    ["ItemMap",nil,200],
							["FirstAidKit",nil,100],
						    ["Medikit",nil,125],
						    ["ToolKit",nil,200],
							["Rangefinder",nil,100],
						    ["Binocular",nil,125],
						    ["NVGoggles_OPFOR",nil,200],
							["Laserdesignator",nil,100],
						    ["B_UavTerminal",nil,1250],
							["muzzle_snds_L",nil,1000],
							["muzzle_snds_H",nil,1000],
							["muzzle_snds_acp",nil,1000],
							["muzzle_snds_M",nil,1000],
							["muzzle_snds_L",nil,1000],
							["muzzle_snds_B",nil,1000],
							["acc_flashlight",nil,1000],
							["acc_pointer_IR",nil,1000],
							["optic_Yorris",nil,1000],
							["optic_MRD",nil,1000],
							["optic_ACO_grn",nil,1000],
							["optic_Holosight",nil,1000],
							["optic_Holosight_smg",nil,1000],
							["optic_MRCO",nil,1000],
							["optic_Arco",nil,1000],
							["optic_Hamr",nil,1000],
							["optic_SOS",nil,1000],
							["optic_DMS",nil,1000],
							["optic_LRPS",nil,1000],
							["optic_NVS",nil,10000],
							["optic_Nightstalker",nil,100000],
							["optic_tws",nil,200000],
							["optic_tws_mg",nil,250000]

					 ]
                                ];
                        };
                };
        };
    
            case "adac_trainee":
	   {
		switch(true) do
		{
			case (playerSide != east): {"You are not ADAC!"};
			case (__GETC__(life_adaclevel) < 1): {"You are not high enough rank"};
			default
                        {
				["ALPD Deputy Commissioner Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["3Rnd_HE_Grenade_shell",nil,30000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["launch_B_Titan_short_F",nil,150000],
							["Titan_AT",nil,35000],
							["Titan_AP",nil,35000],
							["LMG_Mk200_F",nil,75000],
							["200Rnd_65x39_cased_Box",nil,7500],
							["200Rnd_65x39_cased_Box_Tracer",nil,7500],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000]
					 ]
                                ];
                        };
                };
        };
             case "adac_operative":
	   {
		switch(true) do
		{
			case (playerSide != east): {"You are not ADAC!"};
			case (__GETC__(life_adaclevel) < 2): {"You are not high enough rank"};
			default
                        {
				["ADAC Weapons",
				[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["3Rnd_HE_Grenade_shell",nil,30000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["launch_B_Titan_short_F",nil,150000],
							["Titan_AT",nil,35000],
							["Titan_AP",nil,35000],
							["launch_RPG32_F",nil,150000],
							["RPG32_F",nil,25000],
							["RPG32_HE_F",nil,25000],
							["LMG_Mk200_F",nil,75000],
							["200Rnd_65x39_cased_Box",nil,7500],
							["200Rnd_65x39_cased_Box_Tracer",nil,7500],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000]
                ]
                                ];
                        };
                };
        };
             case "adac_commander":
	   {
		switch(true) do
		{
			case (playerSide != east): {"You are not ADAC!"};
			case (__GETC__(life_adaclevel) < 2): {"You are not high enough rank"};
			default
                        {
				["Arcadia Defense NATO Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,5000],
							["30Rnd_45ACP_Mag_SMG_01",nil,100],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,100],
							["SMG_02_F",nil,6750],
							["30Rnd_9x21_Mag",nil,150],
							["arifle_Mk20C_F",nil,15000],
							["30Rnd_556x45_Stanag",nil,1500],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,1500],
                            ["arifle_MX_Black_F",nil,17500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MXC_Black_F",nil,20000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_SW_Black_F",nil,25000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["100Rnd_65x39_caseless_mag",nil,7500],
							["100Rnd_65x39_caseless_mag_Tracer",nil,7500],
							["arifle_MXM_Black_F",nil,28500],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["arifle_MX_GL_Black_F",nil,125000],
							["30Rnd_65x39_caseless_mag",nil,2500],
							["30Rnd_65x39_caseless_mag_Tracer",nil,2500],
							["1Rnd_HE_Grenade_shell",nil,10000],
							["1Rnd_Smoke_Grenade_shell",nil,5000],
							["3Rnd_Smoke_Grenade_shell",nil,15000],
							["UGL_FlareWhite_F",nil,5000],
							["UGL_FlareRed_F",nil,5000],
							["UGL_FlareCIR_F",nil,5000],
							["3Rnd_HE_Grenade_shell",nil,30000],
							["srifle_EBR_F",nil,55000],
							["20Rnd_762x51_Mag",nil,3500],
							["srifle_GM6_F",nil,150000],
							["5Rnd_127x108_Mag",nil,15000],
							["5Rnd_127x108_APDS_Mag",nil,15000],
							["launch_B_Titan_F",nil,175000],
							["Titan_AA",nil,35000],
							["launch_B_Titan_short_F",nil,150000],
							["Titan_AT",nil,35000],
							["Titan_AP",nil,35000],
							["launch_RPG32_F",nil,150000],
							["RPG32_F",nil,25000],
							["RPG32_HE_F",nil,25000],
							["LMG_Mk200_F",nil,75000],
							["200Rnd_65x39_cased_Box",nil,7500],
							["200Rnd_65x39_cased_Box_Tracer",nil,7500],
							["ATMine_Range_Mag",nil,150000],
							["APERSMine_Range_Mag",nil,95000],
							["APERSBoundingMine_Range_Mag",nil,85000],
							["SLAMDirectionalMine_Wire_Mag",nil,50000],
							["APERSTripMine_Wire_Mag",nil,35000],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10000],
							["SatchelCharge_Remote_Mag",nil,95000],
							["DemoCharge_Remote_Mag",nil,95000]
					]
				];
			};
		};
	};
};
