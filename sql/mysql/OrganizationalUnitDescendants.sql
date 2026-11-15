-- Data set: Organizational Unit Descendants
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-descendants
CREATE TABLE `OrganizationalUnitDescendants` (
    `OrgUnitId` INT NOT NULL,
    `DescendantOrgUnitId` INT NOT NULL,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `DescendantOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitDescendants_DescendantOrgUnitId` ON `OrganizationalUnitDescendants` (`DescendantOrgUnitId`);
