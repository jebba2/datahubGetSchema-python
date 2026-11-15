-- Data set: SCORM Interactions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interactions
CREATE TABLE `SCORMInteractions_LOAD` (
    `InteractionId` CHAR(36) NOT NULL,
    `ActivityId` CHAR(36),
    `InternalId` VARCHAR(255),
    `InteractionType` VARCHAR(100),
    `Description` VARCHAR(250),
    `Weighting` DOUBLE,
    `CorrectResponses` TEXT,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`InteractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
