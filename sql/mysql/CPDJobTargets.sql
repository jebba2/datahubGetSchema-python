-- Data set: CPD Job Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-job-targets
CREATE TABLE `CPDJobTargets` (
    `PrincipalId` INT NOT NULL,
    `CategoryId` INT NOT NULL,
    `JobTitle` VARCHAR(256),
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
CREATE INDEX `IX_CPDJobTargets_CategoryId` ON `CPDJobTargets` (`CategoryId`);
