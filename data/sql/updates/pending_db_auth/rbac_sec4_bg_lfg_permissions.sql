-- Allow SEC_CONSOLE (level 4) accounts to join BG, random BG, arenas and dungeon finder
-- Level 4 has no default RBAC role, so it inherits no join permissions from the player role (195).
-- Adding the Admin role (192) gives level 4 all permissions including join rights.
INSERT IGNORE INTO `rbac_default_permissions` (`secId`, `permissionId`, `realmId`) VALUES (4, 192, -1);
