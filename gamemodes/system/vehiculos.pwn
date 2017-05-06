
#if defined _vehiculos_included
	#endinput
#endif

#define _vehiculos_included

#define VV	258

//Funciones 'publicas' booleanas
#define checker(%0,%1)	public bool:is%0Vehicle(vehicleid) { for(new v = 0; v < sizeof(%1); v++) { if(vehicleid == %1[v]) return true; } return false; }

checker(LSPD,vehiculosLSPD)
checker(TaxiTransport,vehiculosTaxiTrans)
checker(Renta,vehiculosRenta)
checker(SAMD,vehiculosSAMD)
checker(LaHermandad,vehiculosLaHermandad)
checker(Groove,vehiculosGrooveStreet)
checker(LatinKings,vehiculosLatinKings)
checker(Mecanicos,vehiculosMecanicos)
checker(Moteros,vehiculosMoteros)
checker(Ballas,vehiculosBallas)
checker(LCN,vehiculosLCN)
checker(Yakuza,vehiculosYakuza)
checker(Rusos,vehiculosRusos)
checker(Gobierno,vehiculosGobierno)
checker(CNN,vehiculosCNN)
checker(TestLicencias,vehiculosTestLicencias)
checker(Tren,vehiculosTren)
checker(Barrendero,vehiculosBarrendero)
checker(Pilotos,vehiculosPilotos)
checker(Traficantes,vehiculosTraficantes)
checker(TraficantesCosechadora,vehiculosCosechadoras)
checker(Pizzeros,vehiculosPizzeros)
checker(SAEM,vehiculosSAEM)
checker(FBI,vehiculosFBI)
checker(Hitman,vehiculosHitman)
checker(Juzgados,vehiculosJuzgados)
checker(Camioneros,vehiculosCamioneros)
checker(Pescadores,vehiculosPescadores)
checker(PiratasAsfalto,vehiculosPiratasAsfalto)


bool:IsABike(carid)
{
	new Bikes[] = { 509, 481, 510 };
  	for(new i = 0; i < sizeof(Bikes); i++) {
		if(GetVehicleModel(carid) == Bikes[i]) return true;
  	}
	return false;
}

//Funciones internas
function cargarVehiculos() {

	// -============================================== [ Faction Cars ] =========================================- //
	// LSPD (1 - 22)
	vehiculosLSPD[0] = AddStaticVehicleEx(596,1601.872924,-1704.370971,5.612636,89.574440,0,1,60000); // Patrulla LS   	1
	vehiculosLSPD[1] = AddStaticVehicleEx(596,1601.902221,-1700.465332,5.634525,89.566131,0,1,60000); // Patrulla LS   	2
	vehiculosLSPD[2] = AddStaticVehicleEx(596,1601.933105,-1696.409912,5.642260,89.562606,0,1,60000); // Patrulla LS   	3
	vehiculosLSPD[3] = AddStaticVehicleEx(596,1601.963134,-1692.478881,5.656129,89.555740,0,1,60000); // Patrulla LS   	4
	vehiculosLSPD[4] = AddStaticVehicleEx(596,1595.511840,-1710.769531,5.613651,0.000000,0,1,60000); // Patrulla LS    	5
	vehiculosLSPD[5] = AddStaticVehicleEx(596,1591.606079,-1710.771240,5.626485,0.000000,0,1,60000); // Patrulla LS    	6
	//autos modificado
	vehiculosLSPD[6] = AddStaticVehicleEx(402,1545.2782,-1676.3499,5.6112,87.3121,0,0,60000); // Patrulla LS       7
    SetVehicleAttachedObject(vehiculosLSPD[6],0, 19419, 0.0, -0.3, 0.8, 0.000000, 0.000000, 0.000000);
    vehiculosLSPD[7] = AddStaticVehicleEx(411,1545.4321,-1671.7544,5.6138,91.1411,0,0,60000); // Patrulla LS	8
    SetVehicleAttachedObject(vehiculosLSPD[7],0, 19419, 0.0, -0.2, 0.7, 0.000000, 0.000000, 0.000000);

	vehiculosLSPD[8] = AddStaticVehicleEx(599,1526.548095,-1644.479614,6.056174,179.637084,0,1,60000); // Ranger   		9
	vehiculosLSPD[9] = AddStaticVehicleEx(599,1530.429199,-1644.505371,6.124225,179.634948,0,1,60000); // Ranger   		10
	vehiculosLSPD[11] = AddStaticVehicleEx(525,1534.434448,-1644.530761,6.133507,179.633880,-1,103,60000); // Ranger   		11
	vehiculosLSPD[12] = AddStaticVehicleEx(525,1538.758666,-1644.558349,6.156028,179.631210,-1,103,60000); // Ranger   		12
	vehiculosLSPD[13] = AddStaticVehicleEx(523,1567.272338,-1708.937011,5.457219,354.100372,0,1,60000); // HPV 1000 		13
	vehiculosLSPD[14] = AddStaticVehicleEx(523,1565.331420,-1708.737304,5.475297,354.107971,0,1,60000); // HPV 1000 		14
	vehiculosLSPD[15] = AddStaticVehicleEx(523,1562.516479,-1708.446411,5.508016,354.100280,0,1,60000); // HPV 1000 		15
	vehiculosLSPD[16] = AddStaticVehicleEx(427,1571.071044,-1615.492797,13.514673,268.842010,0,1,60000); // Enforcer    	16
	vehiculosLSPD[17] = AddStaticVehicleEx(427,1557.802734,-1615.510131,13.514776,269.681549,0,1,60000); // Enforcer    	17
	vehiculosLSPD[18] = AddStaticVehicleEx(601,1544.134521,-1609.579345,13.141159,269.321655,0,1,60000); // SWAT Van    	18
	vehiculosLSPD[19] = AddStaticVehicleEx(497,1563.660034,-1655.212158,28.589679,88.595161,0,1,60000); // Police Maverick  19
	vehiculosLSPD[20] = AddStaticVehicleEx(430,661.1824,-2006.5925,-0.5202,38.5216,-1,-1,60000); //Predator   20
	vehiculosLSPD[21] = AddStaticVehicleEx(430,646.9103,-2007.3157,0.0745,354.4583,-1,-1,60000); //Predator   21
	vehiculosLSPD[22] = AddStaticVehicleEx(430,635.1070,-2006.1445,-0.1934,354.5684,-1,-1,60000); //Predator   22
	// Transport LS (23 - 34)
	vehiculosTaxiTrans[0] = AddStaticVehicleEx(420,1802.108398,-1901.992065,13.182017,359.172454,6,6,60000); // Taxi        23
	vehiculosTaxiTrans[1] = AddStaticVehicleEx(420,1802.041625,-1909.239135,13.178486,0.243935,6,6,60000); // Taxi          24
	vehiculosTaxiTrans[2] = AddStaticVehicleEx(420,1801.961425,-1916.413452,13.173706,359.274993,6,6,60000); // Taxi        25
	vehiculosTaxiTrans[3] = AddStaticVehicleEx(420,1801.870727,-1924.109741,13.170453,358.887084,6,6,60000); // Taxi        26
	vehiculosTaxiTrans[4] = AddStaticVehicleEx(420,1780.686523,-1901.657958,13.190039,1.394230,6,6,60000); // Taxi          27
	vehiculosTaxiTrans[5] = AddStaticVehicleEx(420,1780.808837,-1909.585815,13.186038,0.924842,6,6,60000); // Taxi          28
	vehiculosTaxiTrans[6] = AddStaticVehicleEx(420,1780.813476,-1917.090332,13.165364,359.639434,6,6,60000); // Taxi        29
	vehiculosTaxiTrans[7] = AddStaticVehicleEx(420,1780.745849,-1924.819213,13.165236,359.531585,6,6,60000); // Taxi        30
	vehiculosTaxiTrans[8] = AddStaticVehicleEx(431,1796.509887,-1903.939697,13.502617,358.146545,6,0,60000); // Bus         31
	vehiculosTaxiTrans[9] = AddStaticVehicleEx(431,1796.283325,-1921.651000,13.462456,359.212310,6,0,60000); // Bus         32
	vehiculosTaxiTrans[10] = AddStaticVehicleEx(437,1785.929077,-1904.228881,13.526880,359.343902,6,0,60000); // Coach       33
	vehiculosTaxiTrans[11] = AddStaticVehicleEx(437,1786.115478,-1920.841186,13.525323,359.975769,6,0,60000); // Coach       34
	// Rent Cars Hospital (35  - 38)
	vehiculosRenta[0] = AddStaticVehicleEx(462, 1189.0740, -1362.4146, 13.1538, 0.0000, 1, 1, 60000); // PCJ-600    35
	vehiculosRenta[1] = AddStaticVehicleEx(462, 1188.9646, -1360.5306, 13.1573, 0.0000, 1, 1, 60000); // PCJ-600    36
	vehiculosRenta[2] = AddStaticVehicleEx(462, 1188.8898, -1364.8148, 13.1487, 0.0000, 1, 1, 60000); // PCJ-600    37
	vehiculosRenta[3] = AddStaticVehicleEx(462, 1188.7474, -1367.1798, 13.1555, 0.0000, 1, 1, 60000); // PCJ-600    38
	//HireCar LS Motos Ayuntamiento (125 - 132)
   	vehiculosRenta[4] = AddStaticVehicleEx(481,1516.9426,-1740.9094,13.1280,0.6564,1,1,60000); //BICI
	vehiculosRenta[5] = AddStaticVehicleEx(481,1519.6926,-1740.9188,13.1390,0.6819,1,1,60000); //BICI
	vehiculosRenta[6] = AddStaticVehicleEx(481,1522.4230,-1740.9619,13.1282,0.6272,1,1,60000); //BICI
	vehiculosRenta[7] = AddStaticVehicleEx(481,1524.9800,-1740.9399,13.1283,0.6530,1,1,60000); //BICI
	//HireCar LS Carros Aeropuerto (133 - 147)
	vehiculosRenta[8] = AddStaticVehicleEx(445,1556.423461,-2211.869628,13.429610,0.052339,1,1,60000); // Admiral    139
	vehiculosRenta[9] = AddStaticVehicleEx(401,1552.788085,-2212.119140,13.334337,359.923370,1,1,60000); // Bravura  140
	vehiculosRenta[10] = AddStaticVehicleEx(527,1549.522216,-2212.081054,13.270193,0.344349,1,1,60000); // Cadrona    141
	vehiculosRenta[11] = AddStaticVehicleEx(542,1546.203002,-2211.995849,13.297778,0.231546,1,1,60000); // Clover     142
	vehiculosRenta[12] = AddStaticVehicleEx(585,1542.961303,-2211.763671,13.141497,0.857080,1,1,60000); // Emperor    143
	vehiculosRenta[13] = AddStaticVehicleEx(526,1539.667480,-2211.760986,13.321266,359.911529,1,1,60000); // Fortune  144
	vehiculosRenta[14] = AddStaticVehicleEx(426,1536.454589,-2211.585693,13.297459,0.266878,1,1,60000); // Premier    145
	vehiculosRenta[15] = AddStaticVehicleEx(516,1533.163940,-2212.053710,13.388772,1.013363,1,1,60000); // Nebula     146
	vehiculosRenta[16] = AddStaticVehicleEx(421,1529.885009,-2212.194335,13.437132,0.048456,1,1,60000); // Washington 147
	vehiculosRenta[17] = AddStaticVehicleEx(540,1526.460571,-2211.934814,13.415851,359.411499,1,1,60000); // Vincen   148
	// Rent Boats (252 - 257)
	vehiculosRenta[18] = AddStaticVehicleEx(484,572.09997559,-2007.80004883,0.00000000,176.00000000,-1,-1,60000); //Marquis
	vehiculosRenta[19] = AddStaticVehicleEx(454,557.20001221,-2004.40002441,0.00000000,86.00000000,-1,-1,60000); //Tropic
	vehiculosRenta[20] = AddStaticVehicleEx(493,633.90002441,-1956.00000000,0.00000000,174.00000000,-1,-1,60000); //Jetmax
	vehiculosRenta[21] = AddStaticVehicleEx(446,610.00000000,-1954.00000000,-1.00000000,174.00000000,-1,-1,60000); //Squalo
	vehiculosRenta[22] = AddStaticVehicleEx(452,621.29998779,-1956.00000000,0.00000000,174.00000000,-1,-1,60000); //Speeder
	vehiculosRenta[23] = AddStaticVehicleEx(454,556.40002441,-2018.19995117,0.00000000,86.00000000,-1,-1,60000); //Tropic
	// SAMD (39 - 47)
	vehiculosSAMD[0] = AddStaticVehicleEx(416,1097.6229,-1328.4508,13.4449,359.6445,3,3,60000); // Ambulancia  	39
	vehiculosSAMD[1] = AddStaticVehicleEx(416,1110.9609,-1328.4464,13.4448,1.3679,3,3,60000); // Ambulancia    	40
	vehiculosSAMD[2] = AddStaticVehicleEx(416,1123.9703,-1328.4863,13.4420,359.8991,3,3,60000); // Ambulancia      41
	vehiculosSAMD[3] = AddStaticVehicleEx(416,1095.5303,-1315.5038,13.8521,269.5015,1,3,60000); // Ambulancia      42
	vehiculosSAMD[4] = AddStaticVehicleEx(416,1136.3173,-1338.6797,13.8751,0.5538,1,3,60000); // Ambulancia  		43
	vehiculosSAMD[5] = AddStaticVehicleEx(416,1141.5852,-1338.4622,13.7902,1.1260,1,3,60000); // Ambulancia  		44
	vehiculosSAMD[6] = AddStaticVehicleEx(596,1131.2094,-1327.8986,13.3697,0.5494,3,1,60000); // Patrulla LS 		45
	vehiculosSAMD[7] = AddStaticVehicleEx(596,1134.8329,-1309.3987,13.3042,359.3751,3,1,60000); // Patrulla LS 	46
	vehiculosSAMD[8] = AddStaticVehicleEx(563,1162.8477,-1309.0045,32.2224,271.4168,1,3,60000); // Raindance 47
	// La Hermandad (48 - 54)
 	vehiculosLaHermandad[0] = AddStaticVehicleEx(534,1877.6788,-2015.3239,13.2868,179.8463,79,79,60000); // Remington		48
	vehiculosLaHermandad[1] = AddStaticVehicleEx(468,1877.7257,-2025.4558,13.2032,179.8737,79,79,60000); // Sanchez       49
	vehiculosLaHermandad[2] = AddStaticVehicleEx(474,1877.6980,-2035.0145,13.2044,179.5377,79,79,60000); // Hermes        50
	vehiculosLaHermandad[3] = AddStaticVehicleEx(466,1888.5956,-2015.0223,13.2861,179.9924,79,79,60000); // Gleendade     51
	vehiculosLaHermandad[4] = AddStaticVehicleEx(545,1888.5200,-2025.0873,13.2044,179.8876,79,79,60000); // Hermes        52
	vehiculosLaHermandad[5] = AddStaticVehicleEx(567,1888.4783,-2035.2653,13.2046,179.9893,79,79,60000); // Savanna       53
	vehiculosLaHermandad[7] = AddStaticVehicleEx(468,1884.3893,-2012.8998,13.2907,179.4729,79,79,60000); // Sanchez     	54
	// Groove Street (55 - 60)
    vehiculosGrooveStreet[0] = AddStaticVehicleEx(567,2514.033203,-1666.834228,13.196761,146.604492,16,16,60000); // Savanna   55
	vehiculosGrooveStreet[1] = AddStaticVehicleEx(567,2507.031494,-1684.601928,13.144980,238.152038,16,16,60000); // Savanna   56
	vehiculosGrooveStreet[2] = AddStaticVehicleEx(492,2499.072265,-1650.737060,13.307857,152.592132,16,16,60000); // Greenwood  57
	vehiculosGrooveStreet[3] = AddStaticVehicleEx(492,2514.673828,-1679.253051,13.382580,44.357257,16,16,60000); // Greenwood   58
	vehiculosGrooveStreet[4] = AddStaticVehicleEx(517,2470.653320,-1653.038696,13.294920,116.369949,16,16,60000); // Majestic  59
	vehiculosGrooveStreet[5] = AddStaticVehicleEx(517,2458.179443,-1671.415893,13.353937,233.656723,16,16,60000); // Majestic  60
	// Latin Kings (61 - 66)
	vehiculosLatinKings[0] = AddStaticVehicleEx(482,2278.9849,-1038.3428,50.0680,132.7227,6,1,60000); //Burrito 61
	vehiculosLatinKings[1] = AddStaticVehicleEx(600,2275.7161,-1034.9799,50.6073,137.0734,6,1,60000); //Picador 62
	vehiculosLatinKings[2] = AddStaticVehicleEx(474,2272.0862,-1031.4424,51.6779,136.5865,6,1,60000); //Hermes 63
	vehiculosLatinKings[3] = AddStaticVehicleEx(567,2270.1992,-1046.1663,49.8699,46.8058,6,1,60000); //Savanna 64
	vehiculosLatinKings[4] = AddStaticVehicleEx(517,2270.3054,-1054.2903,49.0315,52.5484,6,1,60000); //Majestic 65
	vehiculosLatinKings[5] = AddStaticVehicleEx(475,2251.9172,-1037.6565,53.9322,46.5032,6,1,60000); //Sabre 66
	// Mecánicos LS (67 - 77)
	vehiculosMecanicos[0] = AddStaticVehicleEx(525,1555.3035,-2179.1509,13.5171,270.00000000,-1,103,60000); //Tow Truck    	67
	vehiculosMecanicos[1] = AddStaticVehicleEx(525,1555.2161,-2173.4900,14.0628,270.00000000,-1,103,60000); //Tow Truck    	68
	vehiculosMecanicos[2] = AddStaticVehicleEx(525,1554.9871,-2167.0168,13.9075,270.00000000,-1,103,60000); //Tow Truck    	69
	vehiculosMecanicos[3] = AddStaticVehicleEx(525,1554.6331,-2161.5227,13.5194,270.00000000,-1,103,60000); //Tow Truck     70
	vehiculosMecanicos[4] = AddStaticVehicleEx(525,1554.9430,-2155.3367,14.4679,270.00000000,-1,103,60000); //Tow Truck     71
	vehiculosMecanicos[5] = AddStaticVehicleEx(525,1584.1494,-2166.8643,13.8328,178.00000000,-1,103,60000); //Tow Truck     72
	vehiculosMecanicos[6] = AddStaticVehicleEx(552,1677.33898926,-2159.23535156,13.33159542,90.00000000,96,-1,60000); //Utility         73
	vehiculosMecanicos[7] = AddStaticVehicleEx(552,1677.33886719,-2162.98535156,13.33159542,90.00000000,96,-1,60000); //Utility         74
	vehiculosMecanicos[8] = AddStaticVehicleEx(552,1677.33886719,-2166.49023438,13.33159542,90.00000000,96,-1,60000); //Utility         75
	vehiculosMecanicos[9] = AddStaticVehicleEx(554,1677.54821777,-2173.87011719,13.74968719,90.00000000,96,53,60000); //Yosemite        76
	vehiculosMecanicos[10] = AddStaticVehicleEx(554,1677.54785156,-2170.52099609,13.74968719,90.00000000,96,53,60000); //Yosemite        77
	// Moteros (78-83)
	vehiculosMoteros[0] = AddStaticVehicleEx(463,668.3020,-470.8735,15.8733,90.00000000,0,3,60000); //Freeway		78
	vehiculosMoteros[1] = AddStaticVehicleEx(463,668.3607,-467.8112,15.8615,90.00000000,0,1,60000); //Freeway		79
	vehiculosMoteros[2] = AddStaticVehicleEx(463,668.0578,-464.3808,15.8735,90.00000000,0,1,60000); //Freeway    	80
	vehiculosMoteros[3] = AddStaticVehicleEx(463,668.4078,-461.6642,15.8745,90.00000000,0,1,60000); //Freeway       81
	vehiculosMoteros[4] = AddStaticVehicleEx(463,668.2161,-458.4044,15.8766,0.00000000,0,1,60000); //Freeway       82
	vehiculosMoteros[5] = AddStaticVehicleEx(463,668.6605,-474.0596,15.8763,0.00000000,0,1,60000); //Freeway 		83
	// Ballas (84-87)
	vehiculosBallas[0] = AddStaticVehicleEx(517,2234.8367,-1418.8125,23.7646,90.7258,147,1,60000); //landstaker  		84
    vehiculosBallas[1] = AddStaticVehicleEx(412,2240.7791,-1412.6093,23.7481,88.2374,147,1, 60000); // ballas
	vehiculosBallas[2] = AddStaticVehicleEx(492,2245.5205,-1418.7866,23.6926,91.3633,147,1,60000); //Sentinel		86
    vehiculosBallas[3] = AddStaticVehicleEx(585,2251.1768,-1412.7244,23.4998,88.7860,147,147,60000); //Camioneta
 	// Mafia Italiana (88 - 98)
	vehiculosLCN[0] = AddStaticVehicleEx(487,1156.0237,-2019.9352,69.1782,95.6593,54,29,60000); //Maverick	    	89
	vehiculosLCN[1] = AddStaticVehicleEx(560,1259.286010,-2012.548950,59.145359,269.972534,0,0,60000); // Sultan      90
	vehiculosLCN[2] = AddStaticVehicleEx(560,1259.231079,-2015.927124,59.147296,268.529296,0,0,60000); // Sultan      91
	vehiculosLCN[3] = AddStaticVehicleEx(580,1258.436401,-2039.223754,59.259601,271.035675,0,0,60000); // Stafford    92
	vehiculosLCN[4] = AddStaticVehicleEx(580,1268.647216,-2039.133544,58.958675,90.153411,0,0,60000); // Stafford     93
	vehiculosLCN[5] = AddStaticVehicleEx(579,1268.526733,-2017.254272,59.105506,91.021903,0,0,60000); // Huntley      94
	vehiculosLCN[6] = AddStaticVehicleEx(409,1265.397583,-2059.459228,59.089286,268.428039,0,0,60000); // Stetch      95
	vehiculosLCN[7] = AddStaticVehicleEx(521,1259.4476,-2020.8646,59.0056,268.7068,0,3,60000); //FCR-900				96
	vehiculosLCN[8] = AddStaticVehicleEx(521,1259.6389,-2025.1091,59.0002,268.0077,0,3,60000); //FCR-900				97
	vehiculosLCN[9] = AddStaticVehicleEx(454,555.79998779,-2032.50000000,0.00000000,86.00000000,-1,-1,60000); //Tropic
    vehiculosLCN[10] = AddStaticVehicleEx(493,663.50000000,-1990.40002441,0.00000000,84.00000000,-1,-1,60000); //Jetmax
	// Mafia Yakuza (99 - 105)
	vehiculosYakuza[0] = AddStaticVehicleEx(487,284.7756,-1191.6740,83.4046,313.3094,1,1,60000); //Maverick      100
	vehiculosYakuza[1] = AddStaticVehicleEx(421,300.1776,-1184.2240,80.7965,313.4090,1,1,60000); // Washington   101
	vehiculosYakuza[2] = AddStaticVehicleEx(421,289.3760,-1173.1157,80.7945,314.8468,1,1,60000); // Washington   102
	vehiculosYakuza[3] = AddStaticVehicleEx(409,286.1261,-1159.3438,80.7120,223.2264,1,1,60000); // Stetch       103
	vehiculosYakuza[4] = AddStaticVehicleEx(477,296.4089,-1180.6697,80.6678,312.9961,1,1,60000); // ZR-350       104
	vehiculosYakuza[5] = AddStaticVehicleEx(477,292.6966,-1176.8223,80.6680,312.6440,1,1,60000); // ZR-350       105
	vehiculosYakuza[6] = AddStaticVehicleEx(454,554.70001221,-2046.19995117,0.00000000,86.00000000,-1,-1,60000); //Tropic
	// Mafia Rusa (106 - 114)
	vehiculosRusos[0] = AddStaticVehicleEx(487,753.0640,-1260.0903,13.7613,87.4251,3,3,60000); // HelicopteroBratva 108
	vehiculosRusos[1] = AddStaticVehicleEx(587,682.820617,-1298.060913,13.343244,59.179347,3,3,60000); // Euros 	109
	vehiculosRusos[2] = AddStaticVehicleEx(587,682.641357,-1303.870361,13.343059,59.926479,3,3,60000); // Euros 	110
	vehiculosRusos[3] = AddStaticVehicleEx(560,660.4418,-1294.5135,13.3939,180.278610,3,3,60000); // Sultan			111
	vehiculosRusos[4] = AddStaticVehicleEx(500,660.5356,-1277.7412,13.4050,180.059020,3,3,60000); // Mesa			112
	vehiculosRusos[5] = AddStaticVehicleEx(409,660.3193,-1286.2423,13.3451,179.893463,3,3,60000); // Stetch    		113
	vehiculosRusos[6] = AddStaticVehicleEx(521,680.255493,-1256.782348,13.162422,119.174400,3,3,60000); // FCR-900  114
	vehiculosRusos[7] = AddStaticVehicleEx(521,680.837829,-1260.290527,13.159105,119.163414,3,3,60000); // FCR-900 	115
	vehiculosRusos[8] = AddStaticVehicleEx(454,553.40002441,-2060.19995117,0.00000000,86.00000000,-1,-1,60000); //Tropic
	//Gobierno (115 - 119)
	vehiculosGobierno[0] = AddStaticVehicleEx(487,1352.80151367,-1646.44958496,18.08156967,0.00000000,-1,133,60000); //Maverick 	118
	vehiculosGobierno[1] = AddStaticVehicleEx(409,1363.14257812,-1658.98486328,13.40606880,270.00000000,-1,133,60000) //Stretch  	119
	vehiculosGobierno[2] = AddStaticVehicleEx(445,1361.64257812,-1650.87536621,13.29033661,270.00000000,-1,133,60000) //Admiral 	120
	vehiculosGobierno[3] = AddStaticVehicleEx(445,1361.64257812,-1643.37890625,13.29033661,270.00000000,-1,133,60000) //Admiral 	121
	vehiculosGobierno[4] = AddStaticVehicleEx(409,1363.2819,-1635.4894,13.1828,270.00000000,-1,133,60000) //Stretch                122
	// CNN Vehículos (120 - 124)
	vehiculosCNN[0] = AddStaticVehicleEx(582,740.687255,-1334.894653,13.601684,230.120437,2,1,60000); // News Van 125
	vehiculosCNN[1] = AddStaticVehicleEx(582,746.701599,-1334.121826,13.597522,230.621170,2,1,60000); // News Van 126
	vehiculosCNN[2] = AddStaticVehicleEx(582,753.755615,-1333.973510,13.593895,231.211013,2,1,60000); // News Van 127
	vehiculosCNN[3] = AddStaticVehicleEx(488,743.5662,-1372.6359,25.9022,358.8606,2,1,60000); // San News 			128
	vehiculosCNN[4] = AddStaticVehicleEx(493,665.20001221,-1960.69995117,0.00000000,130.00000000,-1,-1,60000); //Jetmax 
	// Practise Car LS (148 - 152)
	vehiculosTestLicencias[0] = AddStaticVehicleEx(421,2065.262207,-1918.597290,13.429368,1.480812,1,1,60000); // Washington    154
	vehiculosTestLicencias[1] = AddStaticVehicleEx(421,2062.163085,-1918.677490,13.849746,1.480680,1,1,60000); // Washington    155
	vehiculosTestLicencias[2] = AddStaticVehicleEx(421,2058.549560,-1918.771118,13.833255,1.480680,1,1,60000); // Washington    156
	vehiculosTestLicencias[3] = AddStaticVehicleEx(421, 2117.3010, -2434.1685, 14.0596, 163.0440, 1, 1,60000); // Washington    157
	vehiculosTestLicencias[4] = AddStaticVehicleEx(453, 2498.0916, -2268.2861, 0.4534, 267.2552, 1, 1,60000); //Squalo
	// Train (153 - 156)
	vehiculosTren[0] = AddStaticVehicleEx(538,1700.7551,-1953.6531,14.8756,200.0,-1,-1, 30000); // Train 160-163
	// Sweeper (157 - 162)
	vehiculosBarrendero[0] = AddStaticVehicleEx(574,1668.6692,-1896.1118,13.2720,268.0269,26,26,30000); // Barrendero 164
	vehiculosBarrendero[1] = AddStaticVehicleEx(574,1668.7383,-1891.4990,13.2720,270.7320,26,26,30000); // Barrendero 165
	vehiculosBarrendero[2] = AddStaticVehicleEx(574,1668.7280,-1886.8180,13.2720,268.9658,26,26,30000); // Barrendero 166
	vehiculosBarrendero[3] = AddStaticVehicleEx(574,1648.0117,-1886.5215,13.2906,88.000,26,26,30000); // Barrendero 	 167
	vehiculosBarrendero[4] = AddStaticVehicleEx(574,1648.1605,-1891.7621,13.2899,88.000,26,26,30000); // Barrendero 	 168
	vehiculosBarrendero[5] = AddStaticVehicleEx(574,1648.1470,-1895.4053,13.2896,88.000,26,26,30000); // Barrendero 	 169
	// Planes (163 - 167)
	vehiculosPilotos[0] = AddStaticVehicleEx(519,1422.52661133,-2442.94995117,15.22200012,180.00000000,53,1,30000); //Shamal  170
	vehiculosPilotos[1] = AddStaticVehicleEx(553,1471.54858398,-2440.02978516,15.78968716,182.00000000,1,53,30000); //Nevada  171
	vehiculosPilotos[2] = AddStaticVehicleEx(519,1451.6981,-2631.3005,14.4640,268.6503,1,1,60000); // Shamal  				172
	vehiculosPilotos[3] = AddStaticVehicleEx(553,1566.4611,-2643.8928,14.4698,11.7026,6,1,60000); // Nevada   				173
	vehiculosPilotos[4] = AddStaticVehicleEx(577,2003.3944,-2452.6799,14.4688,127.0967,1,1,60000); // AT400   			174
	// Narcotraficantes (168 - 182)
	vehiculosTraficantes[0] = AddStaticVehicleEx(487,-1185.8750,-1192.1776,129.3959,268.3604,0,0,60000); // maverick 		175
	vehiculosTraficantes[1] = AddStaticVehicleEx(532,-1004.9100,-1059.9202,130.1992,91.9248,0,0,60000); // Combine  176
	vehiculosTraficantes[2] = AddStaticVehicleEx(532,-1005.0146,-1048.2922,130.1916,91.9248,0,0,60000); // Combine  177
	vehiculosTraficantes[3] = AddStaticVehicleEx(532,-1004.5343,-1036.0684,130.1953,91.9248,0,0,60000); // Combine  178
	vehiculosTraficantes[4] = AddStaticVehicleEx(442,-1166.8616,-1216.8577,129.0304,315.3459,0,0,60000); // Romero 179
	vehiculosTraficantes[5] = AddStaticVehicleEx(442,-1144.6677,-1217.1616,129.0493,246.9406,0,0,60000); // Romero  180
	vehiculosTraficantes[6] = AddStaticVehicleEx(442,-1123.1732,-1156.5939,129.0621,153.0297,0,0,60000); // Romero  181
	vehiculosTraficantes[7] = AddStaticVehicleEx(521,-1068.6520,-1179.4266,128.7794,241.1949,0,0,60000); // FCR-900  182
	vehiculosTraficantes[8] = AddStaticVehicleEx(521,-1037.7664,-1176.7258,128.7872,49.6653,0,0,60000); // FCR-900  183
	vehiculosTraficantes[9] = AddStaticVehicleEx(521,-1035.9081,-1197.5005,128.7833,38.8553,0,0,60000); // FCR-900  184
	vehiculosTraficantes[10] = AddStaticVehicleEx(521,-1024.5863,-1161.8444,128.7841,117.9461,0,0,60000); // FCR-900 185
	vehiculosTraficantes[11] = AddStaticVehicleEx(560,-1023.1431,-1136.9429,128.9222,90.0000,0,0,60000); // Sultan   186
	vehiculosTraficantes[12] = AddStaticVehicleEx(560,-1023.1059,-1140.7585,128.9239,90.0000,0,0,60000); // Sultan  187
	vehiculosTraficantes[13] = AddStaticVehicleEx(560,-1023.2950,-1143.8713,128.9243,90.0000,0,0,60000); // Sultan 188
	vehiculosTraficantes[14] = AddStaticVehicleEx(560,-1023.1422,-1147.3424,128.9236,90.0000,0,0,60000); // Sultan 189
	vehiculosCosechadoras[0] = vehiculosTraficantes[1];
	vehiculosCosechadoras[1] = vehiculosTraficantes[2];
	vehiculosCosechadoras[2] = vehiculosTraficantes[3];
	// Pizza Bike's (183 - 189)
	vehiculosPizzeros[0] = AddStaticVehicleEx(448,2098.1230,-1793.0132,12.9839,90.0772,3,6,60000); // Pizza Bike 190
	vehiculosPizzeros[1] = AddStaticVehicleEx(448,2098.2832,-1795.6893,12.9883,91.5060,3,6,60000); // Pizza Bike 191
	vehiculosPizzeros[2] = AddStaticVehicleEx(448,2098.3613,-1798.0608,12.9877,91.7122,3,6,60000); // Pizza Bike 192
	vehiculosPizzeros[3] = AddStaticVehicleEx(448,2098.3203,-1800.7795,12.9845,85.5136,3,6,60000); // Pizza Bike 193
	vehiculosPizzeros[4] = AddStaticVehicleEx(448,2098.2366,-1813.5295,12.9579,87.1491,3,6,60000); // Pizza Bike 194
	vehiculosPizzeros[5] = AddStaticVehicleEx(448,2098.3098,-1816.9644,12.9802,86.0768,3,6,60000); // Pizza Bike 195
	vehiculosPizzeros[6] = AddStaticVehicleEx(448,2098.3701,-1821.2499,12.9777,94.8276,3,6,60000); // Pizza Bike 196
	// SAEM Cars (190 - 215)
	vehiculosSAEM[0] = AddStaticVehicleEx(470,2786.89990234,-2456.00000000,13.80000019,91.99951172,-1,-1,60000); //Patriot	   197
	vehiculosSAEM[1] = AddStaticVehicleEx(470,2795.60009766,-2455.89990234,13.80000019,91.99951172,-1,-1,60000); //Patriot    198
	vehiculosSAEM[2] = AddStaticVehicleEx(468,2779.10009766,-2425.39990234,13.39999962,0.00000000,16,1,60000); //Sanchez      199
	vehiculosSAEM[3] = AddStaticVehicleEx(468,2776.80004883,-2425.30004883,13.39999962,0.00000000,16,1,60000); //Sanchez      200
	vehiculosSAEM[4] = AddStaticVehicleEx(471,2776.50000000,-2408.69995117,13.19999981,180.00000000,37,16,60000); //Quad      201
	vehiculosSAEM[5] = AddStaticVehicleEx(471,2782.30004883,-2408.69995117,13.19999981,180.00000000,37,16,60000); //Quad      202
	vehiculosSAEM[6] = AddStaticVehicleEx(563,2712.60009766,-2351.39990234,31.20000076,89.99450684,4,16,60000); //Raindance   203
	vehiculosSAEM[7] = AddStaticVehicleEx(425,2732.19995117,-2351.39990234,31.20000076,89.99499512,-1,-1,60000); //Hunter     204
	vehiculosSAEM[8] = AddStaticVehicleEx(563,2692.00000000,-2350.89941406,31.20000076,90.00000000,4,16,60000); //Raindance   205
	vehiculosSAEM[9] = AddStaticVehicleEx(520,2645.00000000,-2380.69921875,31.00000000,0.00000000,-1,-1,60000); //Hydra       206
	vehiculosSAEM[10] = AddStaticVehicleEx(476,2670.80004883,-2379.10009766,31.20000076,0.00000000,4,16,60000); //Rustler      207
	vehiculosSAEM[11] = AddStaticVehicleEx(476,2656.89990234,-2379.39990234,31.20000076,0.00000000,4,16,60000); //Rustler      208
	vehiculosSAEM[12] = AddStaticVehicleEx(520,2632.00000000,-2380.60009766,31.00000000,0.00000000,-1,-1,60000); //Hydra       209
	vehiculosSAEM[13] = AddStaticVehicleEx(425,2732.10009766,-2380.00000000,31.20000076,89.98950195,-1,-1,60000); //Hunter     210
	vehiculosSAEM[14] = AddStaticVehicleEx(548,2687.39990234,-2379.50000000,32.20000076,90.00000000,-1,-1,60000); //Cargobob   211
	vehiculosSAEM[15] = AddStaticVehicleEx(548,2708.69995117,-2379.60009766,32.20000076,90.00000000,-1,-1,60000); //Cargobob   212
	vehiculosSAEM[16] = AddStaticVehicleEx(470,2779.30004883,-2456.19995117,13.80000019,91.99401855,-1,-1,60000); //Patriot    213
	vehiculosSAEM[17] = AddStaticVehicleEx(433,2794.39990234,-2417.89990234,14.19999981,92.00000000,-1,-1,60000); //Barracks   214
	vehiculosSAEM[18] = AddStaticVehicleEx(433,2782.69995117,-2417.80004883,14.19999981,90.00000000,-1,-1,60000); //Barracks   215
	vehiculosSAEM[19] = AddStaticVehicleEx(432,2793.00000000,-2494.60009766,13.69999981,90.00000000,-1,-1,60000); //Rhino      216
	vehiculosSAEM[20] = AddStaticVehicleEx(432,2781.19995117,-2494.60009766,13.69999981,90.00000000,-1,-1,60000); //Rhino      217
	vehiculosSAEM[21] = AddStaticVehicleEx(472,2768.39990234,-2583.10009766,0.00000000,270.00000000,-1,-1,60000); //Coastguard 218
	vehiculosSAEM[22] = AddStaticVehicleEx(472,2757.30004883,-2583.10009766,0.00000000,270.00000000,-1,-1,60000); //Coastguard 219
	vehiculosSAEM[23] = AddStaticVehicleEx(472,2746.00000000,-2583.00000000,0.00000000,270.00000000,-1,-1,60000); //Coastguard 220
	vehiculosSAEM[24] = AddStaticVehicleEx(473,2723.39990234,-2583.19995117,0.00000000,268.00000000,-1,-1,60000); //Dinghy 221
	vehiculosSAEM[25] = AddStaticVehicleEx(472,2733.50000000,-2583.19995117,0.00000000,270.00000000,-1,-1,60000); //Coastguard 222
	// FBI Cars (216 - 225)
	vehiculosFBI[0] = AddStaticVehicleEx(487,914.3138,-1015.5195,111.2309,1.2336,0,0,60000);   //Maverick         223
	vehiculosFBI[1] = AddStaticVehicleEx(490,882.9553,-1051.1324,31.7305,270.6666,-1,-1,60000); //FBI Rancher     224
    vehiculosFBI[2] = AddStaticVehicleEx(490,883.0836,-1046.2347,31.7312,269.8616,-1,-1,60000); //FBI Rancher     225
    vehiculosFBI[3] = AddStaticVehicleEx(490,883.1074,-1041.3933,31.7304,269.5601,-1,-1,60000); //FBI Rancher     226
    vehiculosFBI[4] = AddStaticVehicleEx(490,900.2916,-1052.3723,31.7092,271.2446,-1,-1,60000); //FBI Rancher     227
    vehiculosFBI[5] = AddStaticVehicleEx(490,910.4120,-1052.0814,31.6745,272.0134,-1,-1,60000); //FBI Rancher     228
    vehiculosFBI[6] = AddStaticVehicleEx(507,921.4523,-1052.0695,31.4261,271.3322,0,0,60000);   //Elegant         229
    vehiculosFBI[7] = AddStaticVehicleEx(507,931.7161,-1051.5729,31.4254,272.1486,0,0,60000);   //Elegant         230
    vehiculosFBI[8] = AddStaticVehicleEx(595,598.7766,-2003.6339,0.0178,355.9137,-1,-1,60000); //Launch
	vehiculosFBI[9] = AddStaticVehicleEx(595,610.0480,-2004.6071,-0.2140,354.7550,-1,-1,60000); //Launch
    // Hitman Cars (226 - 228)
    vehiculosHitman[0] = AddStaticVehicleEx(560,-261.5185,-2146.1267,28.7624,136.6198,0,0,60000); //Sultan      233
    vehiculosHitman[0] = AddStaticVehicleEx(560,-259.3938,-2154.0054,28.7965,99.7559,0,0,60000); //Sultan      234
    vehiculosHitman[0] = AddStaticVehicleEx(482,-258.4031,-2164.0430,29.1948,103.0483,0,0,60000); //Burrito     235
    //Autos de Corte Judicial (229 - 232)
    vehiculosJuzgados[0] = AddStaticVehicleEx(405,1522.9946,-1549.1818,13.2936,270.3260,1,1,60000); //Sentinel
    vehiculosJuzgados[1] = AddStaticVehicleEx(507,1522.8800,-1552.3274,13.2930,270.3498,1,1,60000); //Elegant
    vehiculosJuzgados[2] = AddStaticVehicleEx(580,1522.4932,-1555.5957,13.2949,270.1446,1,1,60000); //Stafford
    vehiculosJuzgados[3] = AddStaticVehicleEx(579,1522.6097,-1558.4924,13.2941,270.6899,1,1,60000); //Huntley
    // Camioneros Cars (233 - 240)
    vehiculosCamioneros[0] = AddStaticVehicleEx(456,2217.5012,-2606.6030,13.6472,179.9134,-1,-1,60000); //Mule 242
    vehiculosCamioneros[1] = AddStaticVehicleEx(456,2217.3772,-2615.5388,13.6405,179.7724,-1,-1,60000); //Mule 243
    vehiculosCamioneros[2] = AddStaticVehicleEx(498,2217.3928,-2625.3667,13.6407,179.8098,-1,-1,60000); //Mule 244
    vehiculosCamioneros[3] = AddStaticVehicleEx(498,2203.3933,-2641.7988,13.6408,270.5010,-1,-1,60000); //Mule 245
    vehiculosCamioneros[4] = AddStaticVehicleEx(499,2222.2065,-2667.6165,13.6347,5.1526,-1,-1,60000); //Mule 246
    vehiculosCamioneros[5] = AddStaticVehicleEx(499,2193.8635,-2647.7454,13.6406,269.7316,-1,-1,60000); //Mule 247
    vehiculosCamioneros[6] = AddStaticVehicleEx(414,2222.4839,-2678.4028,13.6348,359.3468,-1,-1,60000); //Mule 246
    vehiculosCamioneros[7] = AddStaticVehicleEx(414,2203.0740,-2634.8933,13.6406,269.8508,-1,-1,60000); //Mule 247
    // Pescadores Barcos (241 - 244)
    vehiculosPescadores[0] = AddStaticVehicleEx(453,645.90002441,-2021.69995117,0.00000000,175.99548340,-1,-1,60000); //Reefer
	vehiculosPescadores[1] = AddStaticVehicleEx(453,634.70001221,-2020.80004883,0.00000000,175.99548340,-1,-1,60000); //Reefer
	vehiculosPescadores[2] = AddStaticVehicleEx(453,609.20001221,-2018.80004883,0.00000000,176.00000000,-1,-1,60000); //Reefer
	vehiculosPescadores[3] = AddStaticVehicleEx(453,597.09997559,-2018.09997559,0.00000000,176.00000000,-1,-1,60000); //Reefer
	// Piratas del Asfalto (245 - 251)
	vehiculosPiratasAsfalto[0] = AddStaticVehicleEx(470,1067.2734,-288.4244,73.7953,180.4567,10,10,60000); // Burrito
    vehiculosPiratasAsfalto[1] = AddStaticVehicleEx(468,1070.8168,-288.3434,73.7960,178.8188,10,10,60000); // Sanchez
    vehiculosPiratasAsfalto[2] = AddStaticVehicleEx(468,1074.0359,-288.2414,73.7924,179.1789,10,10,60000); // Sanchez
    vehiculosPiratasAsfalto[3] = AddStaticVehicleEx(482,1077.3967,-288.2927,73.7902,177.8422,10,10,60000); // Burrito
    vehiculosPiratasAsfalto[4] = AddStaticVehicleEx(568,1088.8794,-317.4892,73.7965,125.2607,10,10,60000); // Huntley
    vehiculosPiratasAsfalto[5] = AddStaticVehicleEx(579,1032.5238,-309.3335,73.7949,179.2606,10,10,60000); // Huntley
    vehiculosPiratasAsfalto[6] = AddStaticVehicleEx(443,1016.1971,-323.4321,74.1905,225.3353,10,10,60000); // Meverick
	//-=========================================== [][][] ==================================================- //

	for(new i; i<VV; i++)
	{
		new string[32];
		format(string, 128, "LS - %d",i);
		SetVehicleNumberPlate(i, string);
		SetVehicleToRespawn(i);
	}
	for(new c = VV; c < sizeof(CarInfo); c++)
	{
		AddStaticVehicleEx(CarInfo[c][cModel],CarInfo[c][cLocationx],CarInfo[c][cLocationy],CarInfo[c][cLocationz]+1.0,CarInfo[c][cAngle],CarInfo[c][cColorOne],CarInfo[c][cColorTwo],60000);
		SetVehicleParamsEx(c,0,0,0,CarInfo[c][cLock],0,0,0);
		if(CarInfo[c][cOwned] == 0)
		{
			SetVehicleNumberPlate(c, "For Sale");
			SetVehicleVirtualWorld(c, 0);
			CarInfo[c][cBattery] = 0;
			CarInfo[c][cVehTime] = 1999999999;
			CarInfo[c][cGPS] = 0;
		}
		else
		{
			SetVehicleNumberPlate(c, CarInfo[c][cPlate]);
			SetVehicleVirtualWorld(c, 5);
		}
		SetVehicleToRespawn(c);
	}
}

function LoadCar()
{
	new arrCoords[34][64], strFromFile2[256];
	new File: file = fopen("cars.cfg", io_read);
	if (file)
	{
		new idx = VV;
		while (idx < sizeof(CarInfo))
		{
			fread(file, strFromFile2);
			split(strFromFile2, arrCoords, ',');
			CarInfo[idx][cModel] 		= strval(arrCoords[0]);
			CarInfo[idx][cLocationx] 	= floatstr(arrCoords[1]);
			CarInfo[idx][cLocationy] 	= floatstr(arrCoords[2]);
			CarInfo[idx][cLocationz] 	= floatstr(arrCoords[3]);
			CarInfo[idx][cAngle] 		= floatstr(arrCoords[4]);
			CarInfo[idx][cColorOne] 	= strval(arrCoords[5]);
			CarInfo[idx][cColorTwo] 	= strval(arrCoords[6]);
			strmid(CarInfo[idx][cOwner], arrCoords[7], 0, strlen(arrCoords[7]), 255);
			strmid(CarInfo[idx][cName], arrCoords[8], 0, strlen(arrCoords[8]), 255);
			CarInfo[idx][cValue] 		= strval(arrCoords[9]);
			CarInfo[idx][cOwned] 		= strval(arrCoords[10]);
			CarInfo[idx][cLock] 		= strval(arrCoords[11]);
			CarInfo[idx][cBattery] 		= strval(arrCoords[12]);
			CarInfo[idx][cSpoiler] 		= strval(arrCoords[13]);
			CarInfo[idx][cHood] 		= strval(arrCoords[14]);
			CarInfo[idx][cRoof] 		= strval(arrCoords[15]);
			CarInfo[idx][cSideskirt] 	= strval(arrCoords[16]);
			CarInfo[idx][cNitro] 		= strval(arrCoords[17]);
			CarInfo[idx][cLamps] 		= strval(arrCoords[18]);
			CarInfo[idx][cExhaust] 		= strval(arrCoords[19]);
			CarInfo[idx][cWheel] 		= strval(arrCoords[20]);
			CarInfo[idx][cHydraulics] 	= strval(arrCoords[21]);
			CarInfo[idx][cPaintjob] 	= strval(arrCoords[22]);
			CarInfo[idx][cFrontBumper] 	= strval(arrCoords[23]);
			CarInfo[idx][cRearBumper] 	= strval(arrCoords[24]);
			CarInfo[idx][cVents] 		= strval(arrCoords[25]);
			CarInfo[idx][cEmbargo] 		= strval(arrCoords[26]);
			CarInfo[idx][cMulta] 		= strval(arrCoords[27]);
			strmid(CarInfo[idx][cPlate], arrCoords[28], 0, strlen(arrCoords[28]), 255);
			CarInfo[idx][cGas] 			= strval(arrCoords[29]);
			CarInfo[idx][cAlarm] 		= strval(arrCoords[30]);
			CarInfo[idx][cVehTime]      = strval(arrCoords[31]);
			CarInfo[idx][cGPS]          = strval(arrCoords[32]);
			idx++;
		}
		printf("%d Coches en venta", idx);
	}
	return 1;
}

function UpdateCars()
{
	new idx, File: file2, coordsstring[256];
	idx = VV;
	while (idx < sizeof(CarInfo))
	{
		format(coordsstring, sizeof(coordsstring), "%d,%f,%f,%f,%f,%d,%d,%s,%s,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%s,%d,%d,%d,%d\n",
			CarInfo[idx][cModel],
			CarInfo[idx][cLocationx],
			CarInfo[idx][cLocationy],
			CarInfo[idx][cLocationz],
			CarInfo[idx][cAngle],
			CarInfo[idx][cColorOne],
			CarInfo[idx][cColorTwo],
			CarInfo[idx][cOwner],
			CarInfo[idx][cName],
			CarInfo[idx][cValue],
			CarInfo[idx][cOwned],
			CarInfo[idx][cLock],
			CarInfo[idx][cBattery],
			CarInfo[idx][cSpoiler],
			CarInfo[idx][cHood],
			CarInfo[idx][cRoof],
			CarInfo[idx][cSideskirt],
			CarInfo[idx][cNitro],
			CarInfo[idx][cLamps],
			CarInfo[idx][cExhaust],
			CarInfo[idx][cWheel],
			CarInfo[idx][cHydraulics],
			CarInfo[idx][cPaintjob],
			CarInfo[idx][cFrontBumper],
			CarInfo[idx][cRearBumper],
			CarInfo[idx][cVents],
			CarInfo[idx][cEmbargo],
			CarInfo[idx][cMulta],
			CarInfo[idx][cPlate],
			CarInfo[idx][cGas],
			CarInfo[idx][cAlarm],
			CarInfo[idx][cVehTime],
			CarInfo[idx][cGPS]);

		if(idx == VV)	file2 = fopen("cars.cfg", io_write);
		else			file2 = fopen("cars.cfg", io_append);

		fwrite(file2, coordsstring);
		idx++;
		fclose(file2);
	}
}

function vehiculosTimer() {
	for(new h = VV; h < sizeof(CarInfo); h++)
	{
		if(CarInfo[h][cBattery] == 0)
		{
			new engine,lights,alarm,doors,bonnet,boot,objective;
			GetVehicleParamsEx(h,engine,lights,alarm,doors,bonnet,boot,objective);
			SetVehicleParamsEx(h,0,lights,alarm,doors,bonnet,boot,objective);
			engineOn[h] = false;
			return 1;
		}
		if(NoWheels[h] > 0)
		{
			new component = GetVehicleComponentInSlot(h, CARMODTYPE_WHEELS);
			new panels, doors, lights, tires;
			GetVehicleDamageStatus(h, panels, doors, lights, tires);
			if (component == 1025)
			{
				UpdateVehicleDamageStatus(h, panels, doors, lights, 15);
				SetVehicleVelocity(h, 0.0, 0.0, 0.0);
				return 1;
			}
			else
			{
				NoWheels[h] = 0;
				UpdateVehicleDamageStatus(h, panels, doors, lights, 0);
			}
		}
	}
	return 1;
}

function TimerVeh()
{
	for(new c = VV; c < sizeof(CarInfo); c++)
	{
		if(CarInfo[c][cVehTime] <= gettime())
		{
			CarInfo[c][cOwned] = 0;
			strmid(CarInfo[c][cOwner], "Nadie", 0, strlen("Nadie"), 999);
			CarInfo[c][cEmbargo] = 0;
			CarInfo[c][cMulta] = 0;
			CarInfo[c][cVehTime] = 1999999999;
			CarInfo[c][cLock] = 0;
			SetVehicleVirtualWorld(c, 0);
			strmid(CarInfo[c][cPlate], "For Sale", 0, strlen("For Sale"), 999);
			SetVehicleNumberPlate(c,CarInfo[c][cPlate]);
			RespawnVehicle(c);
		}
	}
	return 1;
}

function IsAnOwnableCar(vehicleid)
{
	if(vehicleid >= VV && vehicleid < VEH) { return 1; }
	return 0;
}

//Comandos sobre vehiculos
zcmd(carsno, playerid, params[]){
	new string[128];
	if(PlayerInfo[playerid][pAdminCP] < 5) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	CheckAntiAbusos(playerid)
	for(new h = VV; h < sizeof(CarInfo); h++)
	{
		if(CarInfo[h][cOwned] == 0 && CarInfo[h][cValue] != 999999999)
		{
			format(string, sizeof(string), "{FFFFFF}Modelo: %s	- CarID: %d\n", GetVehicleFriendlyName(h), h);
			Message(playerid, 0xC0C0C0FF, string);
		}
	}
	return 1;
}
zcmd(rtc, playerid, params[]){
	if(PlayerInfo[playerid][pAdminCP] < 2) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	CheckAntiAbusos(playerid)
	RespawnVehicle(GetPlayerVehicleID(playerid));
	RemovePlayerFromVehicle(playerid);
	return TogglePlayerControllable(playerid, 1);
}
zcmd(rtcar, playerid, params[]){
	if(PlayerInfo[playerid][pAdminCP] < 2) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	CheckAntiAbusos(playerid)
	if(!sscanf(params, "i", params[0])){
		RespawnVehicle(params[0]);
		new string[64]
		format(string, sizeof(string), "{B1AAB2}Respawneaste el auto [%d]", params[0]); Message(playerid, -1, string);
	} else Message(playerid, COLOR_GRAD2, "Utilice: /rtcar <VehicleID>");
	return 1;
}
zcmd(carid, playerid, params[]){
	if(PlayerInfo[playerid][pAdminCP] < 2) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	CheckAntiAbusos(playerid)
	for(new i; i != MAX_VEHICLES; i++)
	{
		new Float:x,Float:y,Float:z;
		GetVehiclePos(i, x, y, z);
		if(PlayerToPoint(3.0,playerid, x, y, z))
		{
			new string[64];
			format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~Carid:~r~%d", i);
			GameTextForPlayer(playerid, string, 3000, 3);
			break;
		}
	}return 1;
}
zcmd(setvwcar, playerid, params[]){
	if(PlayerInfo[playerid][pAdminCP] < 3) return Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	CheckAntiAbusos(playerid)
	if(!sscanf(params, "id", params[0], params[1])){
		SetVehicleVirtualWorld(params[0], params[1]);
	} else Message(playerid, COLOR_GRAD2, "Utilice: /setvwcar <VehicleID> <VirtualWorld>");
	return 1;
}
zcmd(rac, playerid, params[]){
	if(!IsPlayerConnected(playerid)) return Message(playerid, COLOR_GRAD2, "¡Primero Conectate!");
	CheckAntiAbusos(playerid)
	if(PlayerInfo[playerid][pAdminCP] >= 4){
		new bool:unwanted[CAR_AMOUNT];
		for(new player=0; player<MAX_PLAYERS; player++){
			if(IsPlayerInAnyVehicle(player)) { unwanted[GetPlayerVehicleID(player)]=true; }
		}
		for(new car = 1; car <= VV; car++)
		{
			if(!unwanted[car]) SetVehicleToRespawn(car);
			SetVehicleParamsEx(car,0,0,0,0,0,0,0);
			engineOn[car] = false;
		}
		new string[128]
		format(string, sizeof(string), "Respawn general realizado por %s.", PlayerName(playerid));
		BroadCast(COLOR_GREEN,string);
	} else Message(playerid, COLOR_GRAD2, "¡No autorizado!");
	return 1;
}
zcmd(rsinuso, playerid, params[])
{
	if(PlayerInfo[playerid][pAdminCP] < 4)return Message(playerid, COLOR_GRAD2, "¡No puedes utilizar este comando!");
	CheckAntiAbusos(playerid)

	GlobalMsg(COLOR_GREEN, "* Todos los vehículos sin uso fueron respawneados.");
	if(PlayerInfo[playerid][pAdminCP] > 3)
	{
		new bool:unwanted[VEH];
		Loop(i, MAX_PLAYERS)
		{
			if(IsPlayerConnected(i))
			{
				if(IsPlayerInAnyVehicle(i)) unwanted[GetPlayerVehicleID(i)] = true;
			}
		}
		Loop(car, MAX_VEHICLES)
		{
			if(!unwanted[car]) RespawnVehicle(car);
		}
	}

	return 1;
}