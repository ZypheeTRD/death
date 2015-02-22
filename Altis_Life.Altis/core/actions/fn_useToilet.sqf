private["_dice"];

if(life_cash >= 10) then
{
    _dice = round random(100);
    life_cash = life_cash - 10;
    life_toilet = 100;

    if(_dice > 8) then
    {
	hint parseText "That was good! You don't need to pee anymore. <br/><br/>Mommy is proud of you.!";
    }
    else
    {
	hint "You forgot to pull up the toilet lid, now there is pee everywhere! Maybe you should try to use diapers next time. After all you don't have to pee anymore.";
    };
    [] call life_fnc_hudUpdate;
}
else
{
    hint "Sorry, you don't have enough money for this.";
};


