-- Data set: SCORM Interaction Objectives
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-objectives
CREATE TABLE `SCORMInteractionObjectives` (
    `InteractionId` CHAR(36) NOT NULL,
    `ObjectiveId` CHAR(36) NOT NULL,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`InteractionId`, `ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMInteractionObjectives_ObjectiveId` ON `SCORMInteractionObjectives` (`ObjectiveId`);
