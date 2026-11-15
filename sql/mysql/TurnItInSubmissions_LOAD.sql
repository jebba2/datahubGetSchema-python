-- Data set: TurnItIn Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#turnitin-submissions
CREATE TABLE `TurnItInSubmissions_LOAD` (
    `DropboxId` BIGINT,
    `SubmissionId` BIGINT NOT NULL,
    `FileId` BIGINT NOT NULL,
    `LastSubmissionDate` DATETIME(6),
    `SubmissionStatus` SMALLINT,
    `SubmissionErrorType` SMALLINT,
    `ErrorMessage` VARCHAR(255),
    `SubmittedBy` INT,
    `LastRefreshDate` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`SubmissionId`, `FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
