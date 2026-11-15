-- Data set: Organizational Unit Recent Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE `OrganizationalUnitRecentAccess` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `LastAccessedDate` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitRecentAccess_UserId` ON `OrganizationalUnitRecentAccess` (`UserId`);
