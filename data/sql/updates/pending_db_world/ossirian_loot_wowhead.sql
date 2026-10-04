-- Ossirian the Unscarred (15339): per-item drop chances from the classic (1.12) list
-- (Ruins of Ahn'Qiraj, level 60 items, 10472 kills). Armor, weapons, rings, hilts,
-- head and formulas get their own chances instead of the shared reference groups
-- (13 items at 1.5 percent together, rings and hilts at 100 percent together).

DELETE FROM `creature_loot_template`
WHERE `Entry` = 15339 AND `Item` IN (34025, 34026, 20884, 20886, 20888, 20890);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15339, 21220, 0, 96, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Head of Ossirian the Unscarred'),
(15339, 20884, 0, 10, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Qiraji Magisterial Ring'),
(15339, 20888, 0, 10, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Qiraji Ceremonial Ring'),
(15339, 20886, 0, 39, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Qiraji Spiked Hilt'),
(15339, 20890, 0, 38, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Qiraji Ornate Hilt'),
(15339, 21457, 0, 18, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Bracers of Brutality'),
(15339, 21458, 0, 18, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Gauntlets of New Life'),
(15339, 21463, 0, 18, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Ossirian\'s Binding'),
(15339, 21456, 0, 18, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Sandstorm Cloak'),
(15339, 21462, 0, 17, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Gloves of Dark Wisdom'),
(15339, 21460, 0, 17, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Helm of Domination'),
(15339, 21461, 0, 17, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Leggings of the Black Blizzard'),
(15339, 21464, 0, 17, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Shackles of the Unscarred'),
(15339, 21452, 0, 13, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Staff of the Ruins'),
(15339, 21453, 0, 11, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Mantle of the Horusath'),
(15339, 21459, 0, 10, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Crossbow of Imminent Doom'),
(15339, 21715, 0, 9, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Sand Polished Hammer'),
(15339, 21454, 0, 8, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Runic Stone Shoulders'),
(15339, 20728, 0, 0.9, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula: Enchant Gloves - Frost Power'),
(15339, 20731, 0, 0.8, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula: Enchant Gloves - Superior Agility'),
(15339, 20734, 0, 0.7, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula: Enchant Cloak - Stealth'),
(15339, 20727, 0, 0.7, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula: Enchant Gloves - Shadow Power'),
(15339, 20729, 0, 0.6, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula: Enchant Gloves - Fire Power'),
(15339, 20736, 0, 0.6, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula: Enchant Cloak - Dodge'),
(15339, 20730, 0, 0.5, 0, 1, 0, 1, 1, 'Ossirian the Unscarred - Formula: Enchant Gloves - Healing Power')
ON DUPLICATE KEY UPDATE
    `Reference` = VALUES(`Reference`), `Chance` = VALUES(`Chance`), `QuestRequired` = VALUES(`QuestRequired`),
    `LootMode` = VALUES(`LootMode`), `GroupId` = VALUES(`GroupId`), `MinCount` = VALUES(`MinCount`),
    `MaxCount` = VALUES(`MaxCount`), `Comment` = VALUES(`Comment`);
