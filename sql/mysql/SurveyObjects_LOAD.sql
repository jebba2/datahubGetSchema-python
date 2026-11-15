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
