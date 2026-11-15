-- Data set: Assignment Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-summary
CREATE TABLE `AssignmentSummary_LOAD` (
    `DropboxId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(128),
    `Category` VARCHAR(128),
    `Type` VARCHAR(10),
    `GradeItemId` BIGINT,
    `PossibleScore` DECIMAL(19,9),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `IsRestricted` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `TurnItInEnabled` TINYINT(1),
    `IsHidden` TINYINT(1),
    `SortOrder` INT,
    `SubmissionType` VARCHAR(18),
    `CompletionType` VARCHAR(27),
    `ResultId` INT,
    `CategoryId` BIGINT,
    `Version` BIGINT,
    `StartDateAvailabilityType` SMALLINT,
    `EndDateAvailabilityType` SMALLINT,
    `AIUtilization` INT,
    `Instructions` TEXT,
    PRIMARY KEY (`DropboxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
