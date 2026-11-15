-- Data set: Release Condition Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE `ReleaseConditionResults` (
    `ResultId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `Met` VARCHAR(7),
    `Version` BIGINT,
    `DeletedDate` DATETIME(6),
    PRIMARY KEY (`ResultId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ReleaseConditionResults_UserId` ON `ReleaseConditionResults` (`UserId`);
