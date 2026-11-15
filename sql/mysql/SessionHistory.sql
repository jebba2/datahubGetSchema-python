-- Data set: Session History
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#session-history
CREATE TABLE `SessionHistory` (
    `SessionId` BIGINT,
    `OrgId` INT,
    `UserId` INT,
    `DateStarted` DATETIME(6),
    `DateEnded` DATETIME(6),
    `LastAccessed` DATETIME(6),
    `TimedOut` TINYINT(1),
    `HistoryID` BIGINT NOT NULL,
    PRIMARY KEY (`HistoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SessionHistory_UserId` ON `SessionHistory` (`UserId`);
