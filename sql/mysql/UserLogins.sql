-- Data set: User Logins
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-logins
CREATE TABLE `UserLogins` (
    `UserId` INT,
    `UserName` VARCHAR(256),
    `IP` VARCHAR(64),
    `SessionId` INT,
    `StatusType` VARCHAR(50),
    `AttemptDate` DATETIME(6),
    `ImpersonatingUserId` INT,
    `LoginAttemptId` VARCHAR(36) NOT NULL,
    `LoginSource` VARCHAR(50),
    PRIMARY KEY (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_UserLogins_UserId` ON `UserLogins` (`UserId`);
CREATE INDEX `IX_UserLogins_ImpersonatingUserId` ON `UserLogins` (`ImpersonatingUserId`);
