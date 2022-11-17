local QBCore = exports['qb-core']:GetCoreObject()

local AllDoors = {
    [1] = {id = 1, active = true, model = 2130672747, coords = vector3(431.41190, -1000.782, 26.73978), automatic = {distance = 5.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --MRPD_GARAGE_DOOR_LEFT
    [2] = {id = 2, active = true, model = 2130672747, coords = vector3(452.3005, -1000.782, 26.73979), automatic = {distance = 5.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --MRPD_GARAGE_DOOR_RIGHT
    [3] = {id = 3, active = true, model = -1547307588, coords = vector3(440.7392, -998.7462, 30.8153), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_SIDE_DOOR_TO_PARKING_LEFT
    [4] = {id = 4, active = true, model = -1547307588, coords = vector3(443.0618, -998.7462, 30.8153), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_SIDE_DOOR_TO_PARKING_RIGHT
	[5] = {id = 5, active = true, model = 1830360419, coords = vector3(464.15660, -997.50930, 26.37070), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_SIDE_DOOR_TO_PARKING_LEFT
    [6] = {id = 6, active = true, model = 1830360419, coords = vector3(464.15910, -974.66560, 26.37070), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_SIDE_DOOR_TO_PARKING_RIGHT
	[7] = {id = 7, active = true, model = -288803980, coords = vector3(467.522, -1000.544, 26.405), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_BEHIND_PARKING_REAR_DOOR_LEFT
    [8] = {id = 8, active = true, model = -288803980, coords = vector3(469.927, -1000.54, 26.405), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_BEHIND_PARKING_REAR_DOOR_RIGHT
	[9] = {id = 9, active = true, model = 149284793, coords = vector3(471.3679, -1007.793, 26.40548), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_DOUBLE_DOORS_PROCESSING_LEFT
    [10] = {id = 10, active = true, model = 149284793, coords = vector3(471.37580, -1010.198, 26.40548), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_DOUBLE_DOORS_PROCESSING_RIGHT
    [11] = {id = 11, active = true, model = -288803980, coords = vector3(475.95390, -1006.938, 26.40639), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_PROCESSING_DOOR
    [12] = {id = 12, active = true, model = -53345114, coords = vector3(476.615, -1008.875, 26.4800), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_PROCESSING_CELL_DOOR
	[13] = {id = 13, active = true, model = -53345114, coords = vector3(486.9131, -1012.189, 26.480), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_CELL_DOOR_1
	[14] = {id = 14, active = true, model = -53345114, coords = vector3(483.9127, -1012.189, 26.480), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_CELL_DOOR_2
	[15] = {id = 15, active = true, model = -53345114, coords = vector3(480.9128, -1012.189, 26.480), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_CELL_DOOR_3
	[16] = {id = 16, active = true, model = -53345114, coords = vector3(477.9126, -1012.189, 26.480), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_CELL_DOOR_4
	[17] = {id = 17, active = true, model = -53345114, coords = vector3(484.1764, -1007.734, 26.480), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_CELL_DOOR_5
	[18] = {id = 18, active = true, model = -53345114, coords = vector3(481.0084, -1004.118, 26.480), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_CELL_DOOR_TO_LINEUP
	[19] = {id = 19, active = true, model = -288803980, coords = vector3(479.06, -1003.173, 26.4065), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_LINEUP_DOOR
	[20] = {id = 20, active = true, model = -1406685646, coords = vector3(482.66990, -992.29910, 26.40548), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_INTERROGATION_2_OBSERVER
	[21] = {id = 21, active = true, model = -1406685646, coords = vector3(482.67030, -995.7285, 26.40548), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_INTERROGATION_2
	[22] = {id = 22, active = true, model = -1406685646, coords = vector3(482.66940, -983.98680, 26.40548), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_INTERROGATION_2_OBSERVER
	[23] = {id = 23, active = true, model = -1406685646, coords = vector3(482.67010, -987.57920, 26.40548), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_INTERROGATION_
	[24] = {id = 24, active = true, model = -692649124, coords = vector3(475.83230, -990.48390, 26.40548), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_INTERROGATION_OBSERVER
	[25] = {id = 25, active = true, model = -692649124, coords = vector3(479.75070, -999.629, 30.78917), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_ARMOURY_1
	[26] = {id = 26, active = true, model = -692649124, coords = vector3(487.437, -1000.189, 30.78697), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_ARMOURY_2
	[27] = {id = 27, active = true, model = -1547307588, coords = vector3(458.208, -972.254, 30.815), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_SIDE_DOOR_STREETS_LEFT
	[28] = {id = 28, active = true, model = -1547307588, coords = vector3(455.886, -972.254, 30.815), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_SIDE_DOOR_STREETS_RIGHT
	[29] = {id = 29, active = true, model = -1406685646, coords = vector3(440.520, -977.601, 30.823), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_LOBBY_LEFT
	[30] = {id = 30, active = true, model = -96679321, coords = vector3(440.520, -986.233, 30.823), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_LOBBY_RIGHT
	--##PALETO PD##
	[31] = {id = 31, active = true, model = -2023754432, coords = vector3(-450.9664, 6006.086, 31.99004), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_BACK_DOOR_LEFT
	[32] = {id = 32, active = true, model = -2023754432, coords = vector3(-447.2363, 6002.317, 31.84003), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_BACK_DOOR_RIGHT
	[33] = {id = 33, active = true, model = -1320876379, coords = vector3(-436.5157, 6007.844, 28.13839), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_EVIDENCE_DOOR_LEFT
	[34] = {id = 34, active = true, model = -1320876379, coords = vector3(-434.6776, 6009.681, 28.13839), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_EVIDENCE_DOOR_RIGHT
	[35] = {id = 35, active = true, model = -2023754432, coords = vector3(-450.7136, 6016.371, 31.86523), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_LOCKER_ROOM_FRONT
	[36] = {id = 36, active = true, model = -2023754432, coords = vector3(-454.0435, 6010.243, 31.86106), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_LOCKER_ROOM_BACK
	[37] = {id = 37, active = true, model = 749848321, coords = vector3(-439.1576, 5998.157, 31.86815), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_ARMOURY_DOOR
	[38] = {id = 38, active = true, model = 749848321, coords = vector3(-436.6276, 6002.548, 28.14062), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_INTERROGATION_DOOR
	[39] = {id = 39, active = true, model = 749848321, coords = vector3(-433.93760, 6005.278, 28.14062), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_INTERROGATION_OBSERBER_DOOR
	[40] = {id = 40, active = true, model = -1927754726, coords = vector3(-438.228, 6006.167, 28.13558), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_FIRST_CELL_DOOR_TO_CELLS
	[41] = {id = 41, active = true, model = -1927754726, coords = vector3(-442.1082, 6010.052, 28.13558), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_LAST_CELL_DOOR_TO_CELLS
	[42] = {id = 42, active = true, model = -1927754726, coords = vector3(-444.3682, 6012.223, 28.13558), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_CELLS_BUT_ITS_ACTUALLY_CELL
	[43] = {id = 43, active = true, model = -2023754432, coords = vector3(-441.0185, 6012.795, 31.86523), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_DOUBLE_DOORS_LEFT
	[44] = {id = 44, active = true, model = -2023754432, coords = vector3(-442.8578, 6010.958, 31.86523), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_DOUBLE_DOORS_RIGHT
	[45] = {id = 45, active = true, model = -2023754432, coords = vector3(-447.7283, 6006.702, 31.86523), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_DOUBLE_DOORS_BEHIND_RECEPTION_LEFT
	[46] = {id = 46, active = true, model = -2023754432, coords = vector3(-449.5656, 6008.538, 31.86523), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PALETO_DOUBLE_DOORS_BEHIND_RECEPTION_RIGHT
	--##Sandy Shores PD
	[47] = {id = 47, active = true, model = -1765048490, coords = vector3(1860.7, 3692.4, 34.5), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_BOSS_DOOR
	[48] = {id = 48, active = true, model = -2023754432, coords = vector3(1857.2, 3690.2, 34.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_RECEPTION_SINGLE_DOOR
	[49] = {id = 49, active = true, model = -2023754432, coords = vector3(1847.1, 3689.9, 34.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_RECEPTION_DOUBLE_DOOR_LEFT
	[50] = {id = 50, active = true, model = -2023754432, coords = vector3(1849.4, 3691.206, 34.41), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_RECEPTION_BACK_DOUBLE_DOOR_LEFT
	[51] = {id = 51, active = true, model = -2023754432, coords = vector3(1847.1, 3689.9, 34.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_RECEPTION_BACK_DOUBLE_DOOR_RIGHT
	[52] = {id = 52, active = true, model = -2023754432, coords = vector3(1851.288, 3681.87, 34.41), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_RECEPTION_LEFT_SIDE_DOUBLE_DOOR_LEFT
	[53] = {id = 53, active = true, model = -2023754432, coords = vector3(1849.9, 3684.1, 34.41), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_RECEPTION_LEFT_SIDE_DOUBLE_DOOR_RIGHT
	[54] = {id = 54, active = true, model = 631614199, coords = vector3(1859.697, 3686.644, 30.40922), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_CELL_DOOR_TO_CELLS
	[55] = {id = 55, active = true, model = -1927754726, coords = vector3(1862.763, 3688.414, 30.40922), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_CELL_1
	[56] = {id = 56, active = true, model = -1927754726, coords = vector3(1860.898, 3691.643, 30.40922), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_CELL_2
	[57] = {id = 57, active = true, model = -1927754726, coords = vector3(1858.998, 3694.937, 30.40922), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_CELL_3
	[58] = {id = 58, active = true, model = 749848321, coords = vector3(1856.1, 3688.2, 30.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_OBSERVOR_ROOM
	[59] = {id = 59, active = true, model = 749848321, coords = vector3(1852.9, 3686.4, 30.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SANDYPD_INTERROGATION_ROOM
	[60] = {id = 60, active = true, model = -2023754432, coords = vector3(1850.9, 3681.6, 30.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SOMETHING_INSIDE_SANDYPD
	[61] = {id = 61, active = true, model = -2023754432, coords = vector3(1849.6, 3683.8, 30.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --SOMETHING_INSIDE_SANDYPD
	--##BolingBroke
	[62] = {id = 62, active = true, model = 741314661, coords = vector3(1844.9, 2604.8, 44.6), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --BOLINGBROKE_GATE_1
	[63] = {id = 63, active = true, model = 741314661, coords = vector3(1818.5, 2604.8, 44.6), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --BOLINGBROKE_GATE_2
	[64] = {id = 64, active = true, model = 741314661, coords = vector3(1799.237, 2616.303, 44.6), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --BOLINGBROKE_GATE_3
	[65] = {id = 65, active = true, model = -1156020871, coords = vector3(1796.322, 2596.574, 45.565), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_SIDE_GATE_1
	[66] = {id = 66, active = true, model = -1033001619, coords = vector3(1821.170, 2476.265, 45.689), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_1
	[67] = {id = 67, active = true, model = -1033001619, coords = vector3(1759.620, 2412.837, 45.716), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_2
	[68] = {id = 68, active = true, model = -1033001619, coords = vector3(1543.241, 2471.294, 45.712), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_3
	[69] = {id = 69, active = true, model = -1033001619, coords = vector3(1658.584, 2397.722, 45.71526), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_4
	[70] = {id = 70, active = true, model = -1033001619, coords = vector3(1537.811, 2585.995, 45.68915), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_5
	[71] = {id = 71, active = true, model = -1033001619, coords = vector3(1572.662, 2679.191, 45.72976), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_6
	[72] = {id = 72, active = true, model = -1033001619, coords = vector3(1651.161, 2755.436, 45.87868), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_7
	[73] = {id = 73, active = true, model = -1033001619, coords = vector3(1773.108, 2759.700, 45.88673), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_8
	[74] = {id = 74, active = true, model = -1033001619, coords = vector3(1845.790, 2698.621, 45.95531), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_8
	[75] = {id = 75, active = true, model = -1033001619, coords = vector3(1820.770, 2620.770, 45.95126), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_WATCH_TOWER_9
	[76] = {id = 76, active = true, model = 1373390714, coords = vector3(1845.336, 2585.348, 46.0855), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_RECEPTION_MAIN_ENTRY
	[77] = {id = 77, active = true, model = 2024969025, coords = vector3(1844.404, 2576.997, 46.0356), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_RECEPTION_STAFF_ENTRY
	[78] = {id = 78, active = true, model = 2024969025, coords = vector3(1837.634, 2576.992, 46.0386), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_RECEPTION_CLOAKROOM
	[79] = {id = 79, active = true, model = -2051651622, coords = vector3(1838.09, 2572.297, 46.15969), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_RECEPTION_CLOAKROOM_TOILET
	[80] = {id = 80, active = true, model = -684929024, coords = vector3(1835.528, 2587.44, 46.03712), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_RECEPTION_VISITORS_ACCESS
	[81] = {id = 81, active = true, model = -684929024, coords = vector3(1837.742, 2592.162, 46.03957), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_RECEPTION_PRISON_ACCESS
	[82] = {id = 82, active = true, model = -684929024, coords = vector3(1831.34, 2594.992, 46.03791), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_RECEPTION_PRISON_ACCESS_2
	[83] = {id = 83, active = true, model = -684929024, coords = vector3(1838.617, 2593.705, 46.03636), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_CAMERA_ROOM

	[84] = {id = 84, active = true, model = -684929024, coords = vector3(1827.981, 2592.157, 46.03718), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_PRISONERS_VISITATION
	[85] = {id = 85, active = true, model = 1373390714, coords = vector3(1819.073, 2594.873, 46.08695), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_??
	[86] = {id = 86, active = true, model = 1373390714, coords = vector3(1754.796, 2501.568, 45.80966), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_UPPER_DOUBLE_DOORS_SOLITARY
	[87] = {id = 87, active = true, model = 241550507, coords = vector3(1758.652, 2492.659, 45.88988), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_UPPER_DOUBLE_DOORS_SOLITARY
	[88] = {id = 88, active = true, model = 241550507, coords = vector3(1751.147, 2481.178, 45.88988), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_GYM
	[89] = {id = 89, active = true, model = 241550507, coords = vector3(1752.281, 2479.248, 45.88988), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_RECREATIONAL
	[90] = {id = 90, active = true, model = 241550507, coords = vector3(1772.939, 2495.313, 49.84006), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_CELL_SECURITY_LEFT
	[91] = {id = 91, active = true, model = 241550507, coords = vector3(1775.414, 2491.025, 49.84006), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_CELL_SECURITY_RIGHT
	[92] = {id = 92, active = true, model = 1373390714, coords = vector3(1765.118, 2566.524, 45.80285), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_ENTRANCE
	[93] = {id = 93, active = true, model = 2074175368, coords = vector3(1772.813, 2570.296, 45.74467), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_RECEPTION
	[94] = {id = 94, active = true, model = -1624297821, coords = vector3(1766.325, 2574.698, 45.75301), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_DOUBLE_DOOR_LEFT
	[95] = {id = 95, active = true, model = -1624297821, coords = vector3(1764.025, 2574.698, 45.75301), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_DOUBLE_DOOR_RIGHT
	[96] = {id = 96, active = true, model = -1392981450, coords = vector3(1767.323, 2580.832, 45.74783), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_LABORATORY
	[97] = {id = 97, active = true, model = -1624297821, coords = vector3(1767.321, 2582.308, 45.75345), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_SURGERY_DOOR_LEFT
	[98] = {id = 98, active = true, model = -1624297821, coords = vector3(1767.321, 2584.607, 45.75345), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_SURGERY_DOOR_RIGHT

	[99] = {id = 99, active = true, model = -1624297821, coords = vector3(1766.325, 2589.564, 45.75309), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_ICU_DOOR_LEFT
	[100] = {id = 100, active = true, model = -1624297821, coords = vector3(1764.026, 2589.564, 45.75309), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_INFIRMARY_ICU_DOOR_RIGHT
	[101] = {id = 101, active = true, model = 1373390714, coords = vector3(1776.195, 2552.563, 45.74741), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_CAFETERIA_SOMETHING
	[102] = {id = 102, active = true, model = 1373390714, coords = vector3(1791.595, 2551.462, 45.7532), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_CAFETERIA_SOMETHING
	[103] = {id = 103, active = true, model = 871712474, coords = vector3(1762.779, 2590.629, 50.67069), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_
	--[104] = {id = 104, active = true, model = 871712474, coords = vector3(1762.780, 2593.568, 50.67069), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_
	--[105] = {id = 105, active = true, model = 871712474, coords = vector3(1762.774, 2596.512, 50.67069), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_
	--Pacifc Bank
	[104] = {id = 104, active = true, model = -2121568016, coords = vector3(267.72, 213.87, 106.28), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_
	[105] = {id = 105, active = true, model = -2121568016, coords = vector3(270.12, 220.82, 106.28), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_
	[106] = {id = 106, active = true, model = GetHashKey('hei_v_ilev_bk_gate_pris'), coords = vector3(257.01144, 220.60072, 106.28546), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_BANK_DOOR_1
	-- Front of Vault Doors
	[107] = {id = 107, active = true, model = GetHashKey('hei_v_ilev_bk_gate2_pris'), coords = vector3(262.08346, 221.94297, 106.28521), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_BANK_DOOR_2
	[108] = {id = 108, active = true, model = 409280169, coords = vector3(269.41, 213.09, 97.17), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_UPPER_DOOR_
	-- Office in Vault
	[109] = {id = 109, active = true, model = 409280169, coords = vector3(265.51, 225.37, 97.17), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_SAFE_DOOR_1
	-- Left Small Vault
	[110] = {id = 110, active = true, model = 409280169, coords = vector3(244.1, 217.01, 97.17), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_SAFE_DOOR_2
	-- Right Small Vault
	[111] = {id = 111, active = true, model = 409280169, coords = vector3(250.03, 233.49, 97.17), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_VAULT
	-- Vault Door
	[112] = {id = 112, active = true, model = 961976194, coords = vector3(236.23, 229.35, 97.12), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_VAULT
	-- After Vault Door 1st door 
	[113] = {id = 113, active = true, model = 643152522, coords = vector3(229.49, 227.53, 97.18), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_VAULT
	-- 2nd door
	[114] = {id = 114, active = true, model = 643152522, coords = vector3(226.08, 228.8, 97.18), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --PACIFIC_VAULT



	--Fleeca Bank Pink Cage
	[114] = {id = 114, active = true, model = -1591004109, coords = vector3(314.61, -285.82, 54.49), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --FLEECA_BANK_PINK_CAGE
	--Fleeca Bank Legion Square
	[115] = {id = 115, active = true, model = -1591004109, coords = vector3(150.29130, -1047.629, 29.6663), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --FLEECA_BANK_LEGION_SQUARE
	--Fleeca Bank Hawick Avenue
	[116] = {id = 116, active = true, model = -1591004109, coords = vector3(-350.41440, -56.79705, 49.33480), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --FLEECA_BANK_HAWICK_AVENUE
	--Fleeca Bank Great Ocean HWY
	[117] = {id = 117, active = true, model = -1591004109, coords = vector3(-2956.116, 485.42060, 15.99531), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --FLEECA_BANK_GREAT_OCEAN_HWY
	--Paleto Bank
	[118] = {id = 118, active = true, model = 1622278560, coords = vector3(-104.604, 6473.444, 31.79532), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --FLEECA_BANK_PALETO_BAY_GATE_1
	[119] = {id = 119, active = true, model = 1309269072, coords = vector3(-106.5051, 6476.122, 31.91084), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --FLEECA_BANK_PALETO_BAY_GATE_2
	--Racers Edge
	[120] = {id = 120, active = true, model = -305065920, coords = vector3(946.23, -984.69, 41.51), automatic = {distance = 5.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["racersedge"] = true}}, keyFob = true}, --RACERS_EDGE_SLIDEY_DOOR
	--[121] = {id = 119, active = true, model = 1289778077, coords = vector3(948.7, -964.4, 39.8), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["racersedge"] = true}}}, --RACERS_EDGE_STAFF_DOOR_1
	--[122] = {id = 120, active = true, model = -626684119, coords = vector3(955.6, -971.5, 39.9), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["racersedge"] = true}}}, --RACERS_EDGE_STAFF_DOOR_2
	--Pillbox
	[121] = {id = 121, active = true, model = -434783486, coords = vector3(302.8, -581.4, 43.4), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_LOBBY_TO_WARD_LEFT
	[122] = {id = 122, active = true, model = -1700911976, coords = vector3(305.2, -582.3, 43.4), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_LOBBY_TO_WARD_RIGHT
	[123] = {id = 123, active = true, model = -434783486, coords = vector3(318.4, -579.2, 43.4), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_MAIN_TREATMENT_WARD_LEFT
	[124] = {id = 124, active = true, model = -1700911976, coords = vector3(316.0, -578.3, 43.4), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_MAIN_TREATMENT_WARD_RIGHT
	[125] = {id = 125, active = true, model = 854291622, coords = vector3(303.959, -572.557, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_STAFF_CLOSET
	[126] = {id = 126, active = true, model = 854291622, coords = vector3(307.118, -569.569, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_STAFF_LABRATORY
	[127] = {id = 127, active = true, model = 854291622, coords = vector3(340.7, -581.8, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_STAFF_DIAGNOSTICS
	[128] = {id = 128, active = true, model = 854291622, coords = vector3(352.1, -594.1, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_DR_OFFICE_373
	[129] = {id = 129, active = true, model = 854291622, coords = vector3(346.8, -593.6, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_STAFF_TREATMENT
	[130] = {id = 130, active = true, model = 854291622, coords = vector3(358.7, -593.8, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_DR_OFFICE_372
	[131] = {id = 131, active = true, model = 854291622, coords = vector3(339.0, -586.7, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_STAFF_ADMINISTRATION
	[132] = {id = 132, active = true, model = 854291622, coords = vector3(336.8, -592.5, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_DIRECTORS_OFFICE
	[133] = {id = 133, active = true, model = 854291622, coords = vector3(309.1, -597.7, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_STAFF_ROOM
	[134] = {id = 134, active = true, model = -434783486, coords = vector3(312.0, -571.3, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_1_LEFT
	[135] = {id = 135, active = true, model = -1700911976, coords = vector3(314.4, -572.2, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_1_RIGHT	
	[136] = {id = 136, active = true, model = -434783486, coords = vector3(317.8, -573.4, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_2_LEFT
	[137] = {id = 137, active = true, model = -1700911976, coords = vector3(320.2, -574.3, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_2_RIGHT	
	[138] = {id = 138, active = true, model = -434783486, coords = vector3(317.8, -573.4, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_2_LEFT
	[139] = {id = 139, active = true, model = -1700911976, coords = vector3(320.2, -574.3, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_2_RIGHT
	[140] = {id = 140, active = true, model = -434783486, coords = vector3(323.2, -575.4, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_3_LEFT
	[141] = {id = 141, active = true, model = -1700911976, coords = vector3(325.6, -576.3, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_SURGERY_ROOM_3_RIGHT
	[142] = {id = 142, active = true, model = -434783486, coords = vector3(326.54, -578.0, 43.4), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_WARD_B_LEFT
	[143] = {id = 143, active = true, model = -1700911976, coords = vector3(325.6, -580.45, 43.4), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_WARD_B_RIGHT
	[144] = {id = 144, active = true, model = -434783486, coords = vector3(324.2, -589.2, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_LOBBY_TO_HALLWAY_BACK_LEFT
	[145] = {id = 145, active = true, model = -1700911976, coords = vector3(326.6, -590.1, 43.4), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_LOBBY_TO_HALLWAY_BACK_RIGHT
	[146] = {id = 146, active = true, model = -434783486, coords = vector3(349.3, -586.3, 43.4), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_WARD_C_LEFT
	[147] = {id = 147, active = true, model = -1700911976, coords = vector3(348.43330, -588.74500, 43.43391), automatic = false, lock = 0, forceUnlocked = false, access = {job = {["PD"] = true, ["DR"] = true}}}, --PILLBOX_WARD_C_RIGHT
	--Vanilla Unicorn
	[148] = {id = 148, active = true, model = -1116041313, coords = vector3(127.95010, -1298.50700, 29.41962), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vanilla"] = true}}}, --VANILLA_UNICORN_PARKING_LOT_TO_MAIN
	[149] = {id = 149, active = true, model = 390840000, coords = vector3(132.23420, -1288.30300, 29.43497), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vanilla"] = true}}}, --VANILLA_UNICORN_DOOR_TO_STORAGE
	[150] = {id = 150, active = true, model = 390840000, coords = vector3(128.07080, -1279.34700, 29.43697), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vanilla"] = true}}}, --VANILLA_UNICORN_DOOR_TO_DJ_BOOTH
	[151] = {id = 151, active = true, model = 390840000, coords = vector3(116.22780, -1294.59300, 29.43599), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vanilla"] = true}}}, --VANILLA_UNICORN_DOOR_TO_PREMIUM_LOUNGE
	[152] = {id = 152, active = true, model = 390840000, coords = vector3(113.41010, -1296.26000, 29.43599), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vanilla"] = true}}}, --VANILLA_UNICORN_DOOR_TO_DANCER_ROOMS
	[153] = {id = 153, active = true, model = 390840000, coords = vector3(99.08307, -1293.68900, 29.44040), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vanilla"] = true}}}, --VANILLA_UNICORN_DOOR_TO_BOSSMAN_OFFICE
	[154] = {id = 154, active = true, model = -1116041313, coords = vector3(96.09800, -1284.85000, 29.43878), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vanilla"] = true}}}, --VANILLA_UNICORN_DOOR_TO_BOSSMAN_OFFICE
	--More MRPD (Because I read config wrong, gg)
	[155] = {id = 155, active = true, model = -692649124, coords = vector3(469.774, -1014.407, 26.483), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_BACK_DOORS_LEFT
	[156] = {id = 156, active = true, model = -692649124, coords = vector3(467.368, -1014.407, 26.483), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --MRPD_BACK_DOORS_RIGHT
	[157] = {id = 157, active = true, model = -1603817716, coords = vector3(488.8948, -1022.754, 27.14722), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --MRPD_BACK_DOORS_RIGHT
	--Extra misc doors
	[158] = {id = 158, active = true, model = 1596276849, coords = vector3(4.40299, 37.32130, 71.75453), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["NOONE"] = true}}}, --WEST_VINEWOOD_BAD_DOOR
	[159] = {id = 159, active = true, model = 262839150, coords = vector3(1791.682, 2551.34300, 46.09217), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_MEDICAAL_DOOR_BACK
	[160] = {id = 160, active = true, model = 1645000677, coords = vector3(1776.125, 2551.352, 46.09250), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_MEDICAAL_DOOR_BACK
	[161] = {id = 161, active = true, model = 262839150, coords = vector3(1786.384, 2600.229, 46.08917), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_MEDICAAL_DOOR_BACK
	[162] = {id = 162, active = true, model = 1028191914, coords = vector3(1787.711, 2606.000, 50.73208), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_SINGLE_DOOR_UPPER
	[163] = {id = 163, active = true, model = 1028191914, coords = vector3(1769.170, 2613.576, 46.15020), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_SINGLE_DOOR_UPPER
	[164] = {id = 164, active = true, model = 1028191914, coords = vector3(1769.167, 2619.262, 46.15020), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --BOLINGBROKE_PRISON_SINGLE_DOOR_UPPER
	[165] = {id = 165, active = true, model = -1023447729, coords = vector3(735.19820, 132.41220, 80.90654), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["NOONE"] = true}}}, --POWERSTATION DOOR
	--Pillbox Garage Doors	
	[166] = {id = 166, active = true, model = -820650556, coords = vector3(336.89230, -565.49120, 31.75273), automatic = {distance = 5.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["DR"] = true}}, keyFob = true}, --garage_door_right
	[167] = {id = 167, active = true, model = -820650556, coords = vector3(329.74830, -562.89590, 31.75383), automatic = {distance = 5.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["DR"] = true}}, keyFob = true}, --garage_door_left
	--Import car shop
	[168] = {id = 168, active = true, model = 1501451068, coords = vector3(-770.62870, -240.01260, 37.45856), automatic = {distance = 5.0, rate = 1.5}, lock = 2, forceUnlocked = false, access = {job = {["cardealer"] = true}}, keyFob = true}, --garage_door_right
	[169] = {id = 169, active = true, model = 1501451068, coords = vector3(-765.61940, -237.94630, 37.45856), automatic = {distance = 5.0, rate = 1.5}, lock = 2, forceUnlocked = false, access = {job = {["cardealer"] = true}}, keyFob = true}, --garage_door_right
	--Vanilla Unicorn
	[170] = {id = 170, active = true, model = -1116041313, coords = vector3(135.63800, -1279.93400, 29.58678), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vu"] = true}}}, --VANILLA_UNICORN_BACKDOOR_STORAGE
	[171] = {id = 171, active = true, model = 390840000, coords = vector3(124.82060, -1292.484400, 29.43452), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vu"] = true}}}, --VANILLA_UNICORN_BASEMENT
	[172] = {id = 172, active = true, model = 390840000, coords = vector3(130.26640, -1296.22700, 26.44135), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vu"] = true}}}, --VANILLA_UNICORN_BASEMENT_OFFICE
	[173] = {id = 173, active = true, model = 390840000, coords = vector3(134.96960, -1290.40500, 29.42340), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["vu"] = true}}}, --VANILLA_UNICORN_STORAGE_TO_BATHROOM
	--Bahama Mamas
	[174] = {id = 174, active = true, model = -1747430008, coords = vector3(-1369.03800, -616.02820, 30.46988), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}}, --BAHAMA_MAMAS_BOSSMAN_OFFICE_LEFT
	[175] = {id = 175, active = true, model = -1747430008, coords = vector3(-1370.71500, -617.11790, 30.46937), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}}, --BAHAMA_MAMAS_BOSSMAN_OFFICE_RIGHT
	[176] = {id = 176, active = true, model = 401003935, coords = vector3(-1371.19500, -607.16190, 30.86444), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}}, --BAHAMA_MAMAS_BOSSMAN_RESTRICTED_ENTRANCE
	[177] = {id = 177, active = true, model = -1119680854, coords = vector3(-1387.07000, -586.54710, 30.51987), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}}, --BAHAMA_MAMAS_FRONT_DOOR_LEFT
	[178] = {id = 178, active = true, model = -1119680854, coords = vector3(-1389.23400, -587.95680, 30.51987), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}}, --BAHAMA_MAMAS_FRONT_DOOR_RIGHT
	[179] = {id = 179, active = true, model = 401003935, coords = vector3(-1393.30500, -624.95420, 30.46850), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}}, --BAHAMA_MAMAS_GARAGE_DOOR_CLUB_ENTRANCE
	[180] = {id = 180, active = true, model = -822900180, coords = vector3(-1394.17300, -635.75740, 29.61153), automatic = {distance = 5.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}, keyFob = true}, --BAHAMA_MAMAS_GARAGE_SLIDEY
	[181] = {id = 181, active = true, model = -2003105485, coords = vector3(-1391.63600, -640.34480, 28.87561), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["bahama"] = true}}}, --BAHAMA_MAMAS_GARAGE_DOOR
	--Beanmachine
	[182] = {id = 182, active = true, model = 736699661, coords = vector3(-629.79980, 228.98980, 82.04890), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["starbucks"] = true}}}, --BEANMACHINE_KITCHEN_DOOR
	--Burgershot	
	[183] = {id = 183, active = true, model = -1448591934, coords = vector3(-1201.11100, -892.96510, 14.24448), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["burgershot"] = true}}}, --BURGERSHOT SIDE DOOR
	[184] = {id = 184, active = true, model = -1300743830, coords = vector3(-1199.35700, -903.87410, 14.07984), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["burgershot"] = true}}},  --BURGERSHOT REAR DOOR
	[185] = {id = 185, active = true, model = 1050821746, coords = vector3(-1184.89200, -883.33770, 14.25113), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["burgershot"] = true}}}, 
	[186] = {id = 186, active = true, model = -1270304831, coords = vector3(-1183.20700, -885.83120, 14.25113), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["burgershot"] = true}}}, 

	--ARCarWash
	[187] = {id = 187, active = true, model = -868672903, coords = vector3(179.34400, -1721.60900, 29.51156), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, 
	[188] = {id = 188, active = true, model = 668467214, coords = vector3(163.62240, -1716.16700, 29.44219), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, --office
	[189] = {id = 189, active = true, model = 668467214, coords = vector3(166.45060, -1709.60100, 29.48179), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, --office
	[190] = {id = 190, active = true, model = GetHashKey('v_ilev_fb_doorshortl'), coords = vector3(170.8415, -1722.198, 28.84955), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, --door next to register
	--Noods	
	[191] = {id = 191, active = true, model = GetHashKey('apache_noodle02_door'), coords = vector3(-1198.877, -1162.307, 7.6961), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["noods"] = true}}}, --front door
	[192] = {id = 192, active = true, model = -1382408715, coords = vector3(-1186.53600, -1152.83600, 7.81937), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["noods"] = true}}}, --office

	--Casino
	[193] = {id = 193, active = true, model = 401003935, coords = vector3(994.96, 30.81, 71.47), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[194] = {id = 194, active = true, model = 680601509, coords = vector3(1025.59, 33.29, 69.86), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[195] = {id = 195, active = true, model = 680601509, coords = vector3(1026.28, 32.67, 69.87), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[196] = {id = 196, active = true, model = 680601509, coords = vector3(1018.18, 66.8, 69.86), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[197] = {id = 197, active = true, model = 680601509, coords = vector3(1017.9, 65.96, 69.86), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[198] = {id = 198, active = true, model = 401003935, coords = vector3(991.50073, 24.507802, 71.466896), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[199] = {id = 199, active = true, model = 901693952, coords = vector3(930.42280, 33.26310, 81.24268), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[200] = {id = 200, active = true, model = 901693952, coords = vector3(930.01350, 29.90940, 81.24268), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	[201] = {id = 201, active = true, model = -1957832210, coords = vector3(936.91220, 2.19366, 77.77723), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}, keyFob = true}, --front door
	[202] = {id = 202, active = true, model = 1266543998, coords = vector3(951.09560, 27.26886, 71.98338), automatic = false, lock = 2, forceUnlocked = false, access = {job = {""}, cid = {["MXX80150"] = true}}}, --front door
	--Beanmachine
	[203] = {id = 203, active = true, model = -952356348, coords = vector3(-632.14860, 228.41510, 86.49095), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["starbucks"] = true}}}, --office door

	--CID Davis
	[204] = {id = 204, active = true, model = 618295057, coords = vector3(381.77600, -1594.27700, 30.20128), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --front left
	[205] = {id = 205, active = true, model = 1670919150, coords = vector3(379.78420, -1592.60600, 30.20128), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --front right
	[206] = {id = 206, active = true, model = -425870000, coords = vector3(382.82430, -1599.02500, 30.14451), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --receptionist door
	[207] = {id = 207, active = true, model = -674638964, coords = vector3(369.06690, -1605.68700, 29.94212), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --upper_celldoors_women
	[208] = {id = 208, active = true, model = -674638964, coords = vector3(368.26680, -1605.01600, 29.94212), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --upper_celldoors_men
	[209] = {id = 209, active = true, model = 618295057, coords = vector3(369.52020, -1614.19900, 30.20128), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --back left
	[210] = {id = 210, active = true, model = 1670919150, coords = vector3(371.51200, -1615.87100, 30.20128), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --back right
	[211] = {id = 211, active = true, model = -1335406364, coords = vector3(375.54300, -1608.15100, 25.54451), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --bottom_observation
	[212] = {id = 212, active = true, model = -728950481, coords = vector3(371.95820, -1605.14300, 25.54451), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --bottom_interrogation
	[213] = {id = 213, active = true, model = -1335406364, coords = vector3(368.89400, -1602.57200, 25.54544), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --bottom_restroom
	[214] = {id = 214, active = true, model = -674638964, coords = vector3(375.07790, -1598.43500, 25.34306), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --lower_celldoors_women
	[215] = {id = 215, active = true, model = -674638964, coords = vector3(375.87800, -1599.10600, 25.34306), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --lower_celldoors_men
	[216] = {id = 216, active = true, model = -1335406364, coords = vector3(367.11900, -1601.08200, 25.54451), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --lower_armory
	[217] = {id = 217, active = true, model = -1335406364, coords = vector3(363.88840, -1595.47100, 25.54544), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --lower_lockers
	[218] = {id = 218, active = true, model = 1286535678, coords = vector3(397.88440, -1607.38400, 28.33815), automatic = {distance = 5.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --gate
	[219] = {id = 219, active = true, model = 1219405180, coords = vector3(147.67110, -1703.11000, 29.43876), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, --Archies Fight Club
	[220] = {id = 220, active = true, model = -1023447729, coords = vector3(137.28380, -1672.39600, 14.43505), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, --Archies Torture Door 1
	[221] = {id = 221, active = true, model = -1023447729, coords = vector3(141.69800, -1669.14600, 14.34023), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, --Archies Torture Door 2
	[222] = {id = 222, active = true, model = -1116041313, coords = vector3(125.89320, -1692.45600, 20.89203), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["arcar"] = true}}}, --Archies Torture Door 2

	--Tuners
	[223] = {id = 223, active = true, model = -456733639, coords = vector3(154.8404, -3023.889, 8.649611), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["tuner"] = true}}, keyFob = true}, --Archies Torture Door 2
	[224] = {id = 224, active = true, model = -456733639, coords = vector3(154.866, -3034.051, 9.118645), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["tuner"] = true}}, keyFob = true}, --Archies Torture Door 2
	[225] = {id = 225, active = true, model = -1229046235, coords = vector3(151.4668, -3011.705, 7.258367), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["tuner"] = true}}, keyFob = false}, --Archies Torture Door 2
	[226] = {id = 226, active = true, model = -2023754432, coords = vector3(154.9345, -3017.323, 7.190679), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["tuner"] = true}}, keyFob = false}, --Archies Torture Door 2

	--Hayes
	[227] = {id = 227, active = true, model = 1715394473, coords = vector3(-1421.11800, -440.27210, 34.90352), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["hayesauto"] = true}}, keyFob = true}, --Archies Torture Door 2
	[228] = {id = 228, active = true, model = 1715394473, coords = vector3(-1427.32600, -444.15160, 34.90352), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["hayesauto"] = true}}, keyFob = true}, --Archies Torture Door 2
	[229] = {id = 229, active = true, model = 1715394473, coords = vector3(-1414.86900, -436.36750, 34.90551), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["hayesauto"] = true}}, keyFob = true}, --Archies Torture Door 2
	[230] = {id = 230, active = true, model = -634936098, coords = vector3(-1434.15500, -448.58610, 36.05923), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["hayesauto"] = true}}, keyFob = true}, --Archies Torture Door 2

	--Real G Records
	[231] = {id = 231, active = true, model = -1719935594, coords = vector3(-993.44750, -281.38380, 38.36613), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["NOACCESS"] = true}, cid = {["DYG28908"] = true, ["ASR68282"] = true}}}, --back door
	[232] = {id = 232, active = true, model = -10590885, coords = vector3(-1015.00300, -264.97820, 39.27121), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["NOACCESS"] = true}, cid = {["DYG28908"] = true, ["ASR68282"] = true}}}, --front door
	[233] = {id = 233, active = true, model = 662746527, coords = vector3(-1016.50600, -267.10980, 39.27121), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["NOACCESS"] = true}, cid = {["DYG28908"] = true, ["ASR68282"] = true}}}, --front door

	--PD Bollards
	[234] = {id = 234, active = true, model = -1635161509, coords = vector3(410.02578735352, -1024.2199707031, 29.220199584961), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --gate
	[235] = {id = 235, active = true, model = -1868050792, coords = vector3(410.02578735352, -1024.2259521484, 29.220220565796), automatic = {distance = 10.0, rate = 2.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --gate

	--Vangelico
	[236] = {id = 236, active = true, model = 9467943, coords = vector3(-630.71, -238.12, 38.1), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	[237] = {id = 237, active = true, model = 1425919976, coords = vector3(-632.18, -236.72, 38.05), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},

	--pdsalesgarage
	[238] = {id = 238, active = true, model = -190780785, coords = vector3(459.54000, -1014.646, 29.153), automatic = {distance = 10.0,rate = 1.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --gate
	[239] = {id = 239, active = true, model = -190780785, coords = vector3(459.53980, -1019.699, 29.134), automatic = {distance = 10.0,rate = 1.0}, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}, keyFob = true}, --gate
	[240] = {id = 240, active = true, model = -1259801187, coords = vec3(883.480347, -2258.529785, 31.534859), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	[241] = {id = 241, active = true, model = -1563799200, coords = vec3(880.895142, -2258.308350, 31.534859), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	-- bobcat second door
	[242] = {id = 242, active = true, model = -551608542, coords = vec3(881.617065, -2264.669434, 32.591564), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	-- bobcat third door
	[243] = {id = 243, active = true, model = 933053701, coords = vec3(882.619873, -2268.408203, 32.591602), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	[244] = {id = 244, active = true, model = 933053701, coords = vec3(880.029785, -2268.181641, 32.591602), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	-- bobcat first doors
	[245] = {id = 245, active = true, model = -1259801187, coords = vec3(883.48030, -2258.5300, 32.53486), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	[246] = {id = 246, active = true, model = -1563799200, coords = vec3(880.89510, -2258.30800, 32.53486), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}},
	--Card Shop
	[247] = {id = 247, active = true, model = 1715961343, coords = vec3(-138.995026, 221.384521, 95.143997), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["cardshop"] = true}}},
	--Aoki
	[248] = {id = 248, active = true, model = -369464256, coords = vec3(-166.642288, 285.921600, 93.960060), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[249] = {id = 249, active = true, model = 2012678195, coords = vec3(-168.766296, 285.932587, 93.959061), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[250] = {id = 250, active = true, model = -369464256, coords = vec3(-166.642288, 285.921600, 93.960060), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[251] = {id = 251, active = true, model = -1653288146, coords = vec3(-153.155289, 287.323578, 93.960060), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[252] = {id = 252, active = true, model = -726253128, coords = vec3(-152.803299, 294.818604, 99.096062), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[253] = {id = 253, active = true, model = -1093560853, coords = vec3(-150.498291, 294.818604, 99.096062), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[254] = {id = 254, active = true, model = -862441096, coords = vec3(-149.557297, 299.399597, 99.022057), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[255] = {id = 255, active = true, model = 423873230, coords = vec3(-142.967300, 299.399597, 99.022057), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[256] = {id = 256, active = true, model = -1407669096, coords = vec3(-164.218292, 299.957550, 99.044060), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[257] = {id = 257, active = true, model = -1407669096, coords = vec3(-166.205292, 299.957581, 99.044060), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[258] = {id = 258, active = true, model = -1089711493, coords = vec3(-168.795288, 299.998596, 93.915062), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[259] = {id = 259, active = true, model = -1089711493, coords = vec3(-171.245300, 299.998596, 93.915062), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[260] = {id = 260, active = true, model = -1274314914, coords = vec3(-178.204880, 319.300842, 98.367767), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	[261] = {id = 261, active = true, model = -965106369, coords = vec3(-170.997299, 285.932587, 93.959061), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["aoki"] = true}, gang = {['syn'] = true}}},
	-- Von Crastonburg
	[262] = {id = 262, active = true, model = -719797958, coords = vec3(-1204.945190, -212.740631, 39.477211), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[263] = {id = 263, active = true, model = -674469114, coords = vec3(-1187.523193, -187.113678, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[264] = {id = 264, active = true, model = -674469114, coords = vec3(-1179.697998, -185.450378, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[265] = {id = 265, active = true, model = -674469114, coords = vec3(-1171.873169, -183.787186, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[266] = {id = 266, active = true, model = -674469114, coords = vec3(-1164.048584, -182.124008, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[267] = {id = 267, active = true, model = -674469114, coords = vec3(-1156.223267, -180.460678, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[268] = {id = 268, active = true, model = -674469114, coords = vec3(-1148.398560, -178.797501, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[269] = {id = 269, active = true, model = -674469114, coords = vec3(-1151.920044, -183.186310, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[270] = {id = 270, active = true, model = -674469114, coords = vec3(-1159.744263, -184.844238, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[271] = {id = 271, active = true, model = -674469114, coords = vec3(-1167.567993, -186.506577, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[272] = {id = 272, active = true, model = -674469114, coords = vec3(-1175.395020, -188.168839, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[273] = {id = 273, active = true, model = -674469114, coords = vec3(-1183.220947, -189.828232, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[274] = {id = 274, active = true, model = -674469114, coords = vec3(-1191.046387, -191.488495, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[275] = {id = 275, active = true, model = -674469114, coords = vec3(-1202.647583, -202.508926, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[276] = {id = 276, active = true, model = -674469114, coords = vec3(-1206.403564, -209.573257, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[277] = {id = 277, active = true, model = -674469114, coords = vec3(-1210.158691, -216.635956, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[278] = {id = 278, active = true, model = -674469114, coords = vec3(-1213.914307, -223.699066, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[279] = {id = 279, active = true, model = -674469114, coords = vec3(-1217.669800, -230.762177, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[280] = {id = 280, active = true, model = -674469114, coords = vec3(-1221.425781, -237.826248, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[281] = {id = 281, active = true, model = -674469114, coords = vec3(-1221.999878, -232.586914, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[282] = {id = 282, active = true, model = -674469114, coords = vec3(-1218.244019, -225.522903, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[283] = {id = 283, active = true, model = -674469114, coords = vec3(-1214.488525, -218.459930, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[284] = {id = 284, active = true, model = -674469114, coords = vec3(-1210.732666, -211.396271, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[285] = {id = 285, active = true, model = -674469114, coords = vec3(-1206.976685, -204.332306, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[286] = {id = 286, active = true, model = -674469114, coords = vec3(-1203.266113, -197.353912, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[287] = {id = 287, active = true, model = -674469114, coords = vec3(-1210.897339, -177.277664, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[288] = {id = 288, active = true, model = -674469114, coords = vec3(-1220.525269, -164.500427, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[289] = {id = 289, active = true, model = -674469114, coords = vec3(-1230.154419, -151.721542, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[290] = {id = 290, active = true, model = -674469114, coords = vec3(-1225.132935, -153.033997, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[291] = {id = 291, active = true, model = -674469114, coords = vec3(-1215.504761, -165.811646, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[292] = {id = 292, active = true, model = -674469114, coords = vec3(-1205.875366, -178.588455, 71.886383), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	-- uWu Cafe
	[293] = {id = 293, active = true, model = 522844070, coords = vec3(-600.910583, -1059.217651, 21.721432), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['uwu'] = true}}},
	[294] = {id = 294, active = true, model = 1099436502, coords = vec3(-600.888611, -1055.131470, 22.713028), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['uwu'] = true}}},
	[295] = {id = 295, active = true, model = -1283712428, coords = vec3(-587.340027, -1051.899414, 22.413006), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['uwu'] = true}}},
	[296] = {id = 296, active = true, model = 526179188, coords = vec3(-581.667786, -1069.627197, 22.489748), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['uwu'] = true}}},
	[297] = {id = 297, active = true, model = -69331849, coords = vec3(-580.361084, -1069.627197, 22.489748), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['uwu'] = true}}},
	-- Tequila-la
	[298] = {id = 298, active = true, model = -2037125726, coords = vec3(-563.887329, 276.516632, 83.286263), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	[299] = {id = 299, active = true, model = 1888438146, coords = vec3(-561.399963, 278.584595, 83.125275), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	[300] = {id = 300, active = true, model = 272205552, coords = vec3(-559.460327, 278.414886, 83.124260), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	[301] = {id = 301, active = true, model = 1927676967, coords = vec3(-567.583252, 280.997650, 83.126434), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	[302] = {id = 302, active = true, model = 1927676967, coords = vec3(-567.935120, 291.926422, 85.524986), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	[303] = {id = 303, active = true, model = 1888438146, coords = vec3(-563.527100, 290.733093, 85.404839), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	[304] = {id = 304, active = true, model = 272205552, coords = vec3(-563.696777, 288.794495, 85.404839), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	[305] = {id = 305, active = true, model = 1927676967, coords =vec3(-560.350647, 291.715027, 82.326088), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['tequila'] = true}}},
	-- Silo MLO in Grapeseed
	[306] = {id = 306, active = true, model = 572368913, coords =vec3(2885.847412, 4387.966309, 52.059925), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {["MXX80150"] = true}}},
	[307] = {id = 307, active = true, model = -664582244, coords =vec3(2866.901123, 4387.819824, 37.274170), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {["MXX80150"] = true}}},
	[308] = {id = 308, active = true, model = 631614199, coords =vec3(2881.611572, 4397.105469, 27.119637), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {["MXX80150"] = true}}},
	-- Hughie Meth Door
	[309] = {id = 309, active = true, model = 668467214, coords =vec3(-674.138977, -164.970871, 38.036068), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {["SZV93766"] = true}}},
	-- Cookies Shop
	[310] = {id = 310, active = true, model = -831686886, coords =vec3(-943.298218, -1184.728760, 3.929524), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['cookies'] = true}}},
	[311] = {id = 311, active = true, model = -831686886, coords =vec3(-942.199585, -1186.622925, 3.929524), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['cookies'] = true}}},
	[312] = {id = 312, active = true, model = -543490328, coords =vec3(-934.459961, -1173.608398, 5.186103), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['cookies'] = true}}},
	-- Mando Hideout
	[313] = {id = 313, active = true, model = 1890297615, coords = vec3(2833.879883, 3453.909912, 46.900002), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[314] = {id = 314, active = true, model = 239858268, coords = vec3(2827.600098, 3446.580078, 47.346706), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[315] = {id = 315, active = true, model = 1187280133, coords = vec3(307.607666, -2733.278564, 7.378216), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	-- Mando House
	[316] = {id = 316, active = true, model = 736699661, coords = vec3(-1465.520508, 38.367516, 49.273170), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {["XMJ33418"] = true}, gang = {['syn'] = true}}},
	[317] = {id = 317, active = true, model = 736699661, coords = vec3(-1491.343750, 39.050789, 49.273884), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {["XMJ33418"] = true}, gang = {['syn'] = true}}},
	[318] = {id = 318, active = true, model = -626684119, coords = vec3(-1515.409058, 37.746769, 44.623749), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {["XMJ33418"] = true}, gang = {['syn'] = true}}},
	-- Mando "Sliding Door" wtf does this mean
	[319] = {id = 319, active = true, model = 1658075484, coords = vec3(-1500.728882, 42.798687, 49.603592), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	[320] = {id = 320, active = true, model = -12921364, coords = vec3(2847.360107, 3439.070068, 49.098328), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['syn'] = true}}},
	-- Recreation Center
	[321] = {id = 321, active = true, model = 1455382860, coords =vec3(-197.043396, -1555.903076, 35.342491), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[322] = {id = 322, active = true, model = -1025131829, coords =vec3(-201.398087, -1549.898071, 28.160511), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[323] = {id = 323, active = true, model = -130261679, coords =vec3(-249.248718, -1509.896118, 29.309988), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[324] = {id = 324, active = true, model = 443916743, coords =vec3(-241.557175, -1501.558105, 29.309988), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[325] = {id = 325, active = true, model = 1322576135, coords =vec3(-239.939499, -1499.066895, 33.562252), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	-- Von Mansion
	[326] = {id = 326, active = true, model = -1742794577, coords =vec3(-150.981400, 910.751831, 235.821671), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[327] = {id = 327, active = true, model = -794121790, coords =vec3(-138.571121, 866.294983, 233.027405), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[328] = {id = 328, active = true, model = -794121790, coords =vec3(-140.456909, 867.533752, 233.027405), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[329] = {id = 329, active = true, model = -1574510328, coords =vec3(-161.796158, 891.298401, 233.785889), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[330] = {id = 330, active = true, model = -1574510328, coords =vec3(-163.388382, 892.893188, 233.785889), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[331] = {id = 331, active = true, model = -1574510328, coords =vec3(-163.388382, 892.893188, 237.454849), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	[332] = {id = 332, active = true, model = -1574510328, coords =vec3(-161.796158, 891.298401, 237.454849), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['UJN92919'] = true}}},
	-- White Widow
	[333] = {id = 333, active = true, model = -1226987899, coords =vec3(201.687973, -240.668671, 54.235588), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['whitewidow'] = true}}},
	[334] = {id = 334, active = true, model = -1226987899, coords =vec3(200.584976, -238.315170, 54.235588), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['whitewidow'] = true}}},
	[335] = {id = 335, active = true, model = -2051651622, coords =vec3(186.794159, -236.938354, 54.221138), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['whitewidow'] = true}}},
	[336] = {id = 336, active = true, model = -2051651622, coords =vec3(185.367142, -244.162537, 54.219982), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['whitewidow'] = true}}},
	[337] = {id = 337, active = true, model = 161378502, coords =vec3(174.923813, -237.066940, 49.060406), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['whitewidow'] = true}}},
	[338] = {id = 338, active = true, model = 81325078, coords =vec3(194.575684, -267.622894, 50.617069), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['whitewidow'] = true}}},
	-- Little Seoul / Crips Doors
	[339] = {id = 339, active = true, model = -1603817716, coords =vec3(-666.879028, -889.523010, 23.531740), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}, keyFob = true}, -- Front Gate
	[340] = {id = 340, active = true, model = -1209505515, coords =vec3(-695.963684, -940.019714, 20.168119), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}, keyFob = true}, -- Gas Station Gate
	[341] = {id = 341, active = true, model = -670027930, coords =vec3(-697.463318, -902.140076, 23.965420), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}}, -- Jewelry Store Back Door
	[342] = {id = 342, active = true, model = -266682831, coords =vec3(-707.719910, -887.299438, 24.112049), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}}, -- Jewelry Store Front Door 1
	[343] = {id = 343, active = true, model = 1674388876, coords =vec3(-710.101624, -887.299438, 24.112049), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}}, -- Jewelry Store Front Door 2
	[344] = {id = 344, active = true, model = -1209505515, coords =vec3(-658.155029, -919.205505, 23.524349), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}},
	[345] = {id = 345, active = true, model = -1209505515, coords =vec3(-661.415710, -921.238281, 23.264811), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}},
	[346] = {id = 346, active = true, model = 432906746, coords =vec3(-692.898987, -809.701355, 23.016848), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}},
	[347] = {id = 347, active = true, model = 245838764, coords =vec3(-675.330994, -878.722168, 25.238443), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}, keyFob = true}, -- Garage Door Little Seoul
	-- BNJ Poolhall 
	[348] = {id = 348, active = true, model = -174012878, coords =vec3(-1584.015381, -984.024414, 13.102548), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['bnj'] = true}}},
	-- Casino
	[349] = {id = 349, active = true, model = 680601509, coords =vec3(1017.637268, 65.477730, 70.010086), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['casino'] = true}}}, -- Management Door
	[350] = {id = 350, active = true, model = 680601509, coords =vec3(1018.692322, 67.176483, 70.010086), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['casino'] = true}}}, -- Management Door
	-- La Linterna 
	[351] = {id = 351, active = true, model = 982993682, coords =vec3(387.441895, -324.809021, 47.149479), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['lalinterna'] = true}}}, -- Front Doors
	[352] = {id = 352, active = true, model = 982993682, coords =vec3(385.656769, -324.159302, 47.149479), automatic = false, lock = 2, forceUnlocked = false, access = {job = {['lalinterna'] = true}}}, -- Front Doors
	[353] = {id = 353, active = true, model = 982993682, coords =vec3(378.709778, -321.626404, 47.135983), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}},
	[354] = {id = 354, active = true, model = 982993682, coords =vec3(376.926361, -320.977325, 47.135983), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}},
	[355] = {id = 355, active = true, model = 1443843183, coords =vec3(376.516602, -308.771973, 47.105888), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['crip'] = true}}},
	-- Humane Labs Doors
	[356] = {id = 356, active = true, model = 19193616, coords = vec3(3526.020508, 3702.242676, 21.341961), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs First Door
	[357] = {id = 357, active = true, model = 1878909644, coords = vec3(3538.999512, 3673.658936, 27.121464), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs Upper Elevator
	[358] = {id = 358, active = true, model = 1709395619, coords = vec3(3541.560059, 3673.207520, 27.121464), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs Upper Elevator 2
	[359] = {id = 359, active = true, model = -1572101598, coords = vec3(3532.972412, 3665.867920, 27.121780), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs Lab Door
	[360] = {id = 360, active = true, model = 161378502, coords = vec3(3532.520996, 3663.307129, 27.121778), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs Lab Door2
	[361] = {id = 361, active = true, model = -421709054, coords = vec3(3539.209229, 3647.624268, 28.271832), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 2nd Lab Door1
	[362] = {id = 362, active = true, model = 1282049587, coords = vec3(3538.757568, 3645.062744, 28.271832), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 2nd Lab Door2
	[363] = {id = 363, active = true, model = 1282049587, coords = vec3(3544.806885, 3643.996338, 28.271835), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 3rd Lab Door1
	[364] = {id = 364, active = true, model = -421709054, coords = vec3(3545.258545, 3646.557861, 28.271835), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 3rd Lab Door2
	[365] = {id = 365, active = true, model = -1572101598, coords = vec3(3549.014404, 3658.792480, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 4th Lab Door1
	[366] = {id = 366, active = true, model = 161378502, coords = vec3(3551.575195, 3658.340820, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 4th Lab Door2
	[367] = {id = 367, active = true, model = -1572101598, coords = vec3(3552.874268, 3665.253662, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 5th Lab Door1
	[368] = {id = 368, active = true, model = 161378502, coords = vec3(3555.435059, 3664.802246, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 5th Lab Door2
	[369] = {id = 369, active = true, model = 161378502, coords = vec3(3557.553223, 3669.194092, 27.121582), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs Small Lab Door
	[370] = {id = 370, active = true, model = -1572101598, coords = vec3(3565.073975, 3684.739990, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 7th Lab Door1
	[371] = {id = 371, active = true, model = 161378502, coords = vec3(3567.634766, 3684.288574, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 7th Lab Door2
	[372] = {id = 372, active = true, model = 1282049587, coords = vec3(3568.709473, 3693.308838, 28.271549), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 8th Lab Door1
	[373] = {id = 373, active = true, model = -421709054, coords = vec3(3569.161133, 3695.870361, 28.271549), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 8th Lab Door2
	[374] = {id = 374, active = true, model = -421709054, coords = vec3(3569.161133, 3695.870361, 28.271549), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 9th Lab Door1
	[375] = {id = 375, active = true, model = 1282049587, coords = vec3(3598.511475, 3688.976562, 28.971624), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 9th Lab Door2
	[376] = {id = 376, active = true, model = 1282049587, coords = vec3(3586.289795, 3699.454590, 28.971439), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 10th Lab Door1
	[377] = {id = 377, active = true, model = -421709054, coords = vec3(3584.158936, 3700.946533, 28.971439), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 10th Lab Door2
	[378] = {id = 378, active = true, model = -421709054, coords = vec3(3599.868896, 3719.375488, 29.839624), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 11th Lab Door1
	[379] = {id = 379, active = true, model = 1282049587, coords = vec3(3601.999756, 3717.883545, 29.839624), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 11th Lab Door2
	[380] = {id = 380, active = true, model = -1081024910, coords = vec3(3620.842773, 3751.527100, 27.690086), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs Garage Door 1
	[381] = {id = 381, active = true, model = -1081024910, coords = vec3(3627.713135, 3746.716309, 27.690086), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs Garage Door 2
	[382] = {id = 382, active = true, model = -1572101598, coords = vec3(3555.745850, 3681.539551, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 6th Lab Door1
	[383] = {id = 383, active = true, model = 161378502, coords = vec3(3558.306641, 3681.088135, 27.121397), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Humane Labs 6th Lab Door2
	-- Pacific Extended
	[384] = {id = 384, active = true, model = 615294389, coords = vec3(256.807465, 228.971619, 100.693459), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Pacific Extended Vault Door
	[385] = {id = 385, active = true, model = GetHashKey('hei_v_ilev_bk_safegate_pris'), coords = vec3(252.45333, 220.79568, 101.68358), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Pacific Vault Door 1
	[386] = {id = 386, active = true, model = GetHashKey('hei_v_ilev_bk_safegate_pris'), coords = vec3(261.68, 215.62, 101.81), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Pacific Vault Door 2
	[387] = {id = 387, active = true, model = -1520917551, coords = vec3(256.7, 240.11, 101.69), automatic = false, lock = 2, forceUnlocked = false, access = {job = {["PD"] = true}}}, --Pacific Extended 2nd Vault
	-- Ballas door
	[388] = {id = 388, active = true, model = -711771128, coords = vec3(-0.654449, -1815.225220, 20.841927), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['ballas'] = true}}},
	-- Cody House
	[389] = {id = 389, active = true, model = 736699661, coords =vec3(2558.363525, 6191.273926, 165.487854), automatic = false, lock = 2, forceUnlocked = false, access = {cid = {['GBS43283'] = true}}},
	-- Devils of War compound
	[390] = {id = 390, active = true, model = -1209169843, coords = vec3(1010.207458, -2531.838135, 28.451242), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}}, -- DOW Front Door 1
	[391] = {id = 391, active = true, model = -1209169843, coords = vec3(1007.620056, -2531.611816, 28.451242), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}}, -- DOW Front Door 2
	[392] = {id = 392, active = true, model = -698797376, coords = vec3(1023.172180, -2542.312012, 28.393375), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}}, -- DOW Workbench
	[393] = {id = 393, active = true, model = -1646581307, coords = vec3(996.604919, -2481.709961, 27.276766), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}, keyFob = true}, -- DOW Front Gate 1
	[394] = {id = 394, active = true, model = -1646581307, coords = vec3(985.573425, -2480.550537, 27.276766), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}, keyFob = true}, -- DOW Front Gate 2
	[395] = {id = 395, active = true, model = 470340995, coords = vec3(1019.153320, -2516.939209, 28.944899), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}, keyFob = true}, -- DOW Garage Door 1
	[396] = {id = 396, active = true, model = 470340995, coords = vec3(1018.772278, -2521.640137, 28.946398), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}, keyFob = true}, -- DOW Garage Door 2
	[397] = {id = 397, active = true, model = 470340995, coords = vec3(1018.343872, -2526.468750, 28.949532), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}, keyFob = true}, -- DOW Garage Door 3
	[398] = {id = 398, active = true, model = -1209169843, coords = vec3(1031.311401, -2543.171387, 32.455250), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}}, -- DOW Office Door 1
	[399] = {id = 399, active = true, model = -1209169843, coords = vec3(1027.728882, -2546.238281, 32.450855), automatic = false, lock = 2, forceUnlocked = false, access = {gang = {['dow'] = true}}}, -- DOW Office Door 2

}

ForcedDoors = {}

RegisterServerEvent('doors:change-lock-state')
AddEventHandler('doors:change-lock-state', function(doorId, lockState, isForced)
    if AllDoors[doorId] then
        AllDoors[doorId].lock = lockState
    end

	if isForced ~= nil and isForced then
		ForcedDoors[doorId] = {["timeForced"] = os.time}
	end

    TriggerClientEvent('doors:change-lock-state', -1, doorId, lockState, isForced ~= nil and isForced or false)
end)

RegisterServerEvent('doors:request-lock-state')
AddEventHandler('doors:request-lock-state', function()
	local src = source
	TriggerClientEvent('doors:initial-states', src, AllDoors)
end)




--Citizen.CreateThread(function()
--	while true do
--		Citizen.Wait(2500)
--		if next(ForcedDoors) then
--			for k,v in ForcedDoors do
--				if (v.timeForced - os.time()) >= 500 then
--					print("TIME IS UP FOR THIS GATE, BITCHHHHHHH")
--				end
--			end
--		end
--	end
--end)