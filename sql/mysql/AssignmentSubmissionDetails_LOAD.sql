-- Data set: Assignment Submission Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE `AssignmentSubmissionDetails_LOAD` (
    `SubmissionId` BIGINT NOT NULL,
    `DropboxId` BIGINT,
    `UserId` BIGINT,
    `GroupId` BIGINT,
    `NumberOfFilesSubmitted` INT,
    `TotalFileSize` BIGINT,
    `SubmittedByUserId` INT,
    `DateSubmitted` DATETIME(6),
    `Comments` VARCHAR(1000),
    `IsTurnItInExempt` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `IsPreview` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SubmissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
