-- Mistress Nagmara (entry 9500): the Love Potion door script is now the upstream npc_mistress_nagmara.
-- rev_1785026000000000000.sql binds the removed npc_nagmara and runs after the imported upstream update.
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_mistress_nagmara' WHERE `entry` = 9500;
