// Scripteado por MgAkG
// Sistema de Encendido y apagado de carros, maletero, etc.
// NO BORRAR CREDITOS


#include <a_samp>
#include <a_vehicles>

EncenderMotor(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,VEHICLE_PARAMS_ON,lights,alarm,doors,bonnet,boot,objective);
}
ApagarMotor(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,VEHICLE_PARAMS_OFF,lights,alarm,doors,bonnet,boot,objective);
}
AbrirMaletero(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,VEHICLE_PARAMS_ON,objective);
}
CerrarMaletero(playerid)
{
new engine,lights,alarm,doors,bonnet,boot,objective;
new veh = GetPlayerVehicleID(playerid);
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,VEHICLE_PARAMS_OFF,objective);
}
AbrirCapota(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,lights,alarm,doors,VEHICLE_PARAMS_ON,boot,objective);
}
CerrarCapota(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,lights,alarm,doors,VEHICLE_PARAMS_OFF,boot,objective);
}
ActivarAlarma(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,lights,VEHICLE_PARAMS_ON,doors,bonnet,boot,objective);
}
DesactivarAlarma(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,lights,VEHICLE_PARAMS_OFF,doors,bonnet,boot,objective);
}
EncenderLuces(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(GetPlayerVehicleID(playerid),engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,VEHICLE_PARAMS_ON,alarm,doors,bonnet,boot,objective);
}
ApagarLuces(playerid)
{
new veh = GetPlayerVehicleID(playerid);
new engine,lights,alarm,doors,bonnet,boot,objective;
GetVehicleParamsEx(veh,engine,lights,alarm,doors,bonnet,boot,objective);
SetVehicleParamsEx(veh,engine,VEHICLE_PARAMS_OFF,alarm,doors,bonnet,boot,objective);
}

// Terminado //
// Recordar no QUITAR creditos //