-- Data set: SCORM Activity Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activity-attempts
CREATE TABLE `SCORMActivityAttempts_LOAD` (
    `VisitId` CHAR(36) NOT NULL,
    `ActivityId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `Completion` VARCHAR(100),
    `Success` VARCHAR(100),
    `Score` DOUBLE,
    `ScoreRaw` DOUBLE,
    `TimeSpent` DOUBLE,
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `ActivityId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
