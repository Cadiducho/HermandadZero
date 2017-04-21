
#if defined _mapas_included
	#endinput
#endif

#define _mapas_included

Mapas_OnGameModeInit() {
	// 3D labels mapas
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 1181.4065,-1318.3972,13.6281, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 772.0750,-1327.3168,13.5469, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 1813.9435,-1901.8436,13.5730, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 1639.5374,-2187.5317,13.5469, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 1839.1881,-1421.8048,13.5625, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 1193.3491,-1156.8507,23.8864, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 456.6184,-1493.9646,31.0939, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 2089.0627,-1823.5455,13.5469, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 1718.7406,-1865.7048,13.5723, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
	CreateDynamic3DTextLabel("Para ver el mapa usa\n{FFFFFF}/mapa", 			COLOR_LIGHTBLUE, 1451.2942,-1026.9141,23.8281, 8.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
}

DialogCreate:mapa(playerid)
{
	Dialog_Open(playerid, Dialog:mapa, DIALOG_STYLE_LIST, "{018CFE}Puntos de interes", 
		"{FFFFFF}Ayuntamiento\nJuzgados\nComisaria\nTaller\nLicencieria\nBinco\n24-7 Vinewood\n24-7 Unity\n24-7\nLavanderia\nJoyeria\nBanco\nGrotti\nCyber\nBiblioteca\nBowling\nIglesia\nCasino", 
		"Aceptar", "Salir");
}

DialogResponse:mapa(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
			case 0: SetPlayerCheckpoint(playerid, 1496.0590,-1777.1404,13.5469, 3.0); // ayunt
			case 1: SetPlayerCheckpoint(playerid, 1485.5140,-1552.7058,15.3703, 3.0); // juzgad
			case 2: SetPlayerCheckpoint(playerid, 1545.8611,-1680.0559,13.5612, 3.0); // lspd
			case 3: SetPlayerCheckpoint(playerid, 1627.7813,-2186.0342,13.5469, 3.0); //taller
			case 4: SetPlayerCheckpoint(playerid, 2073.2747,-1914.5770,13.3648, 3.0); // licencieria
			case 5: SetPlayerCheckpoint(playerid, 2242.7200,-1664.3235,15.4766, 3.0); //binco
			case 6: SetPlayerCheckpoint(playerid, 1318.7915,-899.3480,39.5781, 3.0); // 24-7 vinewood
			case 7: SetPlayerCheckpoint(playerid, 1812.9063,-1883.0615,13.5781, 3.0); // 24-7 unity
			case 8: SetPlayerCheckpoint(playerid, 1351.0753,-1750.7668,13.3648, 3.0); // 24-7 ayunta
			case 9: SetPlayerCheckpoint(playerid, 1838.6997,-1414.5907,13.5625, 3.0); // lavanderia
			case 10: SetPlayerCheckpoint(playerid, 1569.2629,-1897.6455,13.5608, 3.0); // Joyeria
			case 11: SetPlayerCheckpoint(playerid, 1461.9490,-1025.4996,23.8281, 3.0); // banco
			case 12: SetPlayerCheckpoint(playerid, 558.4728,-1277.1632,17.2482, 3.0); //grooty
			case 13: SetPlayerCheckpoint(playerid, 1096.6118,-1386.5211,13.7329, 3.0); // cyber
			case 14: SetPlayerCheckpoint(playerid, 1549.1174,-1097.1937,25.0625, 3.0); // biblio
			case 15: SetPlayerCheckpoint(playerid, 1630.4258,-1171.4131,24.0781, 3.0); // bowling
			case 16: SetPlayerCheckpoint(playerid, 2255.6750,-1331.5316,23.9811, 3.0); // iglesia
			case 17: SetPlayerCheckpoint(playerid, 1020.6985,-1123.0210,23.8680, 3.0); // casino
		} 
		Message(playerid, COLOR_WHITE, "{FFFFFF}Se marcó la ubicación en el minimapa en forma de checkpoint (punto rojo).");
	}
	return 1;
}

zcmd(mapa, playerid, params[])
{
	if(!IsAtMap(playerid)) return Message(playerid, COLOR_GRAD2, "¡No estas delante de un mapa!");
	Dialog_Show(playerid, Dialog:mapa);
	return 1;
}