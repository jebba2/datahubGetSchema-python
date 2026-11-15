-- Data set: SCORM Objective Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objective-attempts
CREATE TABLE `SCORMObjectiveAttempts` (
    `VisitId` CHAR(36) NOT NULL,
    `ObjectiveId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `Score` DOUBLE,
    `ScoreRaw` DOUBLE,
    `Success` VARCHAR(100),
    `Completion` VARCHAR(100),
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `ObjectiveId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMObjectiveAttempts_ObjectiveId` ON `SCORMObjectiveAttempts` (`ObjectiveId`);
