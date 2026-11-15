-- Data set: Portfolio Evidence Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-categories
CREATE TABLE `PortfolioEvidenceCategories_LOAD` (
    `CategoryId` CHAR(36) NOT NULL,
    `EvidenceId` CHAR(36) NOT NULL,
    `Group` VARCHAR(30) NOT NULL,
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`CategoryId`, `EvidenceId`, `Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
