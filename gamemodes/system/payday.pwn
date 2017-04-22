
#if defined _payday_included
	#endinput
#endif

#define _payday_included

new synctimer;
new PayDayLeft = 60;
forward PayDay();
forward SyncUp();
forward SyncTime();

//Llamadas del GM
PayDay_OnGameModeInit() {
	synctimer = SetTimer("SyncUp", 60000, 1);
}

PayDay_GameModeExitFunc() {
	KillTimer(synctimer);
}

//Funciones de PayDay
public SyncUp()
{
	SyncTime();
	DollahScoreUpdate();

	PayDayLeft -= 1;
	if(PayDayLeft == 0)	PayDay();

	Loop(i, MAX_PLAYERS)
	{
		if(AFK[i] > 1) AFK[i] --;
	}
}

public SyncTime()
{
	new tmphour, tmpminute, tmpsecond;
	gettime(tmphour, tmpminute, tmpsecond);
	FixHour(tmphour);
	tmphour = shifthour;
	if ((tmphour > ghour) || (tmphour == 0 && ghour == 23))
	{
		ghour = tmphour;
		if (realtime)
		{
			SetWorldTime(tmphour);
		}
		if(tmphour == 10 || tmphour == 15 ||tmphour == 20 || tmphour == 3)
		{
			Lottery_OnSyncTime();
		}
	}
}

public PayDay()
{
	TillTimer();
	new string[68];
	new account, interest, rent, key, secur, checks;
	PayDayLeft = 60;
	for(new i ; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			if(PlayerInfo[i][pLevel] > 0)
			{
				account = PlayerInfo[i][pAccount];
				key = PlayerInfo[i][pPhousekey];
				rent = PlayerInfo[i][pRent];
				switch (PlayerInfo[i][pDonateT]) {
					case 2: checks = 2500;
					case 1: checks = 2000;
					case 0: checks = 1000;
				}
				account += checks;
				interest = PlayerInfo[i][pAccount]/20000;
				PlayerInfo[i][pAccount] = account+interest;
				Tax += TaxValue;
				PlayerInfo[i][pAccount] -= TaxValue;
				switch(PlayerInfo[i][pSeguro])
				{
					case 0: secur = 0;
					case 1: secur = 200;
				}
				PlayerInfo[i][pAccount] -= secur;
				Fondos[SAMUR] += secur;
				if(key != 9999)
				{
					if(strcmp(PlayerName(i), HouseInfo[key][hOwner], true) == 0)
					{
						rent = 0;
					}
					else if(rent > PlayerInfo[i][pAccount])
					{
						HouseInfo[key][hRooms] += 1;
						PlayerInfo[i][pPhousekey] = 9999;
						Message(i, COLOR_WHITE, "No puedes pagar el alquiler del cuarto, despídete.");
						PlayerInfo[i][pRent] = 0;
						rent = 0;
					}
					HouseInfo[key][hRentabil] = HouseInfo[key][hRentabil]+rent;
				}
				PlayerInfo[i][pAccount] -= rent;
				new ebill = 20;
				if(PlayerInfo[i][pPhousekey] != 9999)
				{
					PlayerInfo[i][pAccount] -= ebill;
				}
				else
				{
					ebill = 0;
				}
				Message(i, COLOR_ASKQ, "|___ Estado Bancario ___|");
				format(string, sizeof(string), "  Pago: $%d   Impuestos: -$%d", checks, TaxValue);
				Message(i, COLOR_WHITE, string);
				format(string, sizeof(string), "  Gastos de Domicilio: -$%d", ebill+rent);
				Message(i, COLOR_GRAD1, string);
				format(string, sizeof(string), "  Seguro Medico: -$%d", secur);
				Message(i, COLOR_GRAD2, string);
				format(string, sizeof(string), "  Interés $%d", interest);
				Message(i, COLOR_GRAD2, string);
				format(string, sizeof(string), "  Gastos totales: $%d", TaxValue + ebill + rent + secur);
				Message(i, COLOR_GRAD3, string);
				format(string, sizeof(string), "  Beneficios totales: $%d", checks+interest-ebill-TaxValue-rent-secur);
				Message(i, COLOR_GRAD3, string);
				Message(i, 0xB6B6B6FF, "|--------------------------------------|");
				format(string, sizeof(string), "  Antiguo Balance: %d$", PlayerInfo[i][pAccount] - checks - interest + ebill + TaxValue + rent + secur);
				Message(i, 0x00711DFF, string);
				format(string, sizeof(string), "  Nuevo Balance: %d$", PlayerInfo[i][pAccount]);
				Message(i, 0x00CC00FF, string);
				
				//////////PAGAS A FACCION/////////////// POR LUCAS_NECK
				if(PlayerInfo[i][pMember] == 1)
				{
					if(PlayerInfo[i][pRank] <= 1)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $200");
						SendClientMessage(i, COLOR_WHITE, "Por ser policia de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 200);
					}
					else if(PlayerInfo[i][pRank] <= 3)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $500");
						SendClientMessage(i, COLOR_WHITE, "Por ser policia de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 500);
					}
					else if(PlayerInfo[i][pRank] <= 5)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $600");
						SendClientMessage(i, COLOR_WHITE, "Por ser policia de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 600);
					}
					else if(PlayerInfo[i][pRank] >= 6)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $800");
						SendClientMessage(i, COLOR_WHITE, "Por ser policia de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 800);
					}
				}

				if(PlayerInfo[i][pLeader] == 1 )
				{
					SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
					SendClientMessage(i, COLOR_WHITE, "Te han acreditado $1000");
					SendClientMessage(i, COLOR_WHITE, "Por ser policia de Los Santos");
					SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
					GivePlayerMoney(i, 1000);
				}

				///////////////////////////////////////////

				if(PlayerInfo[i][pMember] == 3 || PlayerInfo[i][pMember] == 24)
				{
					if(PlayerInfo[i][pRank] <= 1)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $200");
						SendClientMessage(i, COLOR_WHITE, "Por ser FBI/Militar de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 200);
					}
					else if(PlayerInfo[i][pRank] <= 2)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $300");
						SendClientMessage(i, COLOR_WHITE, "Por ser FBI/Militar de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 300);
					}
					else if(PlayerInfo[i][pRank] <= 3)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $400");
						SendClientMessage(i, COLOR_WHITE, "Por ser FBI/Militar de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 400);
					}
					else if(PlayerInfo[i][pRank] >= 5)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $500");
						SendClientMessage(i, COLOR_WHITE, "Por ser FBI/Militar de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 500);
					}
				}
				if(PlayerInfo[i][pLeader] == 3 || PlayerInfo[i][pLeader] == 24)
				{
					SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
					SendClientMessage(i, COLOR_WHITE, "Te han acreditado $1000");
					SendClientMessage(i, COLOR_WHITE, "Por ser FBI/Militar de Los Santos");
					SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
					GivePlayerMoney(i, 1000);
				}

				if(PlayerInfo[i][pMember] == 4)
				{
					if(PlayerInfo[i][pRank] <= 1)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $200");
						SendClientMessage(i, COLOR_WHITE, "Por ser Medico de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 200);
					}
					else if(PlayerInfo[i][pRank] <= 3)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $300");
						SendClientMessage(i, COLOR_WHITE, "Por ser Medico de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 300);
					}
					else if(PlayerInfo[i][pRank] <= 4)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $400");
						SendClientMessage(i, COLOR_WHITE, "Por ser Medico de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 400);
					}
					else if(PlayerInfo[i][pRank] <= 5)
					{
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						SendClientMessage(i, COLOR_WHITE, "El jefe te acreditó $600");
						SendClientMessage(i, COLOR_WHITE, "Por ser Medico de Los Santos");
						SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
						GivePlayerMoney(i, 600);
					}
				}
				if(PlayerInfo[i][pLeader] == 4)
				{
					SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
					SendClientMessage(i, COLOR_WHITE, "Te han acreditado $900");
					SendClientMessage(i, COLOR_WHITE, "Por ser Jefe Medico de Los Santos");
					SendClientMessage(i, COLOR_RED, "|-------------------------------------------------------|");
					GivePlayerMoney(i, 900);
				}

				format(string, sizeof(string), "~h~~g~Dia de paga, gracias por preferirnos!");
				GameTextForPlayer(i, string, 5000, 1);
				cNicotina[i] = 0;	cEnergysil[i] = 0;	cSIDA[i] = 0;	cCancer[i] = 0;		cEpilepsia[i] = 0;
				PlayerInfo[i][pRob] = 0;
				PlayerInfo[i][pConnectTime] += 1;
				PlayerInfo[i][pSuciedad] += 5;
				PlayerInfo[i][pContract] -= 1;

				//Dar experiencia con multiplicadores
				new nuevaExperiencia = 1;
				switch (PlayerInfo[i][pDonateT]) {
					case 1: nuevaExperiencia *= 2;
					case 2: nuevaExperiencia *= 3;
				}
				if(DobleOn == 1) nuevaExperiencia *= 2;
				if(TripleOn == 1) nuevaExperiencia *= 3;

				PlayerInfo[i][pExp] += nuevaExperiencia;


				if(Advertencia_Debe[i]==1)
				{
					SendClientMessage(i, COLOR_LIGHTRED, "Usted fallo en pagar su deuda, estara uno segundos en la prisión.");
					GameTextForPlayer(i, "~r~Atrapado!", 2000, 1);
					SetPosEx(i,197.5159,174.6245,1003.0234,3.1802,3,0);
					PlayerInfo[i][pJailed] = 3
					PlayerInfo[i][pJailTime] = 240;
					ResetPlayerWeapons(i);
					ResetPlayerMoney(i);
					PlayerInfo[i][pBusqueda] = 0;
					SetPlayerWantedLevel(i, 0);
					format(string, sizeof(string), "Usted es encarcelado por %d segundos. Fianza: Deuda con el Estado", PlayerInfo[i][pJailTime]);
					SendClientMessage(i, COLOR_LIGHTBLUE, string);
					Advertencia_Debe[i] = 0;
				}
			}
		}
	}
	PayDayLeft = 60;
	return 1;
}

//Comandos de PayDay

zcmd(setpayday, playerid, params[])
{
	if(PlayerInfo[playerid][pAdminCP] < 2013) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	if(!sscanf(params, "i", params[0]))
	{
		new string[32];
		PayDayLeft = params[0];
		format(string, sizeof(string), "PayDay left: %d minutes", PayDayLeft);
		Message(playerid, COLOR_GRAD2, string);
	}   else Message(playerid, COLOR_GRAD2, "Utiliza: /setpayday <MinutesLeft>");
	return 1;
}
zcmd(payday, playerid, params[])
{
	new string[64];
	format(string, sizeof(string), "* Faltan %d minutos para obtener el PayDay",PayDayLeft);
	return Message(playerid, COLOR_GRAD2, string);
}