-- Data set: Activity Feed Comment Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE `ActivityFeedCommentLog` (
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
CREATE INDEX `IX_ActivityFeedCommentLog_UserId` ON `ActivityFeedCommentLog` (`UserId`);
CREATE INDEX `IX_ActivityFeedCommentLog_OrgUnitId` ON `ActivityFeedCommentLog` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedCommentLog_PostId` ON `ActivityFeedCommentLog` (`PostId`);
