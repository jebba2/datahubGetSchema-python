-- Data set: Local Authentication Security Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4714-local-authentication-data-sets#local-authentication-security-log
CREATE TABLE `LocalAuthenticationSecurityLog` (
    `UserId` INT NOT NULL,
    `Action` VARCHAR(70) NOT NULL,
    `ModifiedBy` INT NOT NULL,
    `ModifiedDate` DATETIME(6) NOT NULL,
    PRIMARY KEY (`UserId`, `Action`, `ModifiedBy`, `ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LocalAuthenticationSecurityLog_ModifiedBy` ON `LocalAuthenticationSecurityLog` (`ModifiedBy`);
