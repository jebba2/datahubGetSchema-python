-- Data set: SCORM Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activities
CREATE TABLE `SCORMActivities` (
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
CREATE INDEX `IX_SCORMActivities_ScormObjectId` ON `SCORMActivities` (`ScormObjectId`);
CREATE INDEX `IX_SCORMActivities_ParentActivityId` ON `SCORMActivities` (`ParentActivityId`);
