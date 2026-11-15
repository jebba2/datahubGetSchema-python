-- Data set: Enrollments and Withdrawals
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#enrollments-and-withdrawals
CREATE TABLE `EnrollmentsAndWithdrawals` (
    `LogId` BIGINT NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `RoleId` INT,
    `Action` VARCHAR(50),
    `ModifiedByUserId` INT,
    `EnrollmentDate` DATETIME(6),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_EnrollmentsAndWithdrawals_UserId` ON `EnrollmentsAndWithdrawals` (`UserId`);
CREATE INDEX `IX_EnrollmentsAndWithdrawals_OrgUnitId` ON `EnrollmentsAndWithdrawals` (`OrgUnitId`);
CREATE INDEX `IX_EnrollmentsAndWithdrawals_RoleId` ON `EnrollmentsAndWithdrawals` (`RoleId`);
