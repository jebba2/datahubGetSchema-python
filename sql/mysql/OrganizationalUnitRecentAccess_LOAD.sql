-- Data set: Organizational Unit Recent Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE `OrganizationalUnitRecentAccess_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `LastAccessedDate` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
