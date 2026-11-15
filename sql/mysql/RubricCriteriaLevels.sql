-- Data set: Rubric Criteria Levels
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-criteria-levels
CREATE TABLE `RubricCriteriaLevels` (
    `RubricId` BIGINT NOT NULL,
    `CriterionId` BIGINT NOT NULL,
    `Description` VARCHAR(1000),
    `Feedback` VARCHAR(1000),
    `Value` DECIMAL(19,9),
    `LevelId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`RubricId`, `CriterionId`, `LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
