-- Data set: Brightspace Email Log
-- Source: https://community.d2l.com/brightspace/kb/articles/34145-email-data-sets#brightspace-email-log
CREATE TABLE `BrightspaceEmailLog` (
    `MailId` INT NOT NULL,
    `SenderUserId` INT,
    `SenderAddress` VARCHAR(256),
    `RecipientAddress` VARCHAR(256) NOT NULL,
    `RecipientType` VARCHAR(4) NOT NULL,
    `DateTimeSent` DATETIME(6),
    `Subject` VARCHAR(1000),
    PRIMARY KEY (`MailId`, `RecipientAddress`, `RecipientType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_BrightspaceEmailLog_SenderUserId` ON `BrightspaceEmailLog` (`SenderUserId`);
