private _n = [] call ServoPeregrino_Organizador_Nexus_fnc_initialize;
private _i = [] call ServoPeregrino_Organizador_Items_fnc_initialize;
diag_log format ["[SP_ORG] [MP_LAB_8SLOTS_R3] Server ready. nexus=%1 items=%2 build=%3 playableSlots=%4", _n getOrDefault ["code","?"], _i getOrDefault ["code","?"], ([] call ServoPeregrino_Organizador_Items_fnc_getBuildInfo) getOrDefault ["build",""], playableSlotsNumber west];
