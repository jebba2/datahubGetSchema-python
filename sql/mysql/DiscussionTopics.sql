-- Data set: Discussion Topics
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topics
CREATE TABLE `DiscussionTopics` (
    `OrgUnitId` INT,
    `TopicId` BIGINT NOT NULL,
    `ForumId` BIGINT,
    `Name` VARCHAR(1000),
    `Description` VARCHAR(1000),
    `MustPostToParticipate` TINYINT(1),
    `AllowAnon` TINYINT(1),
    `IsHidden` TINYINT(1),
    `RequiresApproval` TINYINT(1),
    `LastPostDate` DATETIME(6),
    `LastPostUserId` BIGINT,
    `NumViews` BIGINT,
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `GradeItemId` INT,
    `ScoreOutOf` DOUBLE,
    `ScoreCalculationMethod` VARCHAR(19),
    `IncludeNonScoredValues` TINYINT(1),
    `Version` BIGINT,
    `ResultId` INT,
    `StartDate` DATETIME(6),
    `StartDateAvailabilityType` SMALLINT,
    `EndDate` DATETIME(6),
    `EndDateAvailabilityType` SMALLINT,
    `AIUtilization` INT,
    `DueDate` DATETIME(6),
    PRIMARY KEY (`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionTopics_OrgUnitId` ON `DiscussionTopics` (`OrgUnitId`);
CREATE INDEX `IX_DiscussionTopics_ForumId` ON `DiscussionTopics` (`ForumId`);
CREATE INDEX `IX_DiscussionTopics_DeletedByUserId` ON `DiscussionTopics` (`DeletedByUserId`);
CREATE INDEX `IX_DiscussionTopics_GradeItemId` ON `DiscussionTopics` (`GradeItemId`);
CREATE INDEX `IX_DiscussionTopics_ResultId` ON `DiscussionTopics` (`ResultId`);
