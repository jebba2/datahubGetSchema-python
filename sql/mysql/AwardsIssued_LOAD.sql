-- Data set: Awards Issued (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE `AwardsIssued_LOAD` (
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
