-- fix(quest 24545): correct SmartAI flags for Light's Vengeance chest (GO 201937)
-- id=0 was using REMOVE_GO_FLAG(16) instead of ADD_GO_FLAG(16), making the chest
-- immediately selectable on spawn instead of waiting for Vegard's death.
-- id=1 was using param=0 (removes nothing) instead of param=16 (removes NOT_SELECTABLE).

DELETE FROM `smart_scripts` WHERE `entryorguid` = 201937 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(201937, 1, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 103, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Light\'s Vengeance - On Spawn - Set Not Selectable'),
(201937, 1, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, 0, 104, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Light\'s Vengeance - On Data Set 1 1 - Set Selectable');
