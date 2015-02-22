/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price","_success"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};
_success = false;

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

/*if(_price > life_cash) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
life_cash = life_cash - _price;

life_clothesPurchased = true;
closeDialog 0;*/

if (life_cash >= _price) then {
	life_cash = life_cash - _price;
	systemChat format ["You paid $%1 from cash on hand.", [_price] call life_fnc_numberText];
	life_clothesPurchased = true;
	_success = true;

}
else
{
	if (life_inv_debitcard > 0) then 
	{
	     if (life_atmcash < _price) then {hint format ["You do not have $%1 in your bank account for this debit transaction.", [_price] call life_fnc_numberText]}
	     else
	     {
	        life_atmcash = life_atmcash - _price;
	        systemChat format ["You paid $%1 from your bank account using a debit card.", [_price]
	        call life_fnc_numberText];
	        life_clothesPurchased = true;
	        _success = true;
	     };
	}
	else
    {
	hint format ["You do not have $%1 in cash, nor do you have a debit card.", [_price] call life_fnc_numberText]
    };
};
_success;