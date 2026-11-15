-- Data set: Grade Objects Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects-log
CREATE TABLE `GradeObjectsLog_LOAD` (
    `LogId` BIGINT NOT NULL,
    `Name` VARCHAR(50),
    `GradeObjectId` INT,
    `UserId` INT,
    `GradeSymbolString` VARCHAR(50),
    `PointsDenominator` DECIMAL(19,9),
    `PointsNumerator` DECIMAL(19,9),
    `WeightedDenominator` DECIMAL(19,9),
    `WeightedNumerator` DECIMAL(19,9),
    `Modified` DATETIME(6),
    `ModifiedBy` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
