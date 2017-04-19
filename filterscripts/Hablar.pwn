// By GROVE4L
// www.pawnoscripting.com

#include <a_samp>

forward Fuera(playerid);

new TFuera[MAX_PLAYERS];

public OnPlayerText(playerid, text[])
{
    new AnimR = random(1);
   if(AnimR == 0)
   {
       ApplyAnimation(playerid, "PED", "IDLE_CHAT", 4.0, 1, 0, 0, 1, 1);
      TFuera[playerid] = SetTimerEx("Fuera", strlen(text)*200, false, "i", playerid);
   }
   else if(AnimR == 1)
   {
       ApplyAnimation(playerid, "PED", "Idle_Chat_02", 4.0, 1, 0, 0, 1, 1);
      TFuera[playerid] = SetTimerEx("Fuera", strlen(text)*200, false, "i", playerid);
   }
   return 1;
}

public Fuera(playerid)
{
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
    return 1;
}

// By GROVE4L
