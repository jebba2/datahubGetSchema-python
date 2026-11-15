-- Data set: ADS CPD Job Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-job-targets
CREATE TABLE `ADSCPDJobTargets_LOAD` (
    `JobTitle` TEXT,
    `StartDate` TEXT,
    `SubjectId` TEXT,
    `SubjectName` TEXT,
    `StructuredMinutes` TEXT,
    `UnstructuredMinutes` TEXT,
    `StructuredRecordCount` TEXT,
    `UnstructuredRecordCount` TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
