-- Data set: Outcomes Scale Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-definition
CREATE TABLE `OutcomesScaleDefinition_LOAD` (
    `ScaleId` CHAR(36) NOT NULL,
    `Name` VARCHAR(1000),
    `IsDefault` TINYINT(1),
    `UsePercentages` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AchievementThreshold` CHAR(36),
    PRIMARY KEY (`ScaleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
