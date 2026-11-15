-- Data set: System Access Summary
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE `SystemAccessSummary` (
    `UserId` INT NOT NULL,
    `ImpersonatingUserId` INT,
    `LastSystemAccess` DATETIME(6),
    `Source` VARCHAR(20),
    PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SystemAccessSummary_ImpersonatingUserId` ON `SystemAccessSummary` (`ImpersonatingUserId`);
