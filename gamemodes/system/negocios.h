
#if defined _negocios_h_included
	#endinput
#endif

#define _negocios_h_included

#define MAX_BIZZ 32

enum bInfo
{
	bOwned,
	bOwner[24],
	bName[32],
	bExtortion[MAX_PLAYER_NAME],
	Float:bEntrancex,
	Float:bEntrancey,
	Float:bEntrancez,
	bLevelNeeded,
	bBuyPrice,
	bTill,
	bTillEx
};

forward Till(bizzid, amount);
forward TillTimer();
forward UpdateBizz();
forward CheckBizz(playerid, earn);
forward SellBizz(bizzid);
forward OnGlobalBizzTextdrawUpdate();
forward OnBizzTextdrawUpdate(bid);