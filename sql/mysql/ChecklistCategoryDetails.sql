-- Data set: Checklist Category Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-category-details
CREATE TABLE `ChecklistCategoryDetails` (
    `CategoryId` BIGINT NOT NULL,
    `ChecklistId` BIGINT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `SortOrder` INT,
    `LastModifiedUtc` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ChecklistCategoryDetails_ChecklistId` ON `ChecklistCategoryDetails` (`ChecklistId`);
CREATE INDEX `IX_ChecklistCategoryDetails_DeletedBy` ON `ChecklistCategoryDetails` (`DeletedBy`);
