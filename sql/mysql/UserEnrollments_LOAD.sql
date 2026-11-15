-- Data set: User Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-enrollments
CREATE TABLE `UserEnrollments_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `RoleName` VARCHAR(60),
    `EnrollmentDate` DATETIME(6),
    `EnrollmentType` VARCHAR(50),
    `RoleId` INT,
    PRIMARY KEY (`OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
