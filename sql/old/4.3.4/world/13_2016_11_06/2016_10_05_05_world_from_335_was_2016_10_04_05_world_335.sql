/*
SET @OGUID:=76016;
SET @Event:=7;

-- Add missing lunar objects
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+23;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0 , 180879, 0, 1, 1, -8738.732, 1076.043, 90.43314, 2.757613, 0, 0, 0.9816265, 0.1908124, 120, 255, 1), -- 180879 (Area: -1)
(@OGUID+1 , 180770, 0, 1, 1, -8655.176, 670.1208, 106.511, 0.6632232, 0, 0, 0.3255672, 0.9455189, 120, 255, 1), -- 180770 (Area: -1)
(@OGUID+2 , 180770, 0, 1, 1, -8705.734, 851.3313, 103.4914, -0.8901166, 0, 0, -0.4305105, 0.9025856, 120, 255, 1), -- 180770 (Area: -1)
(@OGUID+3 , 180770, 0, 1, 1, -8608.75, 382.625, 113.8781, 2.216565, 0, 0, 0.8949337, 0.4461992, 120, 255, 1), -- 180770 (Area: -1)
(@OGUID+4 , 180770, 0, 1, 1, -8668.035, 396.9254, 109.2929, -0.9250239, 0, 0, -0.4461975, 0.8949345, 120, 255, 1), -- 180770 (Area: 1519)
(@OGUID+5 , 180777, 0, 1, 1, -8831.86, 678.2168, 98.31242, -2.600535, 0, 0, -0.9636297, 0.267241, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+6 , 180777, 0, 1, 1, -8818.878, 684.4286, 98.2952, -2.565632, 0, 0, -0.9588194, 0.2840165, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+7 , 180777, 0, 1, 1, -8852.964, 722.764, 97.0582, -1.047198, 0, 0, -0.5, 0.8660254, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+8 , 180777, 0, 1, 1, -8834.625, 796.4873, 96.70045, -1.413715, 0, 0, -0.6494474, 0.7604064, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+9 , 180777, 0, 1, 1, -8818.005, 817.3228, 99.18841, 1.658062, 0, 0, 0.737277, 0.6755905, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+10, 180777, 0, 1, 1, -8826.489, 845.2611, 99.51883, -1.186823, 0, 0, -0.5591927, 0.8290377, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+11, 180777, 0, 1, 1, -8834.602, 894.1829, 97.85538, -0.9948372, 0, 0, -0.4771585, 0.8788173, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+12, 180777, 0, 1, 1, -8846.701, 926.5529, 101.9738, 0.5934101, 0, 0, 0.2923708, 0.956305, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+13, 180777, 0, 1, 1, -8851.844, 934.4803, 102.2766, -2.548179, 0, 0, -0.9563046, 0.2923723, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+14, 180777, 0, 1, 1, -8798.624, 938.7092, 101.5633, 0.7853968, 0, 0, 0.3826828, 0.9238798, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+15, 180777, 0, 1, 1, -8805.71, 947.6454, 101.5633, -2.373644, 0, 0, -0.9271832, 0.3746083, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+16, 180777, 0, 1, 1, -8744.135, 1009.64, 96.1606, -2.059488, 0, 0, -0.8571672, 0.5150382, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+17, 180777, 0, 1, 1, -8736.922, 1075.327, 90.73263, -1.832595, 0, 0, -0.7933531, 0.6087617, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+18, 180777, 0, 1, 1, -8758.122, 1068.518, 90.64163, 2.740162, 0, 0, 0.9799242, 0.1993704, 120, 255, 1), -- 180777 (Area: -1)
(@OGUID+19, 180880, 0, 1, 1, -8738.774, 1075.694, 92.25988, -3.036838, 0, 0, -0.9986286, 0.05235322, 120, 255, 1), -- 180880 (Area: -1)
(@OGUID+20, 180881, 0, 1, 1, -8738.27, 1076.299, 92.25735, 1.431168, 0, 0, 0.6560583, 0.7547102, 120, 255, 1), -- 180881 (Area: -1)
(@OGUID+21, 180882, 0, 1, 1, -8739.156, 1075.774, 92.25446, -0.7330382, 0, 0, -0.3583679, 0.9335805, 120, 255, 1), -- 180882 (Area: -1)
(@OGUID+22, 180882, 0, 1, 1, -8738.389, 1075.741, 92.24942, 0.2094394, 0, 0, 0.1045284, 0.9945219, 120, 255, 1), -- 180882 (Area: -1)
(@OGUID+23, 180883, 0, 1, 1, -8738.833, 1076.392, 92.24471, -1.762782, 0, 0, -0.7716246, 0.6360782, 120, 255, 1); -- 180883 (Area: -1)

DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+23 AND `eventEntry`=@Event;
INSERT INTO `game_event_gameobject` SELECT @Event, gameobject.guid FROM `gameobject` WHERE gameobject.guid BETWEEN @OGUID+0 AND @OGUID+23;
*/