-- Fix Crafty's Pole (entry 43651): restore weapon damage 447-672
-- ITEM_MOD_FERAL_ATTACK_POWER (type 40) is not available in WotLK 3.3 item stats; do not set any stat
UPDATE `item_template` SET `dmg_min1` = 447, `dmg_max1` = 672, `stat_type1` = 0, `stat_value1` = 0 WHERE `entry` = 43651;

-- Fix Val'anyr, Hammer of Ancient Kings (entry 46017): correct to ilvl 258, fix damage and stats
-- Note: stat_type 13 = ITEM_MOD_DODGE_RATING, NOT FeralAP — do not add it to a healing mace
UPDATE `item_template` SET
    `ItemLevel` = 258, `dmg_min1` = 107, `dmg_max1` = 342,
    `stat_value1` = 701, `stat_value2` = 62, `stat_value3` = 64,
    `stat_value4` = 53, `stat_value5` = 52,
    `stat_type6` = 0, `stat_value6` = 0
WHERE `entry` = 46017;
