-- Data set: Organizational Unit Parents
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE `OrganizationalUnitParents` (
    `OrgUnitId` INT NOT NULL,
    `ParentOrgUnitId` INT NOT NULL,
    `RowVersion` BIGINT,
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `ParentOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitParents_ParentOrgUnitId` ON `OrganizationalUnitParents` (`ParentOrgUnitId`);
