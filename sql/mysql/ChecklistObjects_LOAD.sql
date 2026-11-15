-- Data set: Checklist Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE `ChecklistObjects_LOAD` (
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
