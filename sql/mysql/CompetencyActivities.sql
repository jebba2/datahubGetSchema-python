-- Data set: Competency Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activities
CREATE TABLE `CompetencyActivities` (
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
CREATE INDEX `IX_CompetencyActivities_OrgUnitId` ON `CompetencyActivities` (`OrgUnitId`);
CREATE INDEX `IX_CompetencyActivities_ObjectId` ON `CompetencyActivities` (`ObjectId`);
