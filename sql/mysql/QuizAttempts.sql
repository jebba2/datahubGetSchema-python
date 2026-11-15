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
