-- Data set: Intelligent Agent Run Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE "INTELLIGENT_AGENT_RUN_USERS_LOAD" (
    "AGENTID" NUMBER(19) NOT NULL,
    "AGENTRUNID" NUMBER(19) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "ORGUNITID" NUMBER(10),
    "ACTIONTYPENAME" VARCHAR2(50 CHAR),
    "ACTIONHASERROR" NUMBER(1),
    "ACTIONHASINFO" NUMBER(1),
    "ACTIONHASWARNING" NUMBER(1),
    "SHOULDRETRY" NUMBER(1),
    PRIMARY KEY ("AGENTID", "AGENTRUNID", "USERID")
);
