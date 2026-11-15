-- Data set: ADS CPD Records
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-records
CREATE TABLE `ADSCPDRecords` (
    `UserId` TEXT,
    `RecordId` TEXT,
    `RecordName` TEXT,
    `Creditsinminutes` TEXT,
    `DateCompleted` TEXT,
    `Subject` TEXT,
    `Type` TEXT,
    `Method` TEXT,
    `Grade` TEXT,
    `Evidence` TEXT,
    `Answer1N` TEXT,
    `State` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
