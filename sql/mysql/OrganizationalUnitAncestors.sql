-- Data set: Organizational Unit Ancestors
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE `OrganizationalUnitAncestors` (
    `OrgUnitId` INT NOT NULL,
    `AncestorOrgUnitId` INT NOT NULL,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `AncestorOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitAncestors_AncestorOrgUnitId` ON `OrganizationalUnitAncestors` (`AncestorOrgUnitId`);
