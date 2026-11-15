-- Data set: Brightspace App Deployments
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE `BrightspaceAppDeployments` (
    `DeploymentId` BIGINT NOT NULL,
    `AppId` BIGINT,
    `DeploymentName` VARCHAR(256),
    `Enabled` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastUpdatedDate` DATETIME(6),
    `LastUpdatedBy` INT,
    `OuAvailabilitySetId` BIGINT,
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`DeploymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_BrightspaceAppDeployments_AppId` ON `BrightspaceAppDeployments` (`AppId`);
CREATE INDEX `IX_BrightspaceAppDeployments_CreatedBy` ON `BrightspaceAppDeployments` (`CreatedBy`);
CREATE INDEX `IX_BrightspaceAppDeployments_LastUpdatedBy` ON `BrightspaceAppDeployments` (`LastUpdatedBy`);
