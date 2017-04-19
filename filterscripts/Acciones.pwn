/*
		Acciones y Animaciones en español
 												by Texter
*/

#include <a_samp>
#include <zcmd>
#include <sscanf2>

#define Message         	SendClientMessage
#define CREMA				0xF5DEB3AA
#define NARANJA				0xFF7617FF
#define BLANCO				0xFFFFFFAA
#define GREY				0xBFC0C2FF

zcmd(rendirse, playerid, params[])
{
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)	{
		SetPlayerSpecialAction(playerid,SPECIAL_ACTION_HANDSUP);
	} return 1;
}
zcmd(borracho, playerid, params[])
{
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT){
		ApplyAnimation(playerid,"PED", "WALK_DRUNK",4.0,1,1,1,1,500);
	} return 1;
}
zcmd(hablar, playerid, params[])
{
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT){
		ApplyAnimation(playerid,"PED","IDLE_chat",4.1,7,5,1,1,1);
	} return 1;
}
zcmd(paja, playerid, params[])
{
	ApplyAnimation(playerid, "PAULNMAC", "wank_loop", 4.0, 1, 0, 0, 1, 0);
	return Message(playerid, CREMA, "Para seguir utiliza /irsecortao");
}
zcmd(irsecortao, playerid, pamras[])
{
	return ApplyAnimation(playerid, "PAULNMAC", "wank_out", 4.0, 0, 0, 0, 0, 0);
}
zcmd(arrestado, playerid, params[])
{
	return ApplyAnimation( playerid,"ped", "ARRESTgun", 4.0, 0, 1, 1, 1,500);
}
zcmd(amenazar, playerid, params[])
{
	return ApplyAnimation(playerid, "SHOP", "ROB_Loop_Threat", 4.0, 0, 0, 0, 1,500);
}
zcmd(superpatada, playerid, params[])
{
	return ApplyAnimation(playerid,"FIGHT_C","FightC_3",4.1,0,1,1,1,1);
}
zcmd(reirse, playerid, params[])
{
	return ApplyAnimation(playerid, "RAPPING", "Laugh_01", 4.0, 0, 0, 0, 0,0);
}
zcmd(agredido, playerid, params[])
{
	return ApplyAnimation(playerid, "POLICE", "crm_drgbst_01", 4.0, 0, 0, 0, 1, 0);
}
zcmd(herido, playerid, params[])
{
	ApplyAnimation(playerid, "SWEET", "LaFin_Sweet", 4.0, 0, 1, 1, 1, 0);
	return Message(playerid, CREMA, "Para continuar utiliza /agonizar");
}
zcmd(encender, playerid, params[])
{
	ApplyAnimation(playerid, "SMOKING", "M_smk_in", 4.000000, 0, 0, 1, 1, 0);
	return Message(playerid, CREMA, "Para continuar puedes utilizar /inhalar o /apagar");
}
zcmd(inhalar, playerid, params[])
{
	ApplyAnimation(playerid, "SMOKING", "M_smk_drag", 4.000000, 1, 0, 0, 0, -1);
	return Message(playerid, CREMA, "Para continuar utiliza /apagar");
}
zcmd(asustado, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","handscower",4.1,0,1,1,1,1);
}
zcmd(adolorido, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","KO_shot_stom",4.1,0,1,1,1,1);
}
zcmd(apagar, playerid, params[])
{
	return ApplyAnimation(playerid, "SMOKING", "M_smk_out", 4.000000, 0, 1, 1, 0, 0);
}
zcmd(vigilar, playerid, params[])
{
	return ApplyAnimation(playerid, "COP_AMBIENT", "Coplook_loop", 4.0, 1, 1, 1, 0, 4000);
}
zcmd(recostarse, playerid, params[])
{
	ApplyAnimation(playerid,"SUNBATHE", "Lay_Bac_in", 4.0, 0, 0, 0, 1, 0);
	return Message(playerid, CREMA, "Para ponerte de pie utiliza /pararse");
}
zcmd(pararse, playerid, params[])
{
	return ApplyAnimation(playerid,"SUNBATHE", "Lay_Bac_out", 4.0, 0, 0, 0, 0, 0);
}
zcmd(cubrirse, playerid, params[])
{
	return ApplyAnimation(playerid, "ped", "cower", 4.0, 1, 0, 0, 0, 0);
}
zcmd(fumar1, playerid, params[])
{
	return ApplyAnimation(playerid,"SMOKING", "M_smklean_loop", 4.0, 1, 0, 0, 0, 0);
}
zcmd(fumar2, playerid, params[])
{
	return ApplyAnimation(playerid,"SMOKING","F_smklean_loop", 4.0, 1, 0, 0, 0, 0);
}
zcmd(fumar3, playerid, params[])
{
	return ApplyAnimation(playerid,"SMOKING","M_smkstnd_loop", 4.0, 1, 0, 0, 0, 0);
}
zcmd(vomitar, playerid, params[])
{
	return ApplyAnimation(playerid, "FOOD", "EAT_Vomit_P", 3.0, 0, 0, 0, 0, 0);
}
zcmd(cenar, playerid, params[])
{
	return ApplyAnimation(playerid, "FOOD", "EAT_Burger", 3.00, 0, 0, 0, 0, 0);
}
zcmd(chao, playerid, params[])
{
	return ApplyAnimation(playerid, "KISSING", "BD_GF_Wave", 3.0, 0, 0, 0, 0, 0);
}
zcmd(palmada, playerid, params[])
{
	return ApplyAnimation(playerid, "SWEET", "sweet_ass_slap", 4.0, 0, 0, 0, 0, 0);
}
zcmd(agonizar, playerid, params[])
{
	return ApplyAnimation(playerid, "WUZI", "CS_Dead_Guy", 4.0, 0, 0, 0, 1, 0);
}
zcmd(levantarse, playerid, params[])
{
	return ApplyAnimation(playerid, "ped", "getup_front", 4.000000, 0, 0, 0, 0, 0);
}
zcmd(rodar, playerid, params[])
{
	ApplyAnimation(playerid,"MD_CHASE","MD_HANG_Lnd_Roll",4.1,0,1,1,1,0);
	return Message(playerid, CREMA, "Para ponerte de pie utiliza /levantarse");
}
zcmd(traficar, playerid, params[])
{
	return ApplyAnimation(playerid, "DEALER", "DEALER_DEAL", 4.0, 0, 0, 0, 0, 0);
}
zcmd(beso, playerid, params[])
{
	return ApplyAnimation(playerid, "KISSING", "Playa_Kiss_02", 4.0, 0, 0, 0, 0, 0);
}
zcmd(crack, playerid, params[])
{
	return ApplyAnimation(playerid, "CRACK", "crckdeth2", 4.0, 0, 0, 0, 1, 0);
}
zcmd(mear, playerid, params[])
{
	return ApplyAnimation(playerid, "PAULNMAC", "Piss_in", 4.0, 0, 0, 0, 0, 0);
}
zcmd(patada, playerid, params[])
{
	return ApplyAnimation(playerid,"FIGHT_C","FightC_2",4.1,7,5,1,1,1);
}
zcmd(sentarse, playerid, params[])
{
	return ApplyAnimation(playerid, "SUNBATHE", "ParkSit_M_in", 4.000000, 0, 1, 1, 1, 0);
}
zcmd(depie, playerid, params[])
{
	return ApplyAnimation(playerid, "ped", "SEAT_up", 4.000000, 0, 1, 1, 1, 0);
}
zcmd(fokear, playerid, params[])
{
	return ApplyAnimation( playerid,"ped", "fucku", 4.0, 0, 1, 1, 1, 1 );
}
zcmd(siquiero, playerid, params[])
{
	return ApplyAnimation(playerid, "GANGS", "Invite_Yes", 4.0, 0, 0, 0, 0, 0);
}
zcmd(noquiero, playerid, params[])
{
	return ApplyAnimation(playerid, "GANGS", "Invite_No", 4.0, 0, 0, 0, 0, 0);
}
zcmd(comerciar, playerid, params[])
{
	return ApplyAnimation(playerid, "DEALER", "shop_pay", 4.000000, 0, 1, 1, 0, 0);
}
zcmd(piquero, playerid, params[])
{
	return ApplyAnimation(playerid, "DAM_JUMP", "DAM_Launch", 4.0, 0, 1, 1, 1, 1);
}
zcmd(taichi, playerid, params[])
{
	return ApplyAnimation(playerid, "PARK", "Tai_Chi_Loop",  4.1,7,5,1,1,1);
}
zcmd(beber, playerid, params[])
{
	return ApplyAnimation(playerid, "BAR", "dnk_stndM_loop", 4.0, 0, 1, 1, 0, 4000);
}
zcmd(boxear, playerid, params[])
{
	return ApplyAnimation(playerid, "GYMNASIUM", "gym_shadowbox",  4.1,7,5,1,1,1);
}
zcmd(fuerza, playerid, params[])
{
	return ApplyAnimation(playerid,"benchpress","gym_bp_celebrate",4.1,0,1,1,1,1);
}
zcmd(pelea, playerid, params[])
{
	ApplyAnimation(playerid, "ped", "FIGHTIDLE", 4.000000, 0, 1, 1, 1, 1);
	return Message(playerid, CREMA, "Para continuar utiliza /boxear");
}
zcmd(recojer, playerid, params[])
{
	ApplyAnimation(playerid, "BSKTBALL", "BBALL_pickup", 4.000000, 0, 1, 1, 1, 1);
	return Message(playerid, CREMA, "Para continuar utiliza /botear");
}
zcmd(botear, playerid, params[])
{
	ApplyAnimation(playerid, "BSKTBALL", "BBALL_walk", 4.000000, 1, 1, 1, 1, 500);
	return Message(playerid, CREMA, "Para continuar utiliza /clavarse o /lanzar");
}
zcmd(clavarse, playerid, params[])
{
	return ApplyAnimation(playerid, "BSKTBALL", "BBALL_def_jump_shot", 4.0, 0, 1, 1, 1, 500);
}
zcmd(lanzar, playerid, params[])
{
	return ApplyAnimation(playerid, "BSKTBALL", "BBALL_Jump_Shot", 4.0, 0, 1, 1, 1, 500);
}
zcmd(hombre, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","WALK_gang1",4.0,1,1,1,1,500);
}
zcmd(mujer, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","WOMAN_walkpro",4.0,1,1,1,1,500);
}
zcmd(sanar, playerid, params[])
{
	return ApplyAnimation(playerid,"MEDIC","CPR",4.1,0,0,0,0,0);
}
zcmd(llorar, playerid, params[])
{
	return ApplyAnimation(playerid,"GRAVEYARD","mrnF_loop",4.1,0,0,0,0,0);
}
zcmd(dormir, playerid, params[])
{
	return ApplyAnimation(playerid,"INT_HOUSE","BED_In_R",4.1,0,0,0,1,0);
}
zcmd(detener, playerid, params[])
{
	return ApplyAnimation(playerid,"POLICE","CopTraf_Stop",4.1,0,0,0,0,0);
}
zcmd(rapear, playerid, params[])
{
	return ApplyAnimation(playerid,"RAPPING","RAP_B_Loop",4.0,1,0,0,0,8000);
}
zcmd(alzar, playerid, params[])
{
	return ApplyAnimation(playerid,"GHANDS","gsign2LH",4.1,0,1,1,1,1);
}
zcmd(cansado, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","WOMAN_runfatold",4.1,7,5,1,1,1);
}
zcmd(bomba, playerid, params[])
{
	return ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 1, 1, 0,0);
}
zcmd(sapiar, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","roadcross_female",4.1,0,0,0,0,0);
}
zcmd(asiento, playerid, params[])
{
	ApplyAnimation(playerid, "ped", "SEAT_down", 4.000000, 0, 0, 0, 1, 0);
	return Message(playerid, CREMA, "Para ponerte de pie utiliza /depie");
}
zcmd(servirse, playerid, params[])
{
	return ApplyAnimation(playerid,"BAR","Barcustom_get",4.1,0,0,0,0,0);
}
zcmd(servir, playerid, params[])
{
	return ApplyAnimation(playerid,"BAR","Barserve_give",4.1,0,0,0,0,0);
}
zcmd(asiento2, playerid, params[])
{
	ApplyAnimation(playerid,"Attractors","Stepsit_in",4.1,0,0,0,1,0);
	return Message(playerid, CREMA, "Para ponerte de pie utiliza /depie2");
}
zcmd(depie2, playerid, params[])
{
	return ApplyAnimation(playerid,"Attractors","Stepsit_out",4.1,0,0,0,0,0);
}
zcmd(mmm, playerid, params[])
{
	return ApplyAnimation(playerid,"COP_AMBIENT","Coplook_think",4.1,0,0,0,0,0);
}
zcmd(saludo, playerid, params[])
{
	return Message(playerid, CREMA, "Utiliza /saludo[1-4]");
}
zcmd(saludo1, playerid, params[])
{
	return ApplyAnimation(playerid,"GANGS","hndshkaa",4.1,0,0,0,0,0);
}
zcmd(saludo2, playerid, params[])
{
	return ApplyAnimation(playerid,"GANGS","hndshkba",4.1,0,0,0,0,0);
}
zcmd(saludo3, playerid, params[])
{
	return ApplyAnimation(playerid,"GANGS","hndshkca",4.1,0,0,0,0,0);
}
zcmd(saludo4, playerid, params[])
{
	return ApplyAnimation(playerid,"GANGS","hndshkfa_swt",4.1,0,0,0,0,0);
}
zcmd(strip, playerid, params[])
{
	return Message(playerid, GREY, "Utiliza /strip[1-20]");
}
zcmd(strip1, playerid, params[])
{
	return ApplyAnimation(playerid,"CAR","flag_drop",4.1,0,1,1,1,1);
}
zcmd(strip2, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","PUN_CASH",4.1,7,5,1,1,1);
}
zcmd(strip3, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","PUN_HOLLER",4.1,7,5,1,1,1);
}
zcmd(strip4, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","PUN_LOOP",4.1,7,5,1,1,1);
}
zcmd(strip5, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_A",4.1,7,5,1,1,1);
}
zcmd(strip6, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_B",4.1,7,5,1,1,1);
}
zcmd(strip7, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_C",4.1,7,5,1,1,1);
}
zcmd(strip8, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_D",4.1,7,5,1,1,1);
}
zcmd(strip9, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_E",4.1,7,5,1,1,1);
}
zcmd(strip10, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_F",4.1,7,5,1,1,1);
}
zcmd(strip11, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_G",4.1,7,5,1,1,1);
}
zcmd(strip12, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_B2A",4.1,0,1,1,1,1);
}
zcmd(strip13, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","strip_E",4.1,7,5,1,1,1);
}
zcmd(strip14, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_B2C",4.000000, 0, 1, 1, 1, 0);
}
zcmd(strip15, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_C1",4.000000, 0, 1, 1, 1, 0);
}
zcmd(strip16, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_C2",4.000000, 0, 1, 1, 1, 0);
}
zcmd(strip17, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_C2B",4.1,7,5,1,1,1);
}
zcmd(strip18, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_Loop_A",4.1,7,5,1,1,1);
}
zcmd(strip19, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_Loop_C",4.1,7,5,1,1,1);
}
zcmd(strip20, playerid, params[])
{
	return ApplyAnimation(playerid,"STRIP","STR_Loop_B",4.1,7,5,1,1,1);
}
zcmd(echarse, playerid, params[])
{
	return ApplyAnimation(playerid,"SUNBATHE","SitnWait_in_W",4.000000, 0, 0, 0, 1, 0);
}
zcmd(asientosexi, playerid, params[])
{
	ApplyAnimation(playerid,"SUNBATHE","ParkSit_W_idleA",4.000000, 0, 1, 1, 1, 0);
	return Message(playerid, CREMA, "Para ponerte de pie utiliza /pararse");
}
zcmd(skate, playerid, params[])
{
	return Message(playerid, GREY, "Utiliza /skate[1-3]");
}
zcmd(skate1, playerid, params[])
{
	return ApplyAnimation(playerid,"SKATE","skate_run",4.0,1,1,1,1,500);
}
zcmd(skate2, playerid, params[])
{
	return ApplyAnimation(playerid,"SKATE","skate_sprint",4.0,1,1,1,1,500);
}
zcmd(skate3, playerid, params[])
{
	return ApplyAnimation(playerid,"SKATE","skate_idle",4.0,1,1,1,1,500);
}
zcmd(danzar, playerid, params[])
{
	return Message(playerid, GREY, "Utiliza /danzar[0-12]");
}
zcmd(danzar0, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","bd_clap",4.1,7,5,1,1,1);
}
zcmd(danzar1, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","bd_clap1",4.1,7,5,1,1,1);
}
zcmd(danzar2, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","dance_loop",4.1,7,5,1,1,1);
}
zcmd(danzar3, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","DAN_Down_A",4.1,7,5,1,1,1);
}
zcmd(danzar4, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","DAN_Left_A",4.1,7,5,1,1,1);
}
zcmd(danzar5, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","DAN_Loop_A",4.1,7,5,1,1,1);
}
zcmd(danzar6, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","DAN_Right_A",4.1,7,5,1,1,1);
}
zcmd(danzar7, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","DAN_Up_A",4.1,7,5,1,1,1);
}
zcmd(danzar8, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","dnce_M_a",4.1,7,5,1,1,1);
}
zcmd(danzar9, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","dnce_M_b",4.1,7,5,1,1,1);
}
zcmd(danzar10, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","dnce_M_c",4.1,7,5,1,1,1);
}
zcmd(danzar11, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","dnce_M_d",4.1,7,5,1,1,1);
}
zcmd(danzar12, playerid, params[])
{
	return ApplyAnimation(playerid,"DANCING","dnce_M_e",4.1,7,5,1,1,1);
}
zcmd(taxi, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","IDLE_taxi",4.1,0,1,1,1,1);
}
zcmd(seacabo, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","Shove_Partial",4.1,0,1,1,1,1);
}
zcmd(tullio, playerid, params[])
{
	return ApplyAnimation(playerid,"PED","WALK_old",4.0,1,1,1,1,500);
}
zcmd(asco, playerid, params[])
{
	return ApplyAnimation(playerid,"FOOD","EAT_Vomit_SK",4.1,0,1,1,1,1);
}
zcmd(quepa, playerid, params[])
{
	return ApplyAnimation(playerid,"GANGS","hndshkea",4.1,0,1,1,1,1);
}
zcmd(wooo, playerid, params[])
{
	return ApplyAnimation(playerid,"ON_LOOKERS","shout_02",4.1,7,5,1,1,1);
}
zcmd(quepasa, playerid, params[])
{
	return ApplyAnimation(playerid,"GHANDS","gsign1LH",4.1,0,1,1,1,1);
}
zcmd(comodo, playerid, params[])
{
	return ApplyAnimation(playerid,"INT_HOUSE","LOU_In",4.1,0,1,1,1,1);
}
zcmd(p1, playerid, params[])
{
 	return ApplyAnimation(playerid,"Freeweights", "gym_free_B",4.0,1,1,1,1,500);
}
zcmd(bailar, playerid, params[]){
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT){
 		if(!sscanf(params, "d", params[0]))
		{
		    switch(params[0])
		    {
		        case 1: SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE1);
		        case 2: SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE2);
		        case 3: SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DANCE3);
		        default: Message(playerid, GREY, "Utiliza /bailar [1-3]");
      		}
		} else Message(playerid, GREY, "Utiliza /bailar [1-3]");
	}return 1;
}
zcmd(stop, playerid, params[])
{
	ClearAnimations(playerid);
	return 1;
}
zcmd(acciones, playerid, params[])
{
	Message(playerid, NARANJA, "CiudadProhibida - Acciones disponibles:");
	Message(playerid, BLANCO, "/rendirse /borracho /hablar /paja /irsecortao /arrestado");
	Message(playerid, BLANCO, "/amenazar /superpatada /reirse /agredido /herido /encender");
	Message(playerid, BLANCO, "/inhablar /asustado /adolorido /apagar /vigilar /recostarse");
	Message(playerid, BLANCO, "/pararse /cubrirse /fumar[1-3] /vomitar /cenar /chao /palmada");
	Message(playerid, BLANCO, "/agonizar /levantarse /rodar /traficar /beso /crack /mear /p1");
	Message(playerid, BLANCO, "/bailar /patada /sentarse /depie /fokear /siquiero /noquiero");
	return Message(playerid, CREMA, "Utiliza /acciones2 para ver mas acciones disponibles.");
}
zcmd(acciones2, playerid, params[])
{
	Message(playerid, NARANJA, "CiudadProhibida - Acciones disponibles 2:");
	Message(playerid, BLANCO, "/comerciar /piquero /taichi /beber /boxear /fuerza /pelea");
	Message(playerid, BLANCO, "/recoger /botear /clavarse /lanzar /hombre /mujer /sanar");
	Message(playerid, BLANCO, "/llorar /dormir /detener /rapear /alzar /cansado /bomba");
	Message(playerid, BLANCO, "/sapiar /asiento /servirse /servir /asiento2 /depie2 /mmm");
	Message(playerid, BLANCO, "/saludo /strip /echarse /asientosexi /skate /danzar /taxi");
	Message(playerid, BLANCO, "/seacabo /correr /tullio /asco /quepa /wooo /quepasa /comodo");
	return Message(playerid, CREMA, "Utiliza /stop para detener las animaciones.");
}
