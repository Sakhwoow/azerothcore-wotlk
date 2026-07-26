-- Plugger Spazzring (entry 9499): reduce respawn timer from 12h to 5min
-- so the bar door can be opened again after a wipe
DELETE FROM `creature` WHERE `guid` = 47703;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(47703, 9499, 0, 0, 230, 0, 0, 1, 1, 1, 888.472, -177.929, -42.9623, 2.40195, 300, 0, 0, 10455, 16936, 2, 0, 0, 0, '', 0, 0, NULL);
