-- Fix quest 11608 "Bury Those Cockroaches!" - assign script to Nerub'ar Sinkhole NPCs
UPDATE `creature_template` SET `ScriptName` = 'npc_nerubar_sinkhole' WHERE `entry` IN (25402, 25403, 25404, 25405);
