-- Data set: Competency Activity Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-results
CREATE TABLE `CompetencyActivityResults_LOAD` (
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
