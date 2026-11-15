-- Data set: SCORM Activities (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activities
CREATE TABLE `SCORMActivities_LOAD` (
    `ActivityId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `ParentActivityId` CHAR(36),
    `NumChildren` INT,
    `InternalId` VARCHAR(255),
    `Title` VARCHAR(200),
    `CompletionThreshold` DOUBLE,
    `PassingScore` DOUBLE,
    `PassingScoreUsed` TINYINT(1),
    `ScoreMin` DOUBLE,
    `ScoreMax` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
