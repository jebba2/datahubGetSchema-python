-- Data set: Checklist Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE `ChecklistObjects` (
    `ChecklistId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `SharedUserId` INT,
    `DisplayInNewWindow` TINYINT(1),
    `SortOrder` INT,
    `Version` BIGINT,
    `ResultId` INT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`ChecklistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ChecklistObjects_OrgUnitId` ON `ChecklistObjects` (`OrgUnitId`);
CREATE INDEX `IX_ChecklistObjects_SharedUserId` ON `ChecklistObjects` (`SharedUserId`);
CREATE INDEX `IX_ChecklistObjects_ResultId` ON `ChecklistObjects` (`ResultId`);
CREATE INDEX `IX_ChecklistObjects_DeletedBy` ON `ChecklistObjects` (`DeletedBy`);
