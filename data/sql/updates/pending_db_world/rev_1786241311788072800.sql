--
-- Quest 825 "From the Wreckage": fix Shipwreck Debris (GO 186283)
-- GO had type=8 (Spell Focus, non-lootable) and empty loot table 1458.
-- Fix: change to type=3 (Chest), set correct data fields, add Gnomish Tools to loot.

UPDATE `gameobject_template`
SET
    `type`   = 3,    -- CHEST (was 8 = Spell Focus, which cannot be looted)
    `Data0`  = 0,    -- lock ID: 0 = no lock
    `Data1`  = 1458, -- loot table ID
    `Data2`  = 180,  -- restock time (seconds)
    `Data3`  = 1,    -- consumable (despawn after looting)
    `AIName` = ''    -- remove SmartAI (no longer needed)
WHERE `entry` = 186283;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 186283 AND `source_type` = 1;

DELETE FROM `gameobject_loot_template` WHERE `Entry` = 1458;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(1458, 4863, 0, 100, 1, 1, 0, 1, 1, 'Shipwreck Debris - Gnomish Tools (quest 825 From the Wreckage)');
