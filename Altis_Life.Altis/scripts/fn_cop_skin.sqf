#include <macro.h>
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (_unit == player) then
{
	if (playerSide == west) then
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) > 1) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 2) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 3) : {
			player setObjectTextureGlobal [0, "textures\police\outfits\officer_shirt.jpga"];

                        case (__GETC__(life_coplevel) > 4) : {
			player setObjectTextureGlobal [0, "textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 5) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 6) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 7) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 8) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 9) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 10) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 11) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 12) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];

                        case (__GETC__(life_coplevel) > 13) : {
            player setObjectTextureGlobal [0,"textures\police\outfits\officer_shirt.jpg"];
            
                        case (__GETC__(life_coplevel) > 14) : {
             player setObjectTextureGlobal [0, "textures\civilian\outfits\jagershirt.jpg"];
            
                        case (__GETC__(life_coplevel) > 15) : {
             player setObjectTextureGlobal [0, "textures\civilian\outfits\obeyblack.jpg"];
			};
                        case (__GETC__(life_coplevel) > 16) : {
             player setObjectTextureGlobal [0, "textures\civilian\outfits\getrekt.jpg"];
			};
		};
	};
};