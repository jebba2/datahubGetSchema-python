-- Data set: Checklist Item Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE `ChecklistItemDetails_LOAD` (
    `ItemId` BIGINT NOT NULL,
    `CategoryId` BIGINT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `DueDate` DATETIME(6),
    `ScheduleId` INT,
    `SortOrder` INT,
    `IsAutoChecked` TINYINT(1),
    `LastModifiedUtc` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
