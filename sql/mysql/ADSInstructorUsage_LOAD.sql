-- Data set: ADS Instructor Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#instructor-usage
CREATE TABLE `ADSInstructorUsage_LOAD` (
    `Username` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `OrgDefinedId` TEXT,
    `UserId` TEXT,
    `RoleName` TEXT,
    `RoleId` TEXT,
    `IsActive` TEXT,
    `CourseOfferingName` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingId` TEXT,
    `NumberofContentTopicsVisited` TEXT,
    `LastAccesstoCourseOfferingContent` TEXT,
    `NumberofAssignments` TEXT,
    `NumberofAssignmentSubmissionsCommentedon` TEXT,
    `NumberofGradeItems` TEXT,
    `NumberofGradedGradeItems` TEXT,
    `LastModificationofaGradeItem` TEXT,
    `NumberofDiscussionPosts` TEXT,
    `NumberofDiscussionPostsAuthored` TEXT,
    `LastDiscussionPostDate` TEXT,
    `LastAccesstoCourseOffering` TEXT,
    `NumberofLoginstotheSystem` TEXT,
    `LastSentMailDate` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
