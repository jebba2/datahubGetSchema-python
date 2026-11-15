-- Data set: User Logins (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-logins
CREATE TABLE `UserLogins_LOAD` (
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
