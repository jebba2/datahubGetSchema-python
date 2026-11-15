-- Data set: SCORM Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objects
CREATE TABLE `SCORMObjects_LOAD` (
    `ScormObjectId` CHAR(36) NOT NULL,
    `OrgUnitId` INT,
    `ContentObjectId` INT,
    `ContentServiceContentId` CHAR(36),
    `ContentServiceRevisionId` CHAR(36),
    `ContentServiceTopicId` CHAR(36),
    `Title` VARCHAR(1000),
    `Description` VARCHAR(1000),
    `LearningStandard` VARCHAR(100),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`ScormObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
