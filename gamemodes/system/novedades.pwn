
#if defined _novedades_included
	#endinput
#endif

#define _novedades_included

forward UpdateResponse(playerid, response_code, data[]);
public UpdateResponse(playerid, response_code, data[])
{
	new string[ 1028 ];

	if(response_code == 200)
	{
		format(string, sizeof(string), "%s", data);
		return Dialog_Open(playerid, Dialog:novedades, DIALOG_STYLE_MSGBOX, "{FF231D}Versión del Servidor", string, "Ok", "");
	}
	else
	{
		format(string, sizeof(string), "Solicitud HTTP errónea: %d", response_code);
		Message(playerid, 0xFFFFFFFF, string);
	}
	return 0;
}


zcmd(info, playerid, params[]){
	HTTP(playerid, HTTP_GET, "hermandadzero.com/info.txt","","UpdateResponse");
	return 1;
}
zcmd(novedades, playerid, params[]) return cmd_info(playerid, params);