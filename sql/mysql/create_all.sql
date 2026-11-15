-- Data set: ADS All Grades
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#all-grades
CREATE TABLE `ADSAllGrades` (
    `UserId` TEXT,
    `OrgDefinedId` TEXT,
    `Username` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `IsActive` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `CourseSectionId` TEXT,
    `CourseSectionCode` TEXT,
    `CourseSectionName` TEXT,
    `GradeItemCategoryId` TEXT,
    `GradeItemCategoryName` TEXT,
    `GradeItemId` TEXT,
    `GradeItemName` TEXT,
    `GradeItemWeight` TEXT,
    `GradeItemStartDate` TEXT,
    `GradeItemEndDate` TEXT,
    `PointsNumerator` TEXT,
    `PointsDenominator` TEXT,
    `GradeValue` TEXT,
    `GradeLastModified` TEXT,
    `GradeComments` TEXT,
    `GraderUserId` TEXT,
    `GraderOrgDefinedId` TEXT,
    `GraderUsername` TEXT,
    `GraderFirstName` TEXT,
    `GraderLastName` TEXT,
    `ExcludeFromFinalGrade` TEXT,
    `GradeObjectType` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS All Grades (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#all-grades
CREATE TABLE `ADSAllGrades_LOAD` (
    `UserId` TEXT,
    `OrgDefinedId` TEXT,
    `Username` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `IsActive` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `CourseSectionId` TEXT,
    `CourseSectionCode` TEXT,
    `CourseSectionName` TEXT,
    `GradeItemCategoryId` TEXT,
    `GradeItemCategoryName` TEXT,
    `GradeItemId` TEXT,
    `GradeItemName` TEXT,
    `GradeItemWeight` TEXT,
    `GradeItemStartDate` TEXT,
    `GradeItemEndDate` TEXT,
    `PointsNumerator` TEXT,
    `PointsDenominator` TEXT,
    `GradeValue` TEXT,
    `GradeLastModified` TEXT,
    `GradeComments` TEXT,
    `GraderUserId` TEXT,
    `GraderOrgDefinedId` TEXT,
    `GraderUsername` TEXT,
    `GraderFirstName` TEXT,
    `GraderLastName` TEXT,
    `ExcludeFromFinalGrade` TEXT,
    `GradeObjectType` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Attendance
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#attendance
CREATE TABLE `ADSAttendance` (
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

-- Data set: ADS Awards Issued
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#awards-issued
CREATE TABLE `ADSAwardsIssued` (
    `AwardId` TEXT,
    `Name` TEXT,
    `Type` TEXT,
    `Credits` TEXT,
    `UserId` TEXT,
    `UserName` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `OrgDefinedId` TEXT,
    `IssuedBy` TEXT,
    `IssuerUserName` TEXT,
    `IssuerFirstName` TEXT,
    `IssuerLastName` TEXT,
    `IssueDate` TEXT,
    `RevokedId` TEXT,
    `Criteria` TEXT,
    `Evidence` TEXT,
    `ExpiryDate` TEXT,
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Awards Issued (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#awards-issued
CREATE TABLE `ADSAwardsIssued_LOAD` (
    `AwardId` TEXT,
    `Name` TEXT,
    `Type` TEXT,
    `Credits` TEXT,
    `UserId` TEXT,
    `UserName` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `OrgDefinedId` TEXT,
    `IssuedBy` TEXT,
    `IssuerUserName` TEXT,
    `IssuerFirstName` TEXT,
    `IssuerLastName` TEXT,
    `IssueDate` TEXT,
    `RevokedId` TEXT,
    `Criteria` TEXT,
    `Evidence` TEXT,
    `ExpiryDate` TEXT,
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS CPD Job Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-job-targets
CREATE TABLE `ADSCPDJobTargets` (
    `JobTitle` TEXT,
    `StartDate` TEXT,
    `SubjectId` TEXT,
    `SubjectName` TEXT,
    `StructuredMinutes` TEXT,
    `UnstructuredMinutes` TEXT,
    `StructuredRecordCount` TEXT,
    `UnstructuredRecordCount` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS CPD Job Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-job-targets
CREATE TABLE `ADSCPDJobTargets_LOAD` (
    `JobTitle` TEXT,
    `StartDate` TEXT,
    `SubjectId` TEXT,
    `SubjectName` TEXT,
    `StructuredMinutes` TEXT,
    `UnstructuredMinutes` TEXT,
    `StructuredRecordCount` TEXT,
    `UnstructuredRecordCount` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS CPD Records
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-records
CREATE TABLE `ADSCPDRecords` (
    `UserId` TEXT,
    `RecordId` TEXT,
    `RecordName` TEXT,
    `Creditsinminutes` TEXT,
    `DateCompleted` TEXT,
    `Subject` TEXT,
    `Type` TEXT,
    `Method` TEXT,
    `Grade` TEXT,
    `Evidence` TEXT,
    `Answer1N` TEXT,
    `State` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS CPD Records (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-records
CREATE TABLE `ADSCPDRecords_LOAD` (
    `UserId` TEXT,
    `RecordId` TEXT,
    `RecordName` TEXT,
    `Creditsinminutes` TEXT,
    `DateCompleted` TEXT,
    `Subject` TEXT,
    `Type` TEXT,
    `Method` TEXT,
    `Grade` TEXT,
    `Evidence` TEXT,
    `Answer1N` TEXT,
    `State` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS CPD User Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-user-targets
CREATE TABLE `ADSCPDUserTargets` (
    `UserId` TEXT,
    `StartDate` TEXT,
    `SubjectId` TEXT,
    `SubjectName` TEXT,
    `StructuredMinutes` TEXT,
    `UnstructuredMinutes` TEXT,
    `StructuredRecordCount` TEXT,
    `UnstructuredRecordCount` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS CPD User Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-user-targets
CREATE TABLE `ADSCPDUserTargets_LOAD` (
    `UserId` TEXT,
    `StartDate` TEXT,
    `SubjectId` TEXT,
    `SubjectName` TEXT,
    `StructuredMinutes` TEXT,
    `UnstructuredMinutes` TEXT,
    `StructuredRecordCount` TEXT,
    `UnstructuredRecordCount` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Content Progress
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#content-progress
CREATE TABLE `ADSContentProgress` (
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

-- Data set: ADS Course Learning Outcome Evaluation
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-learning-outcome-evaluation
CREATE TABLE `ADSCourseLearningOutcomeEvaluation` (
    `ProgramEnrollment` TEXT,
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT,
    `OrgUnitTypeId` TEXT,
    `OrgUnitTypeName` TEXT,
    `OutcomeId` TEXT,
    `OutcomeType` TEXT,
    `OutcomeName` TEXT,
    `ReadyForEvaluation` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingName` TEXT,
    `CourseOfferingCode` TEXT,
    `SemesterName` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `Username` TEXT,
    `OrgDefinedId` TEXT,
    `UserId` TEXT,
    `RoleName` TEXT,
    `RoleId` TEXT,
    `ActivityId` TEXT,
    `ActivityType` TEXT,
    `ActivityName` TEXT,
    `AssessmentType` TEXT,
    `RubricId` TEXT,
    `RubricName` TEXT,
    `RubricMeasurement` TEXT,
    `AssessmentThreshold` TEXT,
    `AssessmentThresholdCriteria` TEXT,
    `RubricLevelAchieved` TEXT,
    `RubricPoints` TEXT,
    `ActivityGradePoints` TEXT,
    `ActivityGradeMaxPoints` TEXT,
    `ActivityGradePercent` TEXT,
    `ActivityThresholdAchieved` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Course Learning Outcome Evaluation (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-learning-outcome-evaluation
CREATE TABLE `ADSCourseLearningOutcomeEvaluation_LOAD` (
    `ProgramEnrollment` TEXT,
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT,
    `OrgUnitTypeId` TEXT,
    `OrgUnitTypeName` TEXT,
    `OutcomeId` TEXT,
    `OutcomeType` TEXT,
    `OutcomeName` TEXT,
    `ReadyForEvaluation` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingName` TEXT,
    `CourseOfferingCode` TEXT,
    `SemesterName` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `Username` TEXT,
    `OrgDefinedId` TEXT,
    `UserId` TEXT,
    `RoleName` TEXT,
    `RoleId` TEXT,
    `ActivityId` TEXT,
    `ActivityType` TEXT,
    `ActivityName` TEXT,
    `AssessmentType` TEXT,
    `RubricId` TEXT,
    `RubricName` TEXT,
    `RubricMeasurement` TEXT,
    `AssessmentThreshold` TEXT,
    `AssessmentThresholdCriteria` TEXT,
    `RubricLevelAchieved` TEXT,
    `RubricPoints` TEXT,
    `ActivityGradePoints` TEXT,
    `ActivityGradeMaxPoints` TEXT,
    `ActivityGradePercent` TEXT,
    `ActivityThresholdAchieved` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Course Offering Enrollments
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-offering-enrollments
CREATE TABLE `ADSCourseOfferingEnrollments` (
    `UserId` TEXT,
    `OrgUnitId` TEXT,
    `RoleId` TEXT,
    `EnrollmentDate` TEXT,
    `EnrollmentType` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Course Offering Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-offering-enrollments
CREATE TABLE `ADSCourseOfferingEnrollments_LOAD` (
    `UserId` TEXT,
    `OrgUnitId` TEXT,
    `RoleId` TEXT,
    `EnrollmentDate` TEXT,
    `EnrollmentType` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- Data set: ADS Enrollments and Withdrawals (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#enrollments-and-withdrawals
CREATE TABLE `ADSEnrollmentsAndWithdrawals_LOAD` (
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

-- Data set: ADS Final Grades (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#final-grades
CREATE TABLE `ADSFinalGrades_LOAD` (
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

-- Data set: ADS Impersonated Session History
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#impersonated-session-history
CREATE TABLE `ADSImpersonatedSessionHistory` (
    `SessionId` INT,
    `UserId` INT,
    `Username` VARCHAR(540),
    `DateStarted` DATETIME(6),
    `DateEnded` DATETIME(6),
    `ImpersonatingUserId` INT,
    `ImpersonatingUsername` VARCHAR(540)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Impersonated Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#impersonated-session-history
CREATE TABLE `ADSImpersonatedSessionHistory_LOAD` (
    `SessionId` INT,
    `UserId` INT,
    `Username` VARCHAR(540),
    `DateStarted` DATETIME(6),
    `DateEnded` DATETIME(6),
    `ImpersonatingUserId` INT,
    `ImpersonatingUsername` VARCHAR(540)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Instructor Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#instructor-usage
CREATE TABLE `ADSInstructorUsage` (
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

-- Data set: ADS Learner Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#learner-usage
CREATE TABLE `ADSLearnerUsage` (
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `ParentDepartmentName` TEXT,
    `ParentDepartmentCode` TEXT,
    `SemesterId` TEXT,
    `SemesterCode` TEXT,
    `SemesterName` TEXT,
    `UserId` TEXT,
    `Username` TEXT,
    `OrgDefinedId` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `IsActive` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `ContentCompleted` TEXT,
    `ContentRequired` TEXT,
    `ChecklistCompleted` TEXT,
    `QuizCompleted` TEXT,
    `TotalQuizAttempts` TEXT,
    `DiscussionPostCreated` TEXT,
    `DiscussionPostReplies` TEXT,
    `DiscussionPostRead` TEXT,
    `LastDiscussionPostDate` TEXT,
    `NumberOfAssignmentSubmissions` TEXT,
    `LastAssignmentSubmissionDate` TEXT,
    `TotalTimeSpentInContent` TEXT,
    `LastVisitedDate` TEXT,
    `LastSystemLogin` TEXT,
    `NumberOfLoginsToTheSystem` TEXT,
    `AuditorName` TEXT,
    `LastQuizAttemptDate` TEXT,
    `LastScormCompletionDate` TEXT,
    `LastScormVisitDate` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Learner Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#learner-usage
CREATE TABLE `ADSLearnerUsage_LOAD` (
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `ParentDepartmentName` TEXT,
    `ParentDepartmentCode` TEXT,
    `SemesterId` TEXT,
    `SemesterCode` TEXT,
    `SemesterName` TEXT,
    `UserId` TEXT,
    `Username` TEXT,
    `OrgDefinedId` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `IsActive` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `ContentCompleted` TEXT,
    `ContentRequired` TEXT,
    `ChecklistCompleted` TEXT,
    `QuizCompleted` TEXT,
    `TotalQuizAttempts` TEXT,
    `DiscussionPostCreated` TEXT,
    `DiscussionPostReplies` TEXT,
    `DiscussionPostRead` TEXT,
    `LastDiscussionPostDate` TEXT,
    `NumberOfAssignmentSubmissions` TEXT,
    `LastAssignmentSubmissionDate` TEXT,
    `TotalTimeSpentInContent` TEXT,
    `LastVisitedDate` TEXT,
    `LastSystemLogin` TEXT,
    `NumberOfLoginsToTheSystem` TEXT,
    `AuditorName` TEXT,
    `LastQuizAttemptDate` TEXT,
    `LastScormCompletionDate` TEXT,
    `LastScormVisitDate` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Program Level Outcomes Evaluation (PLOE)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#program-level-outcomes-evaluation-ploe
CREATE TABLE `ADSProgramLevelOutcomesEvaluationPLOE` (
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT,
    `Program` TEXT,
    `OutcomeId` TEXT,
    `OutcomeType` TEXT,
    `OutcomeName` TEXT,
    `OutcomeStatus` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `UserName` TEXT,
    `OrgDefinedId` TEXT,
    `UserId` TEXT,
    `RoleName` TEXT,
    `RoleId` TEXT,
    `IsAchieved` TEXT,
    `AchievementDateTime` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Program Level Outcomes Evaluation (PLOE) (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#program-level-outcomes-evaluation-ploe
CREATE TABLE `ADSProgramLevelOutcomesEvaluationPLOE_LOAD` (
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT,
    `Program` TEXT,
    `OutcomeId` TEXT,
    `OutcomeType` TEXT,
    `OutcomeName` TEXT,
    `OutcomeStatus` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `UserName` TEXT,
    `OrgDefinedId` TEXT,
    `UserId` TEXT,
    `RoleName` TEXT,
    `RoleId` TEXT,
    `IsAchieved` TEXT,
    `AchievementDateTime` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Rubric Assessments
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#rubric-assessments
CREATE TABLE `ADSRubricAssessments` (
    `CourseOrgUnitId` TEXT,
    `CourseName` TEXT,
    `CourseCode` TEXT,
    `ParentDepartmentName` TEXT,
    `ParentSemesterName` TEXT,
    `ParentCourseTemplateName` TEXT,
    `CourseSectionId` TEXT,
    `CourseSectionName` TEXT,
    `CourseSectionCode` TEXT,
    `RubricId` TEXT,
    `RubricName` TEXT,
    `ActivityId` TEXT,
    `ActivityType` TEXT,
    `ActivityName` TEXT,
    `UserId` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `Username` TEXT,
    `OrgDefinedId` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `CriterionId` TEXT,
    `Criterion` TEXT,
    `Level` TEXT,
    `Points` TEXT,
    `OverallLevelAchieved` TEXT,
    `IsScoreOverridden` TEXT,
    `EvaluationDate` TEXT,
    `AssessorUserId` TEXT,
    `AssessorFirstName` TEXT,
    `AssessorLastName` TEXT,
    `AssessorUsername` TEXT,
    `AssessorOrgDefinedId` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Rubric Assessments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#rubric-assessments
CREATE TABLE `ADSRubricAssessments_LOAD` (
    `CourseOrgUnitId` TEXT,
    `CourseName` TEXT,
    `CourseCode` TEXT,
    `ParentDepartmentName` TEXT,
    `ParentSemesterName` TEXT,
    `ParentCourseTemplateName` TEXT,
    `CourseSectionId` TEXT,
    `CourseSectionName` TEXT,
    `CourseSectionCode` TEXT,
    `RubricId` TEXT,
    `RubricName` TEXT,
    `ActivityId` TEXT,
    `ActivityType` TEXT,
    `ActivityName` TEXT,
    `UserId` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `Username` TEXT,
    `OrgDefinedId` TEXT,
    `RoleId` TEXT,
    `RoleName` TEXT,
    `CriterionId` TEXT,
    `Criterion` TEXT,
    `Level` TEXT,
    `Points` TEXT,
    `OverallLevelAchieved` TEXT,
    `IsScoreOverridden` TEXT,
    `EvaluationDate` TEXT,
    `AssessorUserId` TEXT,
    `AssessorFirstName` TEXT,
    `AssessorLastName` TEXT,
    `AssessorUsername` TEXT,
    `AssessorOrgDefinedId` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Survey Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#survey-results
CREATE TABLE `ADSSurveyResults` (
    `SurveyId` TEXT,
    `SurveyName` TEXT,
    `AttemptId` TEXT,
    `ActiveStatus` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `ParentDepartmentName` TEXT,
    `ParentDepartmentCode` TEXT,
    `RespondentUserId` TEXT,
    `RespondentUsername` TEXT,
    `RespondentFirstName` TEXT,
    `RespondentLastName` TEXT,
    `CategoryName` TEXT,
    `SubmissionDate` TEXT,
    `QuestionNumber` TEXT,
    `Question` TEXT,
    `Answer` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Survey Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#survey-results
CREATE TABLE `ADSSurveyResults_LOAD` (
    `SurveyId` TEXT,
    `SurveyName` TEXT,
    `AttemptId` TEXT,
    `ActiveStatus` TEXT,
    `CourseOfferingId` TEXT,
    `CourseOfferingCode` TEXT,
    `CourseOfferingName` TEXT,
    `ParentDepartmentName` TEXT,
    `ParentDepartmentCode` TEXT,
    `RespondentUserId` TEXT,
    `RespondentUsername` TEXT,
    `RespondentFirstName` TEXT,
    `RespondentLastName` TEXT,
    `CategoryName` TEXT,
    `SubmissionDate` TEXT,
    `QuestionNumber` TEXT,
    `Question` TEXT,
    `Answer` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Terms & Conditions - Activity Report
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-activity-report
CREATE TABLE `ADSTermsConditionsActivityReport` (
    `UserId` TEXT,
    `OrgDefinedId` TEXT,
    `Username` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `IsActive` TEXT,
    `Date` TEXT,
    `HasAccepted` TEXT,
    `VersionComments` TEXT,
    `Title` TEXT,
    `VersionId` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Terms & Conditions - Activity Report (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-activity-report
CREATE TABLE `ADSTermsConditionsActivityReport_LOAD` (
    `UserId` TEXT,
    `OrgDefinedId` TEXT,
    `Username` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `IsActive` TEXT,
    `Date` TEXT,
    `HasAccepted` TEXT,
    `VersionComments` TEXT,
    `Title` TEXT,
    `VersionId` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Terms & Conditions - Version History Report
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-version-history-report
CREATE TABLE `ADSTermsConditionsVersionHistoryReport` (
    `VersionId` TEXT,
    `OrgId` TEXT,
    `Language` TEXT,
    `Title` TEXT,
    `TermsandConditions` TEXT,
    `Comments` TEXT,
    `VersionCreatedDate` TEXT,
    `VersionCreatedById` TEXT,
    `VersionCreatedByFirstName` TEXT,
    `VersionCreatedByLastName` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: ADS Terms & Conditions - Version History Report (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-version-history-report
CREATE TABLE `ADSTermsConditionsVersionHistoryReport_LOAD` (
    `VersionId` TEXT,
    `OrgId` TEXT,
    `Language` TEXT,
    `Title` TEXT,
    `TermsandConditions` TEXT,
    `Comments` TEXT,
    `VersionCreatedDate` TEXT,
    `VersionCreatedById` TEXT,
    `VersionCreatedByFirstName` TEXT,
    `VersionCreatedByLastName` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: AI Consumption
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE `AIConsumption` (
    `ConsumptionId` VARCHAR(255) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `Date` DATETIME(6),
    `GenerationCount` INT,
    `ConsumptionSource` INT,
    PRIMARY KEY (`ConsumptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AIConsumption_UserId` ON `AIConsumption` (`UserId`);
CREATE INDEX `IX_AIConsumption_OrgUnitId` ON `AIConsumption` (`OrgUnitId`);

-- Data set: AI Consumption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE `AIConsumption_LOAD` (
    `ConsumptionId` VARCHAR(255) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `Date` DATETIME(6),
    `GenerationCount` INT,
    `ConsumptionSource` INT,
    PRIMARY KEY (`ConsumptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Accommodations Profile Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4752-accommodations-data-sets#accommodations-profile-log
CREATE TABLE `AccommodationsProfileLog` (
    `AccommodatedUserId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT NOT NULL,
    `QuizTimeLimitMultiplier` DECIMAL(5,2),
    `QuizTimeLimitExtraTime` INT,
    `QuizControlAlwaysAllowRightClick` TINYINT(1),
    `ModifiedBy` BIGINT,
    `LastModified` DATETIME(6) NOT NULL,
    PRIMARY KEY (`AccommodatedUserId`, `OrgUnitId`, `LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AccommodationsProfileLog_OrgUnitId` ON `AccommodationsProfileLog` (`OrgUnitId`);
CREATE INDEX `IX_AccommodationsProfileLog_ModifiedBy` ON `AccommodationsProfileLog` (`ModifiedBy`);

-- Data set: Accommodations Profile Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4752-accommodations-data-sets#accommodations-profile-log
CREATE TABLE `AccommodationsProfileLog_LOAD` (
    `AccommodatedUserId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT NOT NULL,
    `QuizTimeLimitMultiplier` DECIMAL(5,2),
    `QuizTimeLimitExtraTime` INT,
    `QuizControlAlwaysAllowRightClick` TINYINT(1),
    `ModifiedBy` BIGINT,
    `LastModified` DATETIME(6) NOT NULL,
    PRIMARY KEY (`AccommodatedUserId`, `OrgUnitId`, `LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Activity Exemptions Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE `ActivityExemptionsLog` (
    `OrgUnitId` INT,
    `UserId` INT,
    `ObjectId` INT,
    `ActivityId` VARCHAR(225),
    `LogTypeName` VARCHAR(50),
    `LastModifiedUtc` DATETIME(6),
    `LastModifiedBy` INT,
    `ActivityExemptionsLogId` BIGINT NOT NULL,
    `ToolId` INT,
    PRIMARY KEY (`ActivityExemptionsLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ActivityExemptionsLog_OrgUnitId` ON `ActivityExemptionsLog` (`OrgUnitId`);
CREATE INDEX `IX_ActivityExemptionsLog_UserId` ON `ActivityExemptionsLog` (`UserId`);
CREATE INDEX `IX_ActivityExemptionsLog_LastModifiedBy` ON `ActivityExemptionsLog` (`LastModifiedBy`);
CREATE INDEX `IX_ActivityExemptionsLog_ToolId` ON `ActivityExemptionsLog` (`ToolId`);

-- Data set: Activity Exemptions Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE `ActivityExemptionsLog_LOAD` (
    `OrgUnitId` INT,
    `UserId` INT,
    `ObjectId` INT,
    `ActivityId` VARCHAR(225),
    `LogTypeName` VARCHAR(50),
    `LastModifiedUtc` DATETIME(6),
    `LastModifiedBy` INT,
    `ActivityExemptionsLogId` BIGINT NOT NULL,
    `ToolId` INT,
    PRIMARY KEY (`ActivityExemptionsLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Activity Feed Comment Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE `ActivityFeedCommentLog` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `CommentId` CHAR(36),
    `Action` VARCHAR(16),
    `ActionDate` DATETIME(6),
    `Content` TEXT,
    `PostId` CHAR(36),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ActivityFeedCommentLog_UserId` ON `ActivityFeedCommentLog` (`UserId`);
CREATE INDEX `IX_ActivityFeedCommentLog_OrgUnitId` ON `ActivityFeedCommentLog` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedCommentLog_PostId` ON `ActivityFeedCommentLog` (`PostId`);

-- Data set: Activity Feed Comment Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE `ActivityFeedCommentLog_LOAD` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `CommentId` CHAR(36),
    `Action` VARCHAR(16),
    `ActionDate` DATETIME(6),
    `Content` TEXT,
    `PostId` CHAR(36),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Activity Feed Comment Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE `ActivityFeedCommentObjects` (
    `OrgUnitId` INT,
    `CommentId` CHAR(36) NOT NULL,
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6),
    `Content` TEXT,
    `IsDeleted` TINYINT(1),
    `PostId` CHAR(36),
    `Version` BIGINT,
    PRIMARY KEY (`CommentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ActivityFeedCommentObjects_OrgUnitId` ON `ActivityFeedCommentObjects` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedCommentObjects_LastModifiedBy` ON `ActivityFeedCommentObjects` (`LastModifiedBy`);
CREATE INDEX `IX_ActivityFeedCommentObjects_PostId` ON `ActivityFeedCommentObjects` (`PostId`);

-- Data set: Activity Feed Comment Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE `ActivityFeedCommentObjects_LOAD` (
    `OrgUnitId` INT,
    `CommentId` CHAR(36) NOT NULL,
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6),
    `Content` TEXT,
    `IsDeleted` TINYINT(1),
    `PostId` CHAR(36),
    `Version` BIGINT,
    PRIMARY KEY (`CommentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Activity Feed Post Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE `ActivityFeedPostLog` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `PostId` CHAR(36),
    `PostType` VARCHAR(16),
    `Action` VARCHAR(16),
    `ActionDate` DATETIME(6),
    `DropboxId` BIGINT,
    `Content` TEXT,
    `CommentCount` INT,
    `AttachmentCount` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ActivityFeedPostLog_UserId` ON `ActivityFeedPostLog` (`UserId`);
CREATE INDEX `IX_ActivityFeedPostLog_OrgUnitId` ON `ActivityFeedPostLog` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedPostLog_DropboxId` ON `ActivityFeedPostLog` (`DropboxId`);

-- Data set: Activity Feed Post Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE `ActivityFeedPostLog_LOAD` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `PostId` CHAR(36),
    `PostType` VARCHAR(16),
    `Action` VARCHAR(16),
    `ActionDate` DATETIME(6),
    `DropboxId` BIGINT,
    `Content` TEXT,
    `CommentCount` INT,
    `AttachmentCount` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Activity Feed Post Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE `ActivityFeedPostObjects` (
    `OrgUnitId` INT,
    `PostId` CHAR(36) NOT NULL,
    `PostType` VARCHAR(16),
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6),
    `DropboxId` BIGINT,
    `Content` TEXT,
    `IsDeleted` TINYINT(1),
    `CommentCount` INT,
    `AttachmentCount` INT,
    `Version` BIGINT,
    PRIMARY KEY (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ActivityFeedPostObjects_OrgUnitId` ON `ActivityFeedPostObjects` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedPostObjects_LastModifiedBy` ON `ActivityFeedPostObjects` (`LastModifiedBy`);
CREATE INDEX `IX_ActivityFeedPostObjects_DropboxId` ON `ActivityFeedPostObjects` (`DropboxId`);

-- Data set: Activity Feed Post Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE `ActivityFeedPostObjects_LOAD` (
    `OrgUnitId` INT,
    `PostId` CHAR(36) NOT NULL,
    `PostType` VARCHAR(16),
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6),
    `DropboxId` BIGINT,
    `Content` TEXT,
    `IsDeleted` TINYINT(1),
    `CommentCount` INT,
    `AttachmentCount` INT,
    `Version` BIGINT,
    PRIMARY KEY (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Announcements
-- Source: https://community.d2l.com/brightspace/kb/articles/4723-announcements-data-sets#announcements
CREATE TABLE `Announcements` (
    `AnnouncementId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT,
    `Title` VARCHAR(400),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsGlobal` TINYINT(1),
    `IsDraft` TINYINT(1),
    `NumAttachments` INT,
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `CreatedBy` INT,
    `IsAuthorInfoShown` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `ResultId` BIGINT,
    PRIMARY KEY (`AnnouncementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_Announcements_OrgUnitId` ON `Announcements` (`OrgUnitId`);
CREATE INDEX `IX_Announcements_DeletedByUserId` ON `Announcements` (`DeletedByUserId`);
CREATE INDEX `IX_Announcements_ResultId` ON `Announcements` (`ResultId`);

-- Data set: Announcements (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4723-announcements-data-sets#announcements
CREATE TABLE `Announcements_LOAD` (
    `AnnouncementId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT,
    `Title` VARCHAR(400),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsGlobal` TINYINT(1),
    `IsDraft` TINYINT(1),
    `NumAttachments` INT,
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `CreatedBy` INT,
    `IsAuthorInfoShown` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `ResultId` BIGINT,
    PRIMARY KEY (`AnnouncementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Assignment Special Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-special-access
CREATE TABLE `AssignmentSpecialAccess` (
    `DropboxId` BIGINT NOT NULL,
    `UserId` INT NOT NULL,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `ModifiedBy` INT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `StartDateAvailabilityType` SMALLINT,
    `EndDateAvailabilityType` SMALLINT,
    PRIMARY KEY (`DropboxId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AssignmentSpecialAccess_UserId` ON `AssignmentSpecialAccess` (`UserId`);
CREATE INDEX `IX_AssignmentSpecialAccess_ModifiedBy` ON `AssignmentSpecialAccess` (`ModifiedBy`);

-- Data set: Assignment Special Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-special-access
CREATE TABLE `AssignmentSpecialAccess_LOAD` (
    `DropboxId` BIGINT NOT NULL,
    `UserId` INT NOT NULL,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `ModifiedBy` INT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `StartDateAvailabilityType` SMALLINT,
    `EndDateAvailabilityType` SMALLINT,
    PRIMARY KEY (`DropboxId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Assignment Submission Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE `AssignmentSubmissionDetails` (
    `SubmissionId` BIGINT NOT NULL,
    `DropboxId` BIGINT,
    `UserId` BIGINT,
    `GroupId` BIGINT,
    `NumberOfFilesSubmitted` INT,
    `TotalFileSize` BIGINT,
    `SubmittedByUserId` INT,
    `DateSubmitted` DATETIME(6),
    `Comments` VARCHAR(1000),
    `IsTurnItInExempt` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `IsPreview` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SubmissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AssignmentSubmissionDetails_DropboxId` ON `AssignmentSubmissionDetails` (`DropboxId`);
CREATE INDEX `IX_AssignmentSubmissionDetails_UserId` ON `AssignmentSubmissionDetails` (`UserId`);
CREATE INDEX `IX_AssignmentSubmissionDetails_SubmittedByUserId` ON `AssignmentSubmissionDetails` (`SubmittedByUserId`);

-- Data set: Assignment Submission Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE `AssignmentSubmissionDetails_LOAD` (
    `SubmissionId` BIGINT NOT NULL,
    `DropboxId` BIGINT,
    `UserId` BIGINT,
    `GroupId` BIGINT,
    `NumberOfFilesSubmitted` INT,
    `TotalFileSize` BIGINT,
    `SubmittedByUserId` INT,
    `DateSubmitted` DATETIME(6),
    `Comments` VARCHAR(1000),
    `IsTurnItInExempt` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `IsPreview` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SubmissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Assignment Submissions
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submissions
-- No primary key: D2L documents key column SubmitterType as nullable.
CREATE TABLE `AssignmentSubmissions` (
    `DropboxId` BIGINT,
    `OrgUnitId` INT,
    `SubmitterId` BIGINT,
    `SubmitterType` VARCHAR(5),
    `FileSubmissionCount` INT,
    `TotalFileSize` BIGINT,
    `FeedbackUserId` INT,
    `FeedbackIsRead` TINYINT(1),
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `LastSubmissionDate` DATETIME(6),
    `Feedback` VARCHAR(1000),
    `FeedbackLastModified` DATETIME(6),
    `FeedbackReadDate` DATETIME(6),
    `CompletionDate` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AssignmentSubmissions_DropboxId` ON `AssignmentSubmissions` (`DropboxId`);
CREATE INDEX `IX_AssignmentSubmissions_OrgUnitId` ON `AssignmentSubmissions` (`OrgUnitId`);
CREATE INDEX `IX_AssignmentSubmissions_SubmitterId` ON `AssignmentSubmissions` (`SubmitterId`);
CREATE INDEX `IX_AssignmentSubmissions_FeedbackUserId` ON `AssignmentSubmissions` (`FeedbackUserId`);

-- Data set: Assignment Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submissions
-- No primary key: D2L documents key column SubmitterType as nullable.
CREATE TABLE `AssignmentSubmissions_LOAD` (
    `DropboxId` BIGINT,
    `OrgUnitId` INT,
    `SubmitterId` BIGINT,
    `SubmitterType` VARCHAR(5),
    `FileSubmissionCount` INT,
    `TotalFileSize` BIGINT,
    `FeedbackUserId` INT,
    `FeedbackIsRead` TINYINT(1),
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `LastSubmissionDate` DATETIME(6),
    `Feedback` VARCHAR(1000),
    `FeedbackLastModified` DATETIME(6),
    `FeedbackReadDate` DATETIME(6),
    `CompletionDate` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Assignment Summary
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-summary
CREATE TABLE `AssignmentSummary` (
    `DropboxId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(128),
    `Category` VARCHAR(128),
    `Type` VARCHAR(10),
    `GradeItemId` BIGINT,
    `PossibleScore` DECIMAL(19,9),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `IsRestricted` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `TurnItInEnabled` TINYINT(1),
    `IsHidden` TINYINT(1),
    `SortOrder` INT,
    `SubmissionType` VARCHAR(18),
    `CompletionType` VARCHAR(27),
    `ResultId` INT,
    `CategoryId` BIGINT,
    `Version` BIGINT,
    `StartDateAvailabilityType` SMALLINT,
    `EndDateAvailabilityType` SMALLINT,
    `AIUtilization` INT,
    `Instructions` TEXT,
    PRIMARY KEY (`DropboxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AssignmentSummary_OrgUnitId` ON `AssignmentSummary` (`OrgUnitId`);
CREATE INDEX `IX_AssignmentSummary_GradeItemId` ON `AssignmentSummary` (`GradeItemId`);
CREATE INDEX `IX_AssignmentSummary_ResultId` ON `AssignmentSummary` (`ResultId`);

-- Data set: Assignment Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-summary
CREATE TABLE `AssignmentSummary_LOAD` (
    `DropboxId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(128),
    `Category` VARCHAR(128),
    `Type` VARCHAR(10),
    `GradeItemId` BIGINT,
    `PossibleScore` DECIMAL(19,9),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `IsRestricted` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `TurnItInEnabled` TINYINT(1),
    `IsHidden` TINYINT(1),
    `SortOrder` INT,
    `SubmissionType` VARCHAR(18),
    `CompletionType` VARCHAR(27),
    `ResultId` INT,
    `CategoryId` BIGINT,
    `Version` BIGINT,
    `StartDateAvailabilityType` SMALLINT,
    `EndDateAvailabilityType` SMALLINT,
    `AIUtilization` INT,
    `Instructions` TEXT,
    PRIMARY KEY (`DropboxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Attendance Registers
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-registers
CREATE TABLE `AttendanceRegisters` (
    `AttendanceRegisterId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(128),
    `Description` VARCHAR(1000),
    `SchemeId` BIGINT,
    `IsVisible` TINYINT(1),
    `IncludeAllUsers` TINYINT(1),
    `CauseForConcern` DECIMAL(19,9),
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`AttendanceRegisterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AttendanceRegisters_OrgUnitId` ON `AttendanceRegisters` (`OrgUnitId`);
CREATE INDEX `IX_AttendanceRegisters_SchemeId` ON `AttendanceRegisters` (`SchemeId`);

-- Data set: Attendance Registers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-registers
CREATE TABLE `AttendanceRegisters_LOAD` (
    `AttendanceRegisterId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(128),
    `Description` VARCHAR(1000),
    `SchemeId` BIGINT,
    `IsVisible` TINYINT(1),
    `IncludeAllUsers` TINYINT(1),
    `CauseForConcern` DECIMAL(19,9),
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`AttendanceRegisterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Attendance Schemes
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-schemes
CREATE TABLE `AttendanceSchemes` (
    `SchemeId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `SchemeName` VARCHAR(128),
    `SchemeSymbolId` BIGINT NOT NULL,
    `SymbolName` VARCHAR(128),
    `SymbolValue` VARCHAR(50),
    `Percentage` DECIMAL(19,9),
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`SchemeId`, `SchemeSymbolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AttendanceSchemes_OrgUnitId` ON `AttendanceSchemes` (`OrgUnitId`);

-- Data set: Attendance Schemes (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-schemes
CREATE TABLE `AttendanceSchemes_LOAD` (
    `SchemeId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `SchemeName` VARCHAR(128),
    `SchemeSymbolId` BIGINT NOT NULL,
    `SymbolName` VARCHAR(128),
    `SymbolValue` VARCHAR(50),
    `Percentage` DECIMAL(19,9),
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`SchemeId`, `SchemeSymbolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Attendance Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE `AttendanceSessions` (
    `AttendanceSessionId` BIGINT NOT NULL,
    `AttendanceRegisterId` BIGINT,
    `Name` VARCHAR(128),
    `Description` VARCHAR(256),
    `SortOrder` INT,
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AttendanceSessions_AttendanceRegisterId` ON `AttendanceSessions` (`AttendanceRegisterId`);

-- Data set: Attendance Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE `AttendanceSessions_LOAD` (
    `AttendanceSessionId` BIGINT NOT NULL,
    `AttendanceRegisterId` BIGINT,
    `Name` VARCHAR(128),
    `Description` VARCHAR(256),
    `SortOrder` INT,
    `Version` BIGINT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Attendance User Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE `AttendanceUserSessions` (
    `UserId` INT NOT NULL,
    `AttendanceSessionId` BIGINT NOT NULL,
    `SchemeSymbolId` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AttendanceUserSessions_AttendanceSessionId` ON `AttendanceUserSessions` (`AttendanceSessionId`);
CREATE INDEX `IX_AttendanceUserSessions_SchemeSymbolId` ON `AttendanceUserSessions` (`SchemeSymbolId`);

-- Data set: Attendance User Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE `AttendanceUserSessions_LOAD` (
    `UserId` INT NOT NULL,
    `AttendanceSessionId` BIGINT NOT NULL,
    `SchemeSymbolId` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Audio Video Processed
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#audio-video-processed
CREATE TABLE `AudioVideoProcessed` (
    `ContentId` CHAR(36) NOT NULL,
    `RevisionId` CHAR(36) NOT NULL,
    `RevisionNumber` INT,
    `Type` VARCHAR(5),
    `Source` VARCHAR(32),
    `RevisionSize` BIGINT,
    `Duration` INT,
    `RequiredTranscoding` TINYINT(1),
    `RequiredTranscribing` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ContentId`, `RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Audio Video Processed (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#audio-video-processed
CREATE TABLE `AudioVideoProcessed_LOAD` (
    `ContentId` CHAR(36) NOT NULL,
    `RevisionId` CHAR(36) NOT NULL,
    `RevisionNumber` INT,
    `Type` VARCHAR(5),
    `Source` VARCHAR(32),
    `RevisionSize` BIGINT,
    `Duration` INT,
    `RequiredTranscoding` TINYINT(1),
    `RequiredTranscribing` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ContentId`, `RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Auditor Relationships Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE `AuditorRelationshipsLog` (
    `AuditorId` INT NOT NULL,
    `UserToAuditId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `Action` VARCHAR(16),
    `ModifiedBy` INT,
    `ModifiedDate` DATETIME(6) NOT NULL,
    PRIMARY KEY (`AuditorId`, `UserToAuditId`, `OrgUnitId`, `ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AuditorRelationshipsLog_UserToAuditId` ON `AuditorRelationshipsLog` (`UserToAuditId`);
CREATE INDEX `IX_AuditorRelationshipsLog_OrgUnitId` ON `AuditorRelationshipsLog` (`OrgUnitId`);
CREATE INDEX `IX_AuditorRelationshipsLog_ModifiedBy` ON `AuditorRelationshipsLog` (`ModifiedBy`);

-- Data set: Auditor Relationships Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE `AuditorRelationshipsLog_LOAD` (
    `AuditorId` INT NOT NULL,
    `UserToAuditId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `Action` VARCHAR(16),
    `ModifiedBy` INT,
    `ModifiedDate` DATETIME(6) NOT NULL,
    PRIMARY KEY (`AuditorId`, `UserToAuditId`, `OrgUnitId`, `ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Award Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#award-objects
CREATE TABLE `AwardObjects` (
    `AwardId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `AwardTypeId` INT,
    `Type` VARCHAR(128),
    `Description` VARCHAR(512),
    `ExpiryCalculationType` VARCHAR(128),
    `ExpiryNotificationType` VARCHAR(128),
    `ExpiryDate` DATETIME(6),
    `ImagePath` VARCHAR(1000),
    `CreatedByUserId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `Criteria` VARCHAR(1000),
    PRIMARY KEY (`AwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Award Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#award-objects
CREATE TABLE `AwardObjects_LOAD` (
    `AwardId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `AwardTypeId` INT,
    `Type` VARCHAR(128),
    `Description` VARCHAR(512),
    `ExpiryCalculationType` VARCHAR(128),
    `ExpiryNotificationType` VARCHAR(128),
    `ExpiryDate` DATETIME(6),
    `ImagePath` VARCHAR(1000),
    `CreatedByUserId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `Criteria` VARCHAR(1000),
    PRIMARY KEY (`AwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Awards Issued
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE `AwardsIssued` (
    `AwardId` BIGINT,
    `OrgUnitId` BIGINT,
    `UserId` BIGINT,
    `IssuedBy` INT,
    `IssueDate` DATETIME(6),
    `ExpiryDate` DATETIME(6),
    `IssuedId` BIGINT NOT NULL,
    `Criteria` VARCHAR(1000),
    `Evidence` VARCHAR(1000),
    `RevokedDate` DATETIME(6),
    `RevokedReason` VARCHAR(1000),
    `RevokedBy` BIGINT,
    `LastModifiedBy` BIGINT,
    `LastModifiedDate` DATETIME(6),
    `Version` BIGINT,
    `CertificateId` VARCHAR(12),
    PRIMARY KEY (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AwardsIssued_AwardId` ON `AwardsIssued` (`AwardId`);
CREATE INDEX `IX_AwardsIssued_OrgUnitId` ON `AwardsIssued` (`OrgUnitId`);
CREATE INDEX `IX_AwardsIssued_UserId` ON `AwardsIssued` (`UserId`);
CREATE INDEX `IX_AwardsIssued_IssuedBy` ON `AwardsIssued` (`IssuedBy`);
CREATE INDEX `IX_AwardsIssued_RevokedBy` ON `AwardsIssued` (`RevokedBy`);
CREATE INDEX `IX_AwardsIssued_LastModifiedBy` ON `AwardsIssued` (`LastModifiedBy`);

-- Data set: Awards Issued (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE `AwardsIssued_LOAD` (
    `AwardId` BIGINT,
    `OrgUnitId` BIGINT,
    `UserId` BIGINT,
    `IssuedBy` INT,
    `IssueDate` DATETIME(6),
    `ExpiryDate` DATETIME(6),
    `IssuedId` BIGINT NOT NULL,
    `Criteria` VARCHAR(1000),
    `Evidence` VARCHAR(1000),
    `RevokedDate` DATETIME(6),
    `RevokedReason` VARCHAR(1000),
    `RevokedBy` BIGINT,
    `LastModifiedBy` BIGINT,
    `LastModifiedDate` DATETIME(6),
    `Version` BIGINT,
    `CertificateId` VARCHAR(12),
    PRIMARY KEY (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Brightspace App Deployments
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE `BrightspaceAppDeployments` (
    `DeploymentId` BIGINT NOT NULL,
    `AppId` BIGINT,
    `DeploymentName` VARCHAR(256),
    `Enabled` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastUpdatedDate` DATETIME(6),
    `LastUpdatedBy` INT,
    `OuAvailabilitySetId` BIGINT,
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`DeploymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_BrightspaceAppDeployments_AppId` ON `BrightspaceAppDeployments` (`AppId`);
CREATE INDEX `IX_BrightspaceAppDeployments_CreatedBy` ON `BrightspaceAppDeployments` (`CreatedBy`);
CREATE INDEX `IX_BrightspaceAppDeployments_LastUpdatedBy` ON `BrightspaceAppDeployments` (`LastUpdatedBy`);

-- Data set: Brightspace App Deployments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE `BrightspaceAppDeployments_LOAD` (
    `DeploymentId` BIGINT NOT NULL,
    `AppId` BIGINT,
    `DeploymentName` VARCHAR(256),
    `Enabled` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastUpdatedDate` DATETIME(6),
    `LastUpdatedBy` INT,
    `OuAvailabilitySetId` BIGINT,
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`DeploymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Brightspace App Details
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-details
CREATE TABLE `BrightspaceAppDetails` (
    `AppId` BIGINT NOT NULL,
    `GlobalId` CHAR(36),
    `Name` VARCHAR(200),
    `IsLocal` TINYINT(1),
    `State` INT,
    `InstalledVersion` VARCHAR(100),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastPublishedDate` DATETIME(6),
    `LastPublishedBy` INT,
    `LastUpdatedDate` DATETIME(6),
    `LastUpdatedBy` INT,
    `Categories` VARCHAR(500),
    `OrgId` INT,
    `DefaultDeploymentId` BIGINT,
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`AppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_BrightspaceAppDetails_CreatedBy` ON `BrightspaceAppDetails` (`CreatedBy`);
CREATE INDEX `IX_BrightspaceAppDetails_LastPublishedBy` ON `BrightspaceAppDetails` (`LastPublishedBy`);
CREATE INDEX `IX_BrightspaceAppDetails_LastUpdatedBy` ON `BrightspaceAppDetails` (`LastUpdatedBy`);
CREATE INDEX `IX_BrightspaceAppDetails_OrgId` ON `BrightspaceAppDetails` (`OrgId`);
CREATE INDEX `IX_BrightspaceAppDetails_DefaultDeploymentId` ON `BrightspaceAppDetails` (`DefaultDeploymentId`);

-- Data set: Brightspace App Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-details
CREATE TABLE `BrightspaceAppDetails_LOAD` (
    `AppId` BIGINT NOT NULL,
    `GlobalId` CHAR(36),
    `Name` VARCHAR(200),
    `IsLocal` TINYINT(1),
    `State` INT,
    `InstalledVersion` VARCHAR(100),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastPublishedDate` DATETIME(6),
    `LastPublishedBy` INT,
    `LastUpdatedDate` DATETIME(6),
    `LastUpdatedBy` INT,
    `Categories` VARCHAR(500),
    `OrgId` INT,
    `DefaultDeploymentId` BIGINT,
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`AppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Brightspace Email Log
-- Source: https://community.d2l.com/brightspace/kb/articles/34145-email-data-sets#brightspace-email-log
CREATE TABLE `BrightspaceEmailLog` (
    `MailId` INT NOT NULL,
    `SenderUserId` INT,
    `SenderAddress` VARCHAR(256),
    `RecipientAddress` VARCHAR(256) NOT NULL,
    `RecipientType` VARCHAR(4) NOT NULL,
    `DateTimeSent` DATETIME(6),
    `Subject` VARCHAR(1000),
    PRIMARY KEY (`MailId`, `RecipientAddress`, `RecipientType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_BrightspaceEmailLog_SenderUserId` ON `BrightspaceEmailLog` (`SenderUserId`);

-- Data set: Brightspace Email Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/34145-email-data-sets#brightspace-email-log
CREATE TABLE `BrightspaceEmailLog_LOAD` (
    `MailId` INT NOT NULL,
    `SenderUserId` INT,
    `SenderAddress` VARCHAR(256),
    `RecipientAddress` VARCHAR(256) NOT NULL,
    `RecipientType` VARCHAR(4) NOT NULL,
    `DateTimeSent` DATETIME(6),
    `Subject` VARCHAR(1000),
    PRIMARY KEY (`MailId`, `RecipientAddress`, `RecipientType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-categories
CREATE TABLE `CPDCategories` (
    `CategoryId` INT NOT NULL,
    `Name` VARCHAR(256),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-categories
CREATE TABLE `CPDCategories_LOAD` (
    `CategoryId` INT NOT NULL,
    `Name` VARCHAR(256),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Job Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-job-targets
CREATE TABLE `CPDJobTargets` (
    `PrincipalId` INT NOT NULL,
    `CategoryId` INT NOT NULL,
    `JobTitle` VARCHAR(256),
    `StructuredMinutes` INT,
    `UnstructuredMinutes` INT,
    `StructuredRecordCount` INT,
    `UnstructuredRecordCount` INT,
    `StartDate` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PrincipalId`, `CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CPDJobTargets_CategoryId` ON `CPDJobTargets` (`CategoryId`);

-- Data set: CPD Job Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-job-targets
CREATE TABLE `CPDJobTargets_LOAD` (
    `PrincipalId` INT NOT NULL,
    `CategoryId` INT NOT NULL,
    `JobTitle` VARCHAR(256),
    `StructuredMinutes` INT,
    `UnstructuredMinutes` INT,
    `StructuredRecordCount` INT,
    `UnstructuredRecordCount` INT,
    `StartDate` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PrincipalId`, `CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Methods
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-methods
CREATE TABLE `CPDMethods` (
    `MethodId` INT NOT NULL,
    `Name` TEXT,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`MethodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Methods (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-methods
CREATE TABLE `CPDMethods_LOAD` (
    `MethodId` INT NOT NULL,
    `Name` TEXT,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`MethodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Question Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE `CPDQuestionAnswers` (
    `AnswerId` INT NOT NULL,
    `AnswerText` TEXT,
    `QuestionId` INT,
    `RecordId` INT,
    `UserId` INT,
    `Action` VARCHAR(16),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CPDQuestionAnswers_QuestionId` ON `CPDQuestionAnswers` (`QuestionId`);
CREATE INDEX `IX_CPDQuestionAnswers_RecordId` ON `CPDQuestionAnswers` (`RecordId`);
CREATE INDEX `IX_CPDQuestionAnswers_UserId` ON `CPDQuestionAnswers` (`UserId`);

-- Data set: CPD Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE `CPDQuestionAnswers_LOAD` (
    `AnswerId` INT NOT NULL,
    `AnswerText` TEXT,
    `QuestionId` INT,
    `RecordId` INT,
    `UserId` INT,
    `Action` VARCHAR(16),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Questions
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-questions
CREATE TABLE `CPDQuestions` (
    `QuestionId` INT NOT NULL,
    `QuestionText` TEXT,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`QuestionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD Questions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-questions
CREATE TABLE `CPDQuestions_LOAD` (
    `QuestionId` INT NOT NULL,
    `QuestionText` TEXT,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`QuestionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD User Records
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-records
CREATE TABLE `CPDUserRecords` (
    `RecordId` INT NOT NULL,
    `RecordName` VARCHAR(256),
    `State` VARCHAR(50),
    `UserId` BIGINT,
    `Category` BIGINT,
    `Method` BIGINT,
    `CreditMinutes` BIGINT,
    `Evidence` TEXT,
    `Type` VARCHAR(50),
    `Grade` DECIMAL(4,3),
    `DateCompleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CPDUserRecords_UserId` ON `CPDUserRecords` (`UserId`);
CREATE INDEX `IX_CPDUserRecords_Category` ON `CPDUserRecords` (`Category`);
CREATE INDEX `IX_CPDUserRecords_Method` ON `CPDUserRecords` (`Method`);

-- Data set: CPD User Records (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-records
CREATE TABLE `CPDUserRecords_LOAD` (
    `RecordId` INT NOT NULL,
    `RecordName` VARCHAR(256),
    `State` VARCHAR(50),
    `UserId` BIGINT,
    `Category` BIGINT,
    `Method` BIGINT,
    `CreditMinutes` BIGINT,
    `Evidence` TEXT,
    `Type` VARCHAR(50),
    `Grade` DECIMAL(4,3),
    `DateCompleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: CPD User Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-targets
CREATE TABLE `CPDUserTargets` (
    `PrincipalId` INT NOT NULL,
    `CategoryId` INT NOT NULL,
    `UserId` INT,
    `StructuredMinutes` INT,
    `UnstructuredMinutes` INT,
    `StructuredRecordCount` INT,
    `UnstructuredRecordCount` INT,
    `StartDate` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PrincipalId`, `CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CPDUserTargets_CategoryId` ON `CPDUserTargets` (`CategoryId`);
CREATE INDEX `IX_CPDUserTargets_UserId` ON `CPDUserTargets` (`UserId`);

-- Data set: CPD User Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-targets
CREATE TABLE `CPDUserTargets_LOAD` (
    `PrincipalId` INT NOT NULL,
    `CategoryId` INT NOT NULL,
    `UserId` INT,
    `StructuredMinutes` INT,
    `UnstructuredMinutes` INT,
    `StructuredRecordCount` INT,
    `UnstructuredRecordCount` INT,
    `StartDate` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PrincipalId`, `CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Calendar Events
-- Source: https://community.d2l.com/brightspace/kb/articles/4521-calendar-data-sets#calendar-events
CREATE TABLE `CalendarEvents` (
    `ScheduleId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT,
    `UserId` BIGINT,
    `Title` VARCHAR(256),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `TimeZoneIdentifier` VARCHAR(256),
    `IsAllDayEvent` TINYINT(1),
    `RecurrenceType` VARCHAR(7),
    `RecurrenceInterval` INT,
    `CreatedByUserId` INT,
    `LastModified` DATETIME(6),
    `EventObjectTypeName` VARCHAR(200),
    `ObjectLookupId1` BIGINT,
    `ObjectLookupId2` BIGINT,
    PRIMARY KEY (`ScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CalendarEvents_OrgUnitId` ON `CalendarEvents` (`OrgUnitId`);
CREATE INDEX `IX_CalendarEvents_UserId` ON `CalendarEvents` (`UserId`);
CREATE INDEX `IX_CalendarEvents_CreatedByUserId` ON `CalendarEvents` (`CreatedByUserId`);

-- Data set: Calendar Events (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4521-calendar-data-sets#calendar-events
CREATE TABLE `CalendarEvents_LOAD` (
    `ScheduleId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT,
    `UserId` BIGINT,
    `Title` VARCHAR(256),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `TimeZoneIdentifier` VARCHAR(256),
    `IsAllDayEvent` TINYINT(1),
    `RecurrenceType` VARCHAR(7),
    `RecurrenceInterval` INT,
    `CreatedByUserId` INT,
    `LastModified` DATETIME(6),
    `EventObjectTypeName` VARCHAR(200),
    `ObjectLookupId1` BIGINT,
    `ObjectLookupId2` BIGINT,
    PRIMARY KEY (`ScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Checklist Category Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-category-details
CREATE TABLE `ChecklistCategoryDetails` (
    `CategoryId` BIGINT NOT NULL,
    `ChecklistId` BIGINT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `SortOrder` INT,
    `LastModifiedUtc` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ChecklistCategoryDetails_ChecklistId` ON `ChecklistCategoryDetails` (`ChecklistId`);
CREATE INDEX `IX_ChecklistCategoryDetails_DeletedBy` ON `ChecklistCategoryDetails` (`DeletedBy`);

-- Data set: Checklist Category Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-category-details
CREATE TABLE `ChecklistCategoryDetails_LOAD` (
    `CategoryId` BIGINT NOT NULL,
    `ChecklistId` BIGINT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `SortOrder` INT,
    `LastModifiedUtc` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Checklist Completions
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE `ChecklistCompletions` (
    `UserId` INT NOT NULL,
    `DateCompleted` DATETIME(6),
    `ItemId` BIGINT NOT NULL,
    `LastModified` DATETIME(6),
    `IsCompleted` TINYINT(1),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ChecklistCompletions_ItemId` ON `ChecklistCompletions` (`ItemId`);
CREATE INDEX `IX_ChecklistCompletions_DeletedBy` ON `ChecklistCompletions` (`DeletedBy`);

-- Data set: Checklist Completions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE `ChecklistCompletions_LOAD` (
    `UserId` INT NOT NULL,
    `DateCompleted` DATETIME(6),
    `ItemId` BIGINT NOT NULL,
    `LastModified` DATETIME(6),
    `IsCompleted` TINYINT(1),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Checklist Item Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE `ChecklistItemDetails` (
    `ItemId` BIGINT NOT NULL,
    `CategoryId` BIGINT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `DueDate` DATETIME(6),
    `ScheduleId` INT,
    `SortOrder` INT,
    `IsAutoChecked` TINYINT(1),
    `LastModifiedUtc` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ChecklistItemDetails_CategoryId` ON `ChecklistItemDetails` (`CategoryId`);
CREATE INDEX `IX_ChecklistItemDetails_ScheduleId` ON `ChecklistItemDetails` (`ScheduleId`);
CREATE INDEX `IX_ChecklistItemDetails_DeletedBy` ON `ChecklistItemDetails` (`DeletedBy`);

-- Data set: Checklist Item Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE `ChecklistItemDetails_LOAD` (
    `ItemId` BIGINT NOT NULL,
    `CategoryId` BIGINT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `DueDate` DATETIME(6),
    `ScheduleId` INT,
    `SortOrder` INT,
    `IsAutoChecked` TINYINT(1),
    `LastModifiedUtc` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Checklist Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE `ChecklistObjects` (
    `ChecklistId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `SharedUserId` INT,
    `DisplayInNewWindow` TINYINT(1),
    `SortOrder` INT,
    `Version` BIGINT,
    `ResultId` INT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`ChecklistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ChecklistObjects_OrgUnitId` ON `ChecklistObjects` (`OrgUnitId`);
CREATE INDEX `IX_ChecklistObjects_SharedUserId` ON `ChecklistObjects` (`SharedUserId`);
CREATE INDEX `IX_ChecklistObjects_ResultId` ON `ChecklistObjects` (`ResultId`);
CREATE INDEX `IX_ChecklistObjects_DeletedBy` ON `ChecklistObjects` (`DeletedBy`);

-- Data set: Checklist Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE `ChecklistObjects_LOAD` (
    `ChecklistId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(512),
    `Description` VARCHAR(1000),
    `DescriptionIsHtml` TINYINT(1),
    `SharedUserId` INT,
    `DisplayInNewWindow` TINYINT(1),
    `SortOrder` INT,
    `Version` BIGINT,
    `ResultId` INT,
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`ChecklistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Competency Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activities
CREATE TABLE `CompetencyActivities` (
    `ActivityId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `ActivityName` VARCHAR(256),
    `ActivityTypeId` INT,
    `AssessmentType` VARCHAR(7),
    `ObjectLookupId` BIGINT,
    `RubricId` BIGINT,
    `LevelId` BIGINT,
    `RubricCriterionId` BIGINT,
    `AssessmentThresholdCriteria` VARCHAR(2),
    `AssessmentThreshold` DECIMAL(19,9),
    `IsAutoEval` TINYINT(1),
    `RubricName` VARCHAR(256),
    `RubricLevelRequired` VARCHAR(256),
    `ObjectId` BIGINT,
    `ActivityType` VARCHAR(50),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyActivities_OrgUnitId` ON `CompetencyActivities` (`OrgUnitId`);
CREATE INDEX `IX_CompetencyActivities_ObjectId` ON `CompetencyActivities` (`ObjectId`);

-- Data set: Competency Activities (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activities
CREATE TABLE `CompetencyActivities_LOAD` (
    `ActivityId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `ActivityName` VARCHAR(256),
    `ActivityTypeId` INT,
    `AssessmentType` VARCHAR(7),
    `ObjectLookupId` BIGINT,
    `RubricId` BIGINT,
    `LevelId` BIGINT,
    `RubricCriterionId` BIGINT,
    `AssessmentThresholdCriteria` VARCHAR(2),
    `AssessmentThreshold` DECIMAL(19,9),
    `IsAutoEval` TINYINT(1),
    `RubricName` VARCHAR(256),
    `RubricLevelRequired` VARCHAR(256),
    `ObjectId` BIGINT,
    `ActivityType` VARCHAR(50),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Competency Activity Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE `CompetencyActivityLog` (
    `ActivityId` BIGINT NOT NULL,
    `ActivityLogId` BIGINT NOT NULL,
    `LogTypeId` INT,
    `LogTypeName` VARCHAR(19),
    `LogDateTime` DATETIME(6),
    `ModifiedBy` BIGINT,
    PRIMARY KEY (`ActivityId`, `ActivityLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyActivityLog_ModifiedBy` ON `CompetencyActivityLog` (`ModifiedBy`);

-- Data set: Competency Activity Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE `CompetencyActivityLog_LOAD` (
    `ActivityId` BIGINT NOT NULL,
    `ActivityLogId` BIGINT NOT NULL,
    `LogTypeId` INT,
    `LogTypeName` VARCHAR(19),
    `LogDateTime` DATETIME(6),
    `ModifiedBy` BIGINT,
    PRIMARY KEY (`ActivityId`, `ActivityLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Competency Activity Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-results
CREATE TABLE `CompetencyActivityResults` (
    `ActivityId` BIGINT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `LearningObjectId` BIGINT NOT NULL,
    `IsAchieved` TINYINT(1),
    `PercentAchieved` DECIMAL(19,9),
    `RubricScore` DECIMAL(19,9),
    `RubricLevelAchieved` VARCHAR(256),
    `RubricId` BIGINT,
    `RubricCriterionId` BIGINT,
    `AchievedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityId`, `OrgUnitId`, `UserId`, `LearningObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyActivityResults_OrgUnitId` ON `CompetencyActivityResults` (`OrgUnitId`);
CREATE INDEX `IX_CompetencyActivityResults_UserId` ON `CompetencyActivityResults` (`UserId`);
CREATE INDEX `IX_CompetencyActivityResults_LearningObjectId` ON `CompetencyActivityResults` (`LearningObjectId`);

-- Data set: Competency Activity Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-results
CREATE TABLE `CompetencyActivityResults_LOAD` (
    `ActivityId` BIGINT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `LearningObjectId` BIGINT NOT NULL,
    `IsAchieved` TINYINT(1),
    `PercentAchieved` DECIMAL(19,9),
    `RubricScore` DECIMAL(19,9),
    `RubricLevelAchieved` VARCHAR(256),
    `RubricId` BIGINT,
    `RubricCriterionId` BIGINT,
    `AchievedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityId`, `OrgUnitId`, `UserId`, `LearningObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Competency Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-log
CREATE TABLE `CompetencyLog` (
    `CompetencyLogId` BIGINT NOT NULL,
    `LogTypeId` INT,
    `LogTypeName` VARCHAR(19),
    `ObjectId` BIGINT,
    `ObjectTypeId` INT,
    `ObjectTypeName` VARCHAR(18),
    `ObjectVersion` INT,
    `LogDateTime` DATETIME(6),
    `ModifiedBy` BIGINT,
    `IndirectObjectId` BIGINT,
    `IndirectObjectTypeName` VARCHAR(18),
    `IndirectObjectTypeId` INT,
    `IndirectObjectVersion` INT,
    PRIMARY KEY (`CompetencyLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyLog_ObjectId` ON `CompetencyLog` (`ObjectId`);
CREATE INDEX `IX_CompetencyLog_ModifiedBy` ON `CompetencyLog` (`ModifiedBy`);

-- Data set: Competency Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-log
CREATE TABLE `CompetencyLog_LOAD` (
    `CompetencyLogId` BIGINT NOT NULL,
    `LogTypeId` INT,
    `LogTypeName` VARCHAR(19),
    `ObjectId` BIGINT,
    `ObjectTypeId` INT,
    `ObjectTypeName` VARCHAR(18),
    `ObjectVersion` INT,
    `LogDateTime` DATETIME(6),
    `ModifiedBy` BIGINT,
    `IndirectObjectId` BIGINT,
    `IndirectObjectTypeName` VARCHAR(18),
    `IndirectObjectTypeId` INT,
    `IndirectObjectVersion` INT,
    PRIMARY KEY (`CompetencyLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Competency Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-objects
CREATE TABLE `CompetencyObjects` (
    `ObjectId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(256),
    `Type` VARCHAR(256),
    `ReadyForEvaluation` TINYINT(1),
    `Status` VARCHAR(9),
    `Description` VARCHAR(1000),
    `NeedReevaluation` TINYINT(1),
    `ReevaluationIfAchieved` TINYINT(1),
    `ReevaluationIfNotAchieved` TINYINT(1),
    `AdditionalIdentifier` VARCHAR(512),
    `IsHidden` TINYINT(1),
    PRIMARY KEY (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyObjects_OrgUnitId` ON `CompetencyObjects` (`OrgUnitId`);

-- Data set: Competency Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-objects
CREATE TABLE `CompetencyObjects_LOAD` (
    `ObjectId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(256),
    `Type` VARCHAR(256),
    `ReadyForEvaluation` TINYINT(1),
    `Status` VARCHAR(9),
    `Description` VARCHAR(1000),
    `NeedReevaluation` TINYINT(1),
    `ReevaluationIfAchieved` TINYINT(1),
    `ReevaluationIfNotAchieved` TINYINT(1),
    `AdditionalIdentifier` VARCHAR(512),
    `IsHidden` TINYINT(1),
    PRIMARY KEY (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Competency Structure
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE `CompetencyStructure` (
    `ObjectId` BIGINT NOT NULL,
    `ParentObjectId` BIGINT NOT NULL,
    `BaseObjectID` BIGINT NOT NULL,
    `Depth` INT,
    `EntryTime` INT NOT NULL,
    PRIMARY KEY (`ObjectId`, `ParentObjectId`, `BaseObjectID`, `EntryTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyStructure_ParentObjectId` ON `CompetencyStructure` (`ParentObjectId`);
CREATE INDEX `IX_CompetencyStructure_BaseObjectID` ON `CompetencyStructure` (`BaseObjectID`);

-- Data set: Competency Structure (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE `CompetencyStructure_LOAD` (
    `ObjectId` BIGINT NOT NULL,
    `ParentObjectId` BIGINT NOT NULL,
    `BaseObjectID` BIGINT NOT NULL,
    `Depth` INT,
    `EntryTime` INT NOT NULL,
    PRIMARY KEY (`ObjectId`, `ParentObjectId`, `BaseObjectID`, `EntryTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Content Files Properties Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-files-properties-log
CREATE TABLE `ContentFilesPropertiesLog` (
    `OrgUnitId` INT NOT NULL,
    `ContentObjectId` INT NOT NULL,
    `Action` VARCHAR(10),
    `FilePath` TEXT,
    `FileName` VARCHAR(512),
    `FileExtension` VARCHAR(512),
    `FileSizeBytes` BIGINT,
    `UploadDate` DATETIME(6),
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `ContentObjectId`, `LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ContentFilesPropertiesLog_ContentObjectId` ON `ContentFilesPropertiesLog` (`ContentObjectId`);
CREATE INDEX `IX_ContentFilesPropertiesLog_LastModifiedBy` ON `ContentFilesPropertiesLog` (`LastModifiedBy`);

-- Data set: Content Files Properties Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-files-properties-log
CREATE TABLE `ContentFilesPropertiesLog_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `ContentObjectId` INT NOT NULL,
    `Action` VARCHAR(10),
    `FilePath` TEXT,
    `FileName` VARCHAR(512),
    `FileExtension` VARCHAR(512),
    `FileSizeBytes` BIGINT,
    `UploadDate` DATETIME(6),
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `ContentObjectId`, `LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Content Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-objects
CREATE TABLE `ContentObjects` (
    `ContentObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `Title` VARCHAR(150),
    `ContentObjectType` VARCHAR(6),
    `CompletionType` VARCHAR(7),
    `ParentContentObjectId` INT,
    `Location` TEXT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `ObjectId1` INT,
    `ObjectId2` INT,
    `ObjectId3` INT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `SortOrder` INT,
    `Depth` INT,
    `ToolId` INT,
    `IsHidden` TINYINT(1),
    `ResultId` INT,
    `DeletedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedBy` INT,
    `DeletedBy` INT,
    `AIUtilization` INT,
    `Version` BIGINT,
    PRIMARY KEY (`ContentObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ContentObjects_OrgUnitId` ON `ContentObjects` (`OrgUnitId`);
CREATE INDEX `IX_ContentObjects_ToolId` ON `ContentObjects` (`ToolId`);

-- Data set: Content Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-objects
CREATE TABLE `ContentObjects_LOAD` (
    `ContentObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `Title` VARCHAR(150),
    `ContentObjectType` VARCHAR(6),
    `CompletionType` VARCHAR(7),
    `ParentContentObjectId` INT,
    `Location` TEXT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `ObjectId1` INT,
    `ObjectId2` INT,
    `ObjectId3` INT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `SortOrder` INT,
    `Depth` INT,
    `ToolId` INT,
    `IsHidden` TINYINT(1),
    `ResultId` INT,
    `DeletedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedBy` INT,
    `DeletedBy` INT,
    `AIUtilization` INT,
    `Version` BIGINT,
    PRIMARY KEY (`ContentObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Content User Completion
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-completion
CREATE TABLE `ContentUserCompletion` (
    `ContentObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `UserId` INT NOT NULL,
    `DateCompleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AutomaticDateCompleted` DATETIME(6),
    `ManualDateCompleted` DATETIME(6),
    PRIMARY KEY (`ContentObjectId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ContentUserCompletion_OrgUnitId` ON `ContentUserCompletion` (`OrgUnitId`);
CREATE INDEX `IX_ContentUserCompletion_UserId` ON `ContentUserCompletion` (`UserId`);

-- Data set: Content User Completion (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-completion
CREATE TABLE `ContentUserCompletion_LOAD` (
    `ContentObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `UserId` INT NOT NULL,
    `DateCompleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AutomaticDateCompleted` DATETIME(6),
    `ManualDateCompleted` DATETIME(6),
    PRIMARY KEY (`ContentObjectId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Content User Progress
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-progress
CREATE TABLE `ContentUserProgress` (
    `ContentObjectId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `CompletedDate` DATETIME(6),
    `LastVisited` DATETIME(6),
    `IsRead` TINYINT(1),
    `NumRealVisits` INT,
    `NumFakeVisits` INT,
    `TotalTime` BIGINT,
    `IsVisited` TINYINT(1),
    `IsCurrentBookmark` TINYINT(1),
    `IsSelfAssessComplete` TINYINT(1),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ContentObjectId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ContentUserProgress_UserId` ON `ContentUserProgress` (`UserId`);

-- Data set: Content User Progress (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-progress
CREATE TABLE `ContentUserProgress_LOAD` (
    `ContentObjectId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `CompletedDate` DATETIME(6),
    `LastVisited` DATETIME(6),
    `IsRead` TINYINT(1),
    `NumRealVisits` INT,
    `NumFakeVisits` INT,
    `TotalTime` BIGINT,
    `IsVisited` TINYINT(1),
    `IsCurrentBookmark` TINYINT(1),
    `IsSelfAssessComplete` TINYINT(1),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ContentObjectId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Course Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE `CourseAccess` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `DayAccessed` DATETIME(6) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `UserId`, `DayAccessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CourseAccess_UserId` ON `CourseAccess` (`UserId`);

-- Data set: Course Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE `CourseAccess_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `DayAccessed` DATETIME(6) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `UserId`, `DayAccessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Course Access Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access-log
CREATE TABLE `CourseAccessLog` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `Timestamp` DATETIME(6) NOT NULL,
    `Source` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `UserId`, `Timestamp`, `Source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CourseAccessLog_UserId` ON `CourseAccessLog` (`UserId`);

-- Data set: Course Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access-log
CREATE TABLE `CourseAccessLog_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `Timestamp` DATETIME(6) NOT NULL,
    `Source` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `UserId`, `Timestamp`, `Source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Course Awards
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE `CourseAwards` (
    `AssociationId` BIGINT NOT NULL,
    `AwardId` BIGINT,
    `OrgUnitId` BIGINT,
    `DateCreated` DATETIME(6),
    `HiddenAward` TINYINT(1),
    `ConditionSetId` BIGINT,
    `LastModified` DATETIME(6),
    `Credits` DECIMAL(9,2),
    `IsAssociated` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AssociationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CourseAwards_AwardId` ON `CourseAwards` (`AwardId`);
CREATE INDEX `IX_CourseAwards_OrgUnitId` ON `CourseAwards` (`OrgUnitId`);

-- Data set: Course Awards (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE `CourseAwards_LOAD` (
    `AssociationId` BIGINT NOT NULL,
    `AwardId` BIGINT,
    `OrgUnitId` BIGINT,
    `DateCreated` DATETIME(6),
    `HiddenAward` TINYINT(1),
    `ConditionSetId` BIGINT,
    `LastModified` DATETIME(6),
    `Credits` DECIMAL(9,2),
    `IsAssociated` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AssociationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Course Copy Logs
-- Source: https://community.d2l.com/brightspace/kb/articles/4725-course-copy-data-sets#course-copy-logs
CREATE TABLE `CourseCopyLogs` (
    `SourceOrgUnitId` INT,
    `DestinationOrgUnitId` INT,
    `UserId` BIGINT,
    `Status` VARCHAR(128),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsDestinationNew` TINYINT(1),
    `CopyProtectedResources` TINYINT(1),
    `CopyCourseJobId` BIGINT NOT NULL,
    `StatusId` INT,
    PRIMARY KEY (`CopyCourseJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CourseCopyLogs_SourceOrgUnitId` ON `CourseCopyLogs` (`SourceOrgUnitId`);
CREATE INDEX `IX_CourseCopyLogs_DestinationOrgUnitId` ON `CourseCopyLogs` (`DestinationOrgUnitId`);
CREATE INDEX `IX_CourseCopyLogs_UserId` ON `CourseCopyLogs` (`UserId`);

-- Data set: Course Copy Logs (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4725-course-copy-data-sets#course-copy-logs
CREATE TABLE `CourseCopyLogs_LOAD` (
    `SourceOrgUnitId` INT,
    `DestinationOrgUnitId` INT,
    `UserId` BIGINT,
    `Status` VARCHAR(128),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsDestinationNew` TINYINT(1),
    `CopyProtectedResources` TINYINT(1),
    `CopyCourseJobId` BIGINT NOT NULL,
    `StatusId` INT,
    PRIMARY KEY (`CopyCourseJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Course Publisher Launches
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE `CoursePublisherLaunches` (
    `LaunchId` CHAR(36) NOT NULL,
    `OrgUnitId` BIGINT,
    `RecipientId` CHAR(36),
    `UserId` BIGINT,
    `RoleId` BIGINT,
    `LaunchMethod` VARCHAR(256),
    `ExternalUserId` VARCHAR(256),
    `ExternalLMSType` VARCHAR(256),
    `IsNewUser` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`LaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CoursePublisherLaunches_OrgUnitId` ON `CoursePublisherLaunches` (`OrgUnitId`);
CREATE INDEX `IX_CoursePublisherLaunches_RecipientId` ON `CoursePublisherLaunches` (`RecipientId`);
CREATE INDEX `IX_CoursePublisherLaunches_UserId` ON `CoursePublisherLaunches` (`UserId`);
CREATE INDEX `IX_CoursePublisherLaunches_RoleId` ON `CoursePublisherLaunches` (`RoleId`);

-- Data set: Course Publisher Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE `CoursePublisherLaunches_LOAD` (
    `LaunchId` CHAR(36) NOT NULL,
    `OrgUnitId` BIGINT,
    `RecipientId` CHAR(36),
    `UserId` BIGINT,
    `RoleId` BIGINT,
    `LaunchMethod` VARCHAR(256),
    `ExternalUserId` VARCHAR(256),
    `ExternalLMSType` VARCHAR(256),
    `IsNewUser` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`LaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Course Publisher Recipients
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE `CoursePublisherRecipients` (
    `RecipientID` CHAR(36) NOT NULL,
    `Name` VARCHAR(256),
    `CreatedAt` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`RecipientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Course Publisher Recipients (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE `CoursePublisherRecipients_LOAD` (
    `RecipientID` CHAR(36) NOT NULL,
    `Name` VARCHAR(256),
    `CreatedAt` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`RecipientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Creator+ Practices Adoption
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE `CreatorPracticesAdoption` (
    `ActivityInstanceId` INT NOT NULL,
    `CreatedById` INT,
    `OrgUnitId` INT,
    `PracticeType` VARCHAR(32),
    `PracticeTitle` VARCHAR(255),
    `ProviderObjectId` INT,
    `CreatedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CreatorPracticesAdoption_CreatedById` ON `CreatorPracticesAdoption` (`CreatedById`);
CREATE INDEX `IX_CreatorPracticesAdoption_OrgUnitId` ON `CreatorPracticesAdoption` (`OrgUnitId`);

-- Data set: Creator+ Practices Adoption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE `CreatorPracticesAdoption_LOAD` (
    `ActivityInstanceId` INT NOT NULL,
    `CreatedById` INT,
    `OrgUnitId` INT,
    `PracticeType` VARCHAR(32),
    `PracticeTitle` VARCHAR(255),
    `ProviderObjectId` INT,
    `CreatedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Creator+ Practices Engagement
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE `CreatorPracticesEngagement` (
    `PracticeEngagementId` INT NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `CompletionStatus` VARCHAR(10),
    `ActivityInstanceId` INT,
    `CompletionDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PracticeEngagementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CreatorPracticesEngagement_UserId` ON `CreatorPracticesEngagement` (`UserId`);
CREATE INDEX `IX_CreatorPracticesEngagement_OrgUnitId` ON `CreatorPracticesEngagement` (`OrgUnitId`);
CREATE INDEX `IX_CreatorPracticesEngagement_ActivityInstanceId` ON `CreatorPracticesEngagement` (`ActivityInstanceId`);

-- Data set: Creator+ Practices Engagement (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE `CreatorPracticesEngagement_LOAD` (
    `PracticeEngagementId` INT NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `CompletionStatus` VARCHAR(10),
    `ActivityInstanceId` INT,
    `CompletionDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PracticeEngagementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Discussion Forums
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-forums
CREATE TABLE `DiscussionForums` (
    `OrgUnitId` INT,
    `ForumId` BIGINT NOT NULL,
    `Name` VARCHAR(400),
    `Description` VARCHAR(1000),
    `MustPostToParticipate` TINYINT(1),
    `AllowAnon` TINYINT(1),
    `IsHidden` TINYINT(1),
    `RequiresApproval` TINYINT(1),
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `ResultId` INT,
    `StartDate` DATETIME(6),
    `StartDateAvailabilityType` SMALLINT,
    `EndDate` DATETIME(6),
    `EndDateAvailabilityType` SMALLINT,
    `Version` BIGINT,
    PRIMARY KEY (`ForumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionForums_OrgUnitId` ON `DiscussionForums` (`OrgUnitId`);
CREATE INDEX `IX_DiscussionForums_DeletedByUserId` ON `DiscussionForums` (`DeletedByUserId`);
CREATE INDEX `IX_DiscussionForums_ResultId` ON `DiscussionForums` (`ResultId`);

-- Data set: Discussion Forums (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-forums
CREATE TABLE `DiscussionForums_LOAD` (
    `OrgUnitId` INT,
    `ForumId` BIGINT NOT NULL,
    `Name` VARCHAR(400),
    `Description` VARCHAR(1000),
    `MustPostToParticipate` TINYINT(1),
    `AllowAnon` TINYINT(1),
    `IsHidden` TINYINT(1),
    `RequiresApproval` TINYINT(1),
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `ResultId` INT,
    `StartDate` DATETIME(6),
    `StartDateAvailabilityType` SMALLINT,
    `EndDate` DATETIME(6),
    `EndDateAvailabilityType` SMALLINT,
    `Version` BIGINT,
    PRIMARY KEY (`ForumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Discussion Posts
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts
CREATE TABLE `DiscussionPosts` (
    `OrgUnitId` INT,
    `TopicId` BIGINT,
    `UserId` INT,
    `PostId` BIGINT NOT NULL,
    `ThreadId` BIGINT,
    `IsReply` TINYINT(1),
    `ParentPostId` BIGINT,
    `NumReplies` INT,
    `DatePosted` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `RatingSum` BIGINT,
    `NumRatings` BIGINT,
    `Score` DECIMAL(19,9),
    `LastEditDate` DATETIME(6),
    `SortOrder` INT,
    `Depth` INT,
    `Thread` VARCHAR(400),
    `WordCount` INT,
    `AttachmentCount` INT,
    `Version` BIGINT,
    PRIMARY KEY (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionPosts_OrgUnitId` ON `DiscussionPosts` (`OrgUnitId`);
CREATE INDEX `IX_DiscussionPosts_TopicId` ON `DiscussionPosts` (`TopicId`);
CREATE INDEX `IX_DiscussionPosts_UserId` ON `DiscussionPosts` (`UserId`);
CREATE INDEX `IX_DiscussionPosts_ParentPostId` ON `DiscussionPosts` (`ParentPostId`);

-- Data set: Discussion Posts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts
CREATE TABLE `DiscussionPosts_LOAD` (
    `OrgUnitId` INT,
    `TopicId` BIGINT,
    `UserId` INT,
    `PostId` BIGINT NOT NULL,
    `ThreadId` BIGINT,
    `IsReply` TINYINT(1),
    `ParentPostId` BIGINT,
    `NumReplies` INT,
    `DatePosted` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `RatingSum` BIGINT,
    `NumRatings` BIGINT,
    `Score` DECIMAL(19,9),
    `LastEditDate` DATETIME(6),
    `SortOrder` INT,
    `Depth` INT,
    `Thread` VARCHAR(400),
    `WordCount` INT,
    `AttachmentCount` INT,
    `Version` BIGINT,
    PRIMARY KEY (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Discussion Posts Read Status
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE `DiscussionPostsReadStatus` (
    `TopicId` BIGINT,
    `UserId` INT NOT NULL,
    `PostId` BIGINT NOT NULL,
    `IsRead` TINYINT(1),
    `FirstReadDate` DATETIME(6),
    `LastReadDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionPostsReadStatus_TopicId` ON `DiscussionPostsReadStatus` (`TopicId`);
CREATE INDEX `IX_DiscussionPostsReadStatus_PostId` ON `DiscussionPostsReadStatus` (`PostId`);

-- Data set: Discussion Posts Read Status (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE `DiscussionPostsReadStatus_LOAD` (
    `TopicId` BIGINT,
    `UserId` INT NOT NULL,
    `PostId` BIGINT NOT NULL,
    `IsRead` TINYINT(1),
    `FirstReadDate` DATETIME(6),
    `LastReadDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Discussion Topic User Scores
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE `DiscussionTopicUserScores` (
    `UserId` INT NOT NULL,
    `TopicId` BIGINT NOT NULL,
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `Version` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`UserId`, `TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionTopicUserScores_TopicId` ON `DiscussionTopicUserScores` (`TopicId`);

-- Data set: Discussion Topic User Scores (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE `DiscussionTopicUserScores_LOAD` (
    `UserId` INT NOT NULL,
    `TopicId` BIGINT NOT NULL,
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `Version` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`UserId`, `TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Discussion Topics
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topics
CREATE TABLE `DiscussionTopics` (
    `OrgUnitId` INT,
    `TopicId` BIGINT NOT NULL,
    `ForumId` BIGINT,
    `Name` VARCHAR(1000),
    `Description` VARCHAR(1000),
    `MustPostToParticipate` TINYINT(1),
    `AllowAnon` TINYINT(1),
    `IsHidden` TINYINT(1),
    `RequiresApproval` TINYINT(1),
    `LastPostDate` DATETIME(6),
    `LastPostUserId` BIGINT,
    `NumViews` BIGINT,
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `GradeItemId` INT,
    `ScoreOutOf` DOUBLE,
    `ScoreCalculationMethod` VARCHAR(19),
    `IncludeNonScoredValues` TINYINT(1),
    `Version` BIGINT,
    `ResultId` INT,
    `StartDate` DATETIME(6),
    `StartDateAvailabilityType` SMALLINT,
    `EndDate` DATETIME(6),
    `EndDateAvailabilityType` SMALLINT,
    `AIUtilization` INT,
    `DueDate` DATETIME(6),
    PRIMARY KEY (`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionTopics_OrgUnitId` ON `DiscussionTopics` (`OrgUnitId`);
CREATE INDEX `IX_DiscussionTopics_ForumId` ON `DiscussionTopics` (`ForumId`);
CREATE INDEX `IX_DiscussionTopics_DeletedByUserId` ON `DiscussionTopics` (`DeletedByUserId`);
CREATE INDEX `IX_DiscussionTopics_GradeItemId` ON `DiscussionTopics` (`GradeItemId`);
CREATE INDEX `IX_DiscussionTopics_ResultId` ON `DiscussionTopics` (`ResultId`);

-- Data set: Discussion Topics (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topics
CREATE TABLE `DiscussionTopics_LOAD` (
    `OrgUnitId` INT,
    `TopicId` BIGINT NOT NULL,
    `ForumId` BIGINT,
    `Name` VARCHAR(1000),
    `Description` VARCHAR(1000),
    `MustPostToParticipate` TINYINT(1),
    `AllowAnon` TINYINT(1),
    `IsHidden` TINYINT(1),
    `RequiresApproval` TINYINT(1),
    `LastPostDate` DATETIME(6),
    `LastPostUserId` BIGINT,
    `NumViews` BIGINT,
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `GradeItemId` INT,
    `ScoreOutOf` DOUBLE,
    `ScoreCalculationMethod` VARCHAR(19),
    `IncludeNonScoredValues` TINYINT(1),
    `Version` BIGINT,
    `ResultId` INT,
    `StartDate` DATETIME(6),
    `StartDateAvailabilityType` SMALLINT,
    `EndDate` DATETIME(6),
    `EndDateAvailabilityType` SMALLINT,
    `AIUtilization` INT,
    `DueDate` DATETIME(6),
    PRIMARY KEY (`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- Data set: Grade Book Settings
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-book-settings
CREATE TABLE `GradeBookSettings` (
    `OrgUnitId` INT NOT NULL,
    `GradeSchemeId` BIGINT NOT NULL,
    `GradingSystem` VARCHAR(8),
    `UngradedItems` VARCHAR(25),
    `IsAdjustedFinalGradeReleased` TINYINT(1),
    `IsCalculatedFinalGradeReleased` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Grade Book Settings (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-book-settings
CREATE TABLE `GradeBookSettings_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `GradeSchemeId` BIGINT NOT NULL,
    `GradingSystem` VARCHAR(8),
    `UngradedItems` VARCHAR(25),
    `IsAdjustedFinalGradeReleased` TINYINT(1),
    `IsCalculatedFinalGradeReleased` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Grade Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects
CREATE TABLE `GradeObjects` (
    `GradeObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `ParentGradeObjectId` INT,
    `Name` VARCHAR(128),
    `TypeName` VARCHAR(50),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsAutoPointed` TINYINT(1),
    `IsFormula` TINYINT(1),
    `IsBonus` TINYINT(1),
    `MaxPoints` DECIMAL(19,9),
    `CanExceedMaxGrade` TINYINT(1),
    `ExcludeFromFinalGradeCalc` TINYINT(1),
    `GradeSchemeId` BIGINT,
    `Weight` DECIMAL(19,9),
    `NumLowestGradesToDrop` INT,
    `NumHighestGradesToDrop` INT,
    `WeightDistributionType` VARCHAR(8),
    `CreatedDate` DATETIME(6),
    `ToolName` VARCHAR(50),
    `AssociatedToolItemId` BIGINT,
    `LastModified` DATETIME(6),
    `ShortName` VARCHAR(128),
    `GradeObjectTypeId` INT,
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `ResultId` INT,
    `ToolId` INT,
    `Version` INT,
    PRIMARY KEY (`GradeObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeObjects_OrgUnitId` ON `GradeObjects` (`OrgUnitId`);
CREATE INDEX `IX_GradeObjects_ParentGradeObjectId` ON `GradeObjects` (`ParentGradeObjectId`);
CREATE INDEX `IX_GradeObjects_DeletedByUserId` ON `GradeObjects` (`DeletedByUserId`);
CREATE INDEX `IX_GradeObjects_ResultId` ON `GradeObjects` (`ResultId`);

-- Data set: Grade Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects
CREATE TABLE `GradeObjects_LOAD` (
    `GradeObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `ParentGradeObjectId` INT,
    `Name` VARCHAR(128),
    `TypeName` VARCHAR(50),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsAutoPointed` TINYINT(1),
    `IsFormula` TINYINT(1),
    `IsBonus` TINYINT(1),
    `MaxPoints` DECIMAL(19,9),
    `CanExceedMaxGrade` TINYINT(1),
    `ExcludeFromFinalGradeCalc` TINYINT(1),
    `GradeSchemeId` BIGINT,
    `Weight` DECIMAL(19,9),
    `NumLowestGradesToDrop` INT,
    `NumHighestGradesToDrop` INT,
    `WeightDistributionType` VARCHAR(8),
    `CreatedDate` DATETIME(6),
    `ToolName` VARCHAR(50),
    `AssociatedToolItemId` BIGINT,
    `LastModified` DATETIME(6),
    `ShortName` VARCHAR(128),
    `GradeObjectTypeId` INT,
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `ResultId` INT,
    `ToolId` INT,
    `Version` INT,
    PRIMARY KEY (`GradeObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Grade Objects Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects-log
CREATE TABLE `GradeObjectsLog` (
    `LogId` BIGINT NOT NULL,
    `Name` VARCHAR(50),
    `GradeObjectId` INT,
    `UserId` INT,
    `GradeSymbolString` VARCHAR(50),
    `PointsDenominator` DECIMAL(19,9),
    `PointsNumerator` DECIMAL(19,9),
    `WeightedDenominator` DECIMAL(19,9),
    `WeightedNumerator` DECIMAL(19,9),
    `Modified` DATETIME(6),
    `ModifiedBy` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeObjectsLog_GradeObjectId` ON `GradeObjectsLog` (`GradeObjectId`);
CREATE INDEX `IX_GradeObjectsLog_UserId` ON `GradeObjectsLog` (`UserId`);

-- Data set: Grade Objects Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects-log
CREATE TABLE `GradeObjectsLog_LOAD` (
    `LogId` BIGINT NOT NULL,
    `Name` VARCHAR(50),
    `GradeObjectId` INT,
    `UserId` INT,
    `GradeSymbolString` VARCHAR(50),
    `PointsDenominator` DECIMAL(19,9),
    `PointsNumerator` DECIMAL(19,9),
    `WeightedDenominator` DECIMAL(19,9),
    `WeightedNumerator` DECIMAL(19,9),
    `Modified` DATETIME(6),
    `ModifiedBy` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Grade Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-results
CREATE TABLE `GradeResults` (
    `GradeObjectId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `PointsNumerator` DECIMAL(19,9),
    `PointsDenominator` DECIMAL(19,9),
    `WeightedNumerator` DECIMAL(19,9),
    `WeightedDenominator` DECIMAL(19,9),
    `IsReleased` TINYINT(1),
    `IsDropped` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `Comments` VARCHAR(1000),
    `PrivateComments` VARCHAR(1000),
    `GradeText` VARCHAR(50),
    `GradeReleasedDate` DATETIME(6),
    `Version` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`GradeObjectId`, `OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeResults_OrgUnitId` ON `GradeResults` (`OrgUnitId`);
CREATE INDEX `IX_GradeResults_UserId` ON `GradeResults` (`UserId`);
CREATE INDEX `IX_GradeResults_LastModifiedBy` ON `GradeResults` (`LastModifiedBy`);

-- Data set: Grade Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-results
CREATE TABLE `GradeResults_LOAD` (
    `GradeObjectId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `PointsNumerator` DECIMAL(19,9),
    `PointsDenominator` DECIMAL(19,9),
    `WeightedNumerator` DECIMAL(19,9),
    `WeightedDenominator` DECIMAL(19,9),
    `IsReleased` TINYINT(1),
    `IsDropped` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `Comments` VARCHAR(1000),
    `PrivateComments` VARCHAR(1000),
    `GradeText` VARCHAR(50),
    `GradeReleasedDate` DATETIME(6),
    `Version` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`GradeObjectId`, `OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Grade Scheme Ranges
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE `GradeSchemeRanges` (
    `GradeSchemeRangeId` BIGINT NOT NULL,
    `GradeSchemeId` BIGINT NOT NULL,
    `SymbolString` VARCHAR(100),
    `AssignedValue` DECIMAL(19,9),
    `RangeStart` DECIMAL(19,9),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`GradeSchemeRangeId`, `GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeSchemeRanges_GradeSchemeId` ON `GradeSchemeRanges` (`GradeSchemeId`);

-- Data set: Grade Scheme Ranges (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE `GradeSchemeRanges_LOAD` (
    `GradeSchemeRangeId` BIGINT NOT NULL,
    `GradeSchemeId` BIGINT NOT NULL,
    `SymbolString` VARCHAR(100),
    `AssignedValue` DECIMAL(19,9),
    `RangeStart` DECIMAL(19,9),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`GradeSchemeRangeId`, `GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Grade Schemes
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE `GradeSchemes` (
    `GradeSchemeId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `SchemeName` VARCHAR(128),
    `DeletedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeSchemes_OrgUnitId` ON `GradeSchemes` (`OrgUnitId`);

-- Data set: Grade Schemes (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE `GradeSchemes_LOAD` (
    `GradeSchemeId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `SchemeName` VARCHAR(128),
    `DeletedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Intelligent Agent Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-objects
CREATE TABLE `IntelligentAgentObjects` (
    `AgentId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `AgentName` VARCHAR(128),
    `Description` VARCHAR(1000),
    `Enabled` TINYINT(1),
    `SpecificRoles` VARCHAR(1000),
    `LoginConditionEnabled` TINYINT(1),
    `LoginConditionThreshold` INT,
    `LoginConditionType` VARCHAR(14),
    `AccessConditionEnabled` TINYINT(1),
    `AccessConditionThreshold` INT,
    `AccessConditionType` VARCHAR(20),
    `ResultId` BIGINT,
    `RepeatType` VARCHAR(10),
    `EmailWhenSatisfied` TINYINT(1),
    `EnableSchedule` TINYINT(1),
    `ScheduleType` VARCHAR(10),
    `ScheduleRepeatsEvery` INT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_IntelligentAgentObjects_OrgUnitId` ON `IntelligentAgentObjects` (`OrgUnitId`);
CREATE INDEX `IX_IntelligentAgentObjects_ResultId` ON `IntelligentAgentObjects` (`ResultId`);
CREATE INDEX `IX_IntelligentAgentObjects_LastModifiedBy` ON `IntelligentAgentObjects` (`LastModifiedBy`);

-- Data set: Intelligent Agent Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-objects
CREATE TABLE `IntelligentAgentObjects_LOAD` (
    `AgentId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `AgentName` VARCHAR(128),
    `Description` VARCHAR(1000),
    `Enabled` TINYINT(1),
    `SpecificRoles` VARCHAR(1000),
    `LoginConditionEnabled` TINYINT(1),
    `LoginConditionThreshold` INT,
    `LoginConditionType` VARCHAR(14),
    `AccessConditionEnabled` TINYINT(1),
    `AccessConditionThreshold` INT,
    `AccessConditionType` VARCHAR(20),
    `ResultId` BIGINT,
    `RepeatType` VARCHAR(10),
    `EmailWhenSatisfied` TINYINT(1),
    `EnableSchedule` TINYINT(1),
    `ScheduleType` VARCHAR(10),
    `ScheduleRepeatsEvery` INT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Intelligent Agent Run Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-log
CREATE TABLE `IntelligentAgentRunLog` (
    `AgentId` BIGINT,
    `AgentRunId` BIGINT NOT NULL,
    `IsPracticeRun` TINYINT(1),
    `IsRunNow` TINYINT(1),
    `NumUsers` INT,
    `NumUsersWithErrors` INT,
    `NumUsersWithInfos` INT,
    `NumUsersWithWarnings` INT,
    `RunUserId` INT,
    `RunDate` DATETIME(6),
    PRIMARY KEY (`AgentRunId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_IntelligentAgentRunLog_AgentId` ON `IntelligentAgentRunLog` (`AgentId`);
CREATE INDEX `IX_IntelligentAgentRunLog_RunUserId` ON `IntelligentAgentRunLog` (`RunUserId`);

-- Data set: Intelligent Agent Run Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-log
CREATE TABLE `IntelligentAgentRunLog_LOAD` (
    `AgentId` BIGINT,
    `AgentRunId` BIGINT NOT NULL,
    `IsPracticeRun` TINYINT(1),
    `IsRunNow` TINYINT(1),
    `NumUsers` INT,
    `NumUsersWithErrors` INT,
    `NumUsersWithInfos` INT,
    `NumUsersWithWarnings` INT,
    `RunUserId` INT,
    `RunDate` DATETIME(6),
    PRIMARY KEY (`AgentRunId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Intelligent Agent Run Users
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE `IntelligentAgentRunUsers` (
    `AgentId` BIGINT NOT NULL,
    `AgentRunId` BIGINT NOT NULL,
    `UserId` INT NOT NULL,
    `OrgUnitId` INT,
    `ActionTypeName` VARCHAR(50),
    `ActionHasError` TINYINT(1),
    `ActionHasInfo` TINYINT(1),
    `ActionHasWarning` TINYINT(1),
    `ShouldRetry` TINYINT(1),
    PRIMARY KEY (`AgentId`, `AgentRunId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_IntelligentAgentRunUsers_AgentRunId` ON `IntelligentAgentRunUsers` (`AgentRunId`);
CREATE INDEX `IX_IntelligentAgentRunUsers_UserId` ON `IntelligentAgentRunUsers` (`UserId`);
CREATE INDEX `IX_IntelligentAgentRunUsers_OrgUnitId` ON `IntelligentAgentRunUsers` (`OrgUnitId`);

-- Data set: Intelligent Agent Run Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE `IntelligentAgentRunUsers_LOAD` (
    `AgentId` BIGINT NOT NULL,
    `AgentRunId` BIGINT NOT NULL,
    `UserId` INT NOT NULL,
    `OrgUnitId` INT,
    `ActionTypeName` VARCHAR(50),
    `ActionHasError` TINYINT(1),
    `ActionHasInfo` TINYINT(1),
    `ActionHasWarning` TINYINT(1),
    `ShouldRetry` TINYINT(1),
    PRIMARY KEY (`AgentId`, `AgentRunId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: JIT Provisioned Users Log
-- Source: https://community.d2l.com/brightspace/kb/articles/5782-jit-provisioning-data-sets#jit-provisioned-users-log
CREATE TABLE `JITProvisionedUsersLog` (
    `UserId` INT NOT NULL,
    `MappingField` VARCHAR(32),
    `MappingFieldValue` VARCHAR(270),
    `ProviderType` VARCHAR(32),
    `ProviderId` TEXT,
    `RoleId` INT,
    `Timestamp` DATETIME(6) NOT NULL,
    `Action` VARCHAR(16),
    PRIMARY KEY (`UserId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_JITProvisionedUsersLog_RoleId` ON `JITProvisionedUsersLog` (`RoleId`);

-- Data set: JIT Provisioned Users Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/5782-jit-provisioning-data-sets#jit-provisioned-users-log
CREATE TABLE `JITProvisionedUsersLog_LOAD` (
    `UserId` INT NOT NULL,
    `MappingField` VARCHAR(32),
    `MappingFieldValue` VARCHAR(270),
    `ProviderType` VARCHAR(32),
    `ProviderId` TEXT,
    `RoleId` INT,
    `Timestamp` DATETIME(6) NOT NULL,
    `Action` VARCHAR(16),
    PRIMARY KEY (`UserId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: LTI Advantage Deployment Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-deployment-audit
CREATE TABLE `LTIAdvantageDeploymentAudit` (
    `Action` VARCHAR(10),
    `DeploymentID` VARCHAR(36) NOT NULL,
    `ClientID` VARCHAR(36),
    `DeploymentName` VARCHAR(200),
    `IsDeploymentEnabled` TINYINT(1),
    `HasAssignmentsAndGrades` TINYINT(1),
    `HasDeepLinking` TINYINT(1),
    `HasNamesAndRoles` TINYINT(1),
    `HasSubmissionReview` TINYINT(1),
    `HasActivityItemProfile` TINYINT(1),
    `HasPlatformNotificationService` TINYINT(1),
    `HasContextCopy` TINYINT(1),
    `ModifiedBy` BIGINT,
    `Anonymous` TINYINT(1),
    `PreProvisioningEnabled` TINYINT(1),
    `SendOrgUnitInfo` TINYINT(1),
    `SendUserFirstName` TINYINT(1),
    `SendUserMiddleName` TINYINT(1),
    `SendUserLastName` TINYINT(1),
    `SendUserEmail` TINYINT(1),
    `SendBrightspaceUserID` TINYINT(1),
    `SendBrightspaceUsername` TINYINT(1),
    `SendBrightspaceOrgDefinedId` TINYINT(1),
    `SendLinkTitle` TINYINT(1),
    `SendLinkDescription` TINYINT(1),
    `OpenAsExternal` TINYINT(1),
    `AutoMigrateLinks` TINYINT(1),
    `IsSharedToManyOrgUnits` TINYINT(1),
    `AutoCreateGrades` TINYINT(1),
    `IncludeInFinalGrade` TINYINT(1),
    `Timestamp` DATETIME(6) NOT NULL,
    `HasAssetProcessor` TINYINT(1),
    PRIMARY KEY (`DeploymentID`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LTIAdvantageDeploymentAudit_ClientID` ON `LTIAdvantageDeploymentAudit` (`ClientID`);
CREATE INDEX `IX_LTIAdvantageDeploymentAudit_ModifiedBy` ON `LTIAdvantageDeploymentAudit` (`ModifiedBy`);

-- Data set: LTI Advantage Deployment Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-deployment-audit
CREATE TABLE `LTIAdvantageDeploymentAudit_LOAD` (
    `Action` VARCHAR(10),
    `DeploymentID` VARCHAR(36) NOT NULL,
    `ClientID` VARCHAR(36),
    `DeploymentName` VARCHAR(200),
    `IsDeploymentEnabled` TINYINT(1),
    `HasAssignmentsAndGrades` TINYINT(1),
    `HasDeepLinking` TINYINT(1),
    `HasNamesAndRoles` TINYINT(1),
    `HasSubmissionReview` TINYINT(1),
    `HasActivityItemProfile` TINYINT(1),
    `HasPlatformNotificationService` TINYINT(1),
    `HasContextCopy` TINYINT(1),
    `ModifiedBy` BIGINT,
    `Anonymous` TINYINT(1),
    `PreProvisioningEnabled` TINYINT(1),
    `SendOrgUnitInfo` TINYINT(1),
    `SendUserFirstName` TINYINT(1),
    `SendUserMiddleName` TINYINT(1),
    `SendUserLastName` TINYINT(1),
    `SendUserEmail` TINYINT(1),
    `SendBrightspaceUserID` TINYINT(1),
    `SendBrightspaceUsername` TINYINT(1),
    `SendBrightspaceOrgDefinedId` TINYINT(1),
    `SendLinkTitle` TINYINT(1),
    `SendLinkDescription` TINYINT(1),
    `OpenAsExternal` TINYINT(1),
    `AutoMigrateLinks` TINYINT(1),
    `IsSharedToManyOrgUnits` TINYINT(1),
    `AutoCreateGrades` TINYINT(1),
    `IncludeInFinalGrade` TINYINT(1),
    `Timestamp` DATETIME(6) NOT NULL,
    `HasAssetProcessor` TINYINT(1),
    PRIMARY KEY (`DeploymentID`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: LTI Advantage Registration Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-registration-audit
CREATE TABLE `LTIAdvantageRegistrationAudit` (
    `Action` VARCHAR(10),
    `ClientId` VARCHAR(255) NOT NULL,
    `ToolName` VARCHAR(200),
    `Domain` TEXT,
    `RedirectURLs` TEXT,
    `KeysetURL` VARCHAR(255),
    `LoginURL` VARCHAR(255),
    `LTIVersion` VARCHAR(12),
    `IsRegistrationEnabled` TINYINT(1),
    `SendInstitutionRole` TINYINT(1),
    `TargetLinkURI` VARCHAR(255),
    `ModifiedBy` BIGINT,
    `HasAssignmentAndGradeServices` TINYINT(1),
    `HasSubmissionReview` TINYINT(1),
    `HasDeepLinking` TINYINT(1),
    `HasNamesAndRoleProvisioningServices` TINYINT(1),
    `HasActivityItemProfile` TINYINT(1),
    `HasPlatformNotificationService` TINYINT(1),
    `Timestamp` DATETIME(6) NOT NULL,
    `HasAssetProcessor` TINYINT(1),
    PRIMARY KEY (`ClientId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LTIAdvantageRegistrationAudit_ModifiedBy` ON `LTIAdvantageRegistrationAudit` (`ModifiedBy`);

-- Data set: LTI Advantage Registration Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-registration-audit
CREATE TABLE `LTIAdvantageRegistrationAudit_LOAD` (
    `Action` VARCHAR(10),
    `ClientId` VARCHAR(255) NOT NULL,
    `ToolName` VARCHAR(200),
    `Domain` TEXT,
    `RedirectURLs` TEXT,
    `KeysetURL` VARCHAR(255),
    `LoginURL` VARCHAR(255),
    `LTIVersion` VARCHAR(12),
    `IsRegistrationEnabled` TINYINT(1),
    `SendInstitutionRole` TINYINT(1),
    `TargetLinkURI` VARCHAR(255),
    `ModifiedBy` BIGINT,
    `HasAssignmentAndGradeServices` TINYINT(1),
    `HasSubmissionReview` TINYINT(1),
    `HasDeepLinking` TINYINT(1),
    `HasNamesAndRoleProvisioningServices` TINYINT(1),
    `HasActivityItemProfile` TINYINT(1),
    `HasPlatformNotificationService` TINYINT(1),
    `Timestamp` DATETIME(6) NOT NULL,
    `HasAssetProcessor` TINYINT(1),
    PRIMARY KEY (`ClientId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: LTI Launches
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-launches
CREATE TABLE `LTILaunches` (
    `LTILaunchId` CHAR(36) NOT NULL,
    `UserId` INT,
    `IMSRoleNames` TEXT,
    `ImpersonatingUserId` BIGINT,
    `ImpersonatingUserIMSRoleNames` TEXT,
    `LaunchDate` DATETIME(6),
    `OrgUnitId` BIGINT,
    `LTILinkId` BIGINT,
    `DeploymentId` CHAR(36),
    `ClientId` CHAR(36),
    `ToolProviderId` VARCHAR(300),
    `ContentTopicId` BIGINT,
    `ParentModuleId` BIGINT,
    `Placement` VARCHAR(10),
    `MessageVersion` VARCHAR(10),
    `RequestType` VARCHAR(30),
    PRIMARY KEY (`LTILaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LTILaunches_LTILinkId` ON `LTILaunches` (`LTILinkId`);

-- Data set: LTI Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-launches
CREATE TABLE `LTILaunches_LOAD` (
    `LTILaunchId` CHAR(36) NOT NULL,
    `UserId` INT,
    `IMSRoleNames` TEXT,
    `ImpersonatingUserId` BIGINT,
    `ImpersonatingUserIMSRoleNames` TEXT,
    `LaunchDate` DATETIME(6),
    `OrgUnitId` BIGINT,
    `LTILinkId` BIGINT,
    `DeploymentId` CHAR(36),
    `ClientId` CHAR(36),
    `ToolProviderId` VARCHAR(300),
    `ContentTopicId` BIGINT,
    `ParentModuleId` BIGINT,
    `Placement` VARCHAR(10),
    `MessageVersion` VARCHAR(10),
    `RequestType` VARCHAR(30),
    PRIMARY KEY (`LTILaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: LTI Link Migration Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-link-migration-audit
CREATE TABLE `LTILinkMigrationAudit` (
    `LTIMigrationId` CHAR(36) NOT NULL,
    `UserId` BIGINT,
    `MigrationDate` DATETIME(6),
    `OrgUnitId` BIGINT,
    `LinkId` BIGINT,
    `LinkURL` TEXT,
    `LinkName` VARCHAR(200),
    `ClientId` VARCHAR(255),
    `RegistrationDomain` TEXT,
    `DeploymentId` CHAR(36),
    `JobId` BIGINT,
    `Status` SMALLINT,
    `FailureCode` SMALLINT,
    `MigrationType` SMALLINT,
    `LegacyURL` TEXT,
    PRIMARY KEY (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LTILinkMigrationAudit_UserId` ON `LTILinkMigrationAudit` (`UserId`);
CREATE INDEX `IX_LTILinkMigrationAudit_OrgUnitId` ON `LTILinkMigrationAudit` (`OrgUnitId`);
CREATE INDEX `IX_LTILinkMigrationAudit_LinkId` ON `LTILinkMigrationAudit` (`LinkId`);

-- Data set: LTI Link Migration Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-link-migration-audit
CREATE TABLE `LTILinkMigrationAudit_LOAD` (
    `LTIMigrationId` CHAR(36) NOT NULL,
    `UserId` BIGINT,
    `MigrationDate` DATETIME(6),
    `OrgUnitId` BIGINT,
    `LinkId` BIGINT,
    `LinkURL` TEXT,
    `LinkName` VARCHAR(200),
    `ClientId` VARCHAR(255),
    `RegistrationDomain` TEXT,
    `DeploymentId` CHAR(36),
    `JobId` BIGINT,
    `Status` SMALLINT,
    `FailureCode` SMALLINT,
    `MigrationType` SMALLINT,
    `LegacyURL` TEXT,
    PRIMARY KEY (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: LTI Links
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-links
CREATE TABLE `LTILinks` (
    `LtiLinkId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Title` VARCHAR(200),
    `LinkType` INT,
    `LTIVersion` VARCHAR(12),
    `Url` TEXT,
    `Description` VARCHAR(1000),
    `IsVisible` TINYINT(1),
    `SendTCInfo` TINYINT(1),
    `SendContextInfo` TINYINT(1),
    `SendCourseInfo` TINYINT(1),
    `SendOrgUnitInfo` TINYINT(1),
    `SendUserId` TINYINT(1),
    `SendUserName` TINYINT(1),
    `SendUserEmail` TINYINT(1),
    `SendLinkTitle` TINYINT(1),
    `SendLinkDescription` TINYINT(1),
    `SendD2LUserName` TINYINT(1),
    `SendD2LOrgDefinedId` TINYINT(1),
    `SendD2LOrgRoleId` TINYINT(1),
    `SendBrightspaceUserId` TINYINT(1),
    `Anonymous` TINYINT(1),
    `Shared` TINYINT(1),
    `UseToolProviderSecuritySettings` TINYINT(1),
    `LastModifiedDate` DATETIME(6),
    `OuAvailabilitySetId` BIGINT,
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `DeploymentId` CHAR(36),
    `LinkSubType` INT,
    PRIMARY KEY (`LtiLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LTILinks_OrgUnitId` ON `LTILinks` (`OrgUnitId`);
CREATE INDEX `IX_LTILinks_LastModifiedBy` ON `LTILinks` (`LastModifiedBy`);
CREATE INDEX `IX_LTILinks_DeploymentId` ON `LTILinks` (`DeploymentId`);

-- Data set: LTI Links (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-links
CREATE TABLE `LTILinks_LOAD` (
    `LtiLinkId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `Title` VARCHAR(200),
    `LinkType` INT,
    `LTIVersion` VARCHAR(12),
    `Url` TEXT,
    `Description` VARCHAR(1000),
    `IsVisible` TINYINT(1),
    `SendTCInfo` TINYINT(1),
    `SendContextInfo` TINYINT(1),
    `SendCourseInfo` TINYINT(1),
    `SendOrgUnitInfo` TINYINT(1),
    `SendUserId` TINYINT(1),
    `SendUserName` TINYINT(1),
    `SendUserEmail` TINYINT(1),
    `SendLinkTitle` TINYINT(1),
    `SendLinkDescription` TINYINT(1),
    `SendD2LUserName` TINYINT(1),
    `SendD2LOrgDefinedId` TINYINT(1),
    `SendD2LOrgRoleId` TINYINT(1),
    `SendBrightspaceUserId` TINYINT(1),
    `Anonymous` TINYINT(1),
    `Shared` TINYINT(1),
    `UseToolProviderSecuritySettings` TINYINT(1),
    `LastModifiedDate` DATETIME(6),
    `OuAvailabilitySetId` BIGINT,
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `DeploymentId` CHAR(36),
    `LinkSubType` INT,
    PRIMARY KEY (`LtiLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Local Authentication Security Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4714-local-authentication-data-sets#local-authentication-security-log
CREATE TABLE `LocalAuthenticationSecurityLog` (
    `UserId` INT NOT NULL,
    `Action` VARCHAR(70) NOT NULL,
    `ModifiedBy` INT NOT NULL,
    `ModifiedDate` DATETIME(6) NOT NULL,
    PRIMARY KEY (`UserId`, `Action`, `ModifiedBy`, `ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LocalAuthenticationSecurityLog_ModifiedBy` ON `LocalAuthenticationSecurityLog` (`ModifiedBy`);

-- Data set: Local Authentication Security Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4714-local-authentication-data-sets#local-authentication-security-log
CREATE TABLE `LocalAuthenticationSecurityLog_LOAD` (
    `UserId` INT NOT NULL,
    `Action` VARCHAR(70) NOT NULL,
    `ModifiedBy` INT NOT NULL,
    `ModifiedDate` DATETIME(6) NOT NULL,
    PRIMARY KEY (`UserId`, `Action`, `ModifiedBy`, `ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Media Consumption Log
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-consumption-log
CREATE TABLE `MediaConsumptionLog` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `ContentId` CHAR(36),
    `RevisionId` CHAR(36),
    `ContentType` VARCHAR(5),
    `ClientApp` VARCHAR(32),
    `DateConsumed` DATETIME(6),
    `DurationPercentageWatched` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_MediaConsumptionLog_UserId` ON `MediaConsumptionLog` (`UserId`);
CREATE INDEX `IX_MediaConsumptionLog_ContentId` ON `MediaConsumptionLog` (`ContentId`);

-- Data set: Media Consumption Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-consumption-log
CREATE TABLE `MediaConsumptionLog_LOAD` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `ContentId` CHAR(36),
    `RevisionId` CHAR(36),
    `ContentType` VARCHAR(5),
    `ClientApp` VARCHAR(32),
    `DateConsumed` DATETIME(6),
    `DurationPercentageWatched` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Media Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE `MediaObjects` (
    `ContentId` CHAR(36) NOT NULL,
    `Title` VARCHAR(1000),
    `RevisionCount` INT,
    `OwnerId` INT,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_MediaObjects_OwnerId` ON `MediaObjects` (`OwnerId`);

-- Data set: Media Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE `MediaObjects_LOAD` (
    `ContentId` CHAR(36) NOT NULL,
    `Title` VARCHAR(1000),
    `RevisionCount` INT,
    `OwnerId` INT,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Organizational Unit Ancestors
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE `OrganizationalUnitAncestors` (
    `OrgUnitId` INT NOT NULL,
    `AncestorOrgUnitId` INT NOT NULL,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `AncestorOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitAncestors_AncestorOrgUnitId` ON `OrganizationalUnitAncestors` (`AncestorOrgUnitId`);

-- Data set: Organizational Unit Ancestors (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE `OrganizationalUnitAncestors_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `AncestorOrgUnitId` INT NOT NULL,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `AncestorOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Organizational Unit Descendants
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-descendants
CREATE TABLE `OrganizationalUnitDescendants` (
    `OrgUnitId` INT NOT NULL,
    `DescendantOrgUnitId` INT NOT NULL,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `DescendantOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitDescendants_DescendantOrgUnitId` ON `OrganizationalUnitDescendants` (`DescendantOrgUnitId`);

-- Data set: Organizational Unit Descendants (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-descendants
CREATE TABLE `OrganizationalUnitDescendants_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `DescendantOrgUnitId` INT NOT NULL,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `DescendantOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Organizational Unit Parents
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE `OrganizationalUnitParents` (
    `OrgUnitId` INT NOT NULL,
    `ParentOrgUnitId` INT NOT NULL,
    `RowVersion` BIGINT,
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `ParentOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitParents_ParentOrgUnitId` ON `OrganizationalUnitParents` (`ParentOrgUnitId`);

-- Data set: Organizational Unit Parents (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE `OrganizationalUnitParents_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `ParentOrgUnitId` INT NOT NULL,
    `RowVersion` BIGINT,
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `ParentOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Organizational Unit Recent Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE `OrganizationalUnitRecentAccess` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `LastAccessedDate` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OrganizationalUnitRecentAccess_UserId` ON `OrganizationalUnitRecentAccess` (`UserId`);

-- Data set: Organizational Unit Recent Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE `OrganizationalUnitRecentAccess_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `LastAccessedDate` DATETIME(6),
    PRIMARY KEY (`OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Organizational Units
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-units
CREATE TABLE `OrganizationalUnits` (
    `OrgUnitId` INT NOT NULL,
    `Organization` VARCHAR(50),
    `Type` VARCHAR(50),
    `Name` VARCHAR(128),
    `Code` VARCHAR(50),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsActive` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `RecycledDate` DATETIME(6),
    `Version` BIGINT,
    `OrgUnitTypeId` INT,
    PRIMARY KEY (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Organizational Units (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-units
CREATE TABLE `OrganizationalUnits_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `Organization` VARCHAR(50),
    `Type` VARCHAR(50),
    `Name` VARCHAR(128),
    `Code` VARCHAR(50),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsActive` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `RecycledDate` DATETIME(6),
    `Version` BIGINT,
    `OrgUnitTypeId` INT,
    PRIMARY KEY (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcome Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcome-details
CREATE TABLE `OutcomeDetails` (
    `OutcomeId` CHAR(36) NOT NULL,
    `OutcomeDefinitionSource` VARCHAR(1000),
    `OutcomeDefinitionId` VARCHAR(128),
    `ParentOutcomeId` CHAR(36),
    `Description` VARCHAR(1000),
    `Notation` VARCHAR(1000),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OutcomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomeDetails_CreatedBy` ON `OutcomeDetails` (`CreatedBy`);
CREATE INDEX `IX_OutcomeDetails_LastModifiedBy` ON `OutcomeDetails` (`LastModifiedBy`);

-- Data set: Outcome Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcome-details
CREATE TABLE `OutcomeDetails_LOAD` (
    `OutcomeId` CHAR(36) NOT NULL,
    `OutcomeDefinitionSource` VARCHAR(1000),
    `OutcomeDefinitionId` VARCHAR(128),
    `ParentOutcomeId` CHAR(36),
    `Description` VARCHAR(1000),
    `Notation` VARCHAR(1000),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OutcomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Aligned to Tool Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-aligned-to-tool-objects
CREATE TABLE `OutcomesAlignedToToolObjects` (
    `ObjectType` INT NOT NULL,
    `ObjectId` VARCHAR(255) NOT NULL,
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AIUtilization` INT,
    PRIMARY KEY (`ObjectType`, `ObjectId`, `OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesAlignedToToolObjects_ObjectId` ON `OutcomesAlignedToToolObjects` (`ObjectId`);
CREATE INDEX `IX_OutcomesAlignedToToolObjects_CreatedBy` ON `OutcomesAlignedToToolObjects` (`CreatedBy`);
CREATE INDEX `IX_OutcomesAlignedToToolObjects_LastModifiedBy` ON `OutcomesAlignedToToolObjects` (`LastModifiedBy`);

-- Data set: Outcomes Aligned to Tool Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-aligned-to-tool-objects
CREATE TABLE `OutcomesAlignedToToolObjects_LOAD` (
    `ObjectType` INT NOT NULL,
    `ObjectId` VARCHAR(255) NOT NULL,
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AIUtilization` INT,
    PRIMARY KEY (`ObjectType`, `ObjectId`, `OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Assessed Checkpoints
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-assessed-checkpoints
CREATE TABLE `OutcomesAssessedCheckpoints` (
    `CheckpointId` CHAR(36) NOT NULL,
    `DemonstrationId` CHAR(36) NOT NULL,
    `Feedback` VARCHAR(1000),
    `ConfigDecayRate` INT,
    `ConfigAggregationMethod` INT,
    `ConfigIncludedActivities` INT,
    `ConfigMultipleAttemptStrategy` INT,
    `ConfigRecentlyAssessedActivityCount` INT,
    `ConfigTieBreaker` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `HasMetAchievementThreshold` TINYINT(1),
    `AchievedLevelId` CHAR(36),
    PRIMARY KEY (`CheckpointId`, `DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesAssessedCheckpoints_DemonstrationId` ON `OutcomesAssessedCheckpoints` (`DemonstrationId`);

-- Data set: Outcomes Assessed Checkpoints (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-assessed-checkpoints
CREATE TABLE `OutcomesAssessedCheckpoints_LOAD` (
    `CheckpointId` CHAR(36) NOT NULL,
    `DemonstrationId` CHAR(36) NOT NULL,
    `Feedback` VARCHAR(1000),
    `ConfigDecayRate` INT,
    `ConfigAggregationMethod` INT,
    `ConfigIncludedActivities` INT,
    `ConfigMultipleAttemptStrategy` INT,
    `ConfigRecentlyAssessedActivityCount` INT,
    `ConfigTieBreaker` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `HasMetAchievementThreshold` TINYINT(1),
    `AchievedLevelId` CHAR(36),
    PRIMARY KEY (`CheckpointId`, `DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Course Specific Scales
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE `OutcomesCourseSpecificScales` (
    `OrgUnitId` INT NOT NULL,
    `RegistryId` CHAR(36),
    `ScaleId` CHAR(36),
    `AchievementThreshold` CHAR(36),
    `CreatedDate` DATETIME(6),
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesCourseSpecificScales_RegistryId` ON `OutcomesCourseSpecificScales` (`RegistryId`);
CREATE INDEX `IX_OutcomesCourseSpecificScales_ScaleId` ON `OutcomesCourseSpecificScales` (`ScaleId`);
CREATE INDEX `IX_OutcomesCourseSpecificScales_AchievementThreshold` ON `OutcomesCourseSpecificScales` (`AchievementThreshold`);
CREATE INDEX `IX_OutcomesCourseSpecificScales_LastModifiedBy` ON `OutcomesCourseSpecificScales` (`LastModifiedBy`);

-- Data set: Outcomes Course Specific Scales (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE `OutcomesCourseSpecificScales_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `RegistryId` CHAR(36),
    `ScaleId` CHAR(36),
    `AchievementThreshold` CHAR(36),
    `CreatedDate` DATETIME(6),
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Demonstrations
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE `OutcomesDemonstrations` (
    `DemonstrationId` CHAR(36) NOT NULL,
    `ExplicitlyEnteredScaleLevelId` CHAR(36),
    `AutomaticallyGeneratedScaleLevelId` CHAR(36),
    `AlignedObjectType` INT,
    `AlignedObjectId` VARCHAR(1000),
    `OutcomeId` CHAR(36),
    `RegistryId` CHAR(36),
    `IsPublished` TINYINT(1),
    `AssessedUserId` INT,
    `AssessedDate` DATETIME(6),
    `AssessorUserId` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesDemonstrations_ExplicitlyEnteredScaleLevelId` ON `OutcomesDemonstrations` (`ExplicitlyEnteredScaleLevelId`);
CREATE INDEX `IX_OutcomesDemonstrations_AutomaticallyGeneratedScaleLevelId` ON `OutcomesDemonstrations` (`AutomaticallyGeneratedScaleLevelId`);
CREATE INDEX `IX_OutcomesDemonstrations_AssessedUserId` ON `OutcomesDemonstrations` (`AssessedUserId`);
CREATE INDEX `IX_OutcomesDemonstrations_AssessorUserId` ON `OutcomesDemonstrations` (`AssessorUserId`);
CREATE INDEX `IX_OutcomesDemonstrations_LastModifiedBy` ON `OutcomesDemonstrations` (`LastModifiedBy`);

-- Data set: Outcomes Demonstrations (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE `OutcomesDemonstrations_LOAD` (
    `DemonstrationId` CHAR(36) NOT NULL,
    `ExplicitlyEnteredScaleLevelId` CHAR(36),
    `AutomaticallyGeneratedScaleLevelId` CHAR(36),
    `AlignedObjectType` INT,
    `AlignedObjectId` VARCHAR(1000),
    `OutcomeId` CHAR(36),
    `RegistryId` CHAR(36),
    `IsPublished` TINYINT(1),
    `AssessedUserId` INT,
    `AssessedDate` DATETIME(6),
    `AssessorUserId` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Rubric Alignments
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-rubric-alignments
CREATE TABLE `OutcomesRubricAlignments` (
    `RubricId` BIGINT NOT NULL,
    `CriterionId` BIGINT NOT NULL,
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`RubricId`, `CriterionId`, `OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesRubricAlignments_CriterionId` ON `OutcomesRubricAlignments` (`CriterionId`);
CREATE INDEX `IX_OutcomesRubricAlignments_OutcomeId` ON `OutcomesRubricAlignments` (`OutcomeId`);
CREATE INDEX `IX_OutcomesRubricAlignments_RegistryId` ON `OutcomesRubricAlignments` (`RegistryId`);
CREATE INDEX `IX_OutcomesRubricAlignments_CreatedBy` ON `OutcomesRubricAlignments` (`CreatedBy`);
CREATE INDEX `IX_OutcomesRubricAlignments_LastModifiedBy` ON `OutcomesRubricAlignments` (`LastModifiedBy`);

-- Data set: Outcomes Rubric Alignments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-rubric-alignments
CREATE TABLE `OutcomesRubricAlignments_LOAD` (
    `RubricId` BIGINT NOT NULL,
    `CriterionId` BIGINT NOT NULL,
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`RubricId`, `CriterionId`, `OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Scale Definition
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-definition
CREATE TABLE `OutcomesScaleDefinition` (
    `ScaleId` CHAR(36) NOT NULL,
    `Name` VARCHAR(1000),
    `IsDefault` TINYINT(1),
    `UsePercentages` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AchievementThreshold` CHAR(36),
    PRIMARY KEY (`ScaleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesScaleDefinition_CreatedBy` ON `OutcomesScaleDefinition` (`CreatedBy`);
CREATE INDEX `IX_OutcomesScaleDefinition_LastModifiedBy` ON `OutcomesScaleDefinition` (`LastModifiedBy`);
CREATE INDEX `IX_OutcomesScaleDefinition_AchievementThreshold` ON `OutcomesScaleDefinition` (`AchievementThreshold`);

-- Data set: Outcomes Scale Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-definition
CREATE TABLE `OutcomesScaleDefinition_LOAD` (
    `ScaleId` CHAR(36) NOT NULL,
    `Name` VARCHAR(1000),
    `IsDefault` TINYINT(1),
    `UsePercentages` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AchievementThreshold` CHAR(36),
    PRIMARY KEY (`ScaleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Scale Level Definition
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE `OutcomesScaleLevelDefinition` (
    `ScaleLevelId` CHAR(36) NOT NULL,
    `ScaleId` CHAR(36),
    `Name` VARCHAR(1000),
    `SortOrder` INT,
    `PercentageRangeStart` INT,
    `RGB` VARCHAR(40),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesScaleLevelDefinition_ScaleId` ON `OutcomesScaleLevelDefinition` (`ScaleId`);
CREATE INDEX `IX_OutcomesScaleLevelDefinition_CreatedBy` ON `OutcomesScaleLevelDefinition` (`CreatedBy`);
CREATE INDEX `IX_OutcomesScaleLevelDefinition_LastModifiedBy` ON `OutcomesScaleLevelDefinition` (`LastModifiedBy`);

-- Data set: Outcomes Scale Level Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE `OutcomesScaleLevelDefinition_LOAD` (
    `ScaleLevelId` CHAR(36) NOT NULL,
    `ScaleId` CHAR(36),
    `Name` VARCHAR(1000),
    `SortOrder` INT,
    `PercentageRangeStart` INT,
    `RGB` VARCHAR(40),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Set Course
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-course
CREATE TABLE `OutcomesSetCourse` (
    `RegistryId` CHAR(36) NOT NULL,
    `OrgUnitId` BIGINT,
    `SourceOutcomeSetId` BIGINT,
    `IsPrimary` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `ScaleId` CHAR(36),
    `AchievementThreshold` CHAR(36),
    PRIMARY KEY (`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesSetCourse_OrgUnitId` ON `OutcomesSetCourse` (`OrgUnitId`);
CREATE INDEX `IX_OutcomesSetCourse_SourceOutcomeSetId` ON `OutcomesSetCourse` (`SourceOutcomeSetId`);
CREATE INDEX `IX_OutcomesSetCourse_CreatedBy` ON `OutcomesSetCourse` (`CreatedBy`);
CREATE INDEX `IX_OutcomesSetCourse_LastModifiedBy` ON `OutcomesSetCourse` (`LastModifiedBy`);
CREATE INDEX `IX_OutcomesSetCourse_ScaleId` ON `OutcomesSetCourse` (`ScaleId`);
CREATE INDEX `IX_OutcomesSetCourse_AchievementThreshold` ON `OutcomesSetCourse` (`AchievementThreshold`);

-- Data set: Outcomes Set Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-course
CREATE TABLE `OutcomesSetCourse_LOAD` (
    `RegistryId` CHAR(36) NOT NULL,
    `OrgUnitId` BIGINT,
    `SourceOutcomeSetId` BIGINT,
    `IsPrimary` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `ScaleId` CHAR(36),
    `AchievementThreshold` CHAR(36),
    PRIMARY KEY (`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes Set Org
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE `OutcomesSetOrg` (
    `OutcomeSetId` BIGINT NOT NULL,
    `OutcomeSetName` VARCHAR(256),
    `RegistryId` CHAR(36),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `ScaleId` CHAR(36),
    PRIMARY KEY (`OutcomeSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesSetOrg_CreatedBy` ON `OutcomesSetOrg` (`CreatedBy`);
CREATE INDEX `IX_OutcomesSetOrg_LastModifiedBy` ON `OutcomesSetOrg` (`LastModifiedBy`);
CREATE INDEX `IX_OutcomesSetOrg_ScaleId` ON `OutcomesSetOrg` (`ScaleId`);

-- Data set: Outcomes Set Org (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE `OutcomesSetOrg_LOAD` (
    `OutcomeSetId` BIGINT NOT NULL,
    `OutcomeSetName` VARCHAR(256),
    `RegistryId` CHAR(36),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `ScaleId` CHAR(36),
    PRIMARY KEY (`OutcomeSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Outcomes in Registries
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-in-registries
CREATE TABLE `OutcomesInRegistries` (
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesInRegistries_CreatedBy` ON `OutcomesInRegistries` (`CreatedBy`);
CREATE INDEX `IX_OutcomesInRegistries_LastModifiedBy` ON `OutcomesInRegistries` (`LastModifiedBy`);

-- Data set: Outcomes in Registries (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-in-registries
CREATE TABLE `OutcomesInRegistries_LOAD` (
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Portfolio Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE `PortfolioCategories` (
    `CategoryId` CHAR(36) NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(256),
    `IsRetired` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_PortfolioCategories_OrgUnitId` ON `PortfolioCategories` (`OrgUnitId`);
CREATE INDEX `IX_PortfolioCategories_LastModifiedBy` ON `PortfolioCategories` (`LastModifiedBy`);

-- Data set: Portfolio Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE `PortfolioCategories_LOAD` (
    `CategoryId` CHAR(36) NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(256),
    `IsRetired` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Portfolio Evidence Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-categories
CREATE TABLE `PortfolioEvidenceCategories` (
    `CategoryId` CHAR(36) NOT NULL,
    `EvidenceId` CHAR(36) NOT NULL,
    `Group` VARCHAR(30) NOT NULL,
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`CategoryId`, `EvidenceId`, `Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_PortfolioEvidenceCategories_EvidenceId` ON `PortfolioEvidenceCategories` (`EvidenceId`);
CREATE INDEX `IX_PortfolioEvidenceCategories_LastModifiedBy` ON `PortfolioEvidenceCategories` (`LastModifiedBy`);

-- Data set: Portfolio Evidence Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-categories
CREATE TABLE `PortfolioEvidenceCategories_LOAD` (
    `CategoryId` CHAR(36) NOT NULL,
    `EvidenceId` CHAR(36) NOT NULL,
    `Group` VARCHAR(30) NOT NULL,
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`CategoryId`, `EvidenceId`, `Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Portfolio Evidence Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE `PortfolioEvidenceLog` (
    `LogId` CHAR(36) NOT NULL,
    `ParentObjectId` CHAR(36),
    `ObjectId` CHAR(36),
    `ObjectType` VARCHAR(40),
    `UserId` INT,
    `OrgUnitId` INT,
    `Action` VARCHAR(16),
    `IsMobile` TINYINT(1),
    `ActionDate` DATETIME(6),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_PortfolioEvidenceLog_UserId` ON `PortfolioEvidenceLog` (`UserId`);
CREATE INDEX `IX_PortfolioEvidenceLog_OrgUnitId` ON `PortfolioEvidenceLog` (`OrgUnitId`);

-- Data set: Portfolio Evidence Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE `PortfolioEvidenceLog_LOAD` (
    `LogId` CHAR(36) NOT NULL,
    `ParentObjectId` CHAR(36),
    `ObjectId` CHAR(36),
    `ObjectType` VARCHAR(40),
    `UserId` INT,
    `OrgUnitId` INT,
    `Action` VARCHAR(16),
    `IsMobile` TINYINT(1),
    `ActionDate` DATETIME(6),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Portfolio Evidence Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-objects
CREATE TABLE `PortfolioEvidenceObjects` (
    `EvidenceId` CHAR(36) NOT NULL,
    `OwnerId` INT,
    `OrgUnitId` INT,
    `EvidenceType` VARCHAR(30),
    `Title` VARCHAR(1000),
    `IsApproved` TINYINT(1),
    `IsSpotlighted` TINYINT(1),
    `IsSharedToParents` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `IsRecoverableByInstructor` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsSharedWithInstructor` TINYINT(1),
    `DateSharedWithInstructor` DATETIME(6),
    PRIMARY KEY (`EvidenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_PortfolioEvidenceObjects_OwnerId` ON `PortfolioEvidenceObjects` (`OwnerId`);
CREATE INDEX `IX_PortfolioEvidenceObjects_OrgUnitId` ON `PortfolioEvidenceObjects` (`OrgUnitId`);
CREATE INDEX `IX_PortfolioEvidenceObjects_LastModifiedBy` ON `PortfolioEvidenceObjects` (`LastModifiedBy`);

-- Data set: Portfolio Evidence Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-objects
CREATE TABLE `PortfolioEvidenceObjects_LOAD` (
    `EvidenceId` CHAR(36) NOT NULL,
    `OwnerId` INT,
    `OrgUnitId` INT,
    `EvidenceType` VARCHAR(30),
    `Title` VARCHAR(1000),
    `IsApproved` TINYINT(1),
    `IsSpotlighted` TINYINT(1),
    `IsSharedToParents` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `IsRecoverableByInstructor` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsSharedWithInstructor` TINYINT(1),
    `DateSharedWithInstructor` DATETIME(6),
    PRIMARY KEY (`EvidenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: PreRequisite Conditions Met
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE `PreRequisiteConditionsMet` (
    `PreRequisiteId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `DateMet` DATETIME(6),
    `Action` VARCHAR(7),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`PreRequisiteId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_PreRequisiteConditionsMet_UserId` ON `PreRequisiteConditionsMet` (`UserId`);

-- Data set: PreRequisite Conditions Met (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE `PreRequisiteConditionsMet_LOAD` (
    `PreRequisiteId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `DateMet` DATETIME(6),
    `Action` VARCHAR(7),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`PreRequisiteId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Question Answer Options
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE `QuestionAnswerOptions` (
    `AnswerId` BIGINT NOT NULL,
    `AnswerText` VARCHAR(1000),
    `Weight` DECIMAL(19,9),
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerOptionId` INT NOT NULL,
    PRIMARY KEY (`AnswerId`, `QuestionId`, `QuestionVersionId`, `AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuestionAnswerOptions_QuestionId` ON `QuestionAnswerOptions` (`QuestionId`);
CREATE INDEX `IX_QuestionAnswerOptions_QuestionVersionId` ON `QuestionAnswerOptions` (`QuestionVersionId`);

-- Data set: Question Answer Options (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE `QuestionAnswerOptions_LOAD` (
    `AnswerId` BIGINT NOT NULL,
    `AnswerText` VARCHAR(1000),
    `Weight` DECIMAL(19,9),
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerOptionId` INT NOT NULL,
    PRIMARY KEY (`AnswerId`, `QuestionId`, `QuestionVersionId`, `AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Question Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE `QuestionAnswers` (
    `AnswerId` BIGINT NOT NULL,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `SortOrder` INT,
    `Weight` DECIMAL(19,9),
    `Answer` VARCHAR(1000),
    `Comment` VARCHAR(1000),
    `Description` VARCHAR(256),
    PRIMARY KEY (`AnswerId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuestionAnswers_QuestionId` ON `QuestionAnswers` (`QuestionId`);
CREATE INDEX `IX_QuestionAnswers_QuestionVersionId` ON `QuestionAnswers` (`QuestionVersionId`);

-- Data set: Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE `QuestionAnswers_LOAD` (
    `AnswerId` BIGINT NOT NULL,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `SortOrder` INT,
    `Weight` DECIMAL(19,9),
    `Answer` VARCHAR(1000),
    `Comment` VARCHAR(1000),
    `Description` VARCHAR(256),
    PRIMARY KEY (`AnswerId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Question Library
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-library
CREATE TABLE `QuestionLibrary` (
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `IsAutoGraded` TINYINT(1),
    `TemplateTypeId` INT,
    `QuestionType` VARCHAR(28),
    `Name` VARCHAR(256),
    `Question` VARCHAR(1000),
    `Comment` VARCHAR(1000),
    `AnswerKey` VARCHAR(1000),
    `CreationDate` DATETIME(6),
    `Version` BIGINT,
    `AllowsAttachments` TINYINT(1),
    `AIUtilization` INT,
    PRIMARY KEY (`QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Question Library (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-library
CREATE TABLE `QuestionLibrary_LOAD` (
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `IsAutoGraded` TINYINT(1),
    `TemplateTypeId` INT,
    `QuestionType` VARCHAR(28),
    `Name` VARCHAR(256),
    `Question` VARCHAR(1000),
    `Comment` VARCHAR(1000),
    `AnswerKey` VARCHAR(1000),
    `CreationDate` DATETIME(6),
    `Version` BIGINT,
    `AllowsAttachments` TINYINT(1),
    `AIUtilization` INT,
    PRIMARY KEY (`QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Question Pools
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE `QuestionPools` (
    `SectionId` BIGINT NOT NULL,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SectionId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuestionPools_QuestionId` ON `QuestionPools` (`QuestionId`);
CREATE INDEX `IX_QuestionPools_QuestionVersionId` ON `QuestionPools` (`QuestionVersionId`);

-- Data set: Question Pools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE `QuestionPools_LOAD` (
    `SectionId` BIGINT NOT NULL,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SectionId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Question Relationships
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-relationships
CREATE TABLE `QuestionRelationships` (
    `CollectionId` BIGINT,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `Order` BIGINT,
    `SectionId` BIGINT,
    `IsQuestionPool` TINYINT(1),
    `CreationDate` DATETIME(6),
    `CreatedBy` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` BIGINT,
    `Points` DECIMAL(19,9),
    `Difficulty` INT,
    `IsBonus` TINYINT(1),
    `IsMandatory` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    `ObjectId` BIGINT NOT NULL,
    PRIMARY KEY (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuestionRelationships_CollectionId` ON `QuestionRelationships` (`CollectionId`);
CREATE INDEX `IX_QuestionRelationships_QuestionId` ON `QuestionRelationships` (`QuestionId`);
CREATE INDEX `IX_QuestionRelationships_QuestionVersionId` ON `QuestionRelationships` (`QuestionVersionId`);

-- Data set: Question Relationships (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-relationships
CREATE TABLE `QuestionRelationships_LOAD` (
    `CollectionId` BIGINT,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `Order` BIGINT,
    `SectionId` BIGINT,
    `IsQuestionPool` TINYINT(1),
    `CreationDate` DATETIME(6),
    `CreatedBy` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` BIGINT,
    `Points` DECIMAL(19,9),
    `Difficulty` INT,
    `IsBonus` TINYINT(1),
    `IsMandatory` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    `ObjectId` BIGINT NOT NULL,
    PRIMARY KEY (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Quiz Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts
CREATE TABLE `QuizAttempts` (
    `AttemptId` BIGINT NOT NULL,
    `QuizId` BIGINT,
    `UserId` INT,
    `OrgUnitId` INT,
    `AttemptNumber` INT,
    `TimeStarted` DATETIME(6),
    `TimeCompleted` DATETIME(6),
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `OldAttemptNumber` INT,
    `IsDeleted` TINYINT(1),
    `PossibleScore` DECIMAL(19,9),
    `IsRetakeIncorrectOnly` TINYINT(1),
    `DueDate` DATETIME(6),
    `TimeLimit` INT,
    `TimeLimitEnforced` TINYINT(1),
    `TimeLimitExceededBehaviour` VARCHAR(128),
    `IsSynchronous` TINYINT(1),
    `DeductionPercentage` INT,
    `Version` BIGINT,
    PRIMARY KEY (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuizAttempts_QuizId` ON `QuizAttempts` (`QuizId`);
CREATE INDEX `IX_QuizAttempts_UserId` ON `QuizAttempts` (`UserId`);
CREATE INDEX `IX_QuizAttempts_OrgUnitId` ON `QuizAttempts` (`OrgUnitId`);

-- Data set: Quiz Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts
CREATE TABLE `QuizAttempts_LOAD` (
    `AttemptId` BIGINT NOT NULL,
    `QuizId` BIGINT,
    `UserId` INT,
    `OrgUnitId` INT,
    `AttemptNumber` INT,
    `TimeStarted` DATETIME(6),
    `TimeCompleted` DATETIME(6),
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `OldAttemptNumber` INT,
    `IsDeleted` TINYINT(1),
    `PossibleScore` DECIMAL(19,9),
    `IsRetakeIncorrectOnly` TINYINT(1),
    `DueDate` DATETIME(6),
    `TimeLimit` INT,
    `TimeLimitEnforced` TINYINT(1),
    `TimeLimitExceededBehaviour` VARCHAR(128),
    `IsSynchronous` TINYINT(1),
    `DeductionPercentage` INT,
    `Version` BIGINT,
    PRIMARY KEY (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Quiz Attempts Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts-log
CREATE TABLE `QuizAttemptsLog` (
    `LogId` BIGINT NOT NULL,
    `AttemptId` BIGINT,
    `EventTypeId` INT,
    `Name` VARCHAR(256),
    `Description` VARCHAR(256),
    `EventTime` DATETIME(6),
    `IPAddress` VARCHAR(45),
    `UserId` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuizAttemptsLog_AttemptId` ON `QuizAttemptsLog` (`AttemptId`);
CREATE INDEX `IX_QuizAttemptsLog_UserId` ON `QuizAttemptsLog` (`UserId`);

-- Data set: Quiz Attempts Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts-log
CREATE TABLE `QuizAttemptsLog_LOAD` (
    `LogId` BIGINT NOT NULL,
    `AttemptId` BIGINT,
    `EventTypeId` INT,
    `Name` VARCHAR(256),
    `Description` VARCHAR(256),
    `EventTime` DATETIME(6),
    `IPAddress` VARCHAR(45),
    `UserId` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Quiz Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-objects
CREATE TABLE `QuizObjects` (
    `QuizId` BIGINT NOT NULL,
    `QuizName` VARCHAR(256),
    `QuizDescription` VARCHAR(1000),
    `QuizCategory` VARCHAR(256),
    `IsActive` TINYINT(1),
    `OrgUnitId` INT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `CreationDate` DATETIME(6),
    `CreatedBy` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` BIGINT,
    `GradeObjectId` BIGINT,
    `OverallScoreCalculation` VARCHAR(23),
    `QuizScoreDenominator` DECIMAL(19,9),
    `HasPassword` TINYINT(1),
    `IPRestricted` TINYINT(1),
    `TimeLimit` INT,
    `TimeLimitEnforced` TINYINT(1),
    `AttemptsAllowed` INT,
    `PreventMovingBackwards` TINYINT(1),
    `AllowHints` TINYINT(1),
    `NotificationEmail` VARCHAR(1000),
    `DisablePagerAccess` TINYINT(1),
    `DisplayInCalendar` TINYINT(1),
    `IsAttemptRldb` TINYINT(1),
    `IsSubviewRldb` TINYINT(1),
    `SortOrder` INT,
    `CategoryId` BIGINT,
    `ResultId` BIGINT,
    `IsRetakeIncorrectOnly` TINYINT(1),
    `PagingTypeId` INT,
    `IsSynchronous` TINYINT(1),
    `DeductionPercentage` INT,
    `AIStudySupport` TINYINT(1),
    `HideQuestionPoints` TINYINT(1),
    `IsSingleSession` TINYINT(1),
    `HideAnnotationTools` TINYINT(1),
    PRIMARY KEY (`QuizId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuizObjects_OrgUnitId` ON `QuizObjects` (`OrgUnitId`);
CREATE INDEX `IX_QuizObjects_CreatedBy` ON `QuizObjects` (`CreatedBy`);
CREATE INDEX `IX_QuizObjects_LastModifiedBy` ON `QuizObjects` (`LastModifiedBy`);
CREATE INDEX `IX_QuizObjects_GradeObjectId` ON `QuizObjects` (`GradeObjectId`);
CREATE INDEX `IX_QuizObjects_ResultId` ON `QuizObjects` (`ResultId`);

-- Data set: Quiz Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-objects
CREATE TABLE `QuizObjects_LOAD` (
    `QuizId` BIGINT NOT NULL,
    `QuizName` VARCHAR(256),
    `QuizDescription` VARCHAR(1000),
    `QuizCategory` VARCHAR(256),
    `IsActive` TINYINT(1),
    `OrgUnitId` INT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DueDate` DATETIME(6),
    `CreationDate` DATETIME(6),
    `CreatedBy` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` BIGINT,
    `GradeObjectId` BIGINT,
    `OverallScoreCalculation` VARCHAR(23),
    `QuizScoreDenominator` DECIMAL(19,9),
    `HasPassword` TINYINT(1),
    `IPRestricted` TINYINT(1),
    `TimeLimit` INT,
    `TimeLimitEnforced` TINYINT(1),
    `AttemptsAllowed` INT,
    `PreventMovingBackwards` TINYINT(1),
    `AllowHints` TINYINT(1),
    `NotificationEmail` VARCHAR(1000),
    `DisablePagerAccess` TINYINT(1),
    `DisplayInCalendar` TINYINT(1),
    `IsAttemptRldb` TINYINT(1),
    `IsSubviewRldb` TINYINT(1),
    `SortOrder` INT,
    `CategoryId` BIGINT,
    `ResultId` BIGINT,
    `IsRetakeIncorrectOnly` TINYINT(1),
    `PagingTypeId` INT,
    `IsSynchronous` TINYINT(1),
    `DeductionPercentage` INT,
    `AIStudySupport` TINYINT(1),
    `HideQuestionPoints` TINYINT(1),
    `IsSingleSession` TINYINT(1),
    `HideAnnotationTools` TINYINT(1),
    PRIMARY KEY (`QuizId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Quiz Survey Sections
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-survey-sections
CREATE TABLE `QuizSurveySections` (
    `CollectionId` BIGINT,
    `SectionId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `NameIsDisplayed` TINYINT(1),
    `IsQuestionPool` TINYINT(1),
    `SectionText` VARCHAR(1000),
    `SectionTextIsHTML` TINYINT(1),
    `IsSectionTextHidden` TINYINT(1),
    `QuestionPoints` DECIMAL(19,9),
    `NumQuestions` INT,
    `NumChoices` INT,
    `Shuffle` TINYINT(1),
    `CreationDate` DATETIME(6),
    `CreatedBy` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` BIGINT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuizSurveySections_CollectionId` ON `QuizSurveySections` (`CollectionId`);
CREATE INDEX `IX_QuizSurveySections_CreatedBy` ON `QuizSurveySections` (`CreatedBy`);
CREATE INDEX `IX_QuizSurveySections_LastModifiedBy` ON `QuizSurveySections` (`LastModifiedBy`);

-- Data set: Quiz Survey Sections (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-survey-sections
CREATE TABLE `QuizSurveySections_LOAD` (
    `CollectionId` BIGINT,
    `SectionId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `NameIsDisplayed` TINYINT(1),
    `IsQuestionPool` TINYINT(1),
    `SectionText` VARCHAR(1000),
    `SectionTextIsHTML` TINYINT(1),
    `IsSectionTextHidden` TINYINT(1),
    `QuestionPoints` DECIMAL(19,9),
    `NumQuestions` INT,
    `NumChoices` INT,
    `Shuffle` TINYINT(1),
    `CreationDate` DATETIME(6),
    `CreatedBy` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` BIGINT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Quiz User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answer-responses
CREATE TABLE `QuizUserAnswerResponses` (
    `AttemptId` BIGINT NOT NULL,
    `AttemptNumber` INT,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerId` BIGINT NOT NULL,
    `SortOrder` INT,
    `IsCorrect` TINYINT(1),
    `UserSelection` BIGINT,
    `UserAnswer` VARCHAR(1000),
    `FileSetId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AttemptId`, `QuestionId`, `QuestionVersionId`, `AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuizUserAnswerResponses_QuestionId` ON `QuizUserAnswerResponses` (`QuestionId`);
CREATE INDEX `IX_QuizUserAnswerResponses_QuestionVersionId` ON `QuizUserAnswerResponses` (`QuestionVersionId`);
CREATE INDEX `IX_QuizUserAnswerResponses_AnswerId` ON `QuizUserAnswerResponses` (`AnswerId`);

-- Data set: Quiz User Answer Responses (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answer-responses
CREATE TABLE `QuizUserAnswerResponses_LOAD` (
    `AttemptId` BIGINT NOT NULL,
    `AttemptNumber` INT,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerId` BIGINT NOT NULL,
    `SortOrder` INT,
    `IsCorrect` TINYINT(1),
    `UserSelection` BIGINT,
    `UserAnswer` VARCHAR(1000),
    `FileSetId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AttemptId`, `QuestionId`, `QuestionVersionId`, `AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Quiz User Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answers
CREATE TABLE `QuizUserAnswers` (
    `AttemptId` BIGINT NOT NULL,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `TimeCompleted` DATETIME(6),
    `QuestionNumber` INT,
    `Comment` VARCHAR(1000),
    `SortOrder` INT,
    `Score` DECIMAL(19,9),
    `Page` INT,
    `SectionId` BIGINT,
    `ObjectId` BIGINT NOT NULL,
    `OutOf` DECIMAL(19,9),
    `TimeStarted` DATETIME(6),
    `IsBonus` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `QuizTimeCompleted` DATETIME(6),
    PRIMARY KEY (`AttemptId`, `ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuizUserAnswers_QuestionId` ON `QuizUserAnswers` (`QuestionId`);
CREATE INDEX `IX_QuizUserAnswers_QuestionVersionId` ON `QuizUserAnswers` (`QuestionVersionId`);
CREATE INDEX `IX_QuizUserAnswers_SectionId` ON `QuizUserAnswers` (`SectionId`);
CREATE INDEX `IX_QuizUserAnswers_LastModifiedBy` ON `QuizUserAnswers` (`LastModifiedBy`);

-- Data set: Quiz User Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answers
CREATE TABLE `QuizUserAnswers_LOAD` (
    `AttemptId` BIGINT NOT NULL,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `TimeCompleted` DATETIME(6),
    `QuestionNumber` INT,
    `Comment` VARCHAR(1000),
    `SortOrder` INT,
    `Score` DECIMAL(19,9),
    `Page` INT,
    `SectionId` BIGINT,
    `ObjectId` BIGINT NOT NULL,
    `OutOf` DECIMAL(19,9),
    `TimeStarted` DATETIME(6),
    `IsBonus` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `QuizTimeCompleted` DATETIME(6),
    PRIMARY KEY (`AttemptId`, `ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Release Condition Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-objects
CREATE TABLE `ReleaseConditionObjects` (
    `PreRequisiteId` INT NOT NULL,
    `ResultId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `Name` VARCHAR(64),
    `IsNegativeCondition` TINYINT(1),
    `PreRequisiteToolId` INT,
    `Id1` INT,
    `Id2` INT,
    `ResultToolId` INT,
    `UsesPercentage` TINYINT(1),
    `OperatorTypeDesc` VARCHAR(3),
    `Version` BIGINT,
    `Guid1` CHAR(36),
    `Guid2` CHAR(36),
    PRIMARY KEY (`PreRequisiteId`, `ResultId`, `OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ReleaseConditionObjects_OrgUnitId` ON `ReleaseConditionObjects` (`OrgUnitId`);
CREATE INDEX `IX_ReleaseConditionObjects_PreRequisiteToolId` ON `ReleaseConditionObjects` (`PreRequisiteToolId`);
CREATE INDEX `IX_ReleaseConditionObjects_ResultToolId` ON `ReleaseConditionObjects` (`ResultToolId`);

-- Data set: Release Condition Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-objects
CREATE TABLE `ReleaseConditionObjects_LOAD` (
    `PreRequisiteId` INT NOT NULL,
    `ResultId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `Name` VARCHAR(64),
    `IsNegativeCondition` TINYINT(1),
    `PreRequisiteToolId` INT,
    `Id1` INT,
    `Id2` INT,
    `ResultToolId` INT,
    `UsesPercentage` TINYINT(1),
    `OperatorTypeDesc` VARCHAR(3),
    `Version` BIGINT,
    `Guid1` CHAR(36),
    `Guid2` CHAR(36),
    PRIMARY KEY (`PreRequisiteId`, `ResultId`, `OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Release Condition Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE `ReleaseConditionResults` (
    `ResultId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `Met` VARCHAR(7),
    `Version` BIGINT,
    `DeletedDate` DATETIME(6),
    PRIMARY KEY (`ResultId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ReleaseConditionResults_UserId` ON `ReleaseConditionResults` (`UserId`);

-- Data set: Release Condition Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE `ReleaseConditionResults_LOAD` (
    `ResultId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `Met` VARCHAR(7),
    `Version` BIGINT,
    `DeletedDate` DATETIME(6),
    PRIMARY KEY (`ResultId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Reoffer Course
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE `ReofferCourse` (
    `CourseOfferingId` INT NOT NULL,
    `SourceCourseId` INT NOT NULL,
    `CreatedBy` INT,
    `ReofferDate` DATETIME(6),
    PRIMARY KEY (`CourseOfferingId`, `SourceCourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ReofferCourse_SourceCourseId` ON `ReofferCourse` (`SourceCourseId`);
CREATE INDEX `IX_ReofferCourse_CreatedBy` ON `ReofferCourse` (`CreatedBy`);

-- Data set: Reoffer Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE `ReofferCourse_LOAD` (
    `CourseOfferingId` INT NOT NULL,
    `SourceCourseId` INT NOT NULL,
    `CreatedBy` INT,
    `ReofferDate` DATETIME(6),
    PRIMARY KEY (`CourseOfferingId`, `SourceCourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Role Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4534-role-details-data-sets#role-details
CREATE TABLE `RoleDetails` (
    `RoleId` INT NOT NULL,
    `RoleName` VARCHAR(120),
    `Description` VARCHAR(400),
    `IsCascading` TINYINT(1),
    `InClassList` TINYINT(1),
    `ClassListRoleName` VARCHAR(120),
    `ClassListShowGroups` TINYINT(1),
    `ClassListShowSections` TINYINT(1),
    `ClassListDisplayRole` TINYINT(1),
    `AccessInactiveCO` TINYINT(1),
    `HasSpecialAccess` TINYINT(1),
    `AddToCourseOfferingGroups` TINYINT(1),
    `CanBeAutoEnrolledIntoGroups` TINYINT(1),
    `AddToCourseOfferingSections` TINYINT(1),
    `CanBeAutoEnrolledIntoSections` TINYINT(1),
    `AccessPastCourses` TINYINT(1),
    `AccessFutureCourses` TINYINT(1),
    `SortOrder` INT,
    `ShowInContent` TINYINT(1),
    `ShowInDiscussionAssess` TINYINT(1),
    `ShowInDiscussionStats` TINYINT(1),
    `ShowInGrades` TINYINT(1),
    `ShowInAttendance` TINYINT(1),
    `AllowSelfEnrollInGroups` TINYINT(1),
    `ShowInRegistration` TINYINT(1),
    `ShowInUserProgress` TINYINT(1),
    `RoleAlias` VARCHAR(120),
    `RoleCode` VARCHAR(100),
    `LastModifiedDate` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RoleDetails_DeletedBy` ON `RoleDetails` (`DeletedBy`);

-- Data set: Role Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4534-role-details-data-sets#role-details
CREATE TABLE `RoleDetails_LOAD` (
    `RoleId` INT NOT NULL,
    `RoleName` VARCHAR(120),
    `Description` VARCHAR(400),
    `IsCascading` TINYINT(1),
    `InClassList` TINYINT(1),
    `ClassListRoleName` VARCHAR(120),
    `ClassListShowGroups` TINYINT(1),
    `ClassListShowSections` TINYINT(1),
    `ClassListDisplayRole` TINYINT(1),
    `AccessInactiveCO` TINYINT(1),
    `HasSpecialAccess` TINYINT(1),
    `AddToCourseOfferingGroups` TINYINT(1),
    `CanBeAutoEnrolledIntoGroups` TINYINT(1),
    `AddToCourseOfferingSections` TINYINT(1),
    `CanBeAutoEnrolledIntoSections` TINYINT(1),
    `AccessPastCourses` TINYINT(1),
    `AccessFutureCourses` TINYINT(1),
    `SortOrder` INT,
    `ShowInContent` TINYINT(1),
    `ShowInDiscussionAssess` TINYINT(1),
    `ShowInDiscussionStats` TINYINT(1),
    `ShowInGrades` TINYINT(1),
    `ShowInAttendance` TINYINT(1),
    `AllowSelfEnrollInGroups` TINYINT(1),
    `ShowInRegistration` TINYINT(1),
    `ShowInUserProgress` TINYINT(1),
    `RoleAlias` VARCHAR(120),
    `RoleCode` VARCHAR(100),
    `LastModifiedDate` DATETIME(6),
    `DeletedBy` INT,
    PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubric Assessment
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment
CREATE TABLE `RubricAssessment` (
    `RubricId` BIGINT,
    `OrgUnitId` INT,
    `UserId` INT NOT NULL,
    `Score` DECIMAL(36,2),
    `AssessedByUserId` INT,
    `AssessmentDate` DATETIME(6),
    `IsCompleted` TINYINT(1),
    `ActivityType` VARCHAR(50),
    `ActivityObjectId` BIGINT,
    `DateCreated` DATETIME(6),
    `AssessmentId` BIGINT NOT NULL,
    `LevelAchievedId` BIGINT,
    `ActivityId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `AssessmentId`, `ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricAssessment_RubricId` ON `RubricAssessment` (`RubricId`);
CREATE INDEX `IX_RubricAssessment_OrgUnitId` ON `RubricAssessment` (`OrgUnitId`);
CREATE INDEX `IX_RubricAssessment_AssessedByUserId` ON `RubricAssessment` (`AssessedByUserId`);
CREATE INDEX `IX_RubricAssessment_ActivityObjectId` ON `RubricAssessment` (`ActivityObjectId`);
CREATE INDEX `IX_RubricAssessment_LevelAchievedId` ON `RubricAssessment` (`LevelAchievedId`);

-- Data set: Rubric Assessment (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment
CREATE TABLE `RubricAssessment_LOAD` (
    `RubricId` BIGINT,
    `OrgUnitId` INT,
    `UserId` INT NOT NULL,
    `Score` DECIMAL(36,2),
    `AssessedByUserId` INT,
    `AssessmentDate` DATETIME(6),
    `IsCompleted` TINYINT(1),
    `ActivityType` VARCHAR(50),
    `ActivityObjectId` BIGINT,
    `DateCreated` DATETIME(6),
    `AssessmentId` BIGINT NOT NULL,
    `LevelAchievedId` BIGINT,
    `ActivityId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `AssessmentId`, `ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubric Assessment Criteria
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE `RubricAssessmentCriteria` (
    `AssessmentId` BIGINT NOT NULL,
    `RubricId` BIGINT,
    `Score` DECIMAL(19,9),
    `Feedback` TEXT,
    `IsScoreOverridden` TINYINT(1),
    `CriterionId` BIGINT NOT NULL,
    `LevelAchievedId` BIGINT,
    `Version` BIGINT,
    PRIMARY KEY (`AssessmentId`, `CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricAssessmentCriteria_RubricId` ON `RubricAssessmentCriteria` (`RubricId`);
CREATE INDEX `IX_RubricAssessmentCriteria_CriterionId` ON `RubricAssessmentCriteria` (`CriterionId`);
CREATE INDEX `IX_RubricAssessmentCriteria_LevelAchievedId` ON `RubricAssessmentCriteria` (`LevelAchievedId`);

-- Data set: Rubric Assessment Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE `RubricAssessmentCriteria_LOAD` (
    `AssessmentId` BIGINT NOT NULL,
    `RubricId` BIGINT,
    `Score` DECIMAL(19,9),
    `Feedback` TEXT,
    `IsScoreOverridden` TINYINT(1),
    `CriterionId` BIGINT NOT NULL,
    `LevelAchievedId` BIGINT,
    `Version` BIGINT,
    PRIMARY KEY (`AssessmentId`, `CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubric Criteria Levels
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-criteria-levels
CREATE TABLE `RubricCriteriaLevels` (
    `RubricId` BIGINT NOT NULL,
    `CriterionId` BIGINT NOT NULL,
    `Description` VARCHAR(1000),
    `Feedback` VARCHAR(1000),
    `Value` DECIMAL(19,9),
    `LevelId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`RubricId`, `CriterionId`, `LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubric Criteria Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-criteria-levels
CREATE TABLE `RubricCriteriaLevels_LOAD` (
    `RubricId` BIGINT NOT NULL,
    `CriterionId` BIGINT NOT NULL,
    `Description` VARCHAR(1000),
    `Feedback` VARCHAR(1000),
    `Value` DECIMAL(19,9),
    `LevelId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`RubricId`, `CriterionId`, `LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubric Object Criteria
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE `RubricObjectCriteria` (
    `RubricId` BIGINT,
    `CriterionId` BIGINT NOT NULL,
    `Name` VARCHAR(500),
    `SortOrder` INT,
    `CriteriaGroupId` BIGINT,
    `GroupName` VARCHAR(256),
    `GroupSortOrder` INT,
    `LevelSetId` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricObjectCriteria_RubricId` ON `RubricObjectCriteria` (`RubricId`);
CREATE INDEX `IX_RubricObjectCriteria_LevelSetId` ON `RubricObjectCriteria` (`LevelSetId`);

-- Data set: Rubric Object Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE `RubricObjectCriteria_LOAD` (
    `RubricId` BIGINT,
    `CriterionId` BIGINT NOT NULL,
    `Name` VARCHAR(500),
    `SortOrder` INT,
    `CriteriaGroupId` BIGINT,
    `GroupName` VARCHAR(256),
    `GroupSortOrder` INT,
    `LevelSetId` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubric Object Levels
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE `RubricObjectLevels` (
    `RubricId` BIGINT,
    `LevelId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `Description` VARCHAR(1000),
    `Feedback` VARCHAR(1000),
    `Value` DECIMAL(19,9),
    `RangeStartValue` DECIMAL(19,9),
    `SortOrder` INT,
    `LevelSetId` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricObjectLevels_RubricId` ON `RubricObjectLevels` (`RubricId`);
CREATE INDEX `IX_RubricObjectLevels_LevelSetId` ON `RubricObjectLevels` (`LevelSetId`);

-- Data set: Rubric Object Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE `RubricObjectLevels_LOAD` (
    `RubricId` BIGINT,
    `LevelId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `Description` VARCHAR(1000),
    `Feedback` VARCHAR(1000),
    `Value` DECIMAL(19,9),
    `RangeStartValue` DECIMAL(19,9),
    `SortOrder` INT,
    `LevelSetId` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubric Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE `RubricObjects` (
    `RubricId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `RubricStatus` VARCHAR(256),
    `Description` VARCHAR(1000),
    `RubricType` VARCHAR(256),
    `ScoringMethods` VARCHAR(256),
    `IsScoreVisible` TINYINT(1),
    `OrgUnitID` INT,
    `IsShared` TINYINT(1),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricObjects_OrgUnitID` ON `RubricObjects` (`OrgUnitID`);

-- Data set: Rubric Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE `RubricObjects_LOAD` (
    `RubricId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `RubricStatus` VARCHAR(256),
    `Description` VARCHAR(1000),
    `RubricType` VARCHAR(256),
    `ScoringMethods` VARCHAR(256),
    `IsScoreVisible` TINYINT(1),
    `OrgUnitID` INT,
    `IsShared` TINYINT(1),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Rubrics Edit
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubrics-edit
CREATE TABLE `RubricsEdit` (
    `AuditLogId` CHAR(36) NOT NULL,
    `RubricId` BIGINT,
    `CriterionId` BIGINT,
    `LevelId` BIGINT,
    `ModifiedBy` INT,
    `ModifiedObjectType` INT,
    `CriteriaGroupId` BIGINT,
    `ModifiedDate` DATETIME(6),
    `PreviousValue` TEXT,
    `ModifiedValue` TEXT,
    `IsLocked` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricsEdit_RubricId` ON `RubricsEdit` (`RubricId`);
CREATE INDEX `IX_RubricsEdit_CriterionId` ON `RubricsEdit` (`CriterionId`);
CREATE INDEX `IX_RubricsEdit_LevelId` ON `RubricsEdit` (`LevelId`);

-- Data set: Rubrics Edit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubrics-edit
CREATE TABLE `RubricsEdit_LOAD` (
    `AuditLogId` CHAR(36) NOT NULL,
    `RubricId` BIGINT,
    `CriterionId` BIGINT,
    `LevelId` BIGINT,
    `ModifiedBy` INT,
    `ModifiedObjectType` INT,
    `CriteriaGroupId` BIGINT,
    `ModifiedDate` DATETIME(6),
    `PreviousValue` TEXT,
    `ModifiedValue` TEXT,
    `IsLocked` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activities
CREATE TABLE `SCORMActivities` (
    `ActivityId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `ParentActivityId` CHAR(36),
    `NumChildren` INT,
    `InternalId` VARCHAR(255),
    `Title` VARCHAR(200),
    `CompletionThreshold` DOUBLE,
    `PassingScore` DOUBLE,
    `PassingScoreUsed` TINYINT(1),
    `ScoreMin` DOUBLE,
    `ScoreMax` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMActivities_ScormObjectId` ON `SCORMActivities` (`ScormObjectId`);
CREATE INDEX `IX_SCORMActivities_ParentActivityId` ON `SCORMActivities` (`ParentActivityId`);

-- Data set: SCORM Activities (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activities
CREATE TABLE `SCORMActivities_LOAD` (
    `ActivityId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `ParentActivityId` CHAR(36),
    `NumChildren` INT,
    `InternalId` VARCHAR(255),
    `Title` VARCHAR(200),
    `CompletionThreshold` DOUBLE,
    `PassingScore` DOUBLE,
    `PassingScoreUsed` TINYINT(1),
    `ScoreMin` DOUBLE,
    `ScoreMax` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Activity Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activity-attempts
CREATE TABLE `SCORMActivityAttempts` (
    `VisitId` CHAR(36) NOT NULL,
    `ActivityId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `Completion` VARCHAR(100),
    `Success` VARCHAR(100),
    `Score` DOUBLE,
    `ScoreRaw` DOUBLE,
    `TimeSpent` DOUBLE,
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `ActivityId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMActivityAttempts_ActivityId` ON `SCORMActivityAttempts` (`ActivityId`);

-- Data set: SCORM Activity Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activity-attempts
CREATE TABLE `SCORMActivityAttempts_LOAD` (
    `VisitId` CHAR(36) NOT NULL,
    `ActivityId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `Completion` VARCHAR(100),
    `Success` VARCHAR(100),
    `Score` DOUBLE,
    `ScoreRaw` DOUBLE,
    `TimeSpent` DOUBLE,
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `ActivityId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Interaction Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-attempts
CREATE TABLE `SCORMInteractionAttempts` (
    `VisitId` CHAR(36) NOT NULL,
    `InteractionId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `ActivityId` CHAR(36),
    `Timestamp` DATETIME(6),
    `Response` VARCHAR(1000),
    `Result` VARCHAR(100),
    `NumericResult` DOUBLE,
    `TimeSpent` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `InteractionId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMInteractionAttempts_InteractionId` ON `SCORMInteractionAttempts` (`InteractionId`);
CREATE INDEX `IX_SCORMInteractionAttempts_ActivityId` ON `SCORMInteractionAttempts` (`ActivityId`);

-- Data set: SCORM Interaction Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-attempts
CREATE TABLE `SCORMInteractionAttempts_LOAD` (
    `VisitId` CHAR(36) NOT NULL,
    `InteractionId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `ActivityId` CHAR(36),
    `Timestamp` DATETIME(6),
    `Response` VARCHAR(1000),
    `Result` VARCHAR(100),
    `NumericResult` DOUBLE,
    `TimeSpent` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `InteractionId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Interaction Objectives
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-objectives
CREATE TABLE `SCORMInteractionObjectives` (
    `InteractionId` CHAR(36) NOT NULL,
    `ObjectiveId` CHAR(36) NOT NULL,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`InteractionId`, `ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMInteractionObjectives_ObjectiveId` ON `SCORMInteractionObjectives` (`ObjectiveId`);

-- Data set: SCORM Interaction Objectives (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-objectives
CREATE TABLE `SCORMInteractionObjectives_LOAD` (
    `InteractionId` CHAR(36) NOT NULL,
    `ObjectiveId` CHAR(36) NOT NULL,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`InteractionId`, `ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Interactions
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interactions
CREATE TABLE `SCORMInteractions` (
    `InteractionId` CHAR(36) NOT NULL,
    `ActivityId` CHAR(36),
    `InternalId` VARCHAR(255),
    `InteractionType` VARCHAR(100),
    `Description` VARCHAR(250),
    `Weighting` DOUBLE,
    `CorrectResponses` TEXT,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`InteractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMInteractions_ActivityId` ON `SCORMInteractions` (`ActivityId`);

-- Data set: SCORM Interactions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interactions
CREATE TABLE `SCORMInteractions_LOAD` (
    `InteractionId` CHAR(36) NOT NULL,
    `ActivityId` CHAR(36),
    `InternalId` VARCHAR(255),
    `InteractionType` VARCHAR(100),
    `Description` VARCHAR(250),
    `Weighting` DOUBLE,
    `CorrectResponses` TEXT,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`InteractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Objective Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objective-attempts
CREATE TABLE `SCORMObjectiveAttempts` (
    `VisitId` CHAR(36) NOT NULL,
    `ObjectiveId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `Score` DOUBLE,
    `ScoreRaw` DOUBLE,
    `Success` VARCHAR(100),
    `Completion` VARCHAR(100),
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `ObjectiveId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMObjectiveAttempts_ObjectiveId` ON `SCORMObjectiveAttempts` (`ObjectiveId`);

-- Data set: SCORM Objective Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objective-attempts
CREATE TABLE `SCORMObjectiveAttempts_LOAD` (
    `VisitId` CHAR(36) NOT NULL,
    `ObjectiveId` CHAR(36) NOT NULL,
    `AttemptNumber` INT NOT NULL,
    `Score` DOUBLE,
    `ScoreRaw` DOUBLE,
    `Success` VARCHAR(100),
    `Completion` VARCHAR(100),
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`, `ObjectiveId`, `AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Objectives
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objectives
CREATE TABLE `SCORMObjectives` (
    `ObjectiveId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `ObjectiveType` VARCHAR(100),
    `ActivityId` CHAR(36),
    `InternalId` VARCHAR(255),
    `IsPrimary` TINYINT(1),
    `Description` VARCHAR(250),
    `ScoreMin` DOUBLE,
    `ScoreMax` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMObjectives_ScormObjectId` ON `SCORMObjectives` (`ScormObjectId`);
CREATE INDEX `IX_SCORMObjectives_ActivityId` ON `SCORMObjectives` (`ActivityId`);

-- Data set: SCORM Objectives (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objectives
CREATE TABLE `SCORMObjectives_LOAD` (
    `ObjectiveId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `ObjectiveType` VARCHAR(100),
    `ActivityId` CHAR(36),
    `InternalId` VARCHAR(255),
    `IsPrimary` TINYINT(1),
    `Description` VARCHAR(250),
    `ScoreMin` DOUBLE,
    `ScoreMax` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objects
CREATE TABLE `SCORMObjects` (
    `ScormObjectId` CHAR(36) NOT NULL,
    `OrgUnitId` INT,
    `ContentObjectId` INT,
    `ContentServiceContentId` CHAR(36),
    `ContentServiceRevisionId` CHAR(36),
    `ContentServiceTopicId` CHAR(36),
    `Title` VARCHAR(1000),
    `Description` VARCHAR(1000),
    `LearningStandard` VARCHAR(100),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`ScormObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMObjects_OrgUnitId` ON `SCORMObjects` (`OrgUnitId`);
CREATE INDEX `IX_SCORMObjects_ContentObjectId` ON `SCORMObjects` (`ContentObjectId`);
CREATE INDEX `IX_SCORMObjects_LastModifiedBy` ON `SCORMObjects` (`LastModifiedBy`);

-- Data set: SCORM Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objects
CREATE TABLE `SCORMObjects_LOAD` (
    `ScormObjectId` CHAR(36) NOT NULL,
    `OrgUnitId` INT,
    `ContentObjectId` INT,
    `ContentServiceContentId` CHAR(36),
    `ContentServiceRevisionId` CHAR(36),
    `ContentServiceTopicId` CHAR(36),
    `Title` VARCHAR(1000),
    `Description` VARCHAR(1000),
    `LearningStandard` VARCHAR(100),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`ScormObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SCORM Visits
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-visits
CREATE TABLE `SCORMVisits` (
    `VisitId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `UserId` INT,
    `OrgUnitId` INT,
    `FirstAccessDate` DATETIME(6),
    `LastAccessDate` DATETIME(6),
    `CompletedDate` DATETIME(6),
    `Completion` VARCHAR(100),
    `Success` VARCHAR(100),
    `Score` DOUBLE,
    `TimeSpent` INT,
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMVisits_ScormObjectId` ON `SCORMVisits` (`ScormObjectId`);
CREATE INDEX `IX_SCORMVisits_UserId` ON `SCORMVisits` (`UserId`);
CREATE INDEX `IX_SCORMVisits_OrgUnitId` ON `SCORMVisits` (`OrgUnitId`);

-- Data set: SCORM Visits (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-visits
CREATE TABLE `SCORMVisits_LOAD` (
    `VisitId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `UserId` INT,
    `OrgUnitId` INT,
    `FirstAccessDate` DATETIME(6),
    `LastAccessDate` DATETIME(6),
    `CompletedDate` DATETIME(6),
    `Completion` VARCHAR(100),
    `Success` VARCHAR(100),
    `Score` DOUBLE,
    `TimeSpent` INT,
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: SIS Course Merge Log
-- Source: https://community.d2l.com/brightspace/kb/articles/19147-sis-course-merge-data-sets#sis-course-merge-log
CREATE TABLE `SISCourseMergeLog` (
    `BatchId` CHAR(36) NOT NULL,
    `JobType` VARCHAR(32),
    `Status` VARCHAR(32),
    `OriginalTargetOrgUnitId` BIGINT,
    `OriginalSourceOrgUnitId` BIGINT NOT NULL,
    `SourceSystemId` BIGINT,
    `NumberOfCoursesInBatch` INT,
    `UserId` BIGINT,
    `ErrorType` VARCHAR(48),
    `Timestamp` DATETIME(6) NOT NULL,
    PRIMARY KEY (`BatchId`, `OriginalSourceOrgUnitId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SISCourseMergeLog_OriginalTargetOrgUnitId` ON `SISCourseMergeLog` (`OriginalTargetOrgUnitId`);
CREATE INDEX `IX_SISCourseMergeLog_OriginalSourceOrgUnitId` ON `SISCourseMergeLog` (`OriginalSourceOrgUnitId`);
CREATE INDEX `IX_SISCourseMergeLog_UserId` ON `SISCourseMergeLog` (`UserId`);

-- Data set: SIS Course Merge Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/19147-sis-course-merge-data-sets#sis-course-merge-log
CREATE TABLE `SISCourseMergeLog_LOAD` (
    `BatchId` CHAR(36) NOT NULL,
    `JobType` VARCHAR(32),
    `Status` VARCHAR(32),
    `OriginalTargetOrgUnitId` BIGINT,
    `OriginalSourceOrgUnitId` BIGINT NOT NULL,
    `SourceSystemId` BIGINT,
    `NumberOfCoursesInBatch` INT,
    `UserId` BIGINT,
    `ErrorType` VARCHAR(48),
    `Timestamp` DATETIME(6) NOT NULL,
    PRIMARY KEY (`BatchId`, `OriginalSourceOrgUnitId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Session History
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#session-history
CREATE TABLE `SessionHistory` (
    `SessionId` BIGINT,
    `OrgId` INT,
    `UserId` INT,
    `DateStarted` DATETIME(6),
    `DateEnded` DATETIME(6),
    `LastAccessed` DATETIME(6),
    `TimedOut` TINYINT(1),
    `HistoryID` BIGINT NOT NULL,
    PRIMARY KEY (`HistoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SessionHistory_UserId` ON `SessionHistory` (`UserId`);

-- Data set: Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#session-history
CREATE TABLE `SessionHistory_LOAD` (
    `SessionId` BIGINT,
    `OrgId` INT,
    `UserId` INT,
    `DateStarted` DATETIME(6),
    `DateEnded` DATETIME(6),
    `LastAccessed` DATETIME(6),
    `TimedOut` TINYINT(1),
    `HistoryID` BIGINT NOT NULL,
    PRIMARY KEY (`HistoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Source Course Deploy History
-- Source: https://community.d2l.com/brightspace/kb/articles/33427-source-course-deploy-data-sets#source-course-deploy-history
CREATE TABLE `SourceCourseDeployHistory` (
    `SourceCourseDeployId` BIGINT NOT NULL,
    `SourceCourseOrgUnitId` INT NOT NULL,
    `TargetCourseOrgUnitId` INT NOT NULL,
    `UserId` INT,
    `Status` VARCHAR(128),
    `QueuedTime` DATETIME(6),
    `CompletionTime` DATETIME(6),
    PRIMARY KEY (`SourceCourseDeployId`, `SourceCourseOrgUnitId`, `TargetCourseOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SourceCourseDeployHistory_SourceCourseOrgUnitId` ON `SourceCourseDeployHistory` (`SourceCourseOrgUnitId`);
CREATE INDEX `IX_SourceCourseDeployHistory_TargetCourseOrgUnitId` ON `SourceCourseDeployHistory` (`TargetCourseOrgUnitId`);
CREATE INDEX `IX_SourceCourseDeployHistory_UserId` ON `SourceCourseDeployHistory` (`UserId`);

-- Data set: Source Course Deploy History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33427-source-course-deploy-data-sets#source-course-deploy-history
CREATE TABLE `SourceCourseDeployHistory_LOAD` (
    `SourceCourseDeployId` BIGINT NOT NULL,
    `SourceCourseOrgUnitId` INT NOT NULL,
    `TargetCourseOrgUnitId` INT NOT NULL,
    `UserId` INT,
    `Status` VARCHAR(128),
    `QueuedTime` DATETIME(6),
    `CompletionTime` DATETIME(6),
    PRIMARY KEY (`SourceCourseDeployId`, `SourceCourseOrgUnitId`, `TargetCourseOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Survey Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE `SurveyAttempts` (
    `AttemptId` BIGINT NOT NULL,
    `SurveyId` BIGINT,
    `UserId` INT,
    `OrgUnitId` INT,
    `AttemptNumber` INT,
    `TimeStarted` DATETIME(6),
    `TimeCompleted` DATETIME(6),
    `AttemptedFromOrgUnitId` INT,
    `OldAttemptNumber` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SurveyAttempts_SurveyId` ON `SurveyAttempts` (`SurveyId`);
CREATE INDEX `IX_SurveyAttempts_UserId` ON `SurveyAttempts` (`UserId`);
CREATE INDEX `IX_SurveyAttempts_OrgUnitId` ON `SurveyAttempts` (`OrgUnitId`);
CREATE INDEX `IX_SurveyAttempts_AttemptedFromOrgUnitId` ON `SurveyAttempts` (`AttemptedFromOrgUnitId`);

-- Data set: Survey Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE `SurveyAttempts_LOAD` (
    `AttemptId` BIGINT NOT NULL,
    `SurveyId` BIGINT,
    `UserId` INT,
    `OrgUnitId` INT,
    `AttemptNumber` INT,
    `TimeStarted` DATETIME(6),
    `TimeCompleted` DATETIME(6),
    `AttemptedFromOrgUnitId` INT,
    `OldAttemptNumber` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Survey Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-objects
CREATE TABLE `SurveyObjects` (
    `SurveyId` BIGINT NOT NULL,
    `SurveyName` VARCHAR(1000),
    `CategoryId` BIGINT,
    `OrgUnitId` INT,
    `Description` VARCHAR(1000),
    `DescriptionEnabled` TINYINT(1),
    `HasInstantFeedback` TINYINT(1),
    `IsAnonymous` TINYINT(1),
    `IsVisible` TINYINT(1),
    `SubmissionMessage` VARCHAR(1000),
    `Footer` VARCHAR(1000),
    `FooterIsDisplayed` TINYINT(1),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DisplayInCalendar` TINYINT(1),
    `ResultId` BIGINT,
    `AttemptsAllowed` INT,
    `SortOrder` INT,
    `CreatedBy` INT,
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `Version` BIGINT,
    `CategoryName` VARCHAR(256),
    PRIMARY KEY (`SurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SurveyObjects_OrgUnitId` ON `SurveyObjects` (`OrgUnitId`);
CREATE INDEX `IX_SurveyObjects_CreatedBy` ON `SurveyObjects` (`CreatedBy`);
CREATE INDEX `IX_SurveyObjects_LastModifiedBy` ON `SurveyObjects` (`LastModifiedBy`);

-- Data set: Survey Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-objects
CREATE TABLE `SurveyObjects_LOAD` (
    `SurveyId` BIGINT NOT NULL,
    `SurveyName` VARCHAR(1000),
    `CategoryId` BIGINT,
    `OrgUnitId` INT,
    `Description` VARCHAR(1000),
    `DescriptionEnabled` TINYINT(1),
    `HasInstantFeedback` TINYINT(1),
    `IsAnonymous` TINYINT(1),
    `IsVisible` TINYINT(1),
    `SubmissionMessage` VARCHAR(1000),
    `Footer` VARCHAR(1000),
    `FooterIsDisplayed` TINYINT(1),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `DisplayInCalendar` TINYINT(1),
    `ResultId` BIGINT,
    `AttemptsAllowed` INT,
    `SortOrder` INT,
    `CreatedBy` INT,
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `Version` BIGINT,
    `CategoryName` VARCHAR(256),
    PRIMARY KEY (`SurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Survey User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answer-responses
CREATE TABLE `SurveyUserAnswerResponses` (
    `AttemptId` BIGINT NOT NULL,
    `AttemptNumber` INT,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerId` BIGINT NOT NULL,
    `SortOrder` BIGINT,
    `IsCorrect` TINYINT(1),
    `UserSelection` BIGINT,
    `UserAnswer` VARCHAR(1000),
    `FileSetId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AttemptId`, `QuestionId`, `QuestionVersionId`, `AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SurveyUserAnswerResponses_QuestionId` ON `SurveyUserAnswerResponses` (`QuestionId`);
CREATE INDEX `IX_SurveyUserAnswerResponses_QuestionVersionId` ON `SurveyUserAnswerResponses` (`QuestionVersionId`);
CREATE INDEX `IX_SurveyUserAnswerResponses_AnswerId` ON `SurveyUserAnswerResponses` (`AnswerId`);

-- Data set: Survey User Answer Responses (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answer-responses
CREATE TABLE `SurveyUserAnswerResponses_LOAD` (
    `AttemptId` BIGINT NOT NULL,
    `AttemptNumber` INT,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerId` BIGINT NOT NULL,
    `SortOrder` BIGINT,
    `IsCorrect` TINYINT(1),
    `UserSelection` BIGINT,
    `UserAnswer` VARCHAR(1000),
    `FileSetId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AttemptId`, `QuestionId`, `QuestionVersionId`, `AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Survey User Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE `SurveyUserAnswers` (
    `AttemptId` BIGINT,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `TimeCompleted` DATETIME(6),
    `QuestionNumber` INT,
    `Comment` VARCHAR(1000),
    `SortOrder` INT,
    `Score` DECIMAL(19,9),
    `Page` INT,
    `Assigned` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `SurveyTimeCompleted` DATETIME(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SurveyUserAnswers_AttemptId` ON `SurveyUserAnswers` (`AttemptId`);
CREATE INDEX `IX_SurveyUserAnswers_QuestionId` ON `SurveyUserAnswers` (`QuestionId`);
CREATE INDEX `IX_SurveyUserAnswers_QuestionVersionId` ON `SurveyUserAnswers` (`QuestionVersionId`);
CREATE INDEX `IX_SurveyUserAnswers_LastModifiedBy` ON `SurveyUserAnswers` (`LastModifiedBy`);

-- Data set: Survey User Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE `SurveyUserAnswers_LOAD` (
    `AttemptId` BIGINT,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `TimeCompleted` DATETIME(6),
    `QuestionNumber` INT,
    `Comment` VARCHAR(1000),
    `SortOrder` INT,
    `Score` DECIMAL(19,9),
    `Page` INT,
    `Assigned` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `SurveyTimeCompleted` DATETIME(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: System Access Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-log
CREATE TABLE `SystemAccessLog` (
    `SessionId` VARCHAR(36) NOT NULL,
    `UserId` INT NOT NULL,
    `Timestamp` DATETIME(6) NOT NULL,
    `State` VARCHAR(20) NOT NULL,
    `Source` VARCHAR(20),
    `AppVersion` VARCHAR(20),
    `Device` VARCHAR(50),
    `IsOfflineMode` TINYINT(1),
    `IPAddress` VARCHAR(45),
    PRIMARY KEY (`SessionId`, `UserId`, `Timestamp`, `State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SystemAccessLog_UserId` ON `SystemAccessLog` (`UserId`);

-- Data set: System Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-log
CREATE TABLE `SystemAccessLog_LOAD` (
    `SessionId` VARCHAR(36) NOT NULL,
    `UserId` INT NOT NULL,
    `Timestamp` DATETIME(6) NOT NULL,
    `State` VARCHAR(20) NOT NULL,
    `Source` VARCHAR(20),
    `AppVersion` VARCHAR(20),
    `Device` VARCHAR(50),
    `IsOfflineMode` TINYINT(1),
    `IPAddress` VARCHAR(45),
    PRIMARY KEY (`SessionId`, `UserId`, `Timestamp`, `State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: System Access Summary
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE `SystemAccessSummary` (
    `UserId` INT NOT NULL,
    `ImpersonatingUserId` INT,
    `LastSystemAccess` DATETIME(6),
    `Source` VARCHAR(20),
    PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SystemAccessSummary_ImpersonatingUserId` ON `SystemAccessSummary` (`ImpersonatingUserId`);

-- Data set: System Access Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE `SystemAccessSummary_LOAD` (
    `UserId` INT NOT NULL,
    `ImpersonatingUserId` INT,
    `LastSystemAccess` DATETIME(6),
    `Source` VARCHAR(20),
    PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Tools
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE `Tools` (
    `ToolId` INT NOT NULL,
    `Name` VARCHAR(50),
    `DisplayName` VARCHAR(200),
    `Version` BIGINT,
    PRIMARY KEY (`ToolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Tools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE `Tools_LOAD` (
    `ToolId` INT NOT NULL,
    `Name` VARCHAR(50),
    `DisplayName` VARCHAR(200),
    `Version` BIGINT,
    PRIMARY KEY (`ToolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: TurnItIn Submissions
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#turnitin-submissions
CREATE TABLE `TurnItInSubmissions` (
    `DropboxId` BIGINT,
    `SubmissionId` BIGINT NOT NULL,
    `FileId` BIGINT NOT NULL,
    `LastSubmissionDate` DATETIME(6),
    `SubmissionStatus` SMALLINT,
    `SubmissionErrorType` SMALLINT,
    `ErrorMessage` VARCHAR(255),
    `SubmittedBy` INT,
    `LastRefreshDate` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`SubmissionId`, `FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_TurnItInSubmissions_DropboxId` ON `TurnItInSubmissions` (`DropboxId`);
CREATE INDEX `IX_TurnItInSubmissions_SubmittedBy` ON `TurnItInSubmissions` (`SubmittedBy`);

-- Data set: TurnItIn Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#turnitin-submissions
CREATE TABLE `TurnItInSubmissions_LOAD` (
    `DropboxId` BIGINT,
    `SubmissionId` BIGINT NOT NULL,
    `FileId` BIGINT NOT NULL,
    `LastSubmissionDate` DATETIME(6),
    `SubmissionStatus` SMALLINT,
    `SubmissionErrorType` SMALLINT,
    `ErrorMessage` VARCHAR(255),
    `SubmittedBy` INT,
    `LastRefreshDate` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`SubmissionId`, `FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: User Attribute Definitions
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-definitions
CREATE TABLE `UserAttributeDefinitions` (
    `AttributeId` VARCHAR(128) NOT NULL,
    `Name` VARCHAR(128),
    `Type` VARCHAR(8),
    `AllowMultiple` TINYINT(1),
    `IsDefault` TINYINT(1),
    `LastModified` DATETIME(6),
    `ModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_UserAttributeDefinitions_ModifiedBy` ON `UserAttributeDefinitions` (`ModifiedBy`);

-- Data set: User Attribute Definitions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-definitions
CREATE TABLE `UserAttributeDefinitions_LOAD` (
    `AttributeId` VARCHAR(128) NOT NULL,
    `Name` VARCHAR(128),
    `Type` VARCHAR(8),
    `AllowMultiple` TINYINT(1),
    `IsDefault` TINYINT(1),
    `LastModified` DATETIME(6),
    `ModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: User Attribute Values
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE `UserAttributeValues` (
    `UserId` INT NOT NULL,
    `AttributeId` VARCHAR(128) NOT NULL,
    `Value` TEXT,
    `LastModified` DATETIME(6),
    `ModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`UserId`, `AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_UserAttributeValues_AttributeId` ON `UserAttributeValues` (`AttributeId`);
CREATE INDEX `IX_UserAttributeValues_ModifiedBy` ON `UserAttributeValues` (`ModifiedBy`);

-- Data set: User Attribute Values (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE `UserAttributeValues_LOAD` (
    `UserId` INT NOT NULL,
    `AttributeId` VARCHAR(128) NOT NULL,
    `Value` TEXT,
    `LastModified` DATETIME(6),
    `ModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`UserId`, `AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- Data set: User Logins
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-logins
CREATE TABLE `UserLogins` (
    `UserId` INT,
    `UserName` VARCHAR(256),
    `IP` VARCHAR(64),
    `SessionId` INT,
    `StatusType` VARCHAR(50),
    `AttemptDate` DATETIME(6),
    `ImpersonatingUserId` INT,
    `LoginAttemptId` VARCHAR(36) NOT NULL,
    `LoginSource` VARCHAR(50),
    PRIMARY KEY (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_UserLogins_UserId` ON `UserLogins` (`UserId`);
CREATE INDEX `IX_UserLogins_ImpersonatingUserId` ON `UserLogins` (`ImpersonatingUserId`);

-- Data set: User Logins (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-logins
CREATE TABLE `UserLogins_LOAD` (
    `UserId` INT,
    `UserName` VARCHAR(256),
    `IP` VARCHAR(64),
    `SessionId` INT,
    `StatusType` VARCHAR(50),
    `AttemptDate` DATETIME(6),
    `ImpersonatingUserId` INT,
    `LoginAttemptId` VARCHAR(36) NOT NULL,
    `LoginSource` VARCHAR(50),
    PRIMARY KEY (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Users
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#users
CREATE TABLE `Users` (
    `UserId` INT NOT NULL,
    `UserName` VARCHAR(270),
    `OrgDefinedId` VARCHAR(256),
    `FirstName` VARCHAR(64),
    `MiddleName` VARCHAR(64),
    `LastName` VARCHAR(64),
    `IsActive` TINYINT(1),
    `ExternalEmail` VARCHAR(256),
    `CreationDate` DATETIME(6),
    `Version` BIGINT,
    `OrgRoleId` INT,
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#users
CREATE TABLE `Users_LOAD` (
    `UserId` INT NOT NULL,
    `UserName` VARCHAR(270),
    `OrgDefinedId` VARCHAR(256),
    `FirstName` VARCHAR(64),
    `MiddleName` VARCHAR(64),
    `LastName` VARCHAR(64),
    `IsActive` TINYINT(1),
    `ExternalEmail` VARCHAR(256),
    `CreationDate` DATETIME(6),
    `Version` BIGINT,
    `OrgRoleId` INT,
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data set: Virtual Classroom Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4541-virtual-classroom-data-sets#virtual-classroom-usage
CREATE TABLE `VirtualClassroomUsage` (
    `OrgUnitId` INT,
    `CourseName` VARCHAR(255),
    `MeetingId` VARCHAR(36) NOT NULL,
    `MeetingName` VARCHAR(255),
    `CreationUserId` INT,
    `CreationDate` DATETIME(6),
    `ScheduledDate` DATETIME(6),
    `ScheduledDuration` INT,
    `IsPublished` TINYINT(1),
    `ExternalLinksEnabled` TINYINT(1),
    `WholeClassInvited` TINYINT(1),
    `IsCancelled` TINYINT(1),
    `StartDateTime` DATETIME(6),
    `EndDateTime` DATETIME(6),
    `IsRecorded` TINYINT(1),
    PRIMARY KEY (`MeetingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_VirtualClassroomUsage_OrgUnitId` ON `VirtualClassroomUsage` (`OrgUnitId`);
CREATE INDEX `IX_VirtualClassroomUsage_CreationUserId` ON `VirtualClassroomUsage` (`CreationUserId`);

-- Data set: Virtual Classroom Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4541-virtual-classroom-data-sets#virtual-classroom-usage
CREATE TABLE `VirtualClassroomUsage_LOAD` (
    `OrgUnitId` INT,
    `CourseName` VARCHAR(255),
    `MeetingId` VARCHAR(36) NOT NULL,
    `MeetingName` VARCHAR(255),
    `CreationUserId` INT,
    `CreationDate` DATETIME(6),
    `ScheduledDate` DATETIME(6),
    `ScheduledDuration` INT,
    `IsPublished` TINYINT(1),
    `ExternalLinksEnabled` TINYINT(1),
    `WholeClassInvited` TINYINT(1),
    `IsCancelled` TINYINT(1),
    `StartDateTime` DATETIME(6),
    `EndDateTime` DATETIME(6),
    `IsRecorded` TINYINT(1),
    PRIMARY KEY (`MeetingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
