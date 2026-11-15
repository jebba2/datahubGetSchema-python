-- Data set: System Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-log
CREATE TABLE `SystemAccessLog_LOAD` (
    `SessionId` VARCHAR(36) NOT NULL,
    `UserId` INT NOT NULL,
    `Timestamp` DATETIME(6) NOT NULL,
    `State` VARCHAR(20) NOT NULL,
    `Source` VARCHAR(20),
    `AppVersion` VARCHAR(20),
    `Device` VARCHAR(50),
    `IsOfflineMode` TINYINT(1),
    `IPAddress` VARCHAR(45),
    PRIMARY KEY (`SessionId`, `UserId`, `Timestamp`, `State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
