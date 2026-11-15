-- Data set: Outcomes Scale Level Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE `OutcomesScaleLevelDefinition_LOAD` (
    `ScaleLevelId` CHAR(36) NOT NULL,
    `ScaleId` CHAR(36),
    `Name` VARCHAR(1000),
    `SortOrder` INT,
    `PercentageRangeStart` INT,
    `RGB` VARCHAR(40),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
