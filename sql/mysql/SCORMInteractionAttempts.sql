-- Data set: SCORM Interaction Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-attempts
CREATE TABLE `SCORMInteractionAttempts` (
    `VisitId` CHAR(36) NOT NULL,
    `InteractionId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `ActivityId` CHAR(36),
    `Timestamp` DATETIME(6),
    `Response` VARCHAR(1000),
    `Result` VARCHAR(100),
    `NumericResult` DOUBLE,
    `TimeSpent` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `InteractionId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMInteractionAttempts_InteractionId` ON `SCORMInteractionAttempts` (`InteractionId`);
CREATE INDEX `IX_SCORMInteractionAttempts_ActivityId` ON `SCORMInteractionAttempts` (`ActivityId`);
