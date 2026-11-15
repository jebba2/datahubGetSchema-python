-- Data set: Intelligent Agent Run Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-log
CREATE TABLE "intelligent_agent_run_log" (
    "agentid" BIGINT,
    "agentrunid" BIGINT NOT NULL,
    "ispracticerun" BOOLEAN,
    "isrunnow" BOOLEAN,
    "numusers" INTEGER,
    "numuserswitherrors" INTEGER,
    "numuserswithinfos" INTEGER,
    "numuserswithwarnings" INTEGER,
    "runuserid" INTEGER,
    "rundate" TIMESTAMP(6),
    PRIMARY KEY ("agentrunid")
);
CREATE INDEX "ix_intelligent_agent_run_log_agentid" ON "intelligent_agent_run_log" ("agentid");
CREATE INDEX "ix_intelligent_agent_run_log_runuserid" ON "intelligent_agent_run_log" ("runuserid");
