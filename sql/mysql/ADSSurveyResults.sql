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
