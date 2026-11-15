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
