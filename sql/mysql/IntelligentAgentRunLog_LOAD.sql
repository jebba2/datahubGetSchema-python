-- Data set: Intelligent Agent Run Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-log
CREATE TABLE `IntelligentAgentRunLog_LOAD` (
    `AgentId` BIGINT,
    `AgentRunId` BIGINT NOT NULL,
    `IsPracticeRun` TINYINT(1),
    `IsRunNow` TINYINT(1),
    `NumUsers` INT,
    `NumUsersWithErrors` INT,
    `NumUsersWithInfos` INT,
    `NumUsersWithWarnings` INT,
    `RunUserId` INT,
    `RunDate` DATETIME(6),
    PRIMARY KEY (`AgentRunId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
