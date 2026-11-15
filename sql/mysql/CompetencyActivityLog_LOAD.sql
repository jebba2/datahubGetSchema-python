-- Data set: Competency Activity Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE `CompetencyActivityLog_LOAD` (
    `ActivityId` BIGINT NOT NULL,
    `ActivityLogId` BIGINT NOT NULL,
    `LogTypeId` INT,
    `LogTypeName` VARCHAR(19),
    `LogDateTime` DATETIME(6),
    `ModifiedBy` BIGINT,
    PRIMARY KEY (`ActivityId`, `ActivityLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
