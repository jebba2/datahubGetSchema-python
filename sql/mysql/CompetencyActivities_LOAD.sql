-- Data set: Competency Activities (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activities
CREATE TABLE `CompetencyActivities_LOAD` (
    `ActivityId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `ActivityName` VARCHAR(256),
    `ActivityTypeId` INT,
    `AssessmentType` VARCHAR(7),
    `ObjectLookupId` BIGINT,
    `RubricId` BIGINT,
    `LevelId` BIGINT,
    `RubricCriterionId` BIGINT,
    `AssessmentThresholdCriteria` VARCHAR(2),
    `AssessmentThreshold` DECIMAL(19,9),
    `IsAutoEval` TINYINT(1),
    `RubricName` VARCHAR(256),
    `RubricLevelRequired` VARCHAR(256),
    `ObjectId` BIGINT,
    `ActivityType` VARCHAR(50),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
