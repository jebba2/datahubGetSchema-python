-- Data set: Activity Exemptions Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE `ActivityExemptionsLog_LOAD` (
    `OrgUnitId` INT,
    `UserId` INT,
    `ObjectId` INT,
    `ActivityId` VARCHAR(225),
    `LogTypeName` VARCHAR(50),
    `LastModifiedUtc` DATETIME(6),
    `LastModifiedBy` INT,
    `ActivityExemptionsLogId` BIGINT NOT NULL,
    `ToolId` INT,
    PRIMARY KEY (`ActivityExemptionsLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
