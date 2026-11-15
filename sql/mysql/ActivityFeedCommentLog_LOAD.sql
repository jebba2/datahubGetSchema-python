-- Data set: Activity Feed Comment Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE `ActivityFeedCommentLog_LOAD` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `CommentId` CHAR(36),
    `Action` VARCHAR(16),
    `ActionDate` DATETIME(6),
    `Content` TEXT,
    `PostId` CHAR(36),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
