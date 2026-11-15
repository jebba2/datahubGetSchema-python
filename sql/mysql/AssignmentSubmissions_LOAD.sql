-- Data set: Assignment Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submissions
-- No primary key: D2L documents key column SubmitterType as nullable.
CREATE TABLE `AssignmentSubmissions_LOAD` (
    `DropboxId` BIGINT,
    `OrgUnitId` INT,
    `SubmitterId` BIGINT,
    `SubmitterType` VARCHAR(5),
    `FileSubmissionCount` INT,
    `TotalFileSize` BIGINT,
    `FeedbackUserId` INT,
    `FeedbackIsRead` TINYINT(1),
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `LastSubmissionDate` DATETIME(6),
    `Feedback` VARCHAR(1000),
    `FeedbackLastModified` DATETIME(6),
    `FeedbackReadDate` DATETIME(6),
    `CompletionDate` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
