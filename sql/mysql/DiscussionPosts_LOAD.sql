-- Data set: Discussion Posts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts
CREATE TABLE `DiscussionPosts_LOAD` (
    `OrgUnitId` INT,
    `TopicId` BIGINT,
    `UserId` INT,
    `PostId` BIGINT NOT NULL,
    `ThreadId` BIGINT,
    `IsReply` TINYINT(1),
    `ParentPostId` BIGINT,
    `NumReplies` INT,
    `DatePosted` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `RatingSum` BIGINT,
    `NumRatings` BIGINT,
    `Score` DECIMAL(19,9),
    `LastEditDate` DATETIME(6),
    `SortOrder` INT,
    `Depth` INT,
    `Thread` VARCHAR(400),
    `WordCount` INT,
    `AttachmentCount` INT,
    `Version` BIGINT,
    PRIMARY KEY (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
