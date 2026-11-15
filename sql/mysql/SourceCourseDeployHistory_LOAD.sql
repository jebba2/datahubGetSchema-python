-- Data set: Source Course Deploy History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33427-source-course-deploy-data-sets#source-course-deploy-history
CREATE TABLE `SourceCourseDeployHistory_LOAD` (
    `SourceCourseDeployId` BIGINT NOT NULL,
    `SourceCourseOrgUnitId` INT NOT NULL,
    `TargetCourseOrgUnitId` INT NOT NULL,
    `UserId` INT,
    `Status` VARCHAR(128),
    `QueuedTime` DATETIME(6),
    `CompletionTime` DATETIME(6),
    PRIMARY KEY (`SourceCourseDeployId`, `SourceCourseOrgUnitId`, `TargetCourseOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
