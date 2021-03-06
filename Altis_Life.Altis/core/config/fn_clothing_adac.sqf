/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"ADAC Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_IG_Guerilla2_1",nil,5000],
			["U_IG_Guerilla2_3",nil,7500],
			["U_I_G_resistanceLeader_F",nil,35000],
			["U_O_SpecopsUniform_ocamo",nil,35000],
			["U_O_PilotCoveralls",nil,35000],
			["U_O_OfficerUniform_ocamo",nil,35000],
			["U_O_GhillieSuit",nil,80000],
			["U_O_CombatUniform_oucamo",nil,50000],
			["U_OG_leader",nil,25000],
			["U_O_SpecopsUniform_blk",nil,100000],
			["U_NikosBody","Im a Millionaire",1000000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,8500],
			["H_Shemag_olive",nil,8500],
			["H_ShemagOpen_khk",nil,8000],
			["H_HelmetO_ocamo",nil,25000],
			["H_MilCap_oucamo",nil,12000],
			["H_Bandanna_camo",nil,6500],
			["H_Watchcap_blk",nil,15000],
			["H_PilotHelmetFighter_O",nil,45000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Squares",nil,100],
			["G_Lowprofile",nil,300],
			["G_Combat",nil,550],
			["G_Balaclava_blk",nil,550],
			["G_Balaclava_combat",nil,1550],
			["G_Balaclava_lowprofile",nil,1550],
			["G_Balaclava_oli",nil,1550],
			["G_Bandanna_aviator",nil,1550],
			["G_Bandanna_tan",nil,1550],
			["G_Bandanna_sport",nil,1550],
			["G_Bandanna_blk",nil,1550],
			["G_Bandanna_oli",nil,1550],
			["G_Bandanna_shades",nil,1550],
			["G_Bandanna_beast",nil,1550]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,14500],
			["V_HarnessO_brn",nil,17500],
			["V_HarnessOGL_gry",nil,1000000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,12500],
			["B_Kitbag_mcamo",nil,14500],
			["B_TacticalPack_oli",nil,13500],
			["B_FieldPack_ocamo",nil,13000],
			["B_Bergen_sgg",nil,14500],
			["B_Kitbag_cbr",nil,14500],
			["B_Carryall_oli",nil,15000],
			["B_Carryall_khk",nil,15000]
		];
	};
};