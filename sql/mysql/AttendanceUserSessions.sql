-- Data set: Attendance User Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE `AttendanceUserSessions` (
    `UserId` INT NOT NULL,
    `AttendanceSessionId` BIGINT NOT NULL,
    `SchemeSymbolId` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AttendanceUserSessions_AttendanceSessionId` ON `AttendanceUserSessions` (`AttendanceSessionId`);
CREATE INDEX `IX_AttendanceUserSessions_SchemeSymbolId` ON `AttendanceUserSessions` (`SchemeSymbolId`);
