-- Data set: Brightspace App Details
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-details
CREATE TABLE `BrightspaceAppDetails` (
    `AppId` BIGINT NOT NULL,
    `GlobalId` CHAR(36),
    `Name` VARCHAR(200),
    `IsLocal` TINYINT(1),
    `State` INT,
    `InstalledVersion` VARCHAR(100),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastPublishedDate` DATETIME(6),
    `LastPublishedBy` INT,
    `LastUpdatedDate` DATETIME(6),
    `LastUpdatedBy` INT,
    `Categories` VARCHAR(500),
    `OrgId` INT,
    `DefaultDeploymentId` BIGINT,
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`AppId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_BrightspaceAppDetails_CreatedBy` ON `BrightspaceAppDetails` (`CreatedBy`);
CREATE INDEX `IX_BrightspaceAppDetails_LastPublishedBy` ON `BrightspaceAppDetails` (`LastPublishedBy`);
CREATE INDEX `IX_BrightspaceAppDetails_LastUpdatedBy` ON `BrightspaceAppDetails` (`LastUpdatedBy`);
CREATE INDEX `IX_BrightspaceAppDetails_OrgId` ON `BrightspaceAppDetails` (`OrgId`);
CREATE INDEX `IX_BrightspaceAppDetails_DefaultDeploymentId` ON `BrightspaceAppDetails` (`DefaultDeploymentId`);
