-- Data set: ADS Awards Issued (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#awards-issued
CREATE TABLE `ADSAwardsIssued_LOAD` (
    `AwardId` TEXT,
    `Name` TEXT,
    `Type` TEXT,
    `Credits` TEXT,
    `UserId` TEXT,
    `UserName` TEXT,
    `FirstName` TEXT,
    `LastName` TEXT,
    `OrgDefinedId` TEXT,
    `IssuedBy` TEXT,
    `IssuerUserName` TEXT,
    `IssuerFirstName` TEXT,
    `IssuerLastName` TEXT,
    `IssueDate` TEXT,
    `RevokedId` TEXT,
    `Criteria` TEXT,
    `Evidence` TEXT,
    `ExpiryDate` TEXT,
    `OrgUnitId` TEXT,
    `OrgUnitName` TEXT,
    `OrgUnitCode` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
