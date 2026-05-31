-- Add Cache of the Dreamwalker spawns for all difficulties in ICC (Valithria Dreamwalker encounter)
-- spawnMask: 2=10N, 4=25N, 8=10H, 16=25H
SET @OGUID := (SELECT MAX(guid) + 1 FROM gameobject);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 201959, 631, 4812, 4990, 2,  1, 4196.18, 2484.33, 365.0, 3.14159, 0, 0, -1.0, 0, 86400, 255, 1),
(@OGUID+1, 202339, 631, 4812, 4990, 4,  1, 4196.18, 2484.33, 365.0, 3.14159, 0, 0, -1.0, 0, 86400, 255, 1),
(@OGUID+2, 202338, 631, 4812, 4990, 8,  1, 4196.18, 2484.33, 365.0, 3.14159, 0, 0, -1.0, 0, 86400, 255, 1),
(@OGUID+3, 202340, 631, 4812, 4990, 16, 1, 4196.18, 2484.33, 365.0, 3.14159, 0, 0, -1.0, 0, 86400, 255, 1);
