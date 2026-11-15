-- Data set: Attendance Registers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-registers
CREATE TABLE `AttendanceRegisters_LOAD` (
    `AttendanceRegisterId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(128),
    `Description` VARCHAR(1000),
    `SchemeId` BIGINT,
    `IsVisible` TINYINT(1),
    `IncludeAllUsers` TINYINT(1),
    `CauseForConcern` DECIMAL(19,9),
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`AttendanceRegisterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
