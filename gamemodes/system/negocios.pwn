
#if defined _negocios_included
	#endinput
#endif

#define _negocios_included

#define MAX_BIZZ 32
new Text3D:Bizz3DText[MAX_BIZZ];
new BizzPickup[MAX_BIZZ];
new BizzInfo[MAX_BIZZ][bInfo];


//Cargar negocio
Negocios_OnGameModeInit()
{
	new arrCoords[11][64];
	new strFromFile2[256];
	new File: file = fopen("bizz.cfg", io_read);
	if (file)
	{
		new idx;
		while (idx < sizeof(BizzInfo))
		{
			fread(file, strFromFile2);
			split(strFromFile2, arrCoords, ',');
			BizzInfo[idx][bOwned] = strval(arrCoords[0]);
			strmid(BizzInfo[idx][bOwner], arrCoords[1], 0, strlen(arrCoords[1]), 255);
			strmid(BizzInfo[idx][bName], arrCoords[2], 0, strlen(arrCoords[2]), 255);
			strmid(BizzInfo[idx][bExtortion], arrCoords[3], 0, strlen(arrCoords[3]), 255);
			BizzInfo[idx][bEntrancex] = floatstr(arrCoords[4]);
			BizzInfo[idx][bEntrancey] = floatstr(arrCoords[5]);
			BizzInfo[idx][bEntrancez] = floatstr(arrCoords[6]);
			BizzInfo[idx][bLevelNeeded] = strval(arrCoords[7]);
			BizzInfo[idx][bBuyPrice] = strval(arrCoords[8]);
			BizzInfo[idx][bTill] = strval(arrCoords[9]);
			BizzInfo[idx][bTillEx] = strval(arrCoords[10]);
			idx++;
		}
		fclose(file);
	}
	return 1;
}

//Generar dineros para el negocio
public Till(bizzid, amount)
{
	if(BizzInfo[bizzid][bOwned] == 1){
		if(strcmp("Nadie", BizzInfo[bizzid][bExtortion], true ) == 0){
			BizzInfo[bizzid][bTill] += amount;
		}
		else{
			new money = amount / 4;
			BizzInfo[bizzid][bTill] += money * 3;
			BizzInfo[bizzid][bTillEx] += money;
		}
	}
	return 1;
}
public TillTimer()
{
	for(new b = 0; b < sizeof(BizzInfo); b++)
	{
		new bearn = BizzInfo[b][bBuyPrice]/500;
		Till(b, bearn);
	}
}


//....
public OnGlobalBizzTextdrawUpdate()
{
	for(new b = 0; b < sizeof(BizzInfo); b++)
	{
		OnBizzTextdrawUpdate(b);
	}
	return 1;
}

public OnBizzTextdrawUpdate(bid)
{
	new string[256];
	if(BizzInfo[bid][bOwned] == 0)
	{
		DestroyDynamic3DTextLabel(Bizz3DText[bid]);
		DestroyDynamicPickup(BizzPickup[bid]);
		format(string, sizeof(string), "Negocio en Venta\n%s\nPrecio : %d$\nNivel: %d\nID: %d\nUsa /comprarnegocio",BizzInfo[bid][bName],BizzInfo[bid][bBuyPrice],BizzInfo[bid][bLevelNeeded],bid);
		Bizz3DText[bid] = CreateDynamic3DTextLabel(string,0xAAAAFFFF, BizzInfo[bid][bEntrancex], BizzInfo[bid][bEntrancey], BizzInfo[bid][bEntrancez],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
		BizzPickup[bid] = CreateDynamicPickup(1272, 1, BizzInfo[bid][bEntrancex], BizzInfo[bid][bEntrancey], BizzInfo[bid][bEntrancez]);
	}
	else
	{
		DestroyDynamic3DTextLabel(Bizz3DText[bid]);
		DestroyDynamicPickup(BizzPickup[bid]);
		format(string, sizeof(string), "%s\nDueño: %s\nExtorcion: %s",BizzInfo[bid][bName],BizzInfo[bid][bOwner],BizzInfo[bid][bExtortion]);
		Bizz3DText[bid] = CreateDynamic3DTextLabel(string,0xAAAAFFFF, BizzInfo[bid][bEntrancex], BizzInfo[bid][bEntrancey], BizzInfo[bid][bEntrancez],5.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0,0);
		BizzPickup[bid] = CreateDynamicPickup(1272, 1, BizzInfo[bid][bEntrancex], BizzInfo[bid][bEntrancey], BizzInfo[bid][bEntrancez]);
	}
	return 1;
}

//Vender negocio
public SellBizz(bizzid)
{
	BizzInfo[bizzid][bOwned] = 0;
	strmid(BizzInfo[bizzid][bOwner], "El Estado", 0, strlen("El Estado"), 64);
	strmid(BizzInfo[bizzid][bExtortion], "Nadie", 0, strlen("Nadie"), 32);
	BizzInfo[bizzid][bTill] = 0;
	BizzInfo[bizzid][bTillEx] = 0;
	UpdateBizz();
	OnBizzTextdrawUpdate(bizzid);
	return 1;
}

public CheckBizz(playerid, earn)
{
	if(PlayerToPoint(10.0,playerid,499.9703,-20.3358,1000.6797))    Till(0, earn);
	if(PlayerToPoint(10.0,playerid,1779.2051,-1556.7195,-49.6550))  Till(1, earn);
	if(PlayerToPoint(10.0,playerid,496.3752,-76.0410,998.7578))     Till(2, earn);
	if(PlayerToPoint(10.0,playerid,1392.5297,-1893.1754,17.4266))   Till(26,earn);
	if(PlayerToPoint(25.0,playerid,1291.1887,-1869.6744,13.5659))   Till(27,earn); // cambiar coordenadas a nuevo negoció
	return 0;
}

public UpdateBizz()
{
	new idx, File: file2, coordsstring[256];
	while (idx < sizeof(BizzInfo))
	{
		format(coordsstring, sizeof(coordsstring), "%d,%s,%s,%s,%f,%f,%f,%d,%d,%d,%d\n",
			BizzInfo[idx][bOwned],
			BizzInfo[idx][bOwner],
			BizzInfo[idx][bName],
			BizzInfo[idx][bExtortion],
			BizzInfo[idx][bEntrancex],
			BizzInfo[idx][bEntrancey],
			BizzInfo[idx][bEntrancez],
			BizzInfo[idx][bLevelNeeded],
			BizzInfo[idx][bBuyPrice],
			BizzInfo[idx][bTill],
			BizzInfo[idx][bTillEx]);

		if(idx == 0)	file2 = fopen("bizz.cfg", io_write);
		else			file2 = fopen("bizz.cfg", io_append);

		fwrite(file2, coordsstring);
		idx++;
		fclose(file2);
	}
}

//Comandos de negocios
zcmd(comprarnegocio, playerid, params[])
{
	for(new b = 0; b < sizeof(BizzInfo); b++)
	{
		new string[128];
		if(PlayerToPoint(2.0, playerid, BizzInfo[b][bEntrancex], BizzInfo[b][bEntrancey], BizzInfo[b][bEntrancez]))
		{
			if(BizzInfo[b][bOwned] == 1) return Message(playerid, COLOR_RED2, "¡Este negocio ya tiene dueño!");
			if(PlayerInfo[playerid][pPbizzkey] != 9999) return Message(playerid, COLOR_RED2, "¡Ya posees un negocio!");
			if(PlayerInfo[playerid][pLevel] < BizzInfo[b][bLevelNeeded])
			{
				format(string, sizeof(string), "Este negocio requiere que seas nivel %d", BizzInfo[b][bLevelNeeded]);
				Message(playerid, COLOR_RED2, string);
				return 1;
			}
			if(GetPlayerMoney(playerid) >= BizzInfo[b][bBuyPrice])
			{
				PlayerInfo[playerid][pPbizzkey] = b;
				BizzInfo[b][bOwned] = 1;
				strmid(BizzInfo[b][bOwner], PlayerName(playerid), 0, strlen(PlayerName(playerid)), 255);
				Bought(playerid, BizzInfo[b][bBuyPrice]);
				Message(playerid, COLOR_WHITE, "Felicidades, has adquirido este negocio. Utiliza /ayuda negocio");
				OnBizzTextdrawUpdate(b);
				UpdateBizz();
				return 1;
			} else Message(playerid, COLOR_RED2, "No tienes los fondos necesarios para adquirir este negocio.");
		}
	}
	return 1;
}
zcmd(vendernegocio, playerid, params[])
{
	new string[128], bid = PlayerInfo[playerid][pPbizzkey];
	if(PlayerInfo[playerid][pPbizzkey] == 9999) return Message(playerid, COLOR_RED2, "No tienes un negocio.");
	if(PlayerToPoint(3.0, playerid, BizzInfo[bid][bEntrancex],BizzInfo[bid][bEntrancey],BizzInfo[bid][bEntrancez]))
	{
		if(PlayerInfo[playerid][pPbizzkey] != 9999 && strcmp(PlayerName(playerid), BizzInfo[bid][bOwner], true) == 0)
		{
			new money = BizzInfo[bid][bBuyPrice]+BizzInfo[bid][bTill]+BizzInfo[bid][bTillEx];
			Earn(playerid, money);
			format(string, sizeof(string), "Has vendido tu negocio. Has recuperado %d$",money);
			Message(playerid, COLOR_WHITE, string);
			SellBizz(bid);
			PlayerInfo[playerid][pPbizzkey] = 9999;
		} else Message(playerid, COLOR_RED2, "Este negocio no está a tu nombre.");
	} else Message(playerid, COLOR_RED2, "¡Debes estar cerca de tu negocio para vernderlo!");
	return 1;
}
zcmd(sganancias, playerid, params[])
{
	new string[128], bid = PlayerInfo[playerid][pPbizzkey];
	if(PlayerInfo[playerid][pPbizzkey] == 9999) return Message(playerid, COLOR_RED, "No tienes un negocio.");
	if(PlayerToPoint(3.0, playerid, BizzInfo[bid][bEntrancex],BizzInfo[bid][bEntrancey],BizzInfo[bid][bEntrancez]))
	{
		if(!sscanf(params,"d",params[0])){
			if(params[0] < 1 || params[0] > BizzInfo[bid][bTill]) return Message(playerid, COLOR_GRAD2, "Cantidad incorrecta.");
			if(PlayerInfo[playerid][pPbizzkey] != 9999 && strcmp(PlayerName(playerid), BizzInfo[bid][bOwner], true) == 0)
			{

				Earn(playerid, params[0]);
				format(string, sizeof(string), "Has retirado %d$ de la caja fuerte de tu negocio.", params[0]);
				Message(playerid, COLOR_GRAD4, string);
				BizzInfo[bid][bTill] -= params[0];
			} else Message(playerid, COLOR_GRAD4, "Este negocio no está a tu nombre.");
		} else Message(playerid, COLOR_GRAD2, "Utilice: /sganancias <Cantidad>");
	} else Message(playerid, COLOR_GRAD4, "¡Debes estar cerca de tu negocio para retirar dinero de la caja!");
	return 1;
}
zcmd(binfo, playerid, params[])
{
	new string[128];
	for(new b = 0; b < sizeof(BizzInfo); b++)
	{
		if(PlayerToPoint(3.0, playerid, BizzInfo[b][bEntrancex], BizzInfo[b][bEntrancey], BizzInfo[b][bEntrancez]))
		{
			if(BizzInfo[b][bOwned] == 0)
			{
				Message(playerid, 0xAAAAFFFF, "- Negocio en Venta - Información");
				format(string, sizeof(string), "Nombre: %s", BizzInfo[b][bName]);
				Message(playerid, COLOR_WHITE, string);
				format(string, sizeof(string), "Valor: %d   -   Nivel: %d", BizzInfo[b][bBuyPrice],BizzInfo[b][bLevelNeeded]);
				Message(playerid, COLOR_WHITE, string);
				format(string, sizeof(string), "Negocio ID: %d", b);
				Message(playerid, COLOR_WHITE, string);
				Message(playerid, AMARILLO_ADMIN, "- Utiliza /comprarnegocio, para comprar este negocio.");
				return 1;
			}
			if(PlayerInfo[playerid][pPbizzkey] == b)
			{
				Message(playerid, 0xAAAAFFFF, "- Propiedad Privada -");
				format(string, sizeof(string), "Nombre: %s", BizzInfo[b][bName]);
				Message(playerid, COLOR_WHITE, string);
				format(string, sizeof(string), "Valor: %d   -   Nivel: %d", BizzInfo[b][bBuyPrice],BizzInfo[b][bLevelNeeded]);
				Message(playerid, COLOR_WHITE, string);
				format(string, sizeof(string), "Ganancias: %d", BizzInfo[b][bTill]);
				Message(playerid, COLOR_WHITE, string);
				return 1;
			} else Message(playerid, COLOR_GRAD2, "No hay información disponible para este negocio.");
		}
	}
	return 1;
}
zcmd(extorcion, playerid, params[]){
	new string[128], bkey = PlayerInfo[playerid][pPbizzkey];
	if(PlayerInfo[playerid][pPbizzkey] == 9999) return Message(playerid, COLOR_RED2, "¡No tienes un negocio!");
	if(!sscanf(params,"u",params[0])){
		if(PlayerToPoint(4.0, playerid, BizzInfo[bkey][bEntrancex], BizzInfo[bkey][bEntrancey], BizzInfo[bkey][bEntrancez])){
			if(IsPlayerConnected(params[0])){
				if(params[0] != playerid){
					if(ProxDetectorS(5.0, playerid, params[0])){
						if(strcmp("Nadie", BizzInfo[bkey][bExtortion], true) == 0){
							strmid(BizzInfo[bkey][bExtortion], PlayerName(params[0]), 0, strlen(PlayerName(params[0])), 255);
							format(string, sizeof(string), "Desde ahora {FF4FD4}%s {FFFFFF}será el extorcionista de tu negocio.", PlayerName(params[0]));
							Message(playerid, COLOR_WHITE, string);
							format(string, sizeof(string), "%s te ha puesto como extorcionista de su negocio, ahora puedes usar {FF4FD4}/recaudar.", PlayerName(playerid));
							Message(params[0], COLOR_WHITE, string);
							OnBizzTextdrawUpdate(bkey);
							UpdateBizz();
						} else Message(playerid, COLOR_GRAD2, "* Tu negocio ya tiene un extorcionista, primero usa /qextorcion.");
					} else Message(playerid, COLOR_GRAD2, "Jugador muy lejos.");
				} else Message(playerid, COLOR_GRAD2, "¡No te puedes poner como extorcionista tu mismo!");
			} else Message(playerid, COLOR_GRAD2, "Jugador no conectado.");
		} else Message(playerid, COLOR_GRAD2, "¡Debes estar cerca de tu negocio!");
	} else Message(playerid, COLOR_GRAD2, "Utilice: /extorcion <PlayerID>");
	return 1;
}
zcmd(qextorcion, playerid, params[]){
	new string[128], bkey = PlayerInfo[playerid][pPbizzkey];
	if(PlayerInfo[playerid][pPbizzkey] == 9999) return Message(playerid, COLOR_RED2, "¡No tienes un negocio!");
	if(!sscanf(params,"u",params[0])){
		if(PlayerToPoint(4.0, playerid, BizzInfo[bkey][bEntrancex], BizzInfo[bkey][bEntrancey], BizzInfo[bkey][bEntrancez])){
			if(IsPlayerConnected(params[0])){
				if(params[0] != playerid){
					if(ProxDetectorS(5.0, playerid, params[0])){
						if(strcmp(PlayerName(params[0]), BizzInfo[bkey][bExtortion], true) == 0){
							format(string, sizeof(string), "{FFFFFF}%s ha dedicido quitarte como extorcionista de su negocio.\n\t¿Estás de acuerdo con esta decisión?",PlayerName(playerid));
							ShowPlayerDialog(params[0], QUIT_EXTORTION, DIALOG_STYLE_MSGBOX, "Confirmacion Negocios", string, "Si", "No");
							Message(playerid, COLOR_GRAD4, "* La solicitud fue enviada, espera su respuesta.");
							QuitExtortion[params[0]] = bkey;
							ExtortionID[params[0]] = playerid;
						} else Message(playerid, COLOR_GRAD2, "* Esa persona no es extorcionista de tu negocio.");
					} else Message(playerid, COLOR_GRAD2, "Jugador muy lejos.");
				} else Message(playerid, COLOR_GRAD2, "¡No puedes usar este comando contigo mismo!");
			} else Message(playerid, COLOR_GRAD2, "Jugador no conectado.");
		} else Message(playerid, COLOR_GRAD2, "¡Debes estar cerca de tu negocio!");
	} else Message(playerid, COLOR_GRAD2, "Utilice: /qextorcion <PlayerID>");
	return 1;
}
zcmd(recaudar, playerid, params[])
{
	for(new b = 0; b < sizeof(BizzInfo); b++)
	{
		if(PlayerToPoint(2.0, playerid, BizzInfo[b][bEntrancex], BizzInfo[b][bEntrancey], BizzInfo[b][bEntrancez]))
		{
			if(strcmp(PlayerName(playerid), BizzInfo[b][bExtortion], true) == 0){
				if(BizzInfo[b][bTillEx] > 0){
					new string[128];
					Earn(playerid, BizzInfo[b][bTillEx]);
					format(string, sizeof(string), "Has recaudado {DC092F}%d$ {FFFFFF}de este negocio del cual eres extorcionista.", BizzInfo[b][bTillEx]);
					Message(playerid, COLOR_WHITE, string);
					BizzInfo[b][bTillEx] = 0;
				} else Message(playerid, COLOR_GRAD2, "* No hay dinero para recaudar.");
			}
		}
	}
	return 1;
}

//ADMINS
zcmd(bizz, playerid, params[])
{
	if(PlayerInfo[playerid][pAdminCP] < 2012) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	if(AntiAbusos[playerid] == 0){
		SendClientMessage(playerid, COLOR_GRAD2, "{FF2E3F}[Sistema Anti Abuso]{FFFFFF} {E5E5C5}No puedes usar este comando sin estar en /adminduty {E5BEC5}"); return 1;
	}
	if(sscanf(params, "i", params[0])) return Message(playerid, COLOR_GRAD2, "Utilice: /bizz <House ID>");
	if(params[0] < 0 || params[0] >= MAX_BIZZ) return Message(playerid, COLOR_GRAD2, "¡ID de negocio errónea!");
	SetPlayerPos(playerid,BizzInfo[params[0]][bEntrancex],BizzInfo[params[0]][bEntrancey],BizzInfo[params[0]][bEntrancez]);
	Message(playerid, COLOR_GRAD2, "¡Teleportado!");
	return 1;
}
zcmd(asellbizz, playerid, params[])
{
	if(PlayerInfo[playerid][pAdminCP] < 2012) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	if(!sscanf(params, "i", params[0]))
	{
		new string[128];
		if(params[0] >= MAX_BIZZ || params[0] < 0) return Message(playerid, COLOR_GRAD2, "ID incorrecto.");
		else{
			SellBizz(params[0]);
			format(string, sizeof(string), "Negocio %d vendido.", params[0]);
			Message(playerid, COLOR_GRAD2, string);
		}
	} else Message(playerid, COLOR_GRAD2, "Utilice: /asellbizz <BizzID>");
	return 1;
}
zcmd(bizzname, playerid, params[]){
	new string[128];
	if(PlayerInfo[playerid][pAdminCP] < 2014) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	for(new b = 0; b < sizeof(BizzInfo); b++){
		if(PlayerToPoint(3.0, playerid, BizzInfo[b][bEntrancex], BizzInfo[b][bEntrancey], BizzInfo[b][bEntrancez]))
		{
			if(!sscanf(params,"s[32]",params[0]))
			{
				strmid(BizzInfo[b][bName], params[0], 0, strlen(params[0]), 255);
				format(string, sizeof(string), "NegocioID: %d | Nuevo Nombre: %s", b, params[0]);
				Message(playerid, COLOR_GRAD2, string);
				OnBizzTextdrawUpdate(b);
			} else Message(playerid, COLOR_GRAD2, "Utilice: /bizzname <Nuevo Nombre>");
		}
	}
	return 1;
}
