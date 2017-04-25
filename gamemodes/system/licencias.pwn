
#if defined _licencias_included
	#endinput
#endif

#define _licencias_included


#define COSTO_CONDUCCION 2000
#define COSTO_NAVEGACION 3000
#define COSTO_AVIACION 5000
new bool:IsPractising[MAX_PLAYERS char];

Practise_Car(carid) {
	return ((carid >= 148) && (carid <= 152));
}

Licencias_OnPlayerStateChange(playerid, newstate) {
	if(newstate == PLAYER_STATE_DRIVER) {
		new newcar = GetPlayerVehicleID(playerid);
		if(Practise_Car(newcar)) {
			if(!IsPractising{playerid}) {
				RemovePlayerFromVehicle(playerid);
				Message(playerid, COLOR_GRAD2, "¡No estás en un exámen de conducción!");
			} else {
				Message(playerid, COLOR_YELLOW2, "INFO: Ve a los Puntos Rojos para completar la prueba.");
				Message(playerid, COLOR_LIGHTBLUE, "|| Si terminas el Recorrido con el vehiculo destrozado fallarás la prueba ||");
				SetPlayerCheckpoint(playerid, 2084.1448,-1911.5313,13.2578, 5.0); // Primer CP
			}
		}
	}
	return 1;
}

DialogCreate:comprarLicencias(playerid)
{
	new string[128];
	format(string, sizeof(string), "{FFFFFF}Conducción (%d$)\nVuelo (%d$)\nNavegación (%d$)", COSTO_CONDUCCION, COSTO_AVIACION, COSTO_NAVEGACION);
	Dialog_Open(playerid, Dialog:comprarLicencias, DIALOG_STYLE_LIST, "{018CFE}Licencias disponibles", string, "Aceptar", "Salir");
}

DialogResponse:comprarLicencias(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
			case 0: {
				if(PlayerInfo[playerid][pCarLic] == 1) return Message(playerid, COLOR_GRAD2, "¡Ya tienes la licencia de conducción!"); 
				if (CheckMoney(playerid, COSTO_CONDUCCION)) {
					Bought(playerid, COSTO_CONDUCCION);
					Message(playerid, COLOR_WHITE, "* El examen práctico ha comenzado. Súbete a un vehículo.");
					IsPractising{playerid} = true;
				}
			}
			case 1: {
				if(PlayerInfo[playerid][pFlyLic] == 1) return Message(playerid, COLOR_GRAD2, "¡Ya tienes la licencia de aviación!"); 
				if (CheckMoney(playerid, COSTO_AVIACION)) {
					Bought(playerid, COSTO_AVIACION);
					Message(playerid, COLOR_LIGHTBLUE, "* Has obtenido la licencia de aviación");
					PlayerInfo[playerid][pFlyLic] = 1;
				}
			}
			case 2: {
				if(PlayerInfo[playerid][pBoatLic] == 1) return Message(playerid, COLOR_GRAD2, "¡Ya tienes la licencia de navegación!"); 
				if (CheckMoney(playerid, COSTO_NAVEGACION)) {
					Bought(playerid, COSTO_NAVEGACION);
					Message(playerid, COLOR_LIGHTBLUE, "* Has obtenido la licencia de navegación");
					PlayerInfo[playerid][pBoatLic] = 1;
				}
			}
		}
	}
	return 1;
}

//Checkpoints del examen de conducir
function ConducirUno(playerid) {
	SetPlayerCheckpoint(playerid, 2084.1243,-1829.3904,13.2578, 5.0);
}
function ConducirDos(playerid) {
	SetPlayerCheckpoint(playerid, 2067.4231,-1809.8171,13.2578, 5.0);
}
function ConducirTres(playerid) {
	SetPlayerCheckpoint(playerid, 1976.0070,-1809.4790,13.2578, 5.0);
}
function ConducirCuatro(playerid) {
	SetPlayerCheckpoint(playerid, 1958.8334,-1827.4556,13.2578, 5.0);
}
function ConducirCinco(playerid) {
	SetPlayerCheckpoint(playerid, 1959.3459,-1917.4956,13.2578, 5.0);
}
function ConducirSeis(playerid) {
	SetPlayerCheckpoint(playerid, 1978.0740,-1935.2076,13.2577, 5.0);
}
function ConducirSiete(playerid) {
	SetPlayerCheckpoint(playerid, 1999.4305,-1940.1056,13.2290, 5.0);
}
function ConducirOcho(playerid) {
	Message(playerid,COLOR_WHITE,"Bien Hecho !");
	SetPlayerCheckpoint(playerid, 2039.2980,-1935.2648,13.1956, 5.0);
	TogglePlayerControllable(playerid, 1);
}
function ConducirNueve(playerid) {
	SetPlayerCheckpoint(playerid, 2056.5313,-1925.7705,13.3843, 5.0);
}

function ConducirDiez(playerid) {
	new Float:health;
	new veh;
	veh = GetPlayerVehicleID(playerid);
	GetVehicleHealth(veh, health);
	if(health >= 900.0) {
		Message(playerid,COLOR_GREEN,"Exámen: Tu vehículo se encuentra en buen estado. ¡APROBASTE!");
		Message(playerid,COLOR_LIGHTBLUE, "* Has obtenido la licencia de conducción");
		PlayerPlaySound(playerid, 1183, 0.0, 0.0, 0.0);
		PlayerInfo[playerid][pCarLic] = 1;
	} else if(health <= 899.0) {
		Message(playerid,COLOR_RED,"Exámen: El vehículo está un poco dañado, suerte para la próxima.");
	}
	SetVehicleToRespawn(veh);
	IsPractising{playerid} = false;
	SetPosEx(playerid, 2059.5881,-1914.3644,13.5469, 0, 0 ,0);
	DisablePlayerCheckpoint(playerid);
	return 1;
}

Licencias_OnPlayerEnterCP(playerid) {
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 2084.1448,-1911.5313,13.2578))
	{
		SetTimerEx("ConducirUno",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 2084.1243,-1829.3904,13.2578))
	{
		SetTimerEx("ConducirDos",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 2067.4231,-1809.8171,13.2578))
	{
		SetTimerEx("ConducirTres",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 1976.0070,-1809.4790,13.2578))
	{
		SetTimerEx("ConducirCuatro",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 1958.8334,-1827.4556,13.2578))
	{
		SetTimerEx("ConducirCinco",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 1959.3459,-1917.4956,13.2578))
	{
		SetTimerEx("ConducirSeis",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 1978.0740,-1935.2076,13.2577))
	{
		SetTimerEx("ConducirSiete",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 1999.4305,-1940.1056,13.2290))
	{
		Message(playerid,COLOR_GREEN,"Test de Aparcamiento");
		Message(playerid,COLOR_WHITE,"Apaga y enciende el motor del vehiculo para continuar");
		TogglePlayerControllable(playerid, 0);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 2039.2980,-1935.2648,13.1956))
	{
		SetTimerEx("ConducirNueve",100,0,"d",playerid);
	}
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 2056.5313,-1925.7705,13.3843))
	{
		SetTimerEx("ConducirDiez",100,0,"d",playerid);
	}
}

Licencias_checkTestConducir(playerid) {
	if(IsPlayerInRangeOfPoint(playerid, 5.0, 1999.4305,-1940.1056,13.2290) && IsPractising{playerid}) {
		SetTimerEx("ConducirOcho",100,0,"d",playerid);
	}
}

//Comandos

zcmd(evaluar, playerid, params[])
{
	if(!PlayerToPoint(10.0, playerid, 2045.5239,-1907.7998,13.5469)) return Message(playerid, COLOR_GRAD2, "¡Aquí no puedes evaluarte de nuevas licencias!");
	Dialog_Show(playerid, Dialog:comprarLicencias);
	return 1;
}

zcmd(licencias, playerid, params[])
{
	if(!sscanf(params, "u", params[0]))
	{
		if(IsPlayerConnected(params[0]))
		{
			if(ProxDetectorS(5.0, playerid, params[0]))
			{
				new string[64];
				ClearChatbox(params[0], 10);
				format(string, sizeof(string), "|__ Licencias de %s __|", PlayerName(playerid));
				Message(params[0], COLOR_WHITE, string);
				if(PlayerInfo[playerid][pCarLic] > 0)   Message(params[0], COLOR_GRAD2, " Licencia de conducción");
				if(PlayerInfo[playerid][pFlyLic] > 0)   Message(params[0], COLOR_GRAD2, " Licencia de vuelo");
				if(PlayerInfo[playerid][pBoatLic] > 0)  Message(params[0], COLOR_GRAD2, " Licencia de navegación");
				if(PlayerInfo[playerid][pGunLic] > 0)   Message(params[0], COLOR_GRAD2, " Licencia de armas");
				format(string, sizeof(string), "* %s muestra sus licencias a %s.", PlayerName(playerid), PlayerName(params[0]));
				ProxDetector(30.0,playerid,string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			}
			else Message(playerid, COLOR_GRAD2, "Muy lejos del jugador.");
		}
		else Message(playerid, COLOR_GRAD2, "Jugador desconectado.");
	}
	else Message(playerid, COLOR_GRAD2, "Utilice: /licencias <PlayerID>");
	return 1;
}
zcmd(licencia, playerid, params[])
{
	new string[128], item[64];
	if(PlayerInfo[playerid][pAdminCP] < 6) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	if(!sscanf(params, "us[64]", params[0], item))
	{
		if(IsPlayerConnected(params[0]))
		{
			if(ProxDetectorS(5.0, playerid, params[0]))
			{
				if(strcmp(item,"conduccion",true) == 0)
				{
					format(string, sizeof(string), "* Diste la licencia de %s a %s", item, PlayerName(params[0]));
					Message(playerid, COLOR_LIGHTBLUE, string);
					format(string, sizeof(string), "* Admin %s te dió la licencia de %s.", PlayerName(playerid), item);
					Message(params[0], COLOR_LIGHTBLUE, string);
					PlayerInfo[params[0]][pCarLic] = 1;
					return 1;
				}
				if(strcmp(item,"aviacion",true) == 0)
				{
					format(string, sizeof(string), "* Diste la licencia de %s a %s", item, PlayerName(params[0]));
					Message(playerid, COLOR_LIGHTBLUE, string);
					format(string, sizeof(string), "* Admin %s te dió la licencia de %s.", PlayerName(playerid), item);
					Message(params[0], COLOR_LIGHTBLUE, string);
					PlayerInfo[params[0]][pFlyLic] = 1;
					return 1;
				}
				if(strcmp(item,"navegacion",true) == 0)
				{
					format(string, sizeof(string), "* Diste la licencia de %s a %s", item, PlayerName(params[0]));
					Message(playerid, COLOR_LIGHTBLUE, string);
					format(string, sizeof(string), "* Admin %s te dió la licencia de %s.", PlayerName(playerid), item);
					Message(params[0], COLOR_LIGHTBLUE, string);
					PlayerInfo[params[0]][pBoatLic] = 1;
					return 1;
				}
				if(strcmp(item,"armas",true) == 0)
				{
					format(string, sizeof(string), "* Diste la licencia de %s a %s", item, PlayerName(params[0]));
					Message(playerid, COLOR_LIGHTBLUE, string);
					format(string, sizeof(string), "* Admin %s te dió la licencia de %s.", PlayerName(playerid), item);
					Message(params[0], COLOR_LIGHTBLUE, string);
					PlayerInfo[params[0]][pGunLic] = 1;
					return 1;
				}
				else Message(playerid, COLOR_GRAD2, "Nombre incorrecto.");
			}
			else Message(playerid, COLOR_GRAD2, "Muy lejos del comprador.");
		}
		else Message(playerid, COLOR_GRAD2, "Jugador desconectado.");
	}
	else
	{
		Message(playerid, COLOR_GRAD2, "Utilice: /licencia <PlayerID> <Licencia>");
		Message(playerid, COLOR_GRAD2, "Licencias: conduccion, aviacion, navegacion, armas");
	}
	return 1;
}