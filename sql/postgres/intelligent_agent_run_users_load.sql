-- Data set: Intelligent Agent Run Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE "intelligent_agent_run_users_load" (
    "agentid" BIGINT NOT NULL,
    "agentrunid" BIGINT NOT NULL,
    "userid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "actiontypename" VARCHAR(50),
    "actionhaserror" BOOLEAN,
    "actionhasinfo" BOOLEAN,
    "actionhaswarning" BOOLEAN,
    "shouldretry" BOOLEAN,
    PRIMARY KEY ("agentid", "agentrunid", "userid")
);
