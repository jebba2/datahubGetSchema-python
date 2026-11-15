-- Data set: Assignment Special Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-special-access
CREATE TABLE `AssignmentSpecialAccess_LOAD` (
    `DropboxId` BIGINT NOT NULL,
    `UserId` INT NOT NULL,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `ModifiedBy` INT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `StartDateAvailabilityType` SMALLINT,
    `EndDateAvailabilityType` SMALLINT,
    PRIMARY KEY (`DropboxId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
