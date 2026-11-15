-- Data set: Creator+ Practices Engagement (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE `CreatorPracticesEngagement_LOAD` (
    `PracticeEngagementId` INT NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `CompletionStatus` VARCHAR(10),
    `ActivityInstanceId` INT,
    `CompletionDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PracticeEngagementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
