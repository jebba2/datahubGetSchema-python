-- Data set: Rubrics Edit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubrics-edit
CREATE TABLE `RubricsEdit_LOAD` (
    `AuditLogId` CHAR(36) NOT NULL,
    `RubricId` BIGINT,
    `CriterionId` BIGINT,
    `LevelId` BIGINT,
    `ModifiedBy` INT,
    `ModifiedObjectType` INT,
    `CriteriaGroupId` BIGINT,
    `ModifiedDate` DATETIME(6),
    `PreviousValue` TEXT,
    `ModifiedValue` TEXT,
    `IsLocked` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
