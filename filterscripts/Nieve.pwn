//-------------------------------------------------------------------------------------//
//Simple script desarrollado por [K]ronos, Si le sirve deje por lo menos estos creditos//
// Bugs y errores solucionados por Aldys.                                              //
// ------------------------------------------------------------------------------------//

#include <a_samp>
new bool: NieveOn;

public OnFilterScriptInit()
{
        print("\n--------------------------------------");
        print(" Sistema de nieve por comando Cargado");
        print("--------------------------------------\n");
        return 1;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
if(strcmp("/nieveon", cmdtext, true) == 0)
{
if(IsPlayerAdmin(playerid))
{
if(NieveOn == true) return SendClientMessage(playerid, 0xBBBBBBFF, "Ya esta nevando.");
for(new p = 0; p < GetMaxPlayers(); p++)
{
if(IsPlayerConnected(p))
{
SetPlayerWeather(p, 9);
}
}
NieveOn = true;
}
else SendClientMessage(playerid, 0xBBBBBBFF, "Este comando no esta autorizado para ti.");
return 1;
}
if(strcmp("/nieveoff", cmdtext, true) == 0)
{
if(IsPlayerAdmin(playerid))
{
if(NieveOn == false) return SendClientMessage(playerid, 0xBBBBBBFF, "No esta nevando.");
for(new p = 0; p < GetMaxPlayers(); p++)
{
if(IsPlayerConnected(p))
{
SetPlayerWeather(p, 00);
}
}
NieveOn = false;
}
else SendClientMessage(playerid, 0xBBBBBBFF, "Este comando no esta autorizado para ti.");
return 1;
}
return 0;
}

public OnPlayerConnect(playerid)
{
if(NieveOn == true)
{
SetPlayerWeather(playerid, 3);
}
return 1;
}

public OnPlayerUpdate(playerid)
{
if(NieveOn == true && GetPVarInt(playerid, "Nieve") == 0)
{
SetPlayerAttachedObject(playerid, 0, 18864, 1, 0.000000, 0.000000, 0.000000, 0.000000, 90.000000, 0.000000, 1.000000, 1.000000, 1.000000, 0xFDFFFFFF, 0xFDFFFFFF);
SetPVarInt(playerid, "Nieve", 1);
}
if(NieveOn == false && GetPVarInt(playerid, "Nieve") == 1)
{
RemovePlayerAttachedObject(playerid, 0);
SetPVarInt(playerid, "Nieve", 0);
}
return 1;
}
