-- Data set: Course Awards
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE `CourseAwards` (
    `AssociationId` BIGINT NOT NULL,
    `AwardId` BIGINT,
    `OrgUnitId` BIGINT,
    `DateCreated` DATETIME(6),
    `HiddenAward` TINYINT(1),
    `ConditionSetId` BIGINT,
    `LastModified` DATETIME(6),
    `Credits` DECIMAL(9,2),
    `IsAssociated` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AssociationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CourseAwards_AwardId` ON `CourseAwards` (`AwardId`);
CREATE INDEX `IX_CourseAwards_OrgUnitId` ON `CourseAwards` (`OrgUnitId`);
