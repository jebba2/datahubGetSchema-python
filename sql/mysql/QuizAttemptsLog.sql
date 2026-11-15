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
