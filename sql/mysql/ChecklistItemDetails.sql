-- Data set: Checklist Item Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE `ChecklistItemDetails` (
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
CREATE INDEX `IX_ChecklistItemDetails_CategoryId` ON `ChecklistItemDetails` (`CategoryId`);
CREATE INDEX `IX_ChecklistItemDetails_ScheduleId` ON `ChecklistItemDetails` (`ScheduleId`);
CREATE INDEX `IX_ChecklistItemDetails_DeletedBy` ON `ChecklistItemDetails` (`DeletedBy`);
