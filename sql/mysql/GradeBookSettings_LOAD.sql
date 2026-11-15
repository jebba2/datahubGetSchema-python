-- Data set: Grade Book Settings (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-book-settings
CREATE TABLE `GradeBookSettings_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `GradeSchemeId` BIGINT NOT NULL,
    `GradingSystem` VARCHAR(8),
    `UngradedItems` VARCHAR(25),
    `IsAdjustedFinalGradeReleased` TINYINT(1),
    `IsCalculatedFinalGradeReleased` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
