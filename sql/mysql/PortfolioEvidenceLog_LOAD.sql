-- Data set: Portfolio Evidence Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE `PortfolioEvidenceLog_LOAD` (
    `LogId` CHAR(36) NOT NULL,
    `ParentObjectId` CHAR(36),
    `ObjectId` CHAR(36),
    `ObjectType` VARCHAR(40),
    `UserId` INT,
    `OrgUnitId` INT,
    `Action` VARCHAR(16),
    `IsMobile` TINYINT(1),
    `ActionDate` DATETIME(6),
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
