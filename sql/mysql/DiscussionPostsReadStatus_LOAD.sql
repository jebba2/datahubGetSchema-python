-- Data set: Discussion Posts Read Status (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE `DiscussionPostsReadStatus_LOAD` (
    `TopicId` BIGINT,
    `UserId` INT NOT NULL,
    `PostId` BIGINT NOT NULL,
    `IsRead` TINYINT(1),
    `FirstReadDate` DATETIME(6),
    `LastReadDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
