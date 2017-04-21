
#if defined _lottery_included
	#endinput
#endif

#define _lottery_included

forward Lotto(number);

//Se ejecuta en SyncTime (payday.pwn) 
Lottery_OnSyncTime() {
	new string[80];
	format(string, sizeof(string), "{2F99B5}Noticias de la Loteria: {FFFFFF}Hemos empesado la elección de la loteria.");
	OOCOff(COLOR_WHITE, string);
	new rand = random(51);
	if(rand == 0) { rand += 1; }
	Lotto(rand);
}

//Función de loteria
public Lotto(number)
{
	new JackpotFallen = 0;
	new string[100];
	format(string, sizeof(string), "Noticias de la Loteria: {FFFFFF}Hoy en dia el numero ganador ha recaido en: {FF0000}%d", number);
	OOCOff(COLOR_ORANGE, string);
	for(new i = 0; i < MAX_PLAYERS; i++){
		if(IsPlayerConnected(i)){
			if(PlayerInfo[i][pLottoNr] > 0){
				if(PlayerInfo[i][pLottoNr] == number){
					JackpotFallen = 1;
					format(string, sizeof(string), "Noticias de la Loteria: %s ha ganado el acumulado de $%d .", PlayerName(i), Jackpot);
					OOCOff(COLOR_DBLUE, string);
					format(string, sizeof(string), "* Usted ha ganado $%d con su billete de loteria.", Jackpot);
					Message(i, COLOR_YELLOW, string);
					GivePlayerMoney(i, Jackpot);
				}
				else
				{
					Message(i, COLOR_WHITE, "* Usted no ha ganado con su billete de loteria este momento.");
				}
			}
			PlayerInfo[i][pLottoNr] = 0;
		}
	}
	if(JackpotFallen)
	{
		new rand = random(20000); rand += 5000;
		Jackpot = rand;
		SaveStuff();
		format(string, sizeof(string), "El nuevo Jackpot se ha iniciado con {9EC73D}$%d", Jackpot);
		OOCOff(0xFFFFFFFF, string);
	}
	else
	{
		new rand = random(5000); rand += 2158;
		Jackpot += rand;
		SaveStuff();
		format(string, sizeof(string), "El bote se ha aumentado a {9EC73D}$%d", Jackpot);
		OOCOff(0xFFFFFFFF, string);
	}
	return 1;
}

//Dialogs de compra
DialogCreate:lottoBuy(playerid)
{
	Dialog_Open(playerid, Dialog:lottoBuy, DIALOG_STYLE_INPUT, "Lotería Nacional", "Inserta un número entre 1 y 50. Mucha Suerte!", "Comprar", "Cancelar");
}

DialogResponse:lottoBuy(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(strval(inputtext) > 0 && strval(inputtext) < 51)
		{
			PlayerInfo[playerid][pLottoNr] = strval(inputtext);
			Message(playerid, COLOR_WHITE, "Lotería comprada!");
			Bought(playerid, 5);
			if(PlayerToPoint(5.0,playerid,-22.3260,-138.6221,1003.5469))    Till(3, 5);
			if(PlayerToPoint(5.0,playerid,-25.6448,-56.6718,1003.5469))  	Till(4, 5);
			if(PlayerToPoint(5.0,playerid,-29.3554,-28.8020,1003.5573))    	Till(5, 5);
		}
	}
}

//Comando admin para ejecutar loteria
zcmd(loteria, playerid, params[])
{
	if(PlayerInfo[playerid][pAdminCP] < 6) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	if(AntiAbusos[playerid] == 0){
		SendClientMessage(playerid, COLOR_GRAD2, "{FF2E3F}[Sistema Anti Abuso]{FFFFFF} {E5E5C5}No puedes usar este comando sin estar en /adminduty {E5BEC5}"); return 1;
	}
	else
	{
		new string[128];
		format(string, sizeof(string), "{2F99B5}Noticias de la Loteria: {FFFFFF}Hemos empezado la elección de la loteria.");
		OOCOff(COLOR_WHITE, string);
		new rand = random(51);
		if(rand == 0) { rand += 1; }
		Lotto(rand);
	}
	return 1;
}