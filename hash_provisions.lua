---
---vscode ext: map-replace.js
---Used to mass convert hex values to signed integers because 0xD61C45AE = -702790226 but lua sees it as 3592177070 . Lua expects -702790226 to be 0xFFFFFFFFD61C45AE
---v => { var num = parseInt(v, 16); var maxVal = Math.pow(2, v.length / 2 * 8); if (num > maxVal / 2 - 1) { num = num - maxVal }; return num; }
---
Provisions = {
    [-444893329] = "PROVISION_ALLIGATOR_LEGENDARY_SKIN_PRISTINE",
    [425319238] = "PROVISION_ALLIGATOR_LEGENDARY_TOOTH",
    [-802026654] = "PROVISION_ALLIGATOR_SKIN",
    [1806153689] = "PROVISION_ALLIGATOR_SKIN_POOR",
    [-1625078531] = "PROVISION_ALLIGATOR_SKIN_PRISTINE",
    [2093098109] = "PROVISION_ALLIGATOR_TOOTH",
    [915880986] = "PROVISION_ANIMAL_CARCASS_ALLIGATOR_HIGH_QUALITY",
    [-1424697962] = "PROVISION_ANIMAL_CARCASS_ALLIGATOR_PERFECT",
    [-1643384846] = "PROVISION_ANIMAL_CARCASS_ALLIGATOR_POOR",
    [-847420802] = "PROVISION_ANIMAL_CARCASS_ARMADILLO_HIGH_QUALITY",
    [-662726703] = "PROVISION_ANIMAL_CARCASS_ARMADILLO_PERFECT",
    [1760886130] = "PROVISION_ANIMAL_CARCASS_ARMADILLO_POOR",
    [-1243653490] = "PROVISION_ANIMAL_CARCASS_BADGER_HIGH_QUALITY",
    [1988467099] = "PROVISION_ANIMAL_CARCASS_BADGER_PERFECT",
    [-674590015] = "PROVISION_ANIMAL_CARCASS_BADGER_POOR",
    [-1457420231] = "PROVISION_ANIMAL_CARCASS_BAT_HIGH_QUALITY",
    [1432949803] = "PROVISION_ANIMAL_CARCASS_BAT_PERFECT",
    [563848610] = "PROVISION_ANIMAL_CARCASS_BAT_POOR",
    [-1480423460] = "PROVISION_ANIMAL_CARCASS_BEAVER_HIGH_QUALITY",
    [1930741169] = "PROVISION_ANIMAL_CARCASS_BEAVER_LEGENDARY_PERFECT",
    [924882045] = "PROVISION_ANIMAL_CARCASS_BEAVER_PERFECT",
    [1415608202] = "PROVISION_ANIMAL_CARCASS_BEAVER_POOR",
    [1728671380] = "PROVISION_ANIMAL_CARCASS_BIGHORN_RAM_LEGENDARY_PERFECT",
    [-593311590] = "PROVISION_ANIMAL_CARCASS_BIGHORN_SHEEP_HIGH_QUALITY",
    [765085831] = "PROVISION_ANIMAL_CARCASS_BIGHORN_SHEEP_PERFECT",
    [2094730711] = "PROVISION_ANIMAL_CARCASS_BIGHORN_SHEEP_POOR",
    [1848456619] = "PROVISION_ANIMAL_CARCASS_BLUEJAY_HIGH_QUALITY",
    [-983831788] = "PROVISION_ANIMAL_CARCASS_BLUEJAY_PERFECT",
    [-2120099592] = "PROVISION_ANIMAL_CARCASS_BLUEJAY_POOR",
    [470791651] = "PROVISION_ANIMAL_CARCASS_BOBCAT_HIGH_QUALITY",
    [917807699] = "PROVISION_ANIMAL_CARCASS_BOBCAT_PERFECT",
    [101048028] = "PROVISION_ANIMAL_CARCASS_BOBCAT_POOR",
    [-1310590179] = "PROVISION_ANIMAL_CARCASS_BUCK_HIGH_QUALITY",
    [761115385] = "PROVISION_ANIMAL_CARCASS_BUCK_LEGENDARY_PERFECT",
    [992366796] = "PROVISION_ANIMAL_CARCASS_BUCK_PERFECT",
    [-244657613] = "PROVISION_ANIMAL_CARCASS_BUCK_POOR",
    [-1640704323] = "PROVISION_ANIMAL_CARCASS_BULLFROG_HIGH_QUALITY",
    [-1882344824] = "PROVISION_ANIMAL_CARCASS_BULLFROG_PERFECT",
    [-1134447619] = "PROVISION_ANIMAL_CARCASS_BULLFROG_POOR",
    [-2026210939] = "PROVISION_ANIMAL_CARCASS_CALICONDOR_HIGH_QUALITY",
    [-1252472243] = "PROVISION_ANIMAL_CARCASS_CALICONDOR_PERFECT",
    [-980016656] = "PROVISION_ANIMAL_CARCASS_CALICONDOR_POOR",
    [-84476614] = "PROVISION_ANIMAL_CARCASS_CARDINAL_HIGH_QUALITY",
    [-1969404854] = "PROVISION_ANIMAL_CARCASS_CARDINAL_PERFECT",
    [1948158930] = "PROVISION_ANIMAL_CARCASS_CARDINAL_POOR",
    [-532099639] = "PROVISION_ANIMAL_CARCASS_CEDARWAXWING_HIGH_QUALITY",
    [905173572] = "PROVISION_ANIMAL_CARCASS_CEDARWAXWING_PERFECT",
    [-1323780599] = "PROVISION_ANIMAL_CARCASS_CEDARWAXWING_POOR",
    [-758005668] = "PROVISION_ANIMAL_CARCASS_CHICKEN_HIGH_QUALITY",
    [-2139551030] = "PROVISION_ANIMAL_CARCASS_CHICKEN_PERFECT",
    [1607144310] = "PROVISION_ANIMAL_CARCASS_CHICKEN_POOR",
    [1857501916] = "PROVISION_ANIMAL_CARCASS_CHIPMUNK_HIGH_QUALITY",
    [-832850511] = "PROVISION_ANIMAL_CARCASS_CHIPMUNK_PERFECT",
    [-1586332975] = "PROVISION_ANIMAL_CARCASS_CHIPMUNK_POOR",
    [80093385] = "PROVISION_ANIMAL_CARCASS_CORMORANT_HIGH_QUALITY",
    [-867655342] = "PROVISION_ANIMAL_CARCASS_CORMORANT_PERFECT",
    [991092621] = "PROVISION_ANIMAL_CARCASS_CORMORANT_POOR",
    [871746664] = "PROVISION_ANIMAL_CARCASS_COUGAR_HIGH_QUALITY",
    [-1983286886] = "PROVISION_ANIMAL_CARCASS_COUGAR_LEGENDARY_PERFECT",
    [1626949878] = "PROVISION_ANIMAL_CARCASS_COUGAR_PERFECT",
    [-1722483116] = "PROVISION_ANIMAL_CARCASS_COUGAR_POOR",
    [-1739474417] = "PROVISION_ANIMAL_CARCASS_COYOTE_HIGH_QUALITY",
    [-1699486466] = "PROVISION_ANIMAL_CARCASS_COYOTE_LEGENDARY_PERFECT",
    [-161524199] = "PROVISION_ANIMAL_CARCASS_COYOTE_PERFECT",
    [-111455901] = "PROVISION_ANIMAL_CARCASS_COYOTE_POOR",
    [894877715] = "PROVISION_ANIMAL_CARCASS_CRAB_HIGH_QUALITY",
    [-1888757291] = "PROVISION_ANIMAL_CARCASS_CRAB_PERFECT",
    [995863399] = "PROVISION_ANIMAL_CARCASS_CRAB_POOR",
    [322141256] = "PROVISION_ANIMAL_CARCASS_CRANE_HIGH_QUALITY",
    [1310120320] = "PROVISION_ANIMAL_CARCASS_CRANE_PERFECT",
    [-1228376431] = "PROVISION_ANIMAL_CARCASS_CRANE_POOR",
    [-210676278] = "PROVISION_ANIMAL_CARCASS_CRAWFISH_HIGH_QUALITY",
    [-381243381] = "PROVISION_ANIMAL_CARCASS_CRAWFISH_PERFECT",
    [-1974778216] = "PROVISION_ANIMAL_CARCASS_CRAWFISH_POOR",
    [566023444] = "PROVISION_ANIMAL_CARCASS_CRLNAPARKET_HIGH_QUALITY",
    [-1956973834] = "PROVISION_ANIMAL_CARCASS_CRLNAPARKET_PERFECT",
    [-738999731] = "PROVISION_ANIMAL_CARCASS_CRLNAPARKET_POOR",
    [-1905834457] = "PROVISION_ANIMAL_CARCASS_CROW_HIGH_QUALITY",
    [59384454] = "PROVISION_ANIMAL_CARCASS_CROW_PERFECT",
    [-110353515] = "PROVISION_ANIMAL_CARCASS_CROW_POOR",
    [472142656] = "PROVISION_ANIMAL_CARCASS_DEER_HIGH_QUALITY",
    [-1837840093] = "PROVISION_ANIMAL_CARCASS_DEER_PERFECT",
    [58634176] = "PROVISION_ANIMAL_CARCASS_DEER_POOR",
    [1023080408] = "PROVISION_ANIMAL_CARCASS_DUCK_HIGH_QUALITY",
    [1001171791] = "PROVISION_ANIMAL_CARCASS_DUCK_PERFECT",
    [1210345318] = "PROVISION_ANIMAL_CARCASS_DUCK_POOR",
    [399553313] = "PROVISION_ANIMAL_CARCASS_EAGLE_HIGH_QUALITY",
    [-1422869557] = "PROVISION_ANIMAL_CARCASS_EAGLE_PERFECT",
    [-1378812236] = "PROVISION_ANIMAL_CARCASS_EAGLE_POOR",
    [1011003885] = "PROVISION_ANIMAL_CARCASS_EGRET_HIGH_QUALITY",
    [651035143] = "PROVISION_ANIMAL_CARCASS_EGRET_PERFECT",
    [2013022756] = "PROVISION_ANIMAL_CARCASS_EGRET_POOR",
    [-1186289527] = "PROVISION_ANIMAL_CARCASS_FOX_HIGH_QUALITY",
    [1972031193] = "PROVISION_ANIMAL_CARCASS_FOX_LEGENDARY_PERFECT",
    [877935135] = "PROVISION_ANIMAL_CARCASS_FOX_PERFECT",
    [-39646495] = "PROVISION_ANIMAL_CARCASS_FOX_POOR",
    [1582593525] = "PROVISION_ANIMAL_CARCASS_GILA_HIGH_QUALITY",
    [-246542229] = "PROVISION_ANIMAL_CARCASS_GILA_PERFECT",
    [-529454751] = "PROVISION_ANIMAL_CARCASS_GILA_POOR",
    [-46978629] = "PROVISION_ANIMAL_CARCASS_GOAT_HIGH_QUALITY",
    [-1347000030] = "PROVISION_ANIMAL_CARCASS_GOAT_PERFECT",
    [-505583391] = "PROVISION_ANIMAL_CARCASS_GOAT_POOR",
    [1645887374] = "PROVISION_ANIMAL_CARCASS_GOOSE_HIGH_QUALITY",
    [-1559227925] = "PROVISION_ANIMAL_CARCASS_GOOSE_PERFECT",
    [1562528937] = "PROVISION_ANIMAL_CARCASS_GOOSE_POOR",
    [-1471526136] = "PROVISION_ANIMAL_CARCASS_HAWK_HIGH_QUALITY",
    [-1440794801] = "PROVISION_ANIMAL_CARCASS_HAWK_PERFECT",
    [2144711797] = "PROVISION_ANIMAL_CARCASS_HAWK_POOR",
    [718825539] = "PROVISION_ANIMAL_CARCASS_HERON_HIGH_QUALITY",
    [2105263879] = "PROVISION_ANIMAL_CARCASS_HERON_PERFECT",
    [-905842006] = "PROVISION_ANIMAL_CARCASS_HERON_POOR",
    [1715058708] = "PROVISION_ANIMAL_CARCASS_HIGH_QUALITY",
    [1191274340] = "PROVISION_ANIMAL_CARCASS_IGUANA_HIGH_QUALITY",
    [1613453781] = "PROVISION_ANIMAL_CARCASS_IGUANA_PERFECT",
    [-1030182399] = "PROVISION_ANIMAL_CARCASS_IGUANA_POOR",
    [987967309] = "PROVISION_ANIMAL_CARCASS_LOON_HIGH_QUALITY",
    [-1060737769] = "PROVISION_ANIMAL_CARCASS_LOON_PERFECT",
    [553310445] = "PROVISION_ANIMAL_CARCASS_LOON_POOR",
    [-1838865945] = "PROVISION_ANIMAL_CARCASS_MUSKRAT_HIGH_QUALITY",
    [1418092959] = "PROVISION_ANIMAL_CARCASS_MUSKRAT_PERFECT",
    [-1315697778] = "PROVISION_ANIMAL_CARCASS_MUSKRAT_POOR",
    [-1772126340] = "PROVISION_ANIMAL_CARCASS_OPOSSUM_HIGH_QUALITY",
    [-935543049] = "PROVISION_ANIMAL_CARCASS_OPOSSUM_PERFECT",
    [1772544356] = "PROVISION_ANIMAL_CARCASS_OPOSSUM_POOR",
    [-284151822] = "PROVISION_ANIMAL_CARCASS_ORIOLE_HIGH_QUALITY",
    [-1464585113] = "PROVISION_ANIMAL_CARCASS_ORIOLE_PERFECT",
    [-610456424] = "PROVISION_ANIMAL_CARCASS_ORIOLE_POOR",
    [-266273535] = "PROVISION_ANIMAL_CARCASS_OWL_HIGH_QUALITY",
    [-1670544626] = "PROVISION_ANIMAL_CARCASS_OWL_PERFECT",
    [1290960696] = "PROVISION_ANIMAL_CARCASS_OWL_POOR",
    [1913571052] = "PROVISION_ANIMAL_CARCASS_PANTHER_HIGH_QUALITY",
    [-415294034] = "PROVISION_ANIMAL_CARCASS_PANTHER_LEGENDARY_PERFECT",
    [1717601520] = "PROVISION_ANIMAL_CARCASS_PANTHER_PERFECT",
    [430397370] = "PROVISION_ANIMAL_CARCASS_PANTHER_POOR",
    [-489505] = "PROVISION_ANIMAL_CARCASS_PARROT_HIGH_QUALITY",
    [-1356230367] = "PROVISION_ANIMAL_CARCASS_PARROT_PERFECT",
    [1417331079] = "PROVISION_ANIMAL_CARCASS_PARROT_POOR",
    [-884124246] = "PROVISION_ANIMAL_CARCASS_PELICAN_HIGH_QUALITY",
    [1884610748] = "PROVISION_ANIMAL_CARCASS_PELICAN_PERFECT",
    [746558492] = "PROVISION_ANIMAL_CARCASS_PELICAN_POOR",
    [-776155824] = "PROVISION_ANIMAL_CARCASS_PERFECT",
    [-892811627] = "PROVISION_ANIMAL_CARCASS_PHEASANT_HIGH_QUALITY",
    [-2040522845] = "PROVISION_ANIMAL_CARCASS_PHEASANT_PERFECT",
    [-1224510844] = "PROVISION_ANIMAL_CARCASS_PHEASANT_POOR",
    [-593435395] = "PROVISION_ANIMAL_CARCASS_PIGEON_HIGH_QUALITY",
    [-245335326] = "PROVISION_ANIMAL_CARCASS_PIGEON_PERFECT",
    [-1999212658] = "PROVISION_ANIMAL_CARCASS_PIGEON_POOR",
    [1334837390] = "PROVISION_ANIMAL_CARCASS_PIG_HIGH_QUALITY",
    [339620522] = "PROVISION_ANIMAL_CARCASS_PIG_PERFECT",
    [1770451033] = "PROVISION_ANIMAL_CARCASS_PIG_POOR",
    [-45650221] = "PROVISION_ANIMAL_CARCASS_POOR",
    [756657535] = "PROVISION_ANIMAL_CARCASS_PRARECHICK_HIGH_QUALITY",
    [862898895] = "PROVISION_ANIMAL_CARCASS_PRARECHICK_PERFECT",
    [1997845858] = "PROVISION_ANIMAL_CARCASS_PRARECHICK_POOR",
    [-1930144509] = "PROVISION_ANIMAL_CARCASS_PRONGHORN_HIGH_QUALITY",
    [-237482979] = "PROVISION_ANIMAL_CARCASS_PRONGHORN_LEGENDARY_PERFECT",
    [1846915545] = "PROVISION_ANIMAL_CARCASS_PRONGHORN_PERFECT",
    [-1816929509] = "PROVISION_ANIMAL_CARCASS_PRONGHORN_POOR",
    [-1726572562] = "PROVISION_ANIMAL_CARCASS_QUAIL_HIGH_QUALITY",
    [-1017987135] = "PROVISION_ANIMAL_CARCASS_QUAIL_PERFECT",
    [2058475216] = "PROVISION_ANIMAL_CARCASS_QUAIL_POOR",
    [1197831625] = "PROVISION_ANIMAL_CARCASS_RABBIT_HIGH_QUALITY",
    [-1866642239] = "PROVISION_ANIMAL_CARCASS_RABBIT_PERFECT",
    [-1508120809] = "PROVISION_ANIMAL_CARCASS_RABBIT_POOR",
    [-1007681885] = "PROVISION_ANIMAL_CARCASS_RACOON_HIGH_QUALITY",
    [434924608] = "PROVISION_ANIMAL_CARCASS_RACOON_PERFECT",
    [1666393029] = "PROVISION_ANIMAL_CARCASS_RACOON_POOR",
    [-1814593136] = "PROVISION_ANIMAL_CARCASS_RAM_HIGH_QUALITY",
    [-1188120304] = "PROVISION_ANIMAL_CARCASS_RAM_PERFECT",
    [1978734761] = "PROVISION_ANIMAL_CARCASS_RAM_POOR",
    [-1909348309] = "PROVISION_ANIMAL_CARCASS_RAT_HIGH_QUALITY",
    [1761263432] = "PROVISION_ANIMAL_CARCASS_RAT_PERFECT",
    [-1788506246] = "PROVISION_ANIMAL_CARCASS_RAT_POOR",
    [-824902132] = "PROVISION_ANIMAL_CARCASS_RAVEN_HIGH_QUALITY",
    [-1015531226] = "PROVISION_ANIMAL_CARCASS_RAVEN_PERFECT",
    [-581619522] = "PROVISION_ANIMAL_CARCASS_RAVEN_POOR",
    [-861854914] = "PROVISION_ANIMAL_CARCASS_REDFTBOOBY_HIGH_QUALITY",
    [-545447034] = "PROVISION_ANIMAL_CARCASS_REDFTBOOBY_PERFECT",
    [-1824684934] = "PROVISION_ANIMAL_CARCASS_REDFTBOOBY_POOR",
    [765892430] = "PROVISION_ANIMAL_CARCASS_ROBIN_HIGH_QUALITY",
    [-1290897778] = "PROVISION_ANIMAL_CARCASS_ROBIN_PERFECT",
    [-350704687] = "PROVISION_ANIMAL_CARCASS_ROBIN_POOR",
    [980653387] = "PROVISION_ANIMAL_CARCASS_ROOSTER_HIGH_QUALITY",
    [-1011598664] = "PROVISION_ANIMAL_CARCASS_ROOSTER_PERFECT",
    [-177476569] = "PROVISION_ANIMAL_CARCASS_ROOSTER_POOR",
    [416630124] = "PROVISION_ANIMAL_CARCASS_ROSESPOONBIL_HIGH_QUALITY",
    [1925728375] = "PROVISION_ANIMAL_CARCASS_ROSESPOONBIL_PERFECT",
    [-1080457688] = "PROVISION_ANIMAL_CARCASS_ROSESPOONBIL_POOR",
    [1742676369] = "PROVISION_ANIMAL_CARCASS_SEAGULL_HIGH_QUALITY",
    [-899751553] = "PROVISION_ANIMAL_CARCASS_SEAGULL_PERFECT",
    [431501574] = "PROVISION_ANIMAL_CARCASS_SEAGULL_POOR",
    [2126795269] = "PROVISION_ANIMAL_CARCASS_SHEEP_HIGH_QUALITY",
    [1489051752] = "PROVISION_ANIMAL_CARCASS_SHEEP_PERFECT",
    [-1705499323] = "PROVISION_ANIMAL_CARCASS_SHEEP_POOR",
    [-2013445740] = "PROVISION_ANIMAL_CARCASS_SKUNK_HIGH_QUALITY",
    [102446365] = "PROVISION_ANIMAL_CARCASS_SKUNK_PERFECT",
    [-1927342740] = "PROVISION_ANIMAL_CARCASS_SKUNK_POOR",
    [-410900360] = "PROVISION_ANIMAL_CARCASS_SNAKE_BLRAT_HIGH_QUALITY",
    [-1073614594] = "PROVISION_ANIMAL_CARCASS_SNAKE_BLRAT_PERFECT",
    [2060013792] = "PROVISION_ANIMAL_CARCASS_SNAKE_BLRAT_POOR",
    [581032175] = "PROVISION_ANIMAL_CARCASS_SNAKE_BOA_HIGH_QUALITY",
    [-581931638] = "PROVISION_ANIMAL_CARCASS_SNAKE_BOA_PERFECT",
    [-1528265128] = "PROVISION_ANIMAL_CARCASS_SNAKE_BOA_POOR",
    [-142632645] = "PROVISION_ANIMAL_CARCASS_SNAKE_COPPER_HIGH_QUALITY",
    [-2048519180] = "PROVISION_ANIMAL_CARCASS_SNAKE_COPPER_PERFECT",
    [1442025993] = "PROVISION_ANIMAL_CARCASS_SNAKE_COPPER_POOR",
    [441195430] = "PROVISION_ANIMAL_CARCASS_SNAKE_FERDLNCE_HIGH_QUALITY",
    [748665395] = "PROVISION_ANIMAL_CARCASS_SNAKE_FERDLNCE_PERFECT",
    [351048413] = "PROVISION_ANIMAL_CARCASS_SNAKE_FERDLNCE_POOR",
    [-914779013] = "PROVISION_ANIMAL_CARCASS_SNAKE_HIGH_QUALITY",
    [1323485831] = "PROVISION_ANIMAL_CARCASS_SNAKE_PERFECT",
    [-365111821] = "PROVISION_ANIMAL_CARCASS_SNAKE_POOR",
    [101495387] = "PROVISION_ANIMAL_CARCASS_SNAKE_WATER_HIGH_QUALITY",
    [-110517956] = "PROVISION_ANIMAL_CARCASS_SNAKE_WATER_PERFECT",
    [-936537044] = "PROVISION_ANIMAL_CARCASS_SNAKE_WATER_POOR",
    [-318217782] = "PROVISION_ANIMAL_CARCASS_SONGBIRD_HIGH_QUALITY",
    [-100913452] = "PROVISION_ANIMAL_CARCASS_SONGBIRD_PERFECT",
    [72307351] = "PROVISION_ANIMAL_CARCASS_SONGBIRD_POOR",
    [-1867587109] = "PROVISION_ANIMAL_CARCASS_SPARROW_HIGH_QUALITY",
    [313332607] = "PROVISION_ANIMAL_CARCASS_SPARROW_PERFECT",
    [-86277147] = "PROVISION_ANIMAL_CARCASS_SPARROW_POOR",
    [1815539745] = "PROVISION_ANIMAL_CARCASS_SQUIRREL_HIGH_QUALITY",
    [444160793] = "PROVISION_ANIMAL_CARCASS_SQUIRREL_PERFECT",
    [1205453831] = "PROVISION_ANIMAL_CARCASS_SQUIRREL_POOR",
    [-146690338] = "PROVISION_ANIMAL_CARCASS_TOAD_HIGH_QUALITY",
    [-124539232] = "PROVISION_ANIMAL_CARCASS_TOAD_PERFECT",
    [-2123600216] = "PROVISION_ANIMAL_CARCASS_TOAD_POOR",
    [-1610329427] = "PROVISION_ANIMAL_CARCASS_TURKEY_HIGH_QUALITY",
    [-1836227998] = "PROVISION_ANIMAL_CARCASS_TURKEY_PERFECT",
    [619479575] = "PROVISION_ANIMAL_CARCASS_TURKEY_POOR",
    [-1444929945] = "PROVISION_ANIMAL_CARCASS_TURTLE_SNAP_HIGH_QUALITY",
    [-929322235] = "PROVISION_ANIMAL_CARCASS_TURTLE_SNAP_PERFECT",
    [-548076717] = "PROVISION_ANIMAL_CARCASS_TURTLE_SNAP_POOR",
    [-281211381] = "PROVISION_ANIMAL_CARCASS_VULTURE_HIGH_QUALITY",
    [493457089] = "PROVISION_ANIMAL_CARCASS_VULTURE_PERFECT",
    [-479485786] = "PROVISION_ANIMAL_CARCASS_VULTURE_POOR",
    [27838955] = "PROVISION_ANIMAL_CARCASS_WOLF_HIGH_QUALITY",
    [-81267886] = "PROVISION_ANIMAL_CARCASS_WOLF_LEGENDARY_PERFECT",
    [1641833719] = "PROVISION_ANIMAL_CARCASS_WOLF_PERFECT",
    [-314933180] = "PROVISION_ANIMAL_CARCASS_WOLF_POOR",
    [-1403731492] = "PROVISION_ANIMAL_CARCASS_WOODPECKER_HIGH_QUALITY",
    [-843795569] = "PROVISION_ANIMAL_CARCASS_WOODPECKER_PERFECT",
    [1496267371] = "PROVISION_ANIMAL_CARCASS_WOODPECKER_POOR",
    [1237770824] = "PROVISION_ANIMAL_FAT",
    [-16001926] = "PROVISION_ANIMAL_SCENT_GLAND",
    [27448453] = "PROVISION_ARMADILLO_SKIN",
    [-1726837022] = "PROVISION_ARMADILLO_SKIN_POOR",
    [361430638] = "PROVISION_ARMADILLO_SKIN_PRISTINE",
    [1205599754] = "PROVISION_ASTEROID_CHUNK",
    [718631967] = "PROVISION_BADGER_CLAW",
    [-467109021] = "PROVISION_BADGER_PELT",
    [959196213] = "PROVISION_BADGER_PELT_POOR",
    [-463248330] = "PROVISION_BADGER_PELT_PRISTINE",
    [-800510665] = "PROVISION_BAT_WING",
    [-1394561808] = "PROVISION_BEAR_CLAW",
    [-124493550] = "PROVISION_BEAR_FUR",
    [957520252] = "PROVISION_BEAR_FUR_POOR",
    [1292673537] = "PROVISION_BEAR_FUR_PRISTINE",
    [-1540119664] = "PROVISION_BEAR_LEGENDARY_CLAW",
    [-514494287] = "PROVISION_BEAR_LEGENDARY_FUR_PRISTINE",
    [745296393] = "PROVISION_BEAUS_GIFT_1",
    [-131856007] = "PROVISION_BEAUS_GIFT_2",
    [-2059726619] = "PROVISION_BEAVER_FUR",
    [-1569450319] = "PROVISION_BEAVER_FUR_POOR",
    [854596618] = "PROVISION_BEAVER_FUR_PRISTINE",
    [-150200864] = "PROVISION_BEAVER_LEGENDARY_FUR_PRISTINE",
    [1252810290] = "PROVISION_BIGHORN_HORN",
    [-1425003181] = "PROVISION_BIG_GAME_MEAT",
    [-31678342] = "PROVISION_BIRD_FEATHER_FLIGHT",
    [2057052401] = "PROVISION_BLACK_BEAR_CLAW",
    [1490032862] = "PROVISION_BLACK_BEAR_FUR",
    [1083865179] = "PROVISION_BLACK_BEAR_FUR_POOR",
    [663376218] = "PROVISION_BLACK_BEAR_FUR_PRISTINE",
    [-1156491900] = "PROVISION_BLUEGILL_DESC",
    [-1947512511] = "PROVISION_BLUEJAY_FEATHER",
    [2109269555] = "PROVISION_BOAR_LEGENDARY_SKIN_PRISTINE",
    [1061381225] = "PROVISION_BOAR_RARE_TUSK",
    [2116849039] = "PROVISION_BOAR_SKIN",
    [1248540072] = "PROVISION_BOAR_SKIN_POOR",
    [-1858513856] = "PROVISION_BOAR_SKIN_PRISTINE",
    [-884176343] = "PROVISION_BOAR_TUSK",
    [-832559263] = "PROVISION_BOOBY_FEATHER",
    [-1217729597] = "PROVISION_BRACELET_GOLD",
    [-1398038055] = "PROVISION_BRACELET_PLATINUM",
    [446659922] = "PROVISION_BRACELET_SILVER",
    [-1387859642] = "PROVISION_BUCKLE_GOLD",
    [-819703082] = "PROVISION_BUCKLE_PLATINUM",
    [29153524] = "PROVISION_BUCKLE_SILVER",
    [529305859] = "PROVISION_BUCK_ANTLERS",
    [-868657362] = "PROVISION_BUCK_FUR",
    [1603936352] = "PROVISION_BUCK_FUR_POOR",
    [-702790226] = "PROVISION_BUCK_FUR_PRISTINE",
    [-888740979] = "PROVISION_BUCK_LEGENDARY_FUR_PRISTINE",
    [-591117838] = "PROVISION_BUFFALO_FUR",
    [-1730060063] = "PROVISION_BUFFALO_FUR_POOR",
    [-237756948] = "PROVISION_BUFFALO_FUR_PRISTINE",
    [-1618402788] = "PROVISION_BUFFALO_HORN",
    [-52236260] = "PROVISION_BULHDCATFSH_DESC",
    [-336086818] = "PROVISION_BULL_HIDE",
    [-7483955] = "PROVISION_BULL_HIDE_POOR",
    [-53270317] = "PROVISION_BULL_HIDE_PRISTINE",
    [-1065098050] = "PROVISION_BULL_HORNS",
    [329729070] = "PROVISION_CARDINAL_FEATHER",
    [1826539842] = "PROVISION_CATHERINES_NECKLACE",
    [363594903] = "PROVISION_CC_VINTAGE_HANDCUFFS",
    [452896739] = "PROVISION_CEDARWAXWING_FEATHER",
    [1235898535] = "PROVISION_CHICKEN_FEATHER",
    [1988768206] = "PROVISION_CHNCATFSH_DESC",
    [1903878343] = "PROVISION_CHNPKRL_DESC",
    [-497602986] = "PROVISION_COMP_DUTCH_PIPE",
    [-940597120] = "PROVISION_CONDOR_FEATHER",
    [544782507] = "PROVISION_CORMORANT_FEATHER",
    [1712162117] = "PROVISION_COUGAR_FANG",
    [459744337] = "PROVISION_COUGAR_FUR",
    [1914602340] = "PROVISION_COUGAR_FUR_POOR",
    [-1791452194] = "PROVISION_COUGAR_FUR_PRISTINE",
    [1528935719] = "PROVISION_COUGAR_LEGENDARY_FUR_PRISTINE",
    [1150594075] = "PROVISION_COW_HIDE",
    [334093551] = "PROVISION_COW_HIDE_POOR",
    [-845037222] = "PROVISION_COW_HIDE_PRISTINE",
    [1150939141] = "PROVISION_COYOTE_FUR",
    [-1558096473] = "PROVISION_COYOTE_FUR_POOR",
    [-794277189] = "PROVISION_COYOTE_FUR_PRISTINE",
    [-1517904196] = "PROVISION_COYOTE_LEGENDARY_FUR_PRISTINE",
    [376217292] = "PROVISION_CROW_FEATHER",
    [-1204686952] = "PROVISION_CRUSTACEAN_MEAT",
    [-1957327131] = "PROVISION_DB_SKULL_STATUE",
    [-1827027577] = "PROVISION_DEER_HIDE",
    [-662178186] = "PROVISION_DEER_HIDE_POOR",
    [-1035515486] = "PROVISION_DEER_HIDE_PRISTINE",
    [-2057388461] = "PROVISION_DISCO_AMMOLITE",
    [1202155616] = "PROVISION_DISCO_ANCIENT_NECKLACE",
    [-172243588] = "PROVISION_DISCO_ARROWHEAD_02",
    [2036668281] = "PROVISION_DISCO_FERTILITY_STATUE",
    [278624965] = "PROVISION_DISCO_FERTILITY_STATUE_FEMALE",
    [-861354969] = "PROVISION_DISCO_FLUORITE",
    [-1041821887] = "PROVISION_DISCO_SHRUNKEN_HEAD",
    [-2067990682] = "PROVISION_DISCO_VIKING_COMB",
    [833141409] = "PROVISION_DUCK_FEATHER",
    [-2048623764] = "PROVISION_EAGLE_FEATHER",
    [1637109059] = "PROVISION_EAGLE_TALON",
    [-757567246] = "PROVISION_EARRING_GOLD",
    [1918257218] = "PROVISION_EARRING_PLATINUM",
    [-585121677] = "PROVISION_EARRING_SILVER",
    [844750136] = "PROVISION_EGRET_FEATHER",
    [281887510] = "PROVISION_EGRET_PLUME_LITTLE",
    [-164081697] = "PROVISION_EGRET_PLUME_REDDISH",
    [-1161319399] = "PROVISION_EGRET_PLUME_SNOWY",
    [-407659715] = "PROVISION_ELK_ANTLERS",
    [1181652728] = "PROVISION_ELK_FUR",
    [2053771712] = "PROVISION_ELK_FUR_POOR",
    [-1332163079] = "PROVISION_ELK_FUR_PRISTINE",
    [-39055757] = "PROVISION_ELK_LEGENDARY_FUR_PRISTINE",
    [1356432598] = "PROVISION_EXOTIC_BIRD_MEAT",
    [1006434513] = "PROVISION_FISH_BLUEGILL",
    [-1490884871] = "PROVISION_FISH_BLUEGILL_LEGENDARY",
    [-151356522] = "PROVISION_FISH_BLUEGILL_POOR",
    [306916738] = "PROVISION_FISH_BULLHEAD_CATFISH",
    [323124696] = "PROVISION_FISH_BULLHEAD_CATFISH_LEGENDARY",
    [1481288777] = "PROVISION_FISH_BULLHEAD_CATFISH_POOR",
    [724563284] = "PROVISION_FISH_CHAIN_PICKEREL",
    [-2108314374] = "PROVISION_FISH_CHAIN_PICKEREL_LEGENDARY",
    [-1824685471] = "PROVISION_FISH_CHAIN_PICKEREL_POOR",
    [1917027383] = "PROVISION_FISH_CHANNEL_CATFISH",
    [-1320934717] = "PROVISION_FISH_CHANNEL_CATFISH_LEGENDARY",
    [803930024] = "PROVISION_FISH_CHANNEL_CATFISH_POOR",
    [-855052577] = "PROVISION_FISH_LAKE_STURGEON",
    [-1193798153] = "PROVISION_FISH_LAKE_STURGEON_LEGENDARY",
    [1111663869] = "PROVISION_FISH_LAKE_STURGEON_POOR",
    [-5376850] = "PROVISION_FISH_LARGEMOUTH_BASS",
    [-787702678] = "PROVISION_FISH_LARGEMOUTH_BASS_LEGENDARY",
    [1425358430] = "PROVISION_FISH_LARGEMOUTH_BASS_POOR",
    [1338219162] = "PROVISION_FISH_LONGNOSE_GAR",
    [-804542901] = "PROVISION_FISH_LONGNOSE_GAR_LEGENDARY",
    [1297433586] = "PROVISION_FISH_LONGNOSE_GAR_POOR",
    [-1538397860] = "PROVISION_FISH_MUSKIE",
    [-1696275132] = "PROVISION_FISH_MUSKIE_LEGENDARY",
    [-293259613] = "PROVISION_FISH_MUSKIE_POOR",
    [-75398327] = "PROVISION_FISH_NORTHERN_PIKE",
    [-395458616] = "PROVISION_FISH_NORTHERN_PIKE_LEGENDARY",
    [588902637] = "PROVISION_FISH_NORTHERN_PIKE_POOR",
    [1416872916] = "PROVISION_FISH_PERCH",
    [-161595323] = "PROVISION_FISH_PERCH_LEGENDARY",
    [-861419347] = "PROVISION_FISH_PERCH_POOR",
    [1500919793] = "PROVISION_FISH_REDFIN_PICKEREL",
    [-1114363619] = "PROVISION_FISH_REDFIN_PICKEREL_LEGENDARY",
    [357567274] = "PROVISION_FISH_REDFIN_PICKEREL_POOR",
    [1042542561] = "PROVISION_FISH_ROCK_BASS",
    [-368407134] = "PROVISION_FISH_ROCK_BASS_LEGENDARY",
    [683583793] = "PROVISION_FISH_ROCK_BASS_POOR",
    [56657913] = "PROVISION_FISH_SMALLMOUTH_BASS",
    [1997759228] = "PROVISION_FISH_SMALLMOUTH_BASS_LEGENDARY",
    [-1202625002] = "PROVISION_FISH_SMALLMOUTH_BASS_POOR",
    [1570826681] = "PROVISION_FISH_SOCKEYE_SALMON",
    [1265573293] = "PROVISION_FISH_SOCKEYE_SALMON_LEGENDARY",
    [485620834] = "PROVISION_FISH_SOCKEYE_SALMON_POOR",
    [785407605] = "PROVISION_FISH_STEELHEAD_TROUT",
    [-1030441283] = "PROVISION_FISH_STEELHEAD_TROUT_LEGENDARY",
    [727522818] = "PROVISION_FISH_STEELHEAD_TROUT_POOR",
    [-1663284943] = "PROVISION_FISH_STHDTROUT_DESC",
    [-1358121446] = "PROVISION_FLAKEY_FISH_MEAT",
    [-29701531] = "PROVISION_FOX_FUR",
    [1647012424] = "PROVISION_FOX_FUR_POOR",
    [500722008] = "PROVISION_FOX_FUR_PRISTINE",
    [1642484975] = "PROVISION_FOX_LEGENDARY_FUR_PRISTINE",
    [-732511557] = "PROVISION_FROG_SKIN",
    [1855671180] = "PROVISION_FROG_SKIN_POOR",
    [-564530632] = "PROVISION_FROG_SKIN_PRISTINE",
    [-1242035512] = "PROVISION_GAMEY_BIRD_MEAT",
    [1970477904] = "PROVISION_GAME_MEAT",
    [2116770557] = "PROVISION_GATOR_EGG",
    [95044528] = "PROVISION_GILA_SKIN",
    [2136062430] = "PROVISION_GILA_SKIN_POOR",
    [463481876] = "PROVISION_GILA_SKIN_PRISTINE",
    [1710714415] = "PROVISION_GOAT_HAIR",
    [699990316] = "PROVISION_GOAT_HAIR_POOR",
    [-1648383828] = "PROVISION_GOAT_HAIR_PRISTINE",
    [-121579726] = "PROVISION_GOLDBAR_LARGE",
    [-2000966371] = "PROVISION_GOLDBAR_SMALL",
    [1478239863] = "PROVISION_GOLDRING",
    [495338160] = "PROVISION_GOLDTOOTH",
    [-1682377294] = "PROVISION_GOLD_NUGGET",
    [1844178035] = "PROVISION_GOOSE_FEATHER",
    [736403203] = "PROVISION_GRISTLY_MUTTON",
    [500564674] = "PROVISION_GRITTY_FISH_MEAT",
    [-31982783] = "PROVISION_HAWK_FEATHER",
    [-222563712] = "PROVISION_HERON_FEATHER",
    [-1749606930] = "PROVISION_HERPTILE_MEAT",
    [-212345020] = "PROVISION_IGUANA_SCALE",
    [1204918860] = "PROVISION_IGUANA_SKIN",
    [-2066910871] = "PROVISION_IGUANA_SKIN_POOR",
    [1677266727] = "PROVISION_IGUANA_SKIN_PRISTINE",
    [-1909697259] = "PROVISION_ITEMS_USED",
    [-1379330323] = "PROVISION_JAVELINA_SKIN",
    [-99092070] = "PROVISION_JAVELINA_SKIN_POOR",
    [1963510418] = "PROVISION_JAVELINA_SKIN_PRISTINE",
    [1821351461] = "PROVISION_JEWELRYBAG_LG",
    [-812427869] = "PROVISION_JEWELRYBAG_SM",
    [1859340712] = "PROVISION_JEWELRY_BOX_LRG_FNCY_01",
    [-935739390] = "PROVISION_LEGBLUEGILL_DESC",
    [-2014376113] = "PROVISION_LEGBULHDCATFSH_DESC",
    [1010516687] = "PROVISION_LEGCHNCATFSH_DESC",
    [1549354852] = "PROVISION_LEGCHNPKRL_DESC",
    [-359492339] = "PROVISION_LEGLKSTURG_DESC",
    [-1007846490] = "PROVISION_LEGLNGNOSEGAR_DESC",
    [1962483799] = "PROVISION_LEGLRGMTHBASS_DESC",
    [1563897275] = "PROVISION_LEGMUSKIE_DESC",
    [1664535681] = "PROVISION_LEGNPIKE_DESC",
    [315445932] = "PROVISION_LEGPERCH_DESC",
    [-436385945] = "PROVISION_LEGRDFNPCKREL_DESC",
    [-1223783769] = "PROVISION_LEGROCKBASS_DESC",
    [1615713295] = "PROVISION_LEGSCKEYESAL_DESC",
    [-1460198966] = "PROVISION_LEGSMLMTHBASS_DESC",
    [94272949] = "PROVISION_LEGSTHDTROUT_DESC",
    [485736967] = "PROVISION_LKSTURG_DESC",
    [-679671761] = "PROVISION_LNGNOSEGAR_DESC",
    [2047376405] = "PROVISION_LOANSHARK_SKINS",
    [-1240764968] = "PROVISION_LOON_FEATHER",
    [-280933869] = "PROVISION_LRGMTHBASS_DESC",
    [353848785] = "PROVISION_MARYS_FOUNTAIN_PEN",
    [1471975165] = "PROVISION_MATURE_VENISON",
    [-574122036] = "PROVISION_MOLLYS_POCKET_MIRROR",
    [895033262] = "PROVISION_MOOSE_ANTLER",
    [1636891382] = "PROVISION_MOOSE_FUR",
    [1868576868] = "PROVISION_MOOSE_FUR_POOR",
    [-217731719] = "PROVISION_MOOSE_FUR_PRISTINE",
    [-687487191] = "PROVISION_MOOSE_LEGENDARY_FUR_PRISTINE",
    [1160917741] = "PROVISION_MUSKIE_DESC",
    [-771861010] = "PROVISION_MUSKRAT_FUR",
    [-1912460485] = "PROVISION_MUSKRAT_FUR_POOR",
    [2022921849] = "PROVISION_MUSKRAT_FUR_PRISTINE",
    [2062875229] = "PROVISION_NATIVE_AMERICAN_RING",
    [95619999] = "PROVISION_NECKLACE_GOLD",
    [1681227286] = "PROVISION_NECKLACE_PLATINUM",
    [844655121] = "PROVISION_NECKLACE_SILVER",
    [-947088855] = "PROVISION_NPIKE_DESC",
    [416535067] = "PROVISION_OPOSSUM_FUR",
    [1627318551] = "PROVISION_OPOSSUM_FUR_POOR",
    [-475820303] = "PROVISION_OPOSSUM_FUR_PRISTINE",
    [-1765601] = "PROVISION_ORIOLE_FEATHER",
    [-1067479455] = "PROVISION_OWL_FEATHER",
    [1208128650] = "PROVISION_OXEN_HIDE",
    [462348928] = "PROVISION_OXEN_HIDE_POOR",
    [659601266] = "PROVISION_OXEN_HIDE_PRISTINE",
    [1503728435] = "PROVISION_OXEN_HORN",
    [-395646254] = "PROVISION_PANTHER_FUR",
    [1584468323] = "PROVISION_PANTHER_FUR_POOR",
    [1969175294] = "PROVISION_PANTHER_FUR_PRISTINE",
    [657906142] = "PROVISION_PANTHER_LEGENDARY_FUR_PRISTINE",
    [1577881214] = "PROVISION_PARAKEET_FEATHER",
    [1607779195] = "PROVISION_PARROT_FEATHER",
    [-735913145] = "PROVISION_PEARSONS_NAVAL_COMPASS",
    [-2068566007] = "PROVISION_PELICAN_FEATHER",
    [39929317] = "PROVISION_PEN",
    [1360361531] = "PROVISION_PENELOPES_BRACELET",
    [-1414017624] = "PROVISION_PERCH_DESC",
    [-691071886] = "PROVISION_PHEASANT_FEATHER",
    [511857907] = "PROVISION_PIGEON_FEATHER",
    [-57190831] = "PROVISION_PIG_SKIN",
    [-308965548] = "PROVISION_PIG_SKIN_POOR",
    [-1102272634] = "PROVISION_PIG_SKIN_PRISTINE",
    [1920403795] = "PROVISION_PLUMP_BIRD_MEAT",
    [-931012004] = "PROVISION_POCKET_WATCH_GOLD",
    [544283678] = "PROVISION_POCKET_WATCH_PLATINUM",
    [-2046502963] = "PROVISION_POCKET_WATCH_REUTLINGE",
    [-963759116] = "PROVISION_POCKET_WATCH_SILVER",
    [1764698682] = "PROVISION_PRIME_BEEF",
    [554578289] = "PROVISION_PRONGHORN_FUR",
    [-983605026] = "PROVISION_PRONGHORN_FUR_POOR",
    [-1544126829] = "PROVISION_PRONGHORN_FUR_PRISTINE",
    [-103050851] = "PROVISION_PRONGHORN_LEGENDARY_FUR_PRISTINE",
    [945172939] = "PROVISION_QUAIL_FEATHER",
    [-119417129] = "PROVISION_RABBIT_PELT",
    [1340414242] = "PROVISION_RABBIT_PELT_POOR",
    [-923552142] = "PROVISION_RABBIT_PELT_PRISTINE",
    [-1178296218] = "PROVISION_RACCOON_FUR",
    [1992476687] = "PROVISION_RACCOON_FUR_POOR",
    [-305970307] = "PROVISION_RACCOON_FUR_PRISTINE",
    [-476045512] = "PROVISION_RAM_HIDE",
    [1796037447] = "PROVISION_RAM_HIDE_POOR",
    [1795984405] = "PROVISION_RAM_HIDE_PRISTINE",
    [-734947450] = "PROVISION_RAM_LEGENDARY_HIDE_PRISTINE",
    [-409451878] = "PROVISION_RAT_FUR",
    [-378416954] = "PROVISION_RAT_FUR_POOR",
    [-269786196] = "PROVISION_RAT_FUR_PRISTINE",
    [-1181539987] = "PROVISION_RAVEN_FEATHER",
    [-759003091] = "PROVISION_RCKITTY_EMERALD",
    [366019123] = "PROVISION_RCM_POCKET_WATCH",
    [2100194981] = "PROVISION_RC_QUARTZ_CHUNK",
    [348662433] = "PROVISION_RC_ROCK_STATUE",
    [-1753198888] = "PROVISION_RC_SLVCATCHER_WATCH",
    [-90854955] = "PROVISION_RDFNPCKREL_DESC",
    [-1165993033] = "PROVISION_REINFORCED_BANDOLIER_BEAR_CHALLENGE",
    [34942683] = "PROVISION_REINFORCED_BANDOLIER_BOAR_CHALLENGE",
    [425791223] = "PROVISION_REINFORCED_BANDOLIER_BUFFALO_CHALLENGE",
    [-2085283162] = "PROVISION_REINFORCED_BANDOLIER_COUGAR_CHALLENGE",
    [-1319982262] = "PROVISION_REINFORCED_BANDOLIER_DEER_CHALLENGE",
    [-1325287921] = "PROVISION_REINFORCED_BANDOLIER_GATOR_CHALLENGE",
    [-1046974853] = "PROVISION_REINFORCED_BANDOLIER_PANTHER_CHALLENGE",
    [434671286] = "PROVISION_REINFORCED_BANDOLIER_RABBIT_CHALLENGE",
    [1761527381] = "PROVISION_REINFORCED_BANDOLIER_SNAKE_CHALLENGE",
    [572577744] = "PROVISION_REINFORCED_GUNBELT_BEAR_CHALLENGE",
    [712547394] = "PROVISION_REINFORCED_GUNBELT_BOAR_CHALLENGE",
    [-66123114] = "PROVISION_REINFORCED_GUNBELT_BUFFALO_CHALLENGE",
    [-1300207991] = "PROVISION_REINFORCED_GUNBELT_COUGAR_CHALLENGE",
    [-36164881] = "PROVISION_REINFORCED_GUNBELT_DEER_CHALLENGE",
    [-2111967211] = "PROVISION_REINFORCED_GUNBELT_GATOR_CHALLENGE",
    [-359138701] = "PROVISION_REINFORCED_GUNBELT_PANTHER_CHALLENGE",
    [1692485641] = "PROVISION_REINFORCED_GUNBELT_RABBIT_CHALLENGE",
    [-1946050603] = "PROVISION_REINFORCED_GUNBELT_SNAKE_CHALLENGE",
    [1622949336] = "PROVISION_REINFORCED_HOLSTER_BEAR_CHALLENGE",
    [751887537] = "PROVISION_REINFORCED_HOLSTER_BOAR_CHALLENGE",
    [521161307] = "PROVISION_REINFORCED_HOLSTER_BUFFALO_CHALLENGE",
    [1941332469] = "PROVISION_REINFORCED_HOLSTER_COUGAR_CHALLENGE",
    [-1415973630] = "PROVISION_REINFORCED_HOLSTER_DEER_CHALLENGE",
    [-1479005426] = "PROVISION_REINFORCED_HOLSTER_GATOR_CHALLENGE",
    [-810466504] = "PROVISION_REINFORCED_HOLSTER_PANTHER_CHALLENGE",
    [523636468] = "PROVISION_REINFORCED_HOLSTER_RABBIT_CHALLENGE",
    [1254932126] = "PROVISION_REINFORCED_HOLSTER_SNAKE_CHALLENGE",
    [-1058616106] = "PROVISION_REINFORCED_OFFHAND_BEAR_CHALLENGE",
    [1322043628] = "PROVISION_REINFORCED_OFFHAND_BOAR_CHALLENGE",
    [1109307959] = "PROVISION_REINFORCED_OFFHAND_BUFFALO_CHALLENGE",
    [1162088937] = "PROVISION_REINFORCED_OFFHAND_COUGAR_CHALLENGE",
    [1447438579] = "PROVISION_REINFORCED_OFFHAND_DEER_CHALLENGE",
    [-779768541] = "PROVISION_REINFORCED_OFFHAND_GATOR_CHALLENGE",
    [-1871046472] = "PROVISION_REINFORCED_OFFHAND_PANTHER_CHALLENGE",
    [-1892589697] = "PROVISION_REINFORCED_OFFHAND_RABBIT_CHALLENGE",
    [1174145154] = "PROVISION_REINFORCED_OFFHAND_SNAKE_CHALLENGE",
    [318818236] = "PROVISION_RING_PLATINUM",
    [1216207974] = "PROVISION_RING_SILVER",
    [-902591026] = "PROVISION_ROBIN_FEATHER",
    [-1128018226] = "PROVISION_ROCKBASS_DESC",
    [1462133097] = "PROVISION_ROOSTER_FEATHER",
    [1453752912] = "PROVISION_ROTTEN_MEAT",
    [-651064726] = "PROVISION_RO_FLOWER_ACUNAS_STAR",
    [-404270094] = "PROVISION_RO_FLOWER_CIGAR",
    [-1521783510] = "PROVISION_RO_FLOWER_CLAMSHELL",
    [1714875242] = "PROVISION_RO_FLOWER_DRAGONS",
    [2093126853] = "PROVISION_RO_FLOWER_GHOST",
    [728781265] = "PROVISION_RO_FLOWER_LADY_OF_NIGHT",
    [1794857344] = "PROVISION_RO_FLOWER_LADY_SLIPPER",
    [1952409553] = "PROVISION_RO_FLOWER_MOCCASIN",
    [-150591160] = "PROVISION_RO_FLOWER_NIGHT_SCENTED",
    [1019229063] = "PROVISION_RO_FLOWER_QUEENS",
    [-323969289] = "PROVISION_RO_FLOWER_RAT_TAIL",
    [927763737] = "PROVISION_RO_FLOWER_SPARROWS",
    [1504361882] = "PROVISION_RO_FLOWER_SPIDER",
    [660636780] = "PROVISION_SADIES_HARMONICA",
    [1441143730] = "PROVISION_SCKEYESAL_DESC",
    [1739209130] = "PROVISION_SCRAP_METAL",
    [1017109217] = "PROVISION_SEAGULL_FEATHER",
    [-1317365569] = "PROVISION_SHEEP_WOOL",
    [1729948479] = "PROVISION_SHEEP_WOOL_POOR",
    [1466150167] = "PROVISION_SHEEP_WOOL_PRISTINE",
    [1925227409] = "PROVISION_SKUNK_FUR",
    [-1731566944] = "PROVISION_SKUNK_FUR_POOR",
    [119626970] = "PROVISION_SKUNK_FUR_PRISTINE",
    [1935234363] = "PROVISION_SMLMTHBASS_DESC",
    [1126133763] = "PROVISION_SNAKE_SKIN",
    [1681193300] = "PROVISION_SNAKE_SKIN_POOR",
    [624262971] = "PROVISION_SNAKE_SKIN_PRISTINE",
    [1374722424] = "PROVISION_SONGBIRD_FEATHER",
    [800967980] = "PROVISION_SPARROW_FEATHER",
    [2085530337] = "PROVISION_SPOONBILL_FEATHER",
    [-896290892] = "PROVISION_SQUIRREL_PELT",
    [995830478] = "PROVISION_SQUIRREL_PELT_POOR",
    [-1610025835] = "PROVISION_SQUIRREL_PELT_PRISTINE",
    [2016225967] = "PROVISION_SQUIRREL_TAIL",
    [-875449072] = "PROVISION_STRINGY_MEAT",
    [-1661793062] = "PROVISION_SUCCULENT_FISH_MEAT",
    [-987731097] = "PROVISION_TAKANTA_BUFFALO_LEGENDARY_FUR_PRISTINE",
    [-62615415] = "PROVISION_TALISMAN_ALLIGATOR_TOOTH",
    [912505877] = "PROVISION_TALISMAN_ALLIGATOR_TOOTH_DESC",
    [-832719552] = "PROVISION_TALISMAN_BEAR_CLAW",
    [-4520978] = "PROVISION_TALISMAN_BEAR_CLAW_DESC",
    [-184823984] = "PROVISION_TALISMAN_BOAR_TUSK",
    [-1941112926] = "PROVISION_TALISMAN_BUFFALO_HORN",
    [-7792500] = "PROVISION_TALISMAN_BUFFALO_HORN_DESC",
    [-615217896] = "PROVISION_TALISMAN_EAGLE_TALON",
    [1229881055] = "PROVISION_TALISMAN_EAGLE_TALON_DESC",
    [-121629511] = "PROVISION_TALISMAN_RAVEN_CLAW",
    [-1205316999] = "PROVISION_TALISMAN_RAVEN_CLAW_DESC",
    [-1934113451] = "PROVISION_TENDER_PORK",
    [-11353153] = "PROVISION_TH_ANTIQUE_BRASS_COMPASS",
    [-224110471] = "PROVISION_TRINKET_BEAVER_TOOTH",
    [-1896544078] = "PROVISION_TRINKET_BEAVER_TOOTH_DESC",
    [1289585739] = "PROVISION_TRINKET_BISON_HORN",
    [1659808231] = "PROVISION_TRINKET_BISON_HORN_DESC",
    [-269048282] = "PROVISION_TRINKET_BUCK_ANTLER",
    [-2122043714] = "PROVISION_TRINKET_BUCK_ANTLER_DESC",
    [1441506783] = "PROVISION_TRINKET_COUGAR_FANG",
    [560371529] = "PROVISION_TRINKET_COUGAR_FANG_DESC",
    [780305678] = "PROVISION_TRINKET_COYOTE_FANG",
    [-1151724199] = "PROVISION_TRINKET_COYOTE_FANG_DESC",
    [1811977508] = "PROVISION_TRINKET_ELK_ANTLER",
    [-935153695] = "PROVISION_TRINKET_FOX_CLAW",
    [1314454408] = "PROVISION_TRINKET_FOX_CLAW_DESC",
    [655868243] = "PROVISION_TRINKET_IGUANA_SCALE",
    [-489657183] = "PROVISION_TRINKET_IGUANA_SCALE_DESC",
    [1299744282] = "PROVISION_TRINKET_LION_PAW",
    [1201239982] = "PROVISION_TRINKET_LION_PAW_DESC",
    [1631240196] = "PROVISION_TRINKET_MOOSE_ANTLER",
    [1845373120] = "PROVISION_TRINKET_MOOSE_ANTLER_DESC",
    [1768869276] = "PROVISION_TRINKET_OWL_FEATHER",
    [366910714] = "PROVISION_TRINKET_OWL_FEATHER_DESC",
    [517396587] = "PROVISION_TRINKET_PANTHER_EYE",
    [1826711126] = "PROVISION_TRINKET_PANTHER_EYE_DESC",
    [1620353486] = "PROVISION_TRINKET_PRONGHORN_ANTLER",
    [-1828448149] = "PROVISION_TRINKET_PRONGHORN_ANTLER_DESC",
    [1816443627] = "PROVISION_TRINKET_RAM_HORN",
    [-82975767] = "PROVISION_TRINKET_RAM_HORN_DESC",
    [-127011478] = "PROVISION_TRINKET_WOLF_HEART",
    [-2017245386] = "PROVISION_TRINKET_WOLF_HEART_DESC",
    [-661323467] = "PROVISION_TURKEY_FEATHER",
    [-1397737565] = "PROVISION_VULTURE_FEATHER",
    [-301736614] = "PROVISION_WATCH",
    [2022985736] = "PROVISION_WHITE_BUFFALO_LEGENDARY_FUR_PRISTINE",
    [1761014306] = "PROVISION_WHOOPING_CRANE_FEATHER",
    [1145777975] = "PROVISION_WOLF_FUR",
    [85441452] = "PROVISION_WOLF_FUR_POOR",
    [653400939] = "PROVISION_WOLF_FUR_PRISTINE",
    [-1764134917] = "PROVISION_WOLF_HEART",
    [552246565] = "PROVISION_WOLF_LEGENDARY_FUR_PRISTINE",
    [1360914301] = "PROVISION_WOODPECKER_FEATHER",
}