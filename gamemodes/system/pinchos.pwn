#if defined _pinchos_included
	#endinput
#endif

#define _pinchos_included

new iPickups[MAX_PICKUPS][5];

forward DestroyStinger(stingerid);

Pinchos_OnGameModeInit()
{
	print(" >>> Spike Strips loaded.");
	for(new i = 0; i < sizeof(iPickups); i++){
		iPickups[i][0] = -1;
		iPickups[i][1] = -1;
		iPickups[i][2] = -1;
		iPickups[i][3] = -1;
		iPickups[i][4] = -1;
	}
	return 1;
}

Pinchos_OnGameModeExit()
{
	for(new i = 0; i < sizeof(iPickups); i++){
		DestroyDynamicObject(iPickups[i][0]);
		DestroyPickup(iPickups[i][1]);
		DestroyPickup(iPickups[i][2]);
		DestroyPickup(iPickups[i][3]);
		DestroyPickup(iPickups[i][4]);
	}
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	for(new stingerid = 0; stingerid < sizeof(iPickups); stingerid++){
		if(pickupid == iPickups[stingerid][1]){
			new Float:X, Float:Y, Float:Z, Float:A;
			GetObjectPos(iPickups[stingerid][0], X, Y, Z);
			GetObjectRot(iPickups[stingerid][0], A, A, A);
			new Float:dis1 = floatsin(-A, degrees), Float:dis2 = floatcos(-A, degrees);
			PopPlayerTires(playerid);
			DestroyPickup(pickupid);
            if(iPickups[stingerid][3] == -1){ // Small Stinger
            	iPickups[stingerid][1] = CreatePickup(1007, 14, X+(1.5*dis1), Y+(1.5*dis2), Z, GetPlayerVirtualWorld(playerid));
            }
            else{ // Large Stinger
            	iPickups[stingerid][1] = CreatePickup(1007, 14, X+(4.0*dis1), Y+(4.0*dis2), Z, GetPlayerVirtualWorld(playerid));
            }
            break;
        }
        else if(pickupid == iPickups[stingerid][2]){
        	new Float:X, Float:Y, Float:Z, Float:A;
        	GetObjectPos(iPickups[stingerid][0], X, Y, Z);
        	GetObjectRot(iPickups[stingerid][0], A, A, A);
        	new Float:dis1 = floatsin(-A, degrees), Float:dis2 = floatcos(-A, degrees);
        	PopPlayerTires(playerid);
        	DestroyPickup(pickupid);
            if(iPickups[stingerid][3] == -1){ // Small Stinger
            	iPickups[stingerid][2] = CreatePickup(1007, 14, X-(1.5*dis1), Y-(1.5*dis2), Z, GetPlayerVirtualWorld(playerid));
            }
            else{ // Large Stinger
            	iPickups[stingerid][2] = CreatePickup(1007, 14, X+(1.25*dis1), Y+(1.25*dis2), Z, GetPlayerVirtualWorld(playerid));
            }
            break;
        }
        else if(pickupid == iPickups[stingerid][3]){
        	new Float:X, Float:Y, Float:Z, Float:A;
        	GetObjectPos(iPickups[stingerid][0], X, Y, Z);
        	GetObjectRot(iPickups[stingerid][0], A, A, A);
        	new Float:dis1 = floatsin(-A, degrees), Float:dis2 = floatcos(-A, degrees);
        	PopPlayerTires(playerid);
        	DestroyPickup(pickupid);
        	iPickups[stingerid][3] = CreatePickup(1007, 14, X-(4.0*dis1), Y-(4.0*dis2), Z, GetPlayerVirtualWorld(playerid));
        	break;
        }
        else if(pickupid == iPickups[stingerid][4]){
        	new Float:X, Float:Y, Float:Z, Float:A;
        	GetObjectPos(iPickups[stingerid][0], X, Y, Z);
        	GetObjectRot(iPickups[stingerid][0], A, A, A);
        	new Float:dis1 = floatsin(-A, degrees), Float:dis2 = floatcos(-A, degrees);
        	PopPlayerTires(playerid);
        	DestroyPickup(pickupid);
        	iPickups[stingerid][4] = CreatePickup(1007, 14, X-(1.25*dis1), Y-(1.25*dis2), Z, GetPlayerVirtualWorld(playerid));
        	break;
        }
    }
    return 1;
}

stock PopPlayerTires(playerid){
	new vehicleid = GetPlayerVehicleID(playerid);
	if(vehicleid != 0){
		new panels, doors, lights, tires;
		GetVehicleDamageStatus(vehicleid, panels, doors, lights, tires);
		UpdateVehicleDamageStatus(vehicleid, panels, doors, lights, 15);
	}
}

stock CreateLargeStinger(Float:X, Float:Y, Float:Z, Float:A, virtualworld, timer){
	for(new stingerid = 0; stingerid < sizeof(iPickups); stingerid++){
		if(iPickups[stingerid][0] == -1){
			new Float:dis1 = floatsin(-A, degrees), Float:dis2 = floatcos(-A, degrees);
			iPickups[stingerid][0] = CreateDynamicObject(2892, X, Y, Z, 0.0, 0.0, A);
			iPickups[stingerid][1] = CreatePickup(1007, 14, X+(4.0*dis1), Y+(4.0*dis2), Z, virtualworld);
			iPickups[stingerid][2] = CreatePickup(1007, 14, X+(1.25*dis1), Y+(1.25*dis2), Z, virtualworld);
			iPickups[stingerid][3] = CreatePickup(1007, 14, X-(4.0*dis1), Y-(4.0*dis2), Z, virtualworld);
			iPickups[stingerid][4] = CreatePickup(1007, 14, X-(1.25*dis1), Y-(1.25*dis2), Z, virtualworld);
			if(timer > 0){
				SetTimerEx("DestroyStinger", timer, 0, "i", stingerid);
			}
			return stingerid;
		}
	}
	return -1;
}

stock CreateSmallStinger(Float:X, Float:Y, Float:Z, Float:A, virtualworld, timer){
	for(new stingerid = 0; stingerid < sizeof(iPickups); stingerid++){
		if(iPickups[stingerid][0] == -1){
			new Float:dis1 = floatsin(-A, degrees), Float:dis2 = floatcos(-A, degrees);
			iPickups[stingerid][0] = CreateDynamicObject(2899, X, Y, Z, 0.0, 0.0, A);
			iPickups[stingerid][1] = CreatePickup(1007, 14, X+(1.5*dis1), Y+(1.5*dis2), Z, virtualworld);
			iPickups[stingerid][2] = CreatePickup(1007, 14, X-(1.5*dis1), Y-(1.5*dis2), Z, virtualworld);
			if(timer > 0){
				SetTimerEx("DestroyStinger", timer, 0, "i", stingerid);
			}
			return stingerid;
		}
	}
	return -1;
}

public DestroyStinger(stingerid){
	DestroyDynamicObject(iPickups[stingerid][0]);
	DestroyPickup(iPickups[stingerid][1]);
	DestroyPickup(iPickups[stingerid][2]);
	DestroyPickup(iPickups[stingerid][3]);
	DestroyPickup(iPickups[stingerid][4]);
	iPickups[stingerid][0] = -1;
	iPickups[stingerid][1] = -1;
	iPickups[stingerid][2] = -1;
	iPickups[stingerid][3] = -1;
	iPickups[stingerid][4] = -1;
}

zcmd(pstrips, playerid, params[])
{
	if(!IsACop(playerid)) return Message(playerid, COLOR_GRAD2, "No eres policía.");
	if(OnDuty[playerid] == 0 && IsACop(playerid)) return  Message(playerid, COLOR_GREY, "¡No estas OnDuty!");
	new vehicleid = GetPlayerVehicleID(playerid);
		if(vehicleid == 0){
			new Float:X, Float:Y, Float:Z, Float:A;
			GetPlayerPos(playerid, X, Y, Z);
			GetPlayerFacingAngle(playerid, A);
			CreateSmallStinger(X+(6.0*floatsin(-A, degrees)), Y+(6.0*floatcos(-A, degrees)), Z-0.825, A, GetPlayerVirtualWorld(playerid), 60000);
		} else {
			new Float:X, Float:Y, Float:Z, Float:A;
			GetVehiclePos(vehicleid, X, Y, Z);
			GetVehicleZAngle(vehicleid, A);
			CreateLargeStinger(X-(10.0*floatsin(-A, degrees)), Y-(10.0*floatcos(-A, degrees)), Z-0.325, A, GetPlayerVirtualWorld(playerid), 60000);
		}
	GameTextForPlayer(playerid,"~r~Banda de clavos ~w~puesto!",1500,1);
	return 1;
}
zcmd(qstrips, playerid, params[])
{
	if(!IsACop(playerid)) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	if(OnDuty[playerid] == 0 && IsACop(playerid)) return  Message(playerid, COLOR_GREY, "¡No estas OnDuty!");
	new Float:X, Float:Y, Float:Z;
		for(new stingerid = 0; stingerid < sizeof(iPickups); stingerid++){
			if(iPickups[stingerid][0] == -1)
				continue;

			GetObjectPos(iPickups[stingerid][0], X, Y, Z);
			if(IsPlayerInRangeOfPoint(playerid, 3.0, X, Y, Z)){
				DestroyStinger(stingerid);
				break;
			}
		}
	return 1;
}
zcmd(astrips, playerid, params[])
{
	if(PlayerInfo[playerid][pAdminCP] < 1) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	for(new stingerid = 0; stingerid < sizeof(iPickups); stingerid++) {
		DestroyStinger(stingerid);
	}
	GameTextForPlayer(playerid,"~r~Todas las bandas de clavos ~w~eliminadas!",1500,1);
	return 1;
}