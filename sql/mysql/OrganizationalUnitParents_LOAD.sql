-- Data set: Organizational Unit Parents (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE `OrganizationalUnitParents_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `ParentOrgUnitId` INT NOT NULL,
    `RowVersion` BIGINT,
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `ParentOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
