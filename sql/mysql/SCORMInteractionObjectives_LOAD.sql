-- Data set: SCORM Interaction Objectives (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-objectives
CREATE TABLE `SCORMInteractionObjectives_LOAD` (
    `InteractionId` CHAR(36) NOT NULL,
    `ObjectiveId` CHAR(36) NOT NULL,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`InteractionId`, `ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
