-- Data set: CPD User Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-targets
CREATE TABLE `CPDUserTargets` (
    `PrincipalId` INT NOT NULL,
    `CategoryId` INT NOT NULL,
    `UserId` INT,
    `StructuredMinutes` INT,
    `UnstructuredMinutes` INT,
    `StructuredRecordCount` INT,
    `UnstructuredRecordCount` INT,
    `StartDate` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`PrincipalId`, `CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CPDUserTargets_CategoryId` ON `CPDUserTargets` (`CategoryId`);
CREATE INDEX `IX_CPDUserTargets_UserId` ON `CPDUserTargets` (`UserId`);
