-- Data set: ADS Impersonated Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#impersonated-session-history
CREATE TABLE `ADSImpersonatedSessionHistory_LOAD` (
    `SessionId` INT,
    `UserId` INT,
    `Username` VARCHAR(540),
    `DateStarted` DATETIME(6),
    `DateEnded` DATETIME(6),
    `ImpersonatingUserId` INT,
    `ImpersonatingUsername` VARCHAR(540)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
