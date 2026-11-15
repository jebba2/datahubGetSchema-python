-- Data set: Creator+ Practices Engagement
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE `CreatorPracticesEngagement` (
    `PracticeEngagementId` INT NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `CompletionStatus` VARCHAR(10),
    `ActivityInstanceId` INT,
    `CompletionDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PracticeEngagementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CreatorPracticesEngagement_UserId` ON `CreatorPracticesEngagement` (`UserId`);
CREATE INDEX `IX_CreatorPracticesEngagement_OrgUnitId` ON `CreatorPracticesEngagement` (`OrgUnitId`);
CREATE INDEX `IX_CreatorPracticesEngagement_ActivityInstanceId` ON `CreatorPracticesEngagement` (`ActivityInstanceId`);
