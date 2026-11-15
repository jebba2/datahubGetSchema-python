-- Data set: Outcomes Assessed Checkpoints (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-assessed-checkpoints
CREATE TABLE `OutcomesAssessedCheckpoints_LOAD` (
    `CheckpointId` CHAR(36) NOT NULL,
    `DemonstrationId` CHAR(36) NOT NULL,
    `Feedback` VARCHAR(1000),
    `ConfigDecayRate` INT,
    `ConfigAggregationMethod` INT,
    `ConfigIncludedActivities` INT,
    `ConfigMultipleAttemptStrategy` INT,
    `ConfigRecentlyAssessedActivityCount` INT,
    `ConfigTieBreaker` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `HasMetAchievementThreshold` TINYINT(1),
    `AchievedLevelId` CHAR(36),
    PRIMARY KEY (`CheckpointId`, `DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
