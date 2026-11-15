-- Data set: Outcomes Rubric Alignments
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-rubric-alignments
CREATE TABLE `OutcomesRubricAlignments` (
    `RubricId` BIGINT NOT NULL,
    `CriterionId` BIGINT NOT NULL,
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`RubricId`, `CriterionId`, `OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesRubricAlignments_CriterionId` ON `OutcomesRubricAlignments` (`CriterionId`);
CREATE INDEX `IX_OutcomesRubricAlignments_OutcomeId` ON `OutcomesRubricAlignments` (`OutcomeId`);
CREATE INDEX `IX_OutcomesRubricAlignments_RegistryId` ON `OutcomesRubricAlignments` (`RegistryId`);
CREATE INDEX `IX_OutcomesRubricAlignments_CreatedBy` ON `OutcomesRubricAlignments` (`CreatedBy`);
CREATE INDEX `IX_OutcomesRubricAlignments_LastModifiedBy` ON `OutcomesRubricAlignments` (`LastModifiedBy`);
