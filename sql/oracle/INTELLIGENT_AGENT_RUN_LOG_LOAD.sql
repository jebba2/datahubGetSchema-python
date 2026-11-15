-- Data set: Intelligent Agent Run Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-log
CREATE TABLE "INTELLIGENT_AGENT_RUN_LOG_LOAD" (
    "AGENTID" NUMBER(19),
    "AGENTRUNID" NUMBER(19) NOT NULL,
    "ISPRACTICERUN" NUMBER(1),
    "ISRUNNOW" NUMBER(1),
    "NUMUSERS" NUMBER(10),
    "NUMUSERSWITHERRORS" NUMBER(10),
    "NUMUSERSWITHINFOS" NUMBER(10),
    "NUMUSERSWITHWARNINGS" NUMBER(10),
    "RUNUSERID" NUMBER(10),
    "RUNDATE" TIMESTAMP(7),
    PRIMARY KEY ("AGENTRUNID")
);
