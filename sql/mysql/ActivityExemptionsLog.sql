-- Data set: Activity Exemptions Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE `ActivityExemptionsLog` (
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
CREATE INDEX `IX_ActivityExemptionsLog_OrgUnitId` ON `ActivityExemptionsLog` (`OrgUnitId`);
CREATE INDEX `IX_ActivityExemptionsLog_UserId` ON `ActivityExemptionsLog` (`UserId`);
CREATE INDEX `IX_ActivityExemptionsLog_LastModifiedBy` ON `ActivityExemptionsLog` (`LastModifiedBy`);
CREATE INDEX `IX_ActivityExemptionsLog_ToolId` ON `ActivityExemptionsLog` (`ToolId`);
