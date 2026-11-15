-- Data set: ADS Enrollments and Withdrawals
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#enrollments-and-withdrawals
CREATE TABLE `ADSEnrollmentsAndWithdrawals` (
    `LogId` TEXT,
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT,
    `OrgUnitType` TEXT,
    `UserId` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `Username` TEXT,
    `OrgDefinedId` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `LogEventType` TEXT,
    `LogDate` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
