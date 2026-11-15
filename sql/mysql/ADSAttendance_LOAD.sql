-- Data set: ADS Attendance (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#attendance
CREATE TABLE `ADSAttendance_LOAD` (
    `UserId` TEXT,
    `OrgDefinedId` TEXT,
    `Username` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `RoleName` TEXT,
    `RoleId` TEXT,
    `AttendanceRegisterId` TEXT,
    `AttendanceRegisterName` TEXT,
    `AttendanceSessionId` TEXT,
    `AttendanceSessionName` TEXT,
    `SchemeSymbolId` TEXT,
    `SymbolName` TEXT,
    `SymbolValue` TEXT,
    `Percentage` TEXT,
    `LastModified` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `CourseSectionId` TEXT,
    `CourseSectionCode` TEXT,
    `CourseSectionName` TEXT,
    `ParentDepartmentName` TEXT,
    `SemesterName` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
