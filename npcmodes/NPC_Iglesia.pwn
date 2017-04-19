#define RECORDING "NPC_Iglesia" //aqui ponemos el nombre del arvhico que grabamos
#define RECORDING_TYPE 2 //aqui va 1 si es en coche, 2 si es a pie

#include <a_npc>
main(){}
public OnRecordingPlaybackEnd() StartRecordingPlayback(RECORDING_TYPE, RECORDING);

#if RECORDING_TYPE == 1 // si es en vehiculo se cumple esto
public OnNPCEnterVehicle(vehicleid, seatid) StartRecordingPlayback(RECORDING_TYPE, RECORDING);
public OnNPCExitVehicle() StopRecordingPlayback();
#else // sino es en vehiculo solo se cumple esto
public OnNPCSpawn() StartRecordingPlayback(RECORDING_TYPE, RECORDING);
#endif
