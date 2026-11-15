-- Data set: Rubric Assessment
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment
CREATE TABLE `RubricAssessment` (
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
CREATE INDEX `IX_RubricAssessment_RubricId` ON `RubricAssessment` (`RubricId`);
CREATE INDEX `IX_RubricAssessment_OrgUnitId` ON `RubricAssessment` (`OrgUnitId`);
CREATE INDEX `IX_RubricAssessment_AssessedByUserId` ON `RubricAssessment` (`AssessedByUserId`);
CREATE INDEX `IX_RubricAssessment_ActivityObjectId` ON `RubricAssessment` (`ActivityObjectId`);
CREATE INDEX `IX_RubricAssessment_LevelAchievedId` ON `RubricAssessment` (`LevelAchievedId`);
