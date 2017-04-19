//* Filterscript primera persona CRÉDITOS

//HackPawn creador.
//Matías posteado en PawnoScripting.

#define FILTERSCRIPT

#include <a_samp>

new camaraon[MAX_PLAYERS];
new FPS[MAX_PLAYERS];

forward Camara();

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n----------------------------------------");
	print(" Filterscript cargado correctamente.");
	print("-----------------------------------------\n");
	SetTimer("Camara", 1000, true);
	return 1;
}

public OnFilterScriptExit()
{
	print("\n----------------------------------------");
	print(" Filterscript apagado (EL SERVIDOR SE PUEDE HABER APAGADO O EL FS TIENE UN  FALLO.");
	print("-----------------------------------------\n");
	return 1;
}

#else

main(){}

#endif

public OnPlayerConnect(playerid)
{
    FPS[playerid] = CreateObject(19300, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/Primerapersona", cmdtext, true, 10) == 0)
	{
	if(camaraon[playerid] == 0)
	{
        camaraon[playerid] = 1;
		SendClientMessage(playerid, -1, "{9ACD32}CiudadGolden: {00CED3}¡Has cambiado la cámara a primera persona!");
		AttachObjectToPlayer(FPS[playerid], playerid, 0.0, 0.15, 0.65, 0.0, 0.0, 0.0);
		AttachCameraToObject(playerid, FPS[playerid]);
	}
	else if(camaraon[playerid] == 1)
	{
	    camaraon[playerid] = 0;
        SendClientMessage(playerid, -1, "{9ACD32}CiudadGolden: {00CED3}¡Has cambiado la cámara a la normal!");
		SetCameraBehindPlayer(playerid);
    }
	return 1;
	}
	return 0;
}

public Camara()
{
	for(new i; i < MAX_PLAYERS; i++)
	{
	if(camaraon[i] > 0 && IsPlayerInAnyVehicle(i))
	{
		AttachObjectToVehicle(FPS[i], GetPlayerVehicleID(i), 0.0, 0.15, 0.65, 0.0, 0.0, 0.0);
    	AttachCameraToObject(i, FPS[i]);
	}
	else if(camaraon[i] > 0 && !IsPlayerInAnyVehicle(i))
	{
		AttachObjectToPlayer(FPS[i], i, 0.0, 0.15, 0.65, 0.0, 0.0, 0.0);
    	AttachCameraToObject(i, FPS[i]);
	}
	}
	return 1;
}
