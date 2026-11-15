-- Data set: Attendance Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE `AttendanceSessions` (
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
CREATE INDEX `IX_AttendanceSessions_AttendanceRegisterId` ON `AttendanceSessions` (`AttendanceRegisterId`);
