-- Data set: Outcomes Set Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-course
CREATE TABLE `OutcomesSetCourse_LOAD` (
    `RegistryId` CHAR(36) NOT NULL,
    `OrgUnitId` BIGINT,
    `SourceOutcomeSetId` BIGINT,
    `IsPrimary` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `ScaleId` CHAR(36),
    `AchievementThreshold` CHAR(36),
    PRIMARY KEY (`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
