-- Data set: Competency Activity Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-results
CREATE TABLE `CompetencyActivityResults` (
    `ActivityId` BIGINT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `LearningObjectId` BIGINT NOT NULL,
    `IsAchieved` TINYINT(1),
    `PercentAchieved` DECIMAL(19,9),
    `RubricScore` DECIMAL(19,9),
    `RubricLevelAchieved` VARCHAR(256),
    `RubricId` BIGINT,
    `RubricCriterionId` BIGINT,
    `AchievedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityId`, `OrgUnitId`, `UserId`, `LearningObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyActivityResults_OrgUnitId` ON `CompetencyActivityResults` (`OrgUnitId`);
CREATE INDEX `IX_CompetencyActivityResults_UserId` ON `CompetencyActivityResults` (`UserId`);
CREATE INDEX `IX_CompetencyActivityResults_LearningObjectId` ON `CompetencyActivityResults` (`LearningObjectId`);
