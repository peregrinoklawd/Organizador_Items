waitUntil {!isNull player};
waitUntil {!isNull findDisplay 46};

[] call ServoPeregrino_Organizador_Nexus_fnc_initialize;
[] call ServoPeregrino_Organizador_Items_fnc_initialize;

// Mantem as acoes de diagnostico da 0.13-A quando o registrador do addon estiver disponivel.
if !(isNil "ServoPeregrino_Organizador_Items_fnc_installTestActions") then {
    [player] call ServoPeregrino_Organizador_Items_fnc_installTestActions;
};

// Entry point do laboratorio independente do registrador de acoes do addon.
missionNamespace setVariable ["SP_ORG_Lab_fnc_openItems", {
    hintSilent "";
    if (isNil "ServoPeregrino_Organizador_Items_fnc_openInterface") exitWith {
        hint "SP_ORG Items nao esta disponivel. Confira se @SP_ORG_Items_0_13_A esta carregado.";
        diag_log "[SP_ORG] [MP_LAB_8SLOTS_R3] OPEN_FAIL function openInterface is nil";
    };

    private _r = [] call ServoPeregrino_Organizador_Items_fnc_openInterface;
    if !(_r getOrDefault ["success",false]) then {
        hint format ["%1 - %2",_r getOrDefault ["code","UNKNOWN"],_r getOrDefault ["message",""]];
        diag_log format ["[SP_ORG] [MP_LAB_8SLOTS_R3] OPEN_FAIL result=%1",_r];
    } else {
        diag_log "[SP_ORG] [MP_LAB_8SLOTS_R3] OPEN_OK";
    };
}];

missionNamespace setVariable ["SP_ORG_Lab_fnc_installAccess", {
    params [["_unit",objNull,[objNull]]];
    if (isNull _unit || {!local _unit}) exitWith {-1};

    private _oldId = _unit getVariable ["SP_ORG_Lab_OpenActionId",-1];
    if (_oldId >= 0) then {
        _unit removeAction _oldId;
    };

    private _id = _unit addAction [
        "<t color='#7FD9D0' size='1.15'>SP_ORG - Abrir Organizador [HOME]</t>",
        { [] call (missionNamespace getVariable ["SP_ORG_Lab_fnc_openItems",{}]); },
        nil,
        12.5,
        true,
        true,
        "",
        "alive _this",
        50
    ];

    _unit setVariable ["SP_ORG_Lab_OpenActionId",_id];
    diag_log format ["[SP_ORG] [MP_LAB_8SLOTS_R3] DIRECT_ACTION installed id=%1 actionIDs=%2 params=%3",_id,actionIDs _unit,_unit actionParams _id];
    _id
}];

[player] call (missionNamespace getVariable ["SP_ORG_Lab_fnc_installAccess",{}]);

// Fallback independente do menu de scroll. DIK_HOME = 199.
private _display = findDisplay 46;
private _oldKeyEh = uiNamespace getVariable ["SP_ORG_Lab_HomeKeyEH",-1];
if (_oldKeyEh >= 0) then {
    _display displayRemoveEventHandler ["KeyDown",_oldKeyEh];
};
private _keyEh = _display displayAddEventHandler ["KeyDown", {
    params ["_display","_key"];
    if (_key isEqualTo 199) exitWith {
        [] call (missionNamespace getVariable ["SP_ORG_Lab_fnc_openItems",{}]);
        true
    };
    false
}];
uiNamespace setVariable ["SP_ORG_Lab_HomeKeyEH",_keyEh];

// Reinstala a acao se o jogador respawnar.
player addEventHandler ["Respawn", {
    params ["_newUnit","_corpse"];
    [_newUnit] call (missionNamespace getVariable ["SP_ORG_Lab_fnc_installAccess",{}]);
}];

diag_log format ["[SP_ORG] [MP_LAB_8SLOTS_R3] Client ready. player=%1 uid=%2 directAction=%3 homeKeyEH=%4 allActionIDs=%5",name player,getPlayerUID player,player getVariable ["SP_ORG_Lab_OpenActionId",-1],_keyEh,actionIDs player];
hint parseText "<t size='1.2'>SP_ORG Items 0.13-A - Multiplayer Lab R3</t><br/><br/>Abra pela roda do mouse em <t color='#7FD9D0'>SP_ORG - Abrir Organizador [HOME]</t>.<br/><br/>Se o menu de scroll nao aparecer, pressione <t color='#FFD966'>HOME</t>.";
