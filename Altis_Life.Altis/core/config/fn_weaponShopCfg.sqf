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
			case (__GETC__(life_coplevel) == 0): {"You are not a whitelisted officer of the law!"};
            
			case (__GETC__(life_coplevel) == 1):
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
            
			case (__GETC__(life_coplevel) == 1):
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
            
			case (__GETC__(life_coplevel) == 2):
			{
				["ALPD Officer Weapons",
					[
							
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
							["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10]

					]
				];
			};
            
			case (__GETC__(life_coplevel) == 3):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
					]
				];
			};
            
            case (__GETC__(life_coplevel) == 4):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]

					]
				];
			};  
            
            case (__GETC__(life_coplevel) == 5):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]

					]
				];
			};
            
            case (__GETC__(life_coplevel) == 6):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
                        
					]
				];
			};
            
			case (__GETC__(life_coplevel) == 7):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
					]
				];
			};
            
			case (__GETC__(life_coplevel) >= 8):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["100Rnd_65x39_caseless_mag",nil,10],
							["100Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10]],
							["arifle_MX_GL_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["1Rnd_HE_Grenade_shell",nil,10],
							["1Rnd_Smoke_Grenade_shell",nil,10],
							["3Rnd_Smoke_Grenade_shell",nil,10],
							["UGL_FlareWhite_F",nil,10],
							["UGL_FlareRed_F",nil,10],
							["UGL_FlareCIR_F",nil,10],
							["srifle_EBR_F",nil,10],
							["20Rnd_762x51_Mag",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
					]
				];
			};
            
            case (__GETC__(life_coplevel) == 9):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["100Rnd_65x39_caseless_mag",nil,10],
							["100Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10]],
							["arifle_MX_GL_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["1Rnd_HE_Grenade_shell",nil,10],
							["1Rnd_Smoke_Grenade_shell",nil,10],
							["3Rnd_Smoke_Grenade_shell",nil,10],
							["UGL_FlareWhite_F",nil,10],
							["UGL_FlareRed_F",nil,10],
							["UGL_FlareCIR_F",nil,10],
							["srifle_EBR_F",nil,10],
							["20Rnd_762x51_Mag",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
					]
				];
			};
            
            case (__GETC__(life_coplevel) == 10):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["100Rnd_65x39_caseless_mag",nil,10],
							["100Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10]],
							["arifle_MX_GL_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["1Rnd_HE_Grenade_shell",nil,10],
							["1Rnd_Smoke_Grenade_shell",nil,10],
							["3Rnd_Smoke_Grenade_shell",nil,10],
							["UGL_FlareWhite_F",nil,10],
							["UGL_FlareRed_F",nil,10],
							["UGL_FlareCIR_F",nil,10],
							["3Rnd_HE_Grenade_shell",nil,10],
							["srifle_EBR_F",nil,10],
							["20Rnd_762x51_Mag",nil,10],
							["srifle_GM6_F",nil,10],
							["5Rnd_127x108_Mag",nil,10],
							["5Rnd_127x108_APDS_Mag",nil,10],
							["launch_B_Titan_F",nil,10],
							["Titan_AA",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
					]
				];
			};
            
            case (__GETC__(life_coplevel) == 11):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["100Rnd_65x39_caseless_mag",nil,10],
							["100Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10]],
							["arifle_MX_GL_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["1Rnd_HE_Grenade_shell",nil,10],
							["1Rnd_Smoke_Grenade_shell",nil,10],
							["3Rnd_Smoke_Grenade_shell",nil,10],
							["UGL_FlareWhite_F",nil,10],
							["UGL_FlareRed_F",nil,10],
							["UGL_FlareCIR_F",nil,10],
							["3Rnd_HE_Grenade_shell",nil,10],
							["srifle_EBR_F",nil,10],
							["20Rnd_762x51_Mag",nil,10],
							["srifle_GM6_F",nil,10],
							["5Rnd_127x108_Mag",nil,10],
							["5Rnd_127x108_APDS_Mag",nil,10],
							["launch_B_Titan_F",nil,10],
							["Titan_AA",nil,10],
							["launch_B_Titan_short_F",nil,10],
							["Titan_AT",nil,10],
							["Titan_AP",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
					]
				];
			};
            
            case (__GETC__(life_coplevel) == 12):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["100Rnd_65x39_caseless_mag",nil,10],
							["100Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10]],
							["arifle_MX_GL_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["1Rnd_HE_Grenade_shell",nil,10],
							["1Rnd_Smoke_Grenade_shell",nil,10],
							["3Rnd_Smoke_Grenade_shell",nil,10],
							["UGL_FlareWhite_F",nil,10],
							["UGL_FlareRed_F",nil,10],
							["UGL_FlareCIR_F",nil,10],
							["3Rnd_HE_Grenade_shell",nil,10],
							["srifle_EBR_F",nil,10],
							["20Rnd_762x51_Mag",nil,10],
							["srifle_GM6_F",nil,10],
							["5Rnd_127x108_Mag",nil,10],
							["5Rnd_127x108_APDS_Mag",nil,10],
							["launch_B_Titan_F",nil,10],
							["Titan_AA",nil,10],
							["launch_B_Titan_short_F",nil,10],
							["Titan_AT",nil,10],
							["Titan_AP",nil,10],
							["LMG_Mk200_F",nil,10],
							["200Rnd_65x39_cased_Box",nil,10],
							["200Rnd_65x39_cased_Box_Tracer",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
					]
				];
			};
            
            case (__GETC__(life_coplevel) == 13):
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
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["100Rnd_65x39_caseless_mag",nil,10],
							["100Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10]],
							["arifle_MX_GL_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["1Rnd_HE_Grenade_shell",nil,10],
							["1Rnd_Smoke_Grenade_shell",nil,10],
							["3Rnd_Smoke_Grenade_shell",nil,10],
							["UGL_FlareWhite_F",nil,10],
							["UGL_FlareRed_F",nil,10],
							["UGL_FlareCIR_F",nil,10],
							["3Rnd_HE_Grenade_shell",nil,10],
							["srifle_EBR_F",nil,10],
							["20Rnd_762x51_Mag",nil,10],
							["srifle_GM6_F",nil,10],
							["5Rnd_127x108_Mag",nil,10],
							["5Rnd_127x108_APDS_Mag",nil,10],
							["launch_B_Titan_F",nil,10],
							["Titan_AA",nil,10],
							["launch_B_Titan_short_F",nil,10],
							["Titan_AT",nil,10],
							["Titan_AP",nil,10],
							["LMG_Mk200_F",nil,10],
							["200Rnd_65x39_cased_Box",nil,10],
							["200Rnd_65x39_cased_Box_Tracer",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10]
                ]
				];
			};
            
			case (__GETC__(life_coplevel) == 14):
			{
				["ALPD NATO Weapons",
					[
							["HandGrenade_Stone","Flashbang",1700],
							["hgun_Pistol_Signal_F","Flare Gun",100],
							["6Rnd_GreenSignal_F","Green Flare",10],
                            ["hgun_P07_snds_F","Tazer Gun",250],
							["16Rnd_9x21_Mag","Tazer Rounds",10],
                            ["hgun_Pistol_heavy_01_F",nil,250],
							["11Rnd_45ACP_Mag",nil,10],
							["SMG_01_F",nil,10],
							["30Rnd_45ACP_Mag_SMG_01",nil,10],
							["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,10],
							["SMG_02_F",nil,10],
							["30Rnd_9x21_Mag",nil,10],
							["arifle_Mk20C_F",nil,10],
							["30Rnd_556x45_Stanag",nil,10],
							["30Rnd_556x45_Stanag_Tracer_Green",nil,10],
							["arifle_MXC_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MX_SW_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["100Rnd_65x39_caseless_mag",nil,10],
							["100Rnd_65x39_caseless_mag_Tracer",nil,10],
							["arifle_MXM_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10]],
							["arifle_MX_GL_Black_F",nil,10],
							["30Rnd_65x39_caseless_mag",nil,10],
							["30Rnd_65x39_caseless_mag_Tracer",nil,10],
							["1Rnd_HE_Grenade_shell",nil,10],
							["1Rnd_Smoke_Grenade_shell",nil,10],
							["3Rnd_Smoke_Grenade_shell",nil,10],
							["UGL_FlareWhite_F",nil,10],
							["UGL_FlareRed_F",nil,10],
							["UGL_FlareCIR_F",nil,10],
							["3Rnd_HE_Grenade_shell",nil,10],
							["srifle_EBR_F",nil,10],
							["20Rnd_762x51_Mag",nil,10],
							["srifle_GM6_F",nil,10],
							["5Rnd_127x108_Mag",nil,10],
							["5Rnd_127x108_APDS_Mag",nil,10],
							["launch_B_Titan_F",nil,10],
							["Titan_AA",nil,10],
							["launch_B_Titan_short_F",nil,10],
							["Titan_AT",nil,10],
							["Titan_AP",nil,10],
							["LMG_Mk200_F",nil,10],
							["200Rnd_65x39_cased_Box",nil,10],
							["200Rnd_65x39_cased_Box_Tracer",nil,10],
							["launch_RPG32_F",nil,10],
							["RPG32_F",nil,10],
							["RPG32_HE_F",nil,10],
							["ATMine_Range_Mag",nil,10],
							["APERSMine_Range_Mag",nil,10],
							["APERSBoundingMine_Range_Mag",nil,10],
							["SLAMDirectionalMine_Wire_Mag",nil,10],
							["APERSTripMine_Wire_Mag",nil,10],
							["ClaymoreDirectionalMine_Remote_Mag",nil,10],
							["SatchelCharge_Remote_Mag",nil,10],
							["DemoCharge_Remote_Mag",nil,10]
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
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
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
};
