/*----------------------------------------------------------------------------*-
					==============================
					Y Sever Includes - Debug Setup
					==============================
Description:
	Ensures debug levels are set and defines debug functions.
	
	General debug levels:
	
	0 - No debug information.
	1 - Callbacks start and finish.
	2 - Major functions called.
	3 - Major control flow.
	4 - Minor control flow/functions.
	5 - Code steps.
	
	If you use P:0 you get an optional debug print controlled by the global
	state ysi_debug - which is either on or off.
Legal:
	Version: MPL 1.1
	
	The contents of this file are subject to the Mozilla Public License Version 
	1.1 (the "License"); you may not use this file except in compliance with 
	the License. You may obtain a copy of the License at 
	http://www.mozilla.org/MPL/
	
	Software distributed under the License is distributed on an "AS IS" basis,
	WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
	for the specific language governing rights and limitations under the
	License.
	
	The Original Code is the SA:MP script information include.
	
	The Initial Developer of the Original Code is Alex "Y_Less" Cole.
	Portions created by the Initial Developer are Copyright (C) 2008
	the Initial Developer. All Rights Reserved.
	
	Contributors:
		ZeeX, koolk
	
	Thanks:
		Peter, Cam - Support.
		ZeeX - Very productive conversations.
		koolk - IsPlayerinAreaEx code.
		TheAlpha - Danish translation.
		breadfish - German translation.
		Fireburn - Dutch translation.
		yom - French translation.
		50p - Polish translation.
		Zamaroht - Spanish translation.
		Dracoblue, sintax, mabako, Xtreme, other coders - Producing other modes
			for me to strive to better.
		Pixels^ - Running XScripters where the idea was born.
		Matite - Pestering me to release it and using it.
	
	Very special thanks to:
		Thiadmer - PAWN.
		Kye/Kalcor - SA:MP.
		SA:MP Team past, present and future - SA:MP.
Version:
	1.0
Changelog:
	06/08/10:
		Added new syntax.
		Added level 0 debugging with state controlled functions.
	15/04/07:
		First version.
Functions:
	Public:
		-
	Core:
		-
	Stock:
		-
	Static:
		-
	Inline:
		Debug_Code - Runs defined code if a certain level is active.
		Debug_Print - Prints the formatted string provided at the given level.
	API:
		-
Callbacks:
	-
Definitions:
	DBGP - Simple Debug_Print wrapper.
	DBGC - Simple Debug_Code wrapper.
Enums:
	-
Macros:
	-
Tags:
	-
Variables:
	Global:
		-
	Static:
		-
Commands:
	-
Compile options:
	_DEBUG - Debugging level to use.
Operators:
	-
-*----------------------------------------------------------------------------*/

//#include <YSI\internal\y_version>

#include <YSI\internal\y_funcinc>

#if !defined _DEBUG
	#define _DEBUG 0
#endif

#define P:%1(%2); Debug_Print%1(%2);
#define C:%1(%2); Debug_Code%1(%2);

/*----------------------------------------------------------------------------*-
Function:
	Debug_Code
Params:
	level - Debug level to run the code at.
	code - Code to run.
Return:
	-
Notes:
	Code is not a variable, it's a code chunk and may be written as so:
	
	Debug_Code1(if (bla == 2) { bla++; printf("%d", bla); });
	
	The code must all be on one line to avoid errors.
	This isn't really a function as the first parameter is part of the name.
-*----------------------------------------------------------------------------*/

#define DBGC1 Debug_Code1
#define DBGC2 Debug_Code2
#define DBGC3 Debug_Code3
#define DBGC4 Debug_Code4
#define DBGC5 Debug_Code5

#if _DEBUG >= 1
	#define Debug_Code1(%1); \
		%1
#else
	#define Debug_Code1(%1);
#endif

#if _DEBUG >= 2
	#define Debug_Code2(%1); \
		%1
#else
	#define Debug_Code2(%1);
#endif

#if _DEBUG >= 3
	#define Debug_Code3(%1); \
		%1
#else
	#define Debug_Code3(%1);
#endif

#if _DEBUG >= 4
	#define Debug_Code4(%1); \
		%1
#else
	#define Debug_Code4(%1);
#endif

#if _DEBUG >= 5
	#define Debug_Code5(%1); \
		%1
#else
	#define Debug_Code5(%1);
#endif

/*----------------------------------------------------------------------------*-
Function:
	Debug_Print
Params:
	level - Debug level to print at.
	format[] - Format.
	...
Return:
	-
Notes:
	This isn't really a function as the first parameter is part of the name:
	
	Debug_Print4("variables: %d, %d", i, j);
-*----------------------------------------------------------------------------*/

#define DBGP1 Debug_Print1
#define DBGP2 Debug_Print2
#define DBGP3 Debug_Print3
#define DBGP4 Debug_Print4
#define DBGP5 Debug_Print5

#if _DEBUG >= 1
	#define Debug_Print1(%1); \
		printf(%1);
#else
	#define Debug_Print1(%1);
#endif

#if _DEBUG >= 2
	#define Debug_Print2(%1); \
		printf(%1);
#else
	#define Debug_Print2(%1);
#endif

#if _DEBUG >= 3
	#define Debug_Print3(%1); \
		printf(%1);
#else
	#define Debug_Print3(%1);
#endif

#if _DEBUG >= 4
	#define Debug_Print4(%1); \
		printf(%1);
#else
	#define Debug_Print4(%1);
#endif

#if _DEBUG >= 5
	#define Debug_Print5(%1); \
		printf(%1);
#else
	#define Debug_Print5(%1);
#endif

stock Debug_Print0(str[], {Float,_}:...) <ysi_debug:on>
{
	// This uses the variable parameter passing method based on code by Zeex.
	// See page 15 of the code optimisations topic.
	new
		n = (numargs() - 1) * 4;
	if (n)
	{
		new
			arg_start,
			arg_end;
		
		// Load the real address of the last static parameter.  Do this by
		// loading the address of the parameter and then adding the value of
		// [FRM] (frame pointer).
		#emit CONST.alt                 str
		#emit LCTRL                     5
		#emit ADD
		#emit STOR.S.pri                arg_start
		
		// Load the address of the last variable parameter.  Do this by adding
		// the number of variables on the value just loaded.
		#emit LOAD.S.alt                n
		#emit ADD
		#emit STOR.S.pri                arg_end
		
		// Push the variable arguments.  This is done by loading the value of
		// each one in reverse order and pushing them.  I'd love to be able to
		// rewrite this to use the values of pri and alt for comparison, instead
		// of having or constantly reload two variables.
		do
		{
			#emit LOAD.I
			#emit PUSH.pri
			arg_end -= 4;
			#emit LOAD.S.pri            arg_end
		}
		while (arg_end > arg_start);
		
		// Push the static parameter.
		#emit PUSH.S                    str
		
		// Now push the number of parameters sent and call the function.
		n += 4;
		#emit PUSH.S                    n
		#emit SYSREQ.C                  printf
		
		// Clear the stack, including the return.
		n += 4;
		#emit LCTRL                     4
		#emit LOAD.S.alt                n
		#emit ADD
		#emit SCTRL                     4
	}
	else
	{
		print(str);
	}
}

stock Debug_Print0(str[], {Float,_}:...) <ysi_debug:off>
{
	#pragma unused str
}

stock Debug_Print0(str[], {Float,_}:...) <>
{
	#pragma unused str
}

#if _DEBUG > 0
	#define Debug_Print0(%1); \
		printf(%1);
#endif
