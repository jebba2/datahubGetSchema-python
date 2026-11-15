-- Data set: Organizational Unit Ancestors (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE `OrganizationalUnitAncestors_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `AncestorOrgUnitId` INT NOT NULL,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `AncestorOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
