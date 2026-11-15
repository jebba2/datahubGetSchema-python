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
