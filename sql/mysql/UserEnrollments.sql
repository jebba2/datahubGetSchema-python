-- Data set: User Enrollments
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-enrollments
CREATE TABLE `UserEnrollments` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `RoleName` VARCHAR(60),
    `EnrollmentDate` DATETIME(6),
    `EnrollmentType` VARCHAR(50),
    `RoleId` INT,
    PRIMARY KEY (`OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_UserEnrollments_UserId` ON `UserEnrollments` (`UserId`);
CREATE INDEX `IX_UserEnrollments_RoleId` ON `UserEnrollments` (`RoleId`);
