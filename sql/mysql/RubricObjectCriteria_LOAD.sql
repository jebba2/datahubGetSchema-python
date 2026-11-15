-- Data set: Rubric Object Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE `RubricObjectCriteria_LOAD` (
    `RubricId` BIGINT,
    `CriterionId` BIGINT NOT NULL,
    `Name` VARCHAR(500),
    `SortOrder` INT,
    `CriteriaGroupId` BIGINT,
    `GroupName` VARCHAR(256),
    `GroupSortOrder` INT,
    `LevelSetId` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
