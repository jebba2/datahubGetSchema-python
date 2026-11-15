-- Data set: ADS Content Progress (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#content-progress
CREATE TABLE `ADSContentProgress_LOAD` (
    `CourseOfferingID` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `CourseSectionID` TEXT,
    `CourseSectionCode` TEXT,
    `CourseSectionName` TEXT,
    `SemesterID` TEXT,
    `SemesterCode` TEXT,
    `SemesterName` TEXT,
    `UserID` TEXT,
    `UserName` TEXT,
    `OrgDefinedID` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `RoleID` TEXT,
    `RoleName` TEXT,
    `ContentTopicID` TEXT,
    `ContentTopicName` TEXT,
    `ModuleID` TEXT,
    `ModuleName` TEXT,
    `ContentTopicVisits` TEXT,
    `TotalTimeSpent` TEXT,
    `LastVisitedDate` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
