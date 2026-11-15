-- Data set: ADS Terms & Conditions - Version History Report
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-version-history-report
CREATE TABLE `ADSTermsConditionsVersionHistoryReport` (
    `VersionId` TEXT,
    `OrgId` TEXT,
    `Language` TEXT,
    `Title` TEXT,
    `TermsandConditions` TEXT,
    `Comments` TEXT,
    `VersionCreatedDate` TEXT,
    `VersionCreatedById` TEXT,
    `VersionCreatedByFirstName` TEXT,
    `VersionCreatedByLastName` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
