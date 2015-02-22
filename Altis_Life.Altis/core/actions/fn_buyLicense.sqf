/*
	File: fn_buyLicense.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when purchasing a license. May need to be revised.
*/
private["_type"];
_type = _this select 3;
_success = false;

_price = [_type] call life_fnc_licensePrice;
_license = [_type,0] call life_fnc_licenseType;

if (life_cash >= _price) then 
{
	life_cash = life_cash - _price;
	systemChat format["You paid $%1 from cash on hand.", [_price], _license select 1 call life_fnc_numberText];
	missionNamespace setVariable[(_license select 0),true];
	PlaySound "purchase";
	_success = true;
}
else
{
	if (life_inv_debitcard > 0) then
	{
	     if (life_atmcash < _price) then {hint format["You do not have $%1 in your bank account for this debit transaction.", [_price] call life_fnc_numberText]}
	     else
	     {
	         life_atmcash = life_atmcash - _price;
	         systemChat format["You paid $%1 from your bank account using a debit card.", [_price], _license select 1 call life_fnc_numberText];
	         missionNamespace setVariable[(_license select 0),true];
	         PlaySound "purchase";
	         _success = true;
	     };
	}
	else
	{
	    hint format ["You do not have $%1 in cash, nor do you have a debit card.", [_price] call life_fnc_numberText]
	};
};
_success;