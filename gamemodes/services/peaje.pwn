#if defined _peaje_included
	#endinput
#endif

#define _peaje_included

#define PEAJE_COSTE 20

enum peajeInfo
{
	objectId,
	Float:posX,
	Float:posY,
	Float:posZ,
	Float:openRotX,
	Float:openRotY,
	Float:openRotZ,
	Float:closeRotX,
	Float:closeRotY,
	Float:closeRotZ,
	rotPoints,
	Float:rotSpeed,
	peajeCoste //Por ahora serán todos PEAJE_COSTE
};

new peajes[4][peajeInfo];

function mapeos_peaje() {
	//Peaje puente a SF
	peajes[0][posX] = 37.75; peajes[0][posY] = -1525.50; peajes[0][posZ] = 4.94;
	peajes[0][openRotX] = 0.00; peajes[0][openRotY] = 0.00; peajes[0][openRotZ] = -95.46;
	peajes[0][closeRotX] = 0.00; peajes[0][closeRotY] = -90.00; peajes[0][closeRotZ] = -95.46;
	peajes[0][rotPoints] = 90; peajes[0][rotSpeed] = 100; peajes[0][peajeCoste] = PEAJE_COSTE;
	peajes[0][objectId] = CreateObject(968, peajes[0][posX], peajes[0][posY], peajes[0][posZ], 0.00, -90.00, -95.46);

	peajes[1][posX] = 66.34; peajes[1][posY] = -1537.61; peajes[1][posZ] = 4.94;
	peajes[1][openRotX] = 0.00; peajes[1][openRotY] = 0.00; peajes[1][openRotZ] = -95.16;
	peajes[1][closeRotX] = 0.00; peajes[1][closeRotY] = 90.00; peajes[1][closeRotZ] = -95.16;
	peajes[1][rotPoints] = 90; peajes[1][rotSpeed] = 100; peajes[1][peajeCoste] = PEAJE_COSTE;
	peajes[1][objectId] = CreateObject(968, peajes[1][posX], peajes[1][posY], peajes[1][posZ], 0.00, 90.00, -95.16);

	CreateObject(7033, 65.63000, -1533.56006, 8.27000,   0.00000, 0.00000, 81.96000);
	CreateObject(7033, 40.16000, -1530.50000, 8.27000,   0.00000, 0.00000, 81.96000);
	CreateObject(10829, 38.40000, -1529.05005, 4.36000,   0.00000, 0.00000, -97.02000);
	CreateObject(10829, 67.40000, -1534.84998, 4.36000,   0.00000, 0.00000, 83.00000);
	CreateObject(1237, 82.34000, -1535.66003, 4.26000,   0.00000, 0.00000, 90.00000);
	CreateObject(966, 37.73000, -1525.54004, 4.19000,   0.00000, 0.00000, -95.58000);
	CreateObject(966, 66.33000, -1537.72998, 3.97000,   0.00000, 0.00000, -275.22000);
	CreateObject(978, 77.57000, -1534.16003, 5.14000,   0.00000, 0.00000, -13.20000);
	CreateObject(978, 77.30000, -1536.00000, 5.14000,   0.00000, 0.00000, 180.36000);
	CreateObject(1238, 82.37000, -1535.66003, 5.75000,   0.00000, 0.00000, 5.40000);
	CreateObject(978, 28.28000, -1529.68994, 4.78000,   1.56000, 3.72000, 163.67999);
	CreateObject(978, 28.62000, -1527.70996, 4.78000,   1.56000, -3.72000, 356.82001);
	CreateObject(1237, 23.52000, -1527.85999, 3.64000,   0.00000, 0.00000, 90.00000);
	CreateObject(1238, 23.52000, -1527.85999, 5.17000,   0.00000, 0.00000, -4.68000);
	CreateObject(978, 53.07000, -1530.59998, 5.13000,   0.00000, 0.00000, -5.10000);
	CreateObject(978, 52.74000, -1533.43005, 5.13000,   0.00000, 0.00000, -185.10001);

	//Mappeo túnel autopista a SF
	peajes[2][posX] = 477.26480; peajes[2][posY] = -1132.63281; peajes[2][posZ] = 30.71260;
	peajes[2][openRotX] = 0.00; peajes[2][openRotY] = 0.00; peajes[2][openRotZ] = -92.00;
	peajes[2][closeRotX] = 0.00; peajes[2][closeRotY] = 88.00; peajes[2][closeRotZ] = -92.00;
	peajes[2][rotPoints] = 90; peajes[2][rotSpeed] = 100; peajes[2][peajeCoste] = PEAJE_COSTE;
	peajes[2][objectId] = CreateObject(968, peajes[2][posX], peajes[2][posY], peajes[2][posZ], 0.00000, 88.00000, -92.00000);

	peajes[3][posX] = 478.25430; peajes[3][posY] = -1110.40039; peajes[3][posZ] = 27.40070;
	peajes[3][openRotX] = 0.00; peajes[3][openRotY] = 0.00; peajes[3][openRotZ] = -89.00;
	peajes[3][closeRotX] = 0.00; peajes[3][closeRotY] = 88.00; peajes[3][closeRotZ] = -89.00;
	peajes[3][rotPoints] = 90; peajes[3][rotSpeed] = 100; peajes[3][peajeCoste] = PEAJE_COSTE;
	peajes[3][objectId] = CreateObject(968,peajes[3][posX], peajes[3][posY], peajes[3][posZ], 0.00000, 88.00000, -89.00000);

	CreateDynamicObject(4642, 477.34790, -1142.06946, 32.08920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4642, 477.34827, -1143.98633, 32.08924,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4642, 478.11316, -1107.73804, 28.63986,   0.00000, 0.00000, 178.98013);
	CreateDynamicObject(4642, 478.17218, -1105.81897, 28.63986,   0.00000, 0.00000, 178.98013);
	CreateDynamicObject(4642, 478.11319, -1122.24597, 28.63990,   0.00000, 0.00000, 357.90009);
	CreateDynamicObject(4642, 478.11319, -1120.36096, 28.63990,   0.00000, 0.00000, 178.98010);
	CreateDynamicObject(4642, 477.34790, -1127.63232, 32.08920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(4642, 477.34790, -1129.66492, 32.08920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(966, 477.27127, -1132.73315, 30.11538,   0.00000, 0.00000, 87.65996);
	CreateDynamicObject(1237, 477.01462, -1140.16028, 30.12666,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 477.58066, -1139.74414, 30.12666,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 476.38977, -1139.89844, 30.12666,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 477.25229, -1131.95508, 30.12666,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 476.54813, -1132.25049, 30.12666,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 477.87250, -1132.26111, 30.12666,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 481.21411, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 483.23041, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 484.86041, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 486.34061, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 486.34061, -1131.36414, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 484.86041, -1131.36414, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 483.23041, -1131.36414, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 481.21411, -1131.36414, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 471.62790, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 469.63708, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 467.75031, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 465.96179, -1140.77319, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 471.62790, -1131.32837, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 469.63708, -1131.28174, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 467.75031, -1131.24500, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 465.96179, -1131.24915, 30.35520,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(966, 478.25803, -1110.61328, 26.84069,   0.00000, 0.00000, 90.77999);
	CreateDynamicObject(1237, 478.36777, -1117.97461, 26.84543,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 477.77557, -1117.59106, 26.84543,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 478.91916, -1117.53760, 26.84543,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 478.24911, -1109.94702, 26.84543,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 477.68796, -1110.36523, 26.84543,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1237, 478.82819, -1110.30835, 26.84543,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 475.15186, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 472.81812, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 470.93060, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 468.77939, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 475.15189, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 472.81812, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 470.93060, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 468.77939, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 481.83771, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 484.73621, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 487.89709, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 490.84140, -1109.32153, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 481.83771, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 484.73599, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 487.87711, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19121, 490.84140, -1119.03162, 26.87450,   0.00000, 0.00000, 0.00000);
}

public OnObjectRotated(objectid) {
	return 1;
}

function getPeajeCercano(playerid) {
	if (PlayerToPoint(15.0, playerid, peajes[0][posX], peajes[0][posY], peajes[0][posZ])) return 0;
	if (PlayerToPoint(15.0, playerid, peajes[1][posX], peajes[1][posY], peajes[1][posZ])) return 1;
	if (PlayerToPoint(15.0, playerid, peajes[2][posX], peajes[2][posY], peajes[2][posZ])) return 2;
	if (PlayerToPoint(15.0, playerid, peajes[3][posX], peajes[3][posY], peajes[3][posZ])) return 3;
	return -1;
}

function abrirpeaje(peajeId) {
	if (peajeId == -1) return;
	RotateObject(peajes[peajeId][objectId], peajes[peajeId][openRotX], peajes[peajeId][openRotY], peajes[peajeId][openRotZ], peajes[peajeId][rotPoints], peajes[peajeId][rotSpeed]);
}

function cerrarpeaje(peajeId) {
	if (peajeId == -1) return;
	RotateObject(peajes[peajeId][objectId], peajes[peajeId][closeRotX], peajes[peajeId][closeRotY],  peajes[peajeId][closeRotZ], peajes[peajeId][rotPoints], peajes[peajeId][rotSpeed]);
}

zcmd(peaje, playerid, params[]) {
	new string[200];
	new peajeId = getPeajeCercano(playerid);
	if (peajeId == -1) return Message(playerid, COLOR_GRAD2, "¡No estás en un peaje!");
	if (!CheckMoney(playerid, peajes[peajeId][peajeCoste])) return 1;
	if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return Message(playerid, COLOR_GRAD2,"¡No puedes pagar si no eres el conductor!");

	new idcar = GetPlayerVehicleID(playerid);
	if(isLSPDVehicle(idcar) || isSAMDVehicle(idcar) || isFBIVehicle(idcar) || isSAEMVehicle(idcar) || isTaxiTransportVehicle(idcar)) {
		Message(playerid, COLOR_WHITE, "** Tu organización cubre los gastos del peaje.");
	} else {
		format(string, sizeof(string), "* %s le paga al sujeto del peaje para pasar.", PlayerName(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		Bought(playerid,peajes[peajeId][peajeCoste]);
	}
	Tax += peajes[peajeId][peajeCoste];

	abrirpeaje(peajeId);
	PlayerPlaySound(playerid, 1057, 0.0, 0.0, 0.0);
	SetTimerEx("cerrarpeaje", 5000, 0, "i", peajeId);
	return 1;
}