-- Data set: Awards Issued
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE `AwardsIssued` (
    `AwardId` BIGINT,
    `OrgUnitId` BIGINT,
    `UserId` BIGINT,
    `IssuedBy` INT,
    `IssueDate` DATETIME(6),
    `ExpiryDate` DATETIME(6),
    `IssuedId` BIGINT NOT NULL,
    `Criteria` VARCHAR(1000),
    `Evidence` VARCHAR(1000),
    `RevokedDate` DATETIME(6),
    `RevokedReason` VARCHAR(1000),
    `RevokedBy` BIGINT,
    `LastModifiedBy` BIGINT,
    `LastModifiedDate` DATETIME(6),
    `Version` BIGINT,
    `CertificateId` VARCHAR(12),
    PRIMARY KEY (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AwardsIssued_AwardId` ON `AwardsIssued` (`AwardId`);
CREATE INDEX `IX_AwardsIssued_OrgUnitId` ON `AwardsIssued` (`OrgUnitId`);
CREATE INDEX `IX_AwardsIssued_UserId` ON `AwardsIssued` (`UserId`);
CREATE INDEX `IX_AwardsIssued_IssuedBy` ON `AwardsIssued` (`IssuedBy`);
CREATE INDEX `IX_AwardsIssued_RevokedBy` ON `AwardsIssued` (`RevokedBy`);
CREATE INDEX `IX_AwardsIssued_LastModifiedBy` ON `AwardsIssued` (`LastModifiedBy`);
