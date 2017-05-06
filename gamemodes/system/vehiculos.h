#if defined _vehiculos_h_included
	#endinput
#endif

#define _vehiculos_h_included

//Arrays para clasificar vehiculos
new vehiculosLSPD[23];
new vehiculosTaxiTrans[12];
new vehiculosRenta[24];
new vehiculosSAMD[9];
new vehiculosLaHermandad[8];
new vehiculosGrooveStreet[6];
new vehiculosLatinKings[7];
new vehiculosMecanicos[11];
new vehiculosMoteros[6];
new vehiculosBallas[4];
new vehiculosLCN[11];
new vehiculosYakuza[7];
new vehiculosRusos[9];
new vehiculosGobierno[5];
new vehiculosCNN[5];
new vehiculosTestLicencias[5];
new vehiculosTren[1];
new vehiculosBarrendero[6];
new vehiculosPilotos[5];
new vehiculosTraficantes[15];
new vehiculosCosechadoras[3];
new vehiculosPizzeros[7];
new vehiculosSAEM[26];
new vehiculosFBI[10];
new vehiculosHitman[3];
new vehiculosJuzgados[4];
new vehiculosCamioneros[8];
new vehiculosPescadores[4];
new vehiculosPiratasAsfalto[7];

forward bool:isLSPDVehicle(vehicleid);
forward bool:isTaxiTransportVehicle(vehicleid);
forward bool:isRentaVehicle(vehicleid);
forward bool:isSAMDVehicle(vehicleid);
forward bool:isLaHermandadVehicle(vehicleid);
forward bool:isGrooveVehicle(vehicleid);
forward bool:isLatinKingsVehicle(vehicleid);
forward bool:isMecanicosVehicle(vehicleid);
forward bool:isMoterosVehicle(vehicleid);
forward bool:isBallasVehicle(vehicleid);
forward bool:isLCNVehicle(vehicleid);
forward bool:isYakuzaVehicle(vehicleid);
forward bool:isRusosVehicle(vehicleid);
forward bool:isGobiernoVehicle(vehicleid);
forward bool:isCNNVehicle(vehicleid);
forward bool:isTestLicenciasVehicle(vehicleid);
forward bool:isTrenVehicle(vehicleid);
forward bool:isBarrenderoVehicle(vehicleid);
forward bool:isPilotosVehicle(vehicleid);
forward bool:isTraficantesVehicle(vehicleid);
forward bool:isTraficantesCosechadoraVehicle(vehicleid);
forward bool:isPizzerosVehicle(vehicleid);
forward bool:isSAEMVehicle(vehicleid);
forward bool:isFBIVehicle(vehicleid);
forward bool:isHitmanVehicle(vehicleid);
forward bool:isJuzgadosVehicle(vehicleid);
forward bool:isCamionerosVehicle(vehicleid);
forward bool:isPescadoresVehicle(vehicleid);
forward bool:isPiratasAsfaltoVehicle(vehicleid);