-- Data set: LTI Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-launches
CREATE TABLE `LTILaunches_LOAD` (
    `LTILaunchId` CHAR(36) NOT NULL,
    `UserId` INT,
    `IMSRoleNames` TEXT,
    `ImpersonatingUserId` BIGINT,
    `ImpersonatingUserIMSRoleNames` TEXT,
    `LaunchDate` DATETIME(6),
    `OrgUnitId` BIGINT,
    `LTILinkId` BIGINT,
    `DeploymentId` CHAR(36),
    `ClientId` CHAR(36),
    `ToolProviderId` VARCHAR(300),
    `ContentTopicId` BIGINT,
    `ParentModuleId` BIGINT,
    `Placement` VARCHAR(10),
    `MessageVersion` VARCHAR(10),
    `RequestType` VARCHAR(30),
    PRIMARY KEY (`LTILaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
