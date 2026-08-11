-- DB update 2026_07_31_02 -> 2026_08_12_00
--
-- Item 49686 "Maghia's Misguided Quill" / "Заговоренное перо Магхиа"
-- Remove ITEM_FLAGS_EXTRA_ALLIANCE_ONLY (0x2) so both factions can equip it.
-- FlagsExtra: 8194 -> 8192
UPDATE `item_template` SET `FlagsExtra` = `FlagsExtra` & ~2 WHERE `entry` = 49686;
