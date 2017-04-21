
#if defined pickups
	#endinput
#endif

#define pickups

new pMatI, pMatII, pMatIII;

Pickups_OnGameModeInit() {
	/*    Police LA     */
	CreateDynamicPickup(1314, 1, 267.5095,87.0759,1001.0391); // arrestar LSPD
	CreateDynamicPickup(1314, 1, 200.7091,168.4553,1003.0234); // arrestar FBI
	CreateDynamicPickup(1314, 1, 625.9482,854.0344,-90.2031); // arrestar2 SAEM
	CreateDynamicPickup(1318, 1, 242.7591,66.4315,1003.6406); // Inside PD elevator
    CreateDynamicPickup(1318, 1, 1524.5724,-1677.8043,6.2188); // PD Tunnel
    CreateDynamicPickup(1318, 1, 1557.7257,-1675.2711,28.3955); // PD roof
    CreateDynamicPickup(1318, 1, 1579.9940,-1634.2922,13.5626); // camaras
	/*      Umbrella  + Hitman  */
	CreateDynamicPickup(1239, 1, 251.0016,118.2015,1003.2188); // Contrato
    CreateDynamicPickup(1313, 1, 1425.2998,-1291.2107,13.5560); // Hitman
    CreateDynamicPickup(1239, 1, -282.7598,-2174.3972,28.6580); // Hitman
	/*      SAMUR       */
	CreateDynamicPickup(1318, 1, -2647.8711,539.6345,48.0835); // Exit Hospital
	CreateDynamicPickup(1318, 1, -2662.2495,537.6510,48.0843, 0); // Elevator LS
	CreateDynamicPickup(1239, 1, -2639.9487,535.6438,51.6134); // Equipo
	CreateDynamicPickup(1239, 1, 1161.8463,-1328.4821,31.4967); // Ascensor terraza
	/*          Other ENTER / EXITS     */
 	CreateDynamicPickup(1239, 1, 1615.2629,-2160.2664,13.6281); // Equipo mecanicos
	CreateDynamicPickup(1239, 1, -2659.7708,506.9668,48.0847); // seguro ls
	CreateDynamicPickup(1239, 1, 663.9432,-568.8129,16.3433); // FARMACIA INFO
    CreateDynamicPickup(1318, 1, 2105.2844,-1806.5475,13.5547); // Pizzeria LS
    CreateDynamicPickup(1239, 1, 379.1396,-114.2661,1001.4922); // Tomarpizza
   	CreateDynamicPickup(1318, 1, 154.2457,-1946.2103,5.1346); // Faro ENTER
   	CreateDynamicPickup(1318, 1, 154.1186,-1949.6292,47.8750); // Faro EXIT
   	CreateDynamicPickup(1239, 1, -2665.0129,535.0582,48.0791); // Ascensor Planta 2-3
   	CreateDynamicPickup(1239, 1, 994.3551,-1296.4821,13.5469); // JOB Tren
	CreateDynamicPickup(1239, 1, 1957.3217,-2183.6399,13.5469); // JOB Piloto
   	CreateDynamicPickup(1239, 1, 1616.0295,-1897.1339,13.5491); // JOB Vendedor moviles
	CreateDynamicPickup(1239, 1, 378.6049,-119.5969,1001.4922); // JOB Pizzero
	CreateDynamicPickup(1239, 1, 893.6022,-2488.9248,3098.3235); //JOB Pescador
	CreateDynamicPickup(1239, 1, 2215.5657,-2661.1208,13.5469); // JOB Camionero
	CreateDynamicPickup(1239, 1, 1070.6956,-1861.3844,13.5857); // JOB Guardaespaldas
	CreateDynamicPickup(1239, 1, 1649.5122,-1578.7310,13.5319); // JOB Detective
   	CreateDynamicPickup(1239, 1, 2634.9543,-2351.2449,30.5923); // Misil 1
   	CreateDynamicPickup(1239, 1, 2752.9141,-2351.3301,31.0923); // Misil 2
   	pMatI = CreateDynamicPickup(1279, 2, 2825.5139,-1518.7112,12.0470); // MAT-LOAD I
   	pMatII = CreateDynamicPickup(1279, 2, 2281.5518,-2364.5908,13.5469); // MAT-LOAD II
   	pMatIII = CreateDynamicPickup(1279, 2, 1086.5568,-2074.6069,59.0720); // MAT-LOAD III
	/*      Info & Ayuda & Points       */
	CreateDynamicPickup(1239, 1, -2355.8621,914.9895,93.8007); // Bowling
	CreateDynamicPickup(1239, 1, -2355.6140,910.4491,93.8007); // Bowling
	CreateDynamicPickup(1239, 1, -2355.9583,905.1354,93.8007); // Bowling
	CreateDynamicPickup(1239, 1, 364.4181,186.8598,1014.1875); // Autoescuela EXAMEN CAr
	CreateDynamicPickup(1239, 1, 1790.4347,-1591.3114,13.4938); // Boleto VIP
	CreateDynamicPickup(1239, 1, 2556.3853,-1296.8981,1044.1250); // FABRICAR ARMAS
	CreateDynamicPickup(1239, 1, 2543.2500,-1296.3975,1044.1250); // FABRICAR ARMAS
	CreateDynamicPickup(1239, 1, 2542.9377,-1290.5266,1044.1250); // FABRICAR ARMAS
	CreateDynamicPickup(1239, 1, 2556.0679,-1290.1639,1044.1250); // FABRICAR ARMAS
	CreateDynamicPickup(1239, 1, 1623.6274,-2150.6238,13.6528); // Equipo Mecanico
	CreateDynamicPickup(1239, 1, 366.6122,158.6483,1008.3828); // Equipo Gobierno
	/* Pickups mapas información */
	CreateDynamicPickup(1239, 1, 1181.4065,-1318.3972,13.6281);
	CreateDynamicPickup(1239, 1, 772.0750,-1327.3168,13.5469);
	CreateDynamicPickup(1239, 1, 1813.9435,-1901.8436,13.5730);
	CreateDynamicPickup(1239, 1, 1639.5374,-2187.5317,13.5469);
	CreateDynamicPickup(1239, 1, 1839.1881,-1421.8048,13.5625);
	CreateDynamicPickup(1239, 1, 1193.3491,-1156.8507,23.8864);
	CreateDynamicPickup(1239, 1, 456.6184,-1493.9646,31.0939);
	CreateDynamicPickup(1239, 1, 1451.2942,-1026.9141,23.8281);
	CreateDynamicPickup(1239, 1, 2089.0627,-1823.5455,13.5469);
	CreateDynamicPickup(1239, 1, 1718.7406,-1865.7048,13.5723);
	/* Pickup carwash */
	CreateDynamicPickup(1239, 1, 1909.8049,-1783.8279,13.3828);

	printf("HZ-RP: %d Pickups Cargados", CountDynamicPickups());
}

public OnPlayerPickUpDynamicPickup(playerid, pickupid) {
	new mats = random(20);
 	if(pickupid == pMatI)
 	{
 		if(!IsANarco(playerid)) return Message(playerid, COLOR_GRAD2, "¡No eres narcotraficante!");
 		if(Delivery[playerid] > 0) return Message(playerid, COLOR_GRAD2, "¡Ya tienes un paquete, entrégalo antes!");
 		Delivery[playerid] = mats;
 		Message(playerid, COLOR_WHITE, "Has recogido un paquete, entrégaselo a su dueño.");
 		GText(playerid, "paquete recogido", 5000, 1);
 	}
 	else if(pickupid == pMatII)
 	{
 		if(!IsANarco(playerid)) return Message(playerid, COLOR_GRAD2, "¡No eres narcotraficante!");
 		if(Delivery[playerid] > 0) return Message(playerid, COLOR_GRAD2, "¡Ya tienes un paquete, entrégalo antes!");
 		Delivery[playerid] = mats;
 		Message(playerid, COLOR_WHITE, "Has recogido un paquete, entrégaselo a su dueño.");
 		GText(playerid, "paquete recogido", 5000, 1);
 	}
 	else if(pickupid == pMatIII)
 	{
 		if(!IsANarco(playerid)) return Message(playerid, COLOR_GRAD2, "¡No eres narcotraficante!");
 		if(Delivery[playerid] > 0) return Message(playerid, COLOR_GRAD2, "¡Ya tienes un paquete, entrégalo antes!");
 		Delivery[playerid] = mats+2;
 		Message(playerid, COLOR_WHITE, "Has recogido un paquete, entrégaselo a su dueño.");
 		GText(playerid, "paquete recogido", 5000, 1);
 	}
 	return 1;
}