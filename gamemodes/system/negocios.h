
#if defined _negocios_h_included
	#endinput
#endif

#define _negocios_h_included

#define MAX_BIZZ 32

forward Till(bizzid, amount);
forward TillTimer();
forward UpdateBizz();
forward CheckBizz(playerid, earn);
forward SellBizz(bizzid);
forward OnGlobalBizzTextdrawUpdate();
forward OnBizzTextdrawUpdate(bid);