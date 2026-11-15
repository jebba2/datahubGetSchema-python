-- Data set: Attendance User Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE `AttendanceUserSessions_LOAD` (
    `UserId` INT NOT NULL,
    `AttendanceSessionId` BIGINT NOT NULL,
    `SchemeSymbolId` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
