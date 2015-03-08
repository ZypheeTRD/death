/*
    File: fn_copLights.sqf
    Author: [GSN] Pager & [GSN] Paronity
    Website: GSNGaming.com
    Date Created: 2.24.2015
    Date Modified: 2.25.2015 v1.2
*/

private ["_veh","_lightRed", "_lightBlue", "_lightHighBrightness", "_lightLowBrightness", "_lightAttenuation", "_lightFlareSize", "_lightFlareMaxDistance", "_numStrobes", "_strobeTimeOn", "_strobeTimeOff", "_offsetMultiplier", "_emergencyLights", "_extraLights", "_lightWhite", "_brightness", "_brightnessNight", "_brightnessday", "_lightFlareSizeNight", "_lightFlareSizeDay","_lightRedDay","_lightWhiteDay","_lightBlueDay","_lightRedNight","_lightWhiteNight","_lightBlueNight","_lightAttenuationDay","_lightAttenuationNight","_type"];

_veh = (_this select 0);
if(_veh getVariable ["lights", false]) exitWith {};

_veh setVariable ["lights", true, false];

_modeChanged = true;

while {_modeChanged && !isNil "_veh" && !isNull _veh && _veh getVariable ["lights",false]} do {

    _emergencyLights = _veh getVariable ["emergencyLights", false];

    _type = typeOf _veh;

    if(!(_type in ["I_Quadbike_01_F","C_Offroad_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","I_MRAP_03_F"])) exitWith {};

    _extraLights = true;

    //Night Colors (Red, Green, Blue)
    _lightRedNight = [127.5, 0, 0];
    _lightWhiteNight = [127.5, 127.5, 127.5];
    _lightBlueNight = [0, 0, 127.5];
    //Day Colors (Red, Green, Blue)
    _lightRedDay = [255, 0, 0];
    _lightWhiteDay = [255, 255, 255];
    _lightBlueDay = [0, 0, 255];
    //On-Off Brightness
    _lightHighBrightness = 10;
    _lightLowBrightness = 0.0005;
    //Day-Night Attenuation
    _lightAttenuation = [0,0,0,0];
    _lightAttenuationNight = [0.001, 3000, 100, 250000];
    _lightAttenuationDay = [0.001, 0, 100, 750000];
    //Intensity
    _intensity = 0;
    _intensityNight = 25000;
    _intensityDay = 75000;
    //Flare
    _lightFlareSize = 0;
    _lightFlareSizeNight = 0.25;
    _lightFlareSizeDay = 25;
    _lightFlareMaxDistance = 300;

    if (sunOrMoon < 1) then {
        //Night
        _lightRed = _lightRedNight;
        _lightWhite = _lightWhiteNight;
        _lightBlue = _lightBlueNight;
        _intensity = _intensityNight;
        _lightAttenuation = _lightAttenuationNight;
        _lightFlareSize = _lightFlareSizeNight
    } else {
        //Day
        _lightRed = _lightRedDay;
        _lightWhite = _lightWhiteDay;
        _lightBlue = _lightBlueDay;
        _intensity = _intensityDay;
        _lightAttenuation = _lightAttenuationDay;
        _lightFlareSize = _lightFlareSizeDay;
    };

    _numStrobes = 3;
    _strobeTimeOn = 0.1;
    _strobeTimeOff = 0.02;

    _alphaLights = [];
    _betaLights = [];

    _attachLight = {
        _isAlpha = _this select 0;
        _color = _this select 1;
        _position = _this select 2;
        _light = "#lightpoint" createVehicleLocal getPosATL _veh;
        _light setVelocity velocity _veh;
        _light setLightDayLight true;
        _light setLightUseFlare true;
        _light setLightAmbient [0.0,0.0,0.0];
        _light setLightBrightness 0;
        _light setLightIntensity _intensity;
        _light setLightAttenuation _lightAttenuation;
        _light setLightFlareSize _lightFlareSize;
        _light setLightFlareMaxDistance _lightFlareMaxDistance;

        switch (_color) do {
            case "red": {
                _light setLightColor _lightRed;
            };
            case "white": {
                _light setLightColor _lightWhite;
            };
            case "blue": {
                _light setLightColor _lightBlue;
            };
        };

        if(_isAlpha) then {
            _alphaLights pushBack [_light, _position];
        } else {
            _betaLights pushBack [_light, _position];
        };
        _light lightAttachObject [_veh, _position];
    };

    switch(_type) do
    {
        case "C_Offroad_01_F":
        {
            [false, "red", [-0.44, 0.0, 0.525]] call _attachLight;
            [true, "blue", [0.345, 0.0, 0.525]] call _attachLight;

            [false, "white", [0.61, 2.2825, -0.355]] call _attachLight;
            [true, "white", [-0.695, 2.2825, -0.355]] call _attachLight;

            if(_extraLights) then {
                [true, "blue", [0.17, 2.655, -0.49]] call _attachLight;
                [false, "red", [-0.25, 2.655, -0.49]] call _attachLight;

                [false, "red", [-0.905, -2.875, -0.225]] call _attachLight;
                [true, "blue", [0.825, -2.875, -0.225]] call _attachLight;

                [true, "blue", [-0.645, -2.95, -0.77]] call _attachLight;
                [false, "red", [0.575, -2.95, -0.77]] call _attachLight;
            };
        };
        case "C_SUV_01_F":
        {
            [true, "white", [0.79, 1.95, -0.48]] call _attachLight;
            [false, "white", [-0.80, 1.95, -0.48]] call _attachLight;

            [true, "red", [-0.86, -2.75, -0.18]] call _attachLight;
            [false, "blue", [0.86, -2.75, -0.18]] call _attachLight;

            if(_extraLights) then {
                [true, "red", [-0.39, 2.28, -0.52]] call _attachLight;
                [false, "blue", [0.38, 2.28, -0.52]] call _attachLight;

                [false, "blue", [-0.6, -2.925, -0.24]] call _attachLight;
                [true, "red", [0.59, -2.925, -0.24]] call _attachLight;
            };
        };
        case "C_Hatchback_01_sport_F":
        {
            [true, "blue", [-0.03, 0, 0.2]] call _attachLight;
            [false, "red", [-0.03, 0, 0.2]] call _attachLight;

            [true, "blue", [-0.55, -2.46, -0.3]] call _attachLight;
            [false, "red", [0.48, -2.46, -0.3]] call _attachLight;

            if(_extraLights) then {
                [false, "white", [0.75, 1.615, -0.52]] call _attachLight;
                [true, "white", [-0.8, 1.615, -0.525]] call _attachLight;

                [true, "blue", [0.20, 2.15, -0.61]] call _attachLight;
                [false, "red", [-0.25, 2.15, -0.61]] call _attachLight;

                [true, "blue", [0.78, -2.25, -0.3]] call _attachLight;
                [false, "red", [-0.8, -2.25, -0.3]] call _attachLight;
            };
        };
        case "I_MRAP_03_F":
        {
            [true, "red", [-0.87, 2.2, -0.75]] call _attachLight;
            [false, "blue", [0.87, 2.2, -0.75]] call _attachLight;

            [true, "red", [-0.725, -3.15, 0.025]] call _attachLight;
            [false, "blue", [0.725, -3.15, 0.025]] call _attachLight;

            if(_extraLights) then {
                [false, "white", [-1.05, 2.25, -0.3]] call _attachLight;
                [true, "white", [1.05, 2.25, -0.3]] call _attachLight;

                [true, "red", [1.225, -2.845, -0.71]] call _attachLight;
                [false, "blue", [-1.225, -2.845, -0.7]] call _attachLight;
            };
        };
    };

    _modeChanged = false;

    while{(alive _veh && _veh getVariable ["lights",false] && !_modeChanged)} do
    {
        for [{_i=0}, {_i<_numStrobes}, {_i=_i+1}] do {
            {
                (_x select 0) setLightBrightness _lightHighBrightness;
            } forEach _alphaLights;
            uiSleep _strobeTimeOn;
            {
                (_x select 0) setLightBrightness _lightLowBrightness;
            } forEach _alphaLights;
            uiSleep _strobeTimeOff;
        };
        {
            (_x select 0) setLightBrightness 0;
        } forEach _alphaLights;

        for [{_i=0}, {_i<_numStrobes}, {_i=_i+1}] do {
            {
                (_x select 0) setLightBrightness _lightHighBrightness;
            } forEach _betaLights;
            uiSleep _strobeTimeOn;
            {
                (_x select 0) setLightBrightness _lightLowBrightness;
            } forEach _betaLights;
            uiSleep _strobeTimeOff;
        };
        {
            (_x select 0) setLightBrightness 0;
        } forEach _betaLights;

        _modeChanged = (_veh getVariable ["emergencyLights",false] && !_emergencyLights) || (!(_veh getVariable ["emergencyLights", false]) && _emergencyLights);
    };

    {
        deleteVehicle (_x select 0);
    } forEach _alphaLights;
    {
        deleteVehicle  (_x select 0);
    } forEach _betaLights;
    _alphaLights = [];
    _betaLights = [];
};

_veh setVariable ["emergencyLights", false, true];