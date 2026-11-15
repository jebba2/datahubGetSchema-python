-- Data set: ADS Final Grades
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#final-grades
CREATE TABLE `ADSFinalGrades` (
    `UserId` TEXT,
    `OrgDefinedId` TEXT,
    `Username` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `SemesterId` TEXT,
    `SemesterName` TEXT,
    `SemesterCode` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `CourseSectionName` TEXT,
    `FinalCalculatedGradePercentage` TEXT,
    `FinalCalculatedGradeLastModifiedDate` TEXT,
    `FinalAdjustedGradePercentage` TEXT,
    `FinalAdjustedLastModifiedDate` TEXT,
    `FinalAdjustedComments` TEXT,
    `FinalAdjustedGradeIsReleased` TEXT,
    `FinalAdjustedLastModifiedBy` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
