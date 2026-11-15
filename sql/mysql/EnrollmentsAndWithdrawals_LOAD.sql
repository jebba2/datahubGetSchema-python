-- Data set: Enrollments and Withdrawals (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#enrollments-and-withdrawals
CREATE TABLE `EnrollmentsAndWithdrawals_LOAD` (
    `LogId` BIGINT NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `RoleId` INT,
    `Action` VARCHAR(50),
    `ModifiedByUserId` INT,
    `EnrollmentDate` DATETIME(6),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
