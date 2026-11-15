-- Data set: Rubric Object Criteria
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE `RubricObjectCriteria` (
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
CREATE INDEX `IX_RubricObjectCriteria_RubricId` ON `RubricObjectCriteria` (`RubricId`);
CREATE INDEX `IX_RubricObjectCriteria_LevelSetId` ON `RubricObjectCriteria` (`LevelSetId`);
