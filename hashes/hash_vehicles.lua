STRING_VEHICLES = {
    "ARMOREDCAR01X",
    "ARMOREDCAR03X",
    "ARMYSUPPLYWAGON",
    "BOATSTEAM02X",
    "BREACH_CANNON",
    "BUGGY01",
    "BUGGY02",
    "BUGGY03",
    "CABOOSE01X",
    "CANOE",
    "CANOETREETRUNK",
    "CART01",
    "CART02",
    "CART03",
    "CART04",
    "CART05",
    "CART06",
    "CART07",
    "CART08",
    "CHUCKWAGON000X",
    "CHUCKWAGON002X",
    "COACH2",
    "COACH3",
    "COACH3_CUTSCENE",
    "COACH4",
    "COACH5",
    "COACH6",
    "COAL_WAGON",
    "COALHOPPER01X",
    "GATCHUCK",
    "GATCHUCK_2",
    "GATLING_GUN",
    "GATLINGMAXIM02",
    "GHOSTTRAINCABOOSE",
    "GHOSTTRAINCOALCAR",
    "GHOSTTRAINPASSENGER",
    "GHOSTTRAINSTEAMER",
    "HANDCART",
    "HORSEBOAT",
    "HOTAIRBALLOON01",
    "HOTCHKISS_CANNON",
    "KEELBOAT",
    "LOGWAGON",
    "LOGWAGON2",
    "MIDLANDBOXCAR05X",
    "MIDLANDREFRIGERATORCAR",
    "MINECART01X",
    "NORTHCOALCAR01X",
    "NORTHFLATCAR01X",
    "NORTHPASSENGER01X",
    "NORTHPASSENGER03X",
    "NORTHSTEAMER01X",
    "OILWAGON01X",
    "OILWAGON02X",
    "PIROGUE",
    "PIROGUE2",
    "POLICEWAGON01X",
    "POLICEWAGONGATLING01X",
    "PRIVATEARMOURED",
    "PRIVATEBAGGAGE01X",
    "PRIVATEBOXCAR01X",
    "PRIVATEBOXCAR02X",
    "PRIVATEBOXCAR04X",
    "PRIVATECOALCAR01X",
    "PRIVATEDINING01X",
    "PRIVATEFLATCAR01X",
    "PRIVATEOBSERVATIONCAR",
    "PRIVATEOPENSLEEPER01X",
    "PRIVATEOPENSLEEPER02X",
    "PRIVATEPASSENGER01X",
    "PRIVATEROOMS01X",
    "PRIVATESTEAMER01X",
    "RCBOAT",
    "ROWBOAT",
    "ROWBOATSWAMP",
    "ROWBOATSWAMP02",
    "SHIP_GUAMA02",
    "SHIP_NBDGUAMA",
    "SHIP_NBDGUAMA2",
    "SKIFF",
    "SMUGGLER02",
    "STAGECOACH001X",
    "STAGECOACH002X",
    "STAGECOACH003X",
    "STAGECOACH004X",
    "STAGECOACH005X",
    "STAGECOACH006X",
    "STEAMERDUMMY",
    "SUPPLYWAGON",
    "SUPPLYWAGON2",
    "TROLLEY01X",
    "TUGBOAT2",
    "TURBINEBOAT",
    "UTILLIWAG",
    "WAGON02X",
    "WAGON03X",
    "WAGON04X",
    "WAGON05X",
    "WAGON06X",
    "WAGONCIRCUS01X",
    "WAGONCIRCUS02X",
    "WAGONDAIRY01X",
    "WAGONDOC01X",
    "WAGONPRISON01X",
    "WAGONTRAVELLER01X",
    "WAGONWORK01X",
    "WINTERCOALCAR",
    "WINTERSTEAMER",
}

HASH_VEHICLES = {}

for k, v in pairs(STRING_VEHICLES) do
    HASH_VEHICLES[GetHashKey(v)] = v
end
