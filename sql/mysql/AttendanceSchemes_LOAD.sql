-- Data set: Attendance Schemes (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-schemes
CREATE TABLE `AttendanceSchemes_LOAD` (
    `SchemeId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `SchemeName` VARCHAR(128),
    `SchemeSymbolId` BIGINT NOT NULL,
    `SymbolName` VARCHAR(128),
    `SymbolValue` VARCHAR(50),
    `Percentage` DECIMAL(19,9),
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`SchemeId`, `SchemeSymbolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
