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
