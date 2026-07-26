-- Torek (entry 12858) and Splintertree Raider (entry 12859): fix incorrect faction
-- Both NPCs had faction 67 (Scarlet Crusade) instead of faction 29 (Orgrimmar)
-- They are Horde NPCs involved in quest "Torek's Assault" (6544) and should be hostile to Alliance
UPDATE `creature_template` SET `faction` = 29 WHERE `entry` IN (12858, 12859);
