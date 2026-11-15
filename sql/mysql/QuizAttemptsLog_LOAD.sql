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
