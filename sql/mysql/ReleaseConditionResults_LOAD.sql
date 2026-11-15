-- Data set: Release Condition Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE `ReleaseConditionResults_LOAD` (
    `ResultId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `Met` VARCHAR(7),
    `Version` BIGINT,
    `DeletedDate` DATETIME(6),
    PRIMARY KEY (`ResultId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
