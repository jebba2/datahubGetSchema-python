-- Data set: LTI Advantage Registration Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-registration-audit
CREATE TABLE `LTIAdvantageRegistrationAudit_LOAD` (
    `Action` VARCHAR(10),
    `ClientId` VARCHAR(255) NOT NULL,
    `ToolName` VARCHAR(200),
    `Domain` TEXT,
    `RedirectURLs` TEXT,
    `KeysetURL` VARCHAR(255),
    `LoginURL` VARCHAR(255),
    `LTIVersion` VARCHAR(12),
    `IsRegistrationEnabled` TINYINT(1),
    `SendInstitutionRole` TINYINT(1),
    `TargetLinkURI` VARCHAR(255),
    `ModifiedBy` BIGINT,
    `HasAssignmentAndGradeServices` TINYINT(1),
    `HasSubmissionReview` TINYINT(1),
    `HasDeepLinking` TINYINT(1),
    `HasNamesAndRoleProvisioningServices` TINYINT(1),
    `HasActivityItemProfile` TINYINT(1),
    `HasPlatformNotificationService` TINYINT(1),
    `Timestamp` DATETIME(6) NOT NULL,
    `HasAssetProcessor` TINYINT(1),
    PRIMARY KEY (`ClientId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
