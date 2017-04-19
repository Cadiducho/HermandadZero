//------------------------------------------------------------------------------

#include <a_samp>

#define RANDOMTIME 80000
#define FINTIME 10000

#define ACTIVADO 0
#define DESACTIVADO 1

//------------------------------------------------------------------------------

forward Random(playerid);
forward TextDrawsHideForAll(playerid);

//------------------------------------------------------------------------------

new Text:Punto;
new Text:Letra;
new Text:Texto;

new Final;

new RandomMessages = ACTIVADO;

new RandomMsg[][] =
{
	"~g~Bievenido al Servidor~n~~w~Recuerda Visitar nuestra web , esperamos que te diviertas en nuestro servidor , pasala bien",
	"~g~CiudadGolden~n~~w~Gracias ,por Elegirnos a Nosotros Con Mucho mas Rol!."
};

//------------------------------------------------------------------------------

main()
{
    print("\n-----------------------------------");
	print("        Mensajes Automaticos         ");
	print("              by CaCoby              ");
	print("-----------------------------------\n");
}

//------------------------------------------------------------------------------

public OnFilterScriptInit()
{
	if(RandomMessages == ACTIVADO)
	{
		SetTimer("Random",RANDOMTIME,1);
	}

	Letra = TextDrawCreate(593.000000,384.000000,"!");
    TextDrawSetShadow(Letra,0);
    TextDrawSetOutline(Letra,1);
    TextDrawFont(Letra,2);
    TextDrawColor(Letra,0xff000088);
    TextDrawLetterSize(Letra,1.039999,4.099997);
    TextDrawTextSize(Letra,0.000000,0.000000);
    
    Texto = TextDrawCreate(291.000000,380.000000," ");
    TextDrawSetShadow(Texto,0);
    TextDrawUseBox(Texto,1);
    TextDrawSetOutline(Texto,1);
    TextDrawFont(Texto,1);
    TextDrawBoxColor(Texto,0x0000155);
    TextDrawLetterSize(Texto,0.260000,1.200000);
    TextDrawTextSize(Texto,552.000000,0.000000);

    Punto = TextDrawCreate(568.000000,265.000000,".");
    TextDrawSetShadow(Punto,0);
    TextDrawUseBox(Punto,0);
    TextDrawSetOutline(Punto,0);
    TextDrawFont(Punto,1);
    TextDrawColor(Punto,0x0000155);
    TextDrawLetterSize(Punto,5.749996,20.799999);
    TextDrawTextSize(Punto,0.000000,0.000000);
    
	return 1;
}

//------------------------------------------------------------------------------

public Random(playerid)
{
   if (Final == 0)
   {
   new str[256];
   new randMSG = random(sizeof(RandomMsg));
   format(str, sizeof(str), "%s", RandomMsg[randMSG]);
   TextDrawSetString(Text:Texto,str);
   TextDrawShowForAll(Text:Punto);
   TextDrawShowForAll(Text:Letra);
   TextDrawShowForAll(Text:Texto);
   SetTimerEx("TextDrawsHideForAll", FINTIME, false, "d", playerid);
   Final = 1;
   }
   return 1;
}

//------------------------------------------------------------------------------

public TextDrawsHideForAll(playerid)
{
   Final = 0;
   TextDrawHideForAll(Text:Punto);
   TextDrawHideForAll(Text:Letra);
   TextDrawHideForAll(Text:Texto);
   return 1;
}

//------------------------------------------------------------------------------
