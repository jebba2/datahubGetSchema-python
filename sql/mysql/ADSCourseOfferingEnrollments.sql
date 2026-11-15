-- Data set: ADS Course Offering Enrollments
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-offering-enrollments
CREATE TABLE `ADSCourseOfferingEnrollments` (
    `UserId` TEXT,
    `OrgUnitId` TEXT,
    `RoleId` TEXT,
    `EnrollmentDate` TEXT,
    `EnrollmentType` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
