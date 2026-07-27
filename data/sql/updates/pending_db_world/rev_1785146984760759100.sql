-- item 46105 (Shirt of the Future Champion): remove 3-hour duration so it becomes permanent
UPDATE `item_template` SET `duration` = 0 WHERE `entry` = 46105;
