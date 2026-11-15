-- Data set: Attendance Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE `AttendanceSessions_LOAD` (
    `AttendanceSessionId` BIGINT NOT NULL,
    `AttendanceRegisterId` BIGINT,
    `Name` VARCHAR(128),
    `Description` VARCHAR(256),
    `SortOrder` INT,
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
