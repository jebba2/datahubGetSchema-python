-- Data set: SCORM Objectives (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objectives
CREATE TABLE `SCORMObjectives_LOAD` (
    `ObjectiveId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `ObjectiveType` VARCHAR(100),
    `ActivityId` CHAR(36),
    `InternalId` VARCHAR(255),
    `IsPrimary` TINYINT(1),
    `Description` VARCHAR(250),
    `ScoreMin` DOUBLE,
    `ScoreMax` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
