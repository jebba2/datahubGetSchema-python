-- Data set: LTI Link Migration Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-link-migration-audit
CREATE TABLE `LTILinkMigrationAudit` (
    `LTIMigrationId` CHAR(36) NOT NULL,
    `UserId` BIGINT,
    `MigrationDate` DATETIME(6),
    `OrgUnitId` BIGINT,
    `LinkId` BIGINT,
    `LinkURL` TEXT,
    `LinkName` VARCHAR(200),
    `ClientId` VARCHAR(255),
    `RegistrationDomain` TEXT,
    `DeploymentId` CHAR(36),
    `JobId` BIGINT,
    `Status` SMALLINT,
    `FailureCode` SMALLINT,
    `MigrationType` SMALLINT,
    `LegacyURL` TEXT,
    PRIMARY KEY (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_LTILinkMigrationAudit_UserId` ON `LTILinkMigrationAudit` (`UserId`);
CREATE INDEX `IX_LTILinkMigrationAudit_OrgUnitId` ON `LTILinkMigrationAudit` (`OrgUnitId`);
CREATE INDEX `IX_LTILinkMigrationAudit_LinkId` ON `LTILinkMigrationAudit` (`LinkId`);
