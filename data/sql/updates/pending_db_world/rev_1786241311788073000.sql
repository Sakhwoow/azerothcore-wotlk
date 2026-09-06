-- Fix quest 4491 (A Little Help From My Friends): Spraggle's Canteen ScriptName
-- Allows item use to directly revive Ringo via ItemScript, bypassing spell 15591
-- which is absent from WotLK spell.dbc
UPDATE `item_template` SET `ScriptName` = 'item_spraggle_canteen' WHERE `entry` = 11804;
