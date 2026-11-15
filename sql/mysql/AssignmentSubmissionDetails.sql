-- Data set: Assignment Submission Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE `AssignmentSubmissionDetails` (
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
CREATE INDEX `IX_AssignmentSubmissionDetails_DropboxId` ON `AssignmentSubmissionDetails` (`DropboxId`);
CREATE INDEX `IX_AssignmentSubmissionDetails_UserId` ON `AssignmentSubmissionDetails` (`UserId`);
CREATE INDEX `IX_AssignmentSubmissionDetails_SubmittedByUserId` ON `AssignmentSubmissionDetails` (`SubmittedByUserId`);
