-- Data set: Intelligent Agent Run Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE `IntelligentAgentRunUsers_LOAD` (
    `AgentId` BIGINT NOT NULL,
    `AgentRunId` BIGINT NOT NULL,
    `UserId` INT NOT NULL,
    `OrgUnitId` INT,
    `ActionTypeName` VARCHAR(50),
    `ActionHasError` TINYINT(1),
    `ActionHasInfo` TINYINT(1),
    `ActionHasWarning` TINYINT(1),
    `ShouldRetry` TINYINT(1),
    PRIMARY KEY (`AgentId`, `AgentRunId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
