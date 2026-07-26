-- Plugger Spazzring (entry 9499): reduce respawn timer from 12h to 5min
-- so the bar door can be opened again after a wipe
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `guid` = 47703;

-- Mistress Nagmara (entry 9500): replace SmartAI with C++ npc_nagmara script
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_nagmara' WHERE `entry` = 9500;

-- Remove incorrect gossip_menu_option for menu 9500 (Orsonn text does not belong to Nagmara)
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 9500 AND `OptionID` = 0;
