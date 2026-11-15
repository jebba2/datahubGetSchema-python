-- Data set: SIS Course Merge Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/19147-sis-course-merge-data-sets#sis-course-merge-log
CREATE TABLE `SISCourseMergeLog_LOAD` (
    `BatchId` CHAR(36) NOT NULL,
    `JobType` VARCHAR(32),
    `Status` VARCHAR(32),
    `OriginalTargetOrgUnitId` BIGINT,
    `OriginalSourceOrgUnitId` BIGINT NOT NULL,
    `SourceSystemId` BIGINT,
    `NumberOfCoursesInBatch` INT,
    `UserId` BIGINT,
    `ErrorType` VARCHAR(48),
    `Timestamp` DATETIME(6) NOT NULL,
    PRIMARY KEY (`BatchId`, `OriginalSourceOrgUnitId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
