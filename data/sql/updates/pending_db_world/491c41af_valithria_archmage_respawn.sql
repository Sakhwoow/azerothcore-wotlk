-- Fix Risen Archmage (37868) respawn timer in Valithria room (ICC map 631)
-- Reduce from 604800 (7 days) to 300 (5 min) so they respawn for re-attempts
-- if ValithriaDespawner doesn't run (encounter not properly started/reset)
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `id1` = 37868 AND `map` = 631;
