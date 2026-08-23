-- DB update 2026_08_07_04 -> 2026_08_07_05
--
-- Relocate Valithria Dreamwalker cache GUIDs from 5714442-5714445 to a free range.
-- Upstream 2026_08_08_09.sql hardcodes @OGUID := 5714442 for Hodir chests.
-- Our 491c41ae_valithria_cache_spawn.sql dynamically picked the same range on DBs
-- where MAX(guid) was 5714441 at the time of application.
-- This runs before 2026_08_08_09.sql to free up the conflict range.
--

SET @NEW_GUID := (SELECT MAX(guid) + 1 FROM gameobject);

UPDATE `gameobject` SET `guid` = @NEW_GUID + 0 WHERE `guid` = 5714442 AND `id` = 201959;
UPDATE `gameobject` SET `guid` = @NEW_GUID + 1 WHERE `guid` = 5714443 AND `id` = 202339;
UPDATE `gameobject` SET `guid` = @NEW_GUID + 2 WHERE `guid` = 5714444 AND `id` = 202338;
UPDATE `gameobject` SET `guid` = @NEW_GUID + 3 WHERE `guid` = 5714445 AND `id` = 202340;
