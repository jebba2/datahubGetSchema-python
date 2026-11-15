-- Data set: Rubric Assessment Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE `RubricAssessmentCriteria_LOAD` (
    `AssessmentId` BIGINT NOT NULL,
    `RubricId` BIGINT,
    `Score` DECIMAL(19,9),
    `Feedback` TEXT,
    `IsScoreOverridden` TINYINT(1),
    `CriterionId` BIGINT NOT NULL,
    `LevelAchievedId` BIGINT,
    `Version` BIGINT,
    PRIMARY KEY (`AssessmentId`, `CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
