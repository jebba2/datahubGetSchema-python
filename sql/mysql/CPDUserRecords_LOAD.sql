-- Data set: CPD User Records (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-records
CREATE TABLE `CPDUserRecords_LOAD` (
    `RecordId` INT NOT NULL,
    `RecordName` VARCHAR(256),
    `State` VARCHAR(50),
    `UserId` BIGINT,
    `Category` BIGINT,
    `Method` BIGINT,
    `CreditMinutes` BIGINT,
    `Evidence` TEXT,
    `Type` VARCHAR(50),
    `Grade` DECIMAL(4,3),
    `DateCompleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
