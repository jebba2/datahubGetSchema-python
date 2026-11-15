-- Data set: Portfolio Evidence Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-objects
CREATE TABLE `PortfolioEvidenceObjects_LOAD` (
    `EvidenceId` CHAR(36) NOT NULL,
    `OwnerId` INT,
    `OrgUnitId` INT,
    `EvidenceType` VARCHAR(30),
    `Title` VARCHAR(1000),
    `IsApproved` TINYINT(1),
    `IsSpotlighted` TINYINT(1),
    `IsSharedToParents` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `IsRecoverableByInstructor` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsSharedWithInstructor` TINYINT(1),
    `DateSharedWithInstructor` DATETIME(6),
    PRIMARY KEY (`EvidenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
