-- Data set: Portfolio Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE `PortfolioCategories` (
    `CategoryId` CHAR(36) NOT NULL,
    `OrgUnitId` INT,
    `Name` VARCHAR(256),
    `IsRetired` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_PortfolioCategories_OrgUnitId` ON `PortfolioCategories` (`OrgUnitId`);
CREATE INDEX `IX_PortfolioCategories_LastModifiedBy` ON `PortfolioCategories` (`LastModifiedBy`);
