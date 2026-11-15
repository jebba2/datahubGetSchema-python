-- Data set: Intelligent Agent Run Users
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE "intelligent_agent_run_users" (
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
CREATE INDEX "ix_intelligent_agent_run_users_agentrunid" ON "intelligent_agent_run_users" ("agentrunid");
CREATE INDEX "ix_intelligent_agent_run_users_userid" ON "intelligent_agent_run_users" ("userid");
CREATE INDEX "ix_intelligent_agent_run_users_orgunitid" ON "intelligent_agent_run_users" ("orgunitid");
