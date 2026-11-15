-- Data set: CPD Methods (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-methods
CREATE TABLE `CPDMethods_LOAD` (
    `MethodId` INT NOT NULL,
    `Name` TEXT,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`MethodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
