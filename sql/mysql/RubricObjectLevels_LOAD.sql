-- Data set: Rubric Object Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE `RubricObjectLevels_LOAD` (
    `RubricId` BIGINT,
    `LevelId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `Description` VARCHAR(1000),
    `Feedback` VARCHAR(1000),
    `Value` DECIMAL(19,9),
    `RangeStartValue` DECIMAL(19,9),
    `SortOrder` INT,
    `LevelSetId` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
