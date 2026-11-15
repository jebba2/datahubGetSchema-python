-- Data set: Content Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-objects
CREATE TABLE `ContentObjects` (
    `ContentObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `Title` VARCHAR(150),
    `ContentObjectType` VARCHAR(6),
    `CompletionType` VARCHAR(7),
    `ParentContentObjectId` INT,
    `Location` TEXT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `ObjectId1` INT,
    `ObjectId2` INT,
    `ObjectId3` INT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `SortOrder` INT,
    `Depth` INT,
    `ToolId` INT,
    `IsHidden` TINYINT(1),
    `ResultId` INT,
    `DeletedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedBy` INT,
    `DeletedBy` INT,
    `AIUtilization` INT,
    `Version` BIGINT,
    PRIMARY KEY (`ContentObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ContentObjects_OrgUnitId` ON `ContentObjects` (`OrgUnitId`);
CREATE INDEX `IX_ContentObjects_ToolId` ON `ContentObjects` (`ToolId`);
