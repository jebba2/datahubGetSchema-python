-- Data set: Outcomes Course Specific Scales (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE `OutcomesCourseSpecificScales_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `RegistryId` CHAR(36),
    `ScaleId` CHAR(36),
    `AchievementThreshold` CHAR(36),
    `CreatedDate` DATETIME(6),
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
