/*
	File: fn_clothing_vip1.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"VIP Tier 1"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
            ["U_I_Wetsuit",nil,2000],
            ["U_NikosBody","Shady Business Man",2000],
			["U_NikosAgedBody","Business Man",2000],
			["U_IG_leader",nil,2000],
			["U_BG_Guerilla1_1",nil,2000],
			["U_OG_leader",nil,2000],
			["U_BG_leader",nil,2000],
			["U_B_CTRG_1",nil,2000],
			["U_B_CTRG_2",nil,2000],
			["U_B_CTRG_3",nil,2000],
			["U_B_CombatUniform_mcam",nil,2000],
			["U_B_CombatUniform_mcam_tshirt",nil,2000],
			["U_B_CombatUniform_mcam_vest",nil,2000],
			["U_B_survival_uniform",nil,2000],
			["U_I_CombatUniform",nil,2000],
			["U_I_CombatUniform_tshirt",nil,2000],
			["U_I_CombatUniform_shortsleeve",nil,2000],
			["U_O_CombatUniform_ocamo",nil,20000],
			["U_O_SpecopsUniform_ocamo",nil,20000],
			["U_O_SpecopsUniform_blk",nil,20000],
			["U_O_SpecopsUniform_ocamo",nil,20000],
			["U_O_CombatUniform_oucamo",nil,20000],
			["U_O_SpecopsUniform_ocamo",nil,20000],
			["U_O_SpecopsUniform_blk",nil,20000],
			["U_O_SpecopsUniform_ocamo",nil,20000],
			["U_O_OfficerUniform_ocamo",nil,20000],
			["U_I_GhillieSuit",nil,20000],
			["U_O_GhillieSuit",nil,20000],
			["U_B_GhillieSuit",nil,20000],
			["U_B_PilotCoveralls",nil,20000],
			["U_O_PilotCoveralls",nil,20000],
			["U_I_pilotCoveralls",nil,20000],
			["U_B_HeliPilotCoveralls",nil,20000],
			["U_I_HeliPilotCoveralls",nil,20000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_blk_CMMG",nil,425],
			["H_Shemag_khk",nil,550],
			["H_Shemag_tan",nil,550],
			["H_Shemag_olive",nil,550],
			["H_Shemag_olive_hs",nil,550],
			["H_ShemagOpen_khk",nil,550],
			["H_ShemagOpen_tan",nil,550],
			["H_Beret_blk",nil,550],
			["H_Beret_ocamo",nil,550],
			["H_HelmetB",nil,5550],
			["H_HelmetB_camo",nil,5550],
			["H_HelmetB_paint",nil,5550],
			["H_HelmetB_light",nil,5550],
			["H_HelmetB_plain_mcamo",nil,5550],
			["H_HelmetB_plain_blk",nil,5550],
			["H_HelmetSpecB",nil,5550],
			["H_HelmetSpecB_paint1",nil,5550],
			["H_HelmetSpecB_paint2",nil,5550],
			["H_HelmetSpecB_blk",nil,5550],
			["H_HelmetIA_net",nil,5550],
			["H_HelmetB_snakeskin",nil,5550],
			["H_HelmetB_desert",nil,5550],
			["H_HelmetB_black",nil,5550],
			["H_HelmetB_sand",nil,5550],
			["H_HelmetCrew_I",nil,5550],
			["H_PilotHelmetFighter_O",nil,5550],
			["H_CrewHelmetHeli_O",nil,5550],
			["H_PilotHelmetHeli_O",nil,5550],
			["H_HelmetSpecO_blk",nil,5550],
			["H_CrewHelmetHeli_O",nil,5550],
			["H_HelmetLeaderO_ocamo",nil,5550],
			["H_HelmetO_ocamo",nil,5550],
			["H_CrewHelmetHeli_O",nil,5550]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,550],
			["G_Balaclava_combat",nil,550],
			["G_Balaclava_lowprofile",nil,550],
			["G_Balaclava_oli",nil,550],
			["G_Bandanna_aviator",nil,550],
			["G_Bandanna_tan",nil,550],
			["G_Bandanna_sport",nil,550],
			["G_Bandanna_blk",nil,550],
			["G_Bandanna_oli",nil,550],
			["G_Bandanna_shades",nil,550],
			["G_Bandanna_beast",nil,550]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_RebreatherIA",nil,550],
			["V_BandollierB_blk",nil,5550],
			["V_BandollierB_oli",nil,5550],
			["V_PlateCarrier1_rgr",nil,5550],
			["V_PlateCarrier3_rgr",nil,5550],
			["V_Chestrig_blk",nil,5550],
			["V_TacVest_blk",nil,5550],
			["V_TacVestCamo_khk",nil,5550],
			["V_PlateCarrierIA1_dgtl",nil,5550],
			["V_PlateCarrierIAGL_dgtl",nil,5550],
			["V_PlateCarrierL_CTRG",nil,5550],
			["V_PlateCarrierH_CTRG",nil,5550],
			["V_HarnessOSpec_brn",nil,5550],
			["V_PlateCarrierSpec_rgr",nil,5550]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Carryall_ocamo",nil,5000],
			["B_Carryall_oucamo",nil,5000],
			["B_Carryall_mcamo",nil,5000],
			["B_Carryall_cbr",nil,5000]
		];
	};
};