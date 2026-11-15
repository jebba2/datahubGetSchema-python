-- Data set: Activity Feed Comment Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE `ActivityFeedCommentObjects_LOAD` (
    `OrgUnitId` INT,
    `CommentId` CHAR(36) NOT NULL,
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6),
    `Content` TEXT,
    `IsDeleted` TINYINT(1),
    `PostId` CHAR(36),
    `Version` BIGINT,
    PRIMARY KEY (`CommentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
