-- Data set: Competency Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-objects
CREATE TABLE `CompetencyObjects` (
    `ObjectId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(256),
    `Type` VARCHAR(256),
    `ReadyForEvaluation` TINYINT(1),
    `Status` VARCHAR(9),
    `Description` VARCHAR(1000),
    `NeedReevaluation` TINYINT(1),
    `ReevaluationIfAchieved` TINYINT(1),
    `ReevaluationIfNotAchieved` TINYINT(1),
    `AdditionalIdentifier` VARCHAR(512),
    `IsHidden` TINYINT(1),
    PRIMARY KEY (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyObjects_OrgUnitId` ON `CompetencyObjects` (`OrgUnitId`);
