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
