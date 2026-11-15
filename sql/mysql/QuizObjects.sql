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
