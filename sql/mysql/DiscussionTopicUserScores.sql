-- Data set: Discussion Topic User Scores
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE `DiscussionTopicUserScores` (
    `UserId` INT NOT NULL,
    `TopicId` BIGINT NOT NULL,
    `Score` DECIMAL(19,9),
    `IsGraded` TINYINT(1),
    `Version` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`UserId`, `TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionTopicUserScores_TopicId` ON `DiscussionTopicUserScores` (`TopicId`);
