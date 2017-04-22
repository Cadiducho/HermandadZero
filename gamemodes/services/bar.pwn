#if defined _negociosBar_included
	#endinput
#endif

#define _negociosBar_included

IsAtBar(playerid)
{
	if(IsPlayerConnected(playerid)){
		if(PlayerToPoint(10.0,playerid,496.3752,-76.0410,998.7578))         return 1;
		else if(PlayerToPoint(10.0,playerid,499.9703,-20.3358,1000.6797))   return 1;
		else if(PlayerToPoint(10.0,playerid,1779.2051,-1556.7195,-49.6550)) return 1;
		else if(PlayerToPoint(10.0,playerid,1215.9480,-13.3519,1000.9219))  return 1;
		else if(PlayerToPoint(10.0,playerid,1259.2834,-791.0306,1084.0078)) return 1;
		else if(PlayerToPoint(10.0,playerid,681.2731,-453.8256,-25.6172))   return 1;
		else if(PlayerToPoint(10.0,playerid,2246.8252,1661.6531,6.9099))    return 1;
		else if(PlayerToPoint(25.0,playerid,1291.1887,-1869.6744,13.5659))  return 1; 
		else if(PlayerToPoint(10.0,playerid,1392.5297,-1893.1754,17.4266))  return 1;
		else if(PlayerToPoint(15.0,playerid,1138.9811,-4.4557,1017.7200)) 	return 1;
	}
	return 0;
}

DialogCreate:barMenu(playerid)
{
	Dialog_Open(playerid, Dialog:barMenu, DIALOG_STYLE_LIST, "Menú del Día", "Platos Combinados & Tapas\nRefrescos & Bebidas & Vinos", "Ver", "Salir");
}
DialogCreate:barMenuBebidas(playerid)
{
	Dialog_Open(playerid, Dialog:barMenuBebidas, DIALOG_STYLE_LIST, "Bebidas y refrescos", "Cerveza (3$)\nVino tinto (5$)\nChampagne (6$)\nCoca-Cola (2$)\nAgua (1$)", "Pedir", "Atrás");
}
DialogCreate:barMenuTapas(playerid)
{
	Dialog_Open(playerid, Dialog:barMenuTapas, DIALOG_STYLE_LIST, "Platos del Día", "Huevos con Chorizo (20$)\nJamón Ibérico (30$)\nSopa de Marisco (25$)\nMacarrones a la Bolognesa (15$)\nEnsalada (10$)", "Pedir", "Atrás"); 
}

DialogResponse:barMenu(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
			case 0: Dialog_Show(playerid, Dialog:barMenuTapas);
			case 1: Dialog_Show(playerid, Dialog:barMenuBebidas);
		}
	}
	return 1;
}
DialogResponse:barMenuTapas(playerid, response, listitem, inputtext[]) 
{
	if(response)
	{
		new string[128];
		switch(listitem)
		{
			case 0:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+20); 	}
				format(string, sizeof(string), "* %s come un plato de Huevos con Chorizo", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 20);
				CheckBizz(playerid, 20);
				ApplyAnimation(playerid,"FOOD","EAT_Burger",4.1,0,1,1,0,0);
				if(PlayerDrunk[playerid] > 10)
				{

					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha comido", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 3;
					PlayerInfo[playerid][pEpilepsia] += 1;
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 1:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+30); 	}
				format(string, sizeof(string), "* %s come un plato de Jamón Ibérico", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 30);
				CheckBizz(playerid, 30);
				ApplyAnimation(playerid,"FOOD","EAT_Burger",4.1,0,1,1,0,0);
				if(PlayerDrunk[playerid] > 10)
				{

					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha comido", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 3;
					PlayerInfo[playerid][pEpilepsia] += 1;
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 2:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+25); 	}
				format(string, sizeof(string), "* %s come un plato de Sopa de Marisco", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 25);
				CheckBizz(playerid, 25);
				ApplyAnimation(playerid,"FOOD","EAT_Burger",4.1,0,1,1,0,0);
				if(PlayerDrunk[playerid] > 10)
				{
					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha comido", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 3;
					PlayerInfo[playerid][pEpilepsia] += 1;
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 3:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+15); 	}
				format(string, sizeof(string), "* %s come un plato de Macarrones a la Bolognesa", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 15);
				CheckBizz(playerid, 15);
				ApplyAnimation(playerid,"FOOD","EAT_Burger",4.1,0,1,1,0,0);
				if(PlayerDrunk[playerid] > 10)	
				{

					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha comido", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 3;
					PlayerInfo[playerid][pEpilepsia] += 1;
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 4:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+10); 	}
				format(string, sizeof(string), "* %s come un plato de Ensalada", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 10);
				CheckBizz(playerid, 10);
				ApplyAnimation(playerid,"FOOD","EAT_Burger",4.1,0,1,1,0,0);
				if(PlayerDrunk[playerid] > 10)
				{
					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha comido", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 3;
					PlayerInfo[playerid][pEpilepsia] += 1;
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
		}
	}
}
DialogResponse:barMenuBebidas(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new string[128];
		switch(listitem)
		{
			case 0:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+3); 	}
				format(string, sizeof(string), "* %s se bebe una Cerveza.", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 3);
				CheckBizz(playerid, 3);
				PlayerDrunk[playerid] += 2;
				SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_BEER);
				if(PlayerDrunk[playerid] > 10)

				{

					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha bebido.", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 5;
					PlayerInfo[playerid][pEpilepsia] += 1;
					PlayerDrunk[playerid]  += 1;
					SetPlayerSpecialAction(playerid,SPECIAL_ACTION_NONE);
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 1:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+5); 	}
				format(string, sizeof(string), "* %s se bebe una copa de Vino.", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 5);
				CheckBizz(playerid, 5);
				PlayerDrunk[playerid] += 1;
				SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_WINE);
				if(PlayerDrunk[playerid] > 10)

				{

					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha bebido.", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 5;
					PlayerInfo[playerid][pEpilepsia] += 1;
					PlayerDrunk[playerid]  += 1;
					SetPlayerSpecialAction(playerid,SPECIAL_ACTION_NONE);
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 2:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+6); 	}
				format(string, sizeof(string), "* %s se bebe una copa de Champagne.", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 6);
				CheckBizz(playerid, 6);
				PlayerDrunk[playerid] += 3;
				SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_WINE);
				if(PlayerDrunk[playerid] > 10)

				{

					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha bebido.", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerInfo[playerid][pCancer] += 5;
					PlayerInfo[playerid][pEpilepsia] += 1;
					PlayerDrunk[playerid]  += 1;
					SetPlayerSpecialAction(playerid,SPECIAL_ACTION_NONE);
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 3:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+2); 	}
				format(string, sizeof(string), "* %s se bebe una Coca-Cola.", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 2);
				CheckBizz(playerid, 2);
				SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_SPRUNK);
				if(PlayerDrunk[playerid] > 10)

				{

					SetHP(playerid, 20);
					format(string, sizeof(string), "* %s vomita lo que ha bebido.", PlayerName(playerid));
					ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					PlayerDrunk[playerid]  += 1;
					SetPlayerSpecialAction(playerid,SPECIAL_ACTION_NONE);
					ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
				}
			}
			case 4:
			{
				new Float:Health;
				GetPlayerHealth(playerid, Health);
				if(Health < 101)	{	SetHP(playerid, Health+1); 	}
				format(string, sizeof(string), "* %s se bebe una botella pequeña de agua.", PlayerName(playerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				Bought(playerid, 1);
				CheckBizz(playerid, 1);
				SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_SPRUNK);
				if(PlayerDrunk[playerid] > 0)

				{
					PlayerDrunk[playerid]  -= 1;
				}
			}
		}
	}
}
zcmd(comer, playerid, params[]){
	if(IsPlayerConnected(playerid)){
		if(!IsAtBar(playerid)) return Message(playerid, COLOR_GRAD2, "  No estas en un lugar donde beber!");
		if(GetPlayerMoney(playerid) < 0) return Message(playerid, COLOR_FADE2, "Camarero dice: Vete a otro lugar a comer gratis!");
		Dialog_Show(playerid, Dialog:barMenu);
	}
	return 1
}