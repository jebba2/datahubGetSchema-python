-- Data set: Intelligent Agent Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-objects
CREATE TABLE "intelligent_agent_objects_load" (
    "agentid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "agentname" VARCHAR(128),
    "description" VARCHAR(1000),
    "enabled" BOOLEAN,
    "specificroles" VARCHAR(1000),
    "loginconditionenabled" BOOLEAN,
    "loginconditionthreshold" INTEGER,
    "loginconditiontype" VARCHAR(14),
    "accessconditionenabled" BOOLEAN,
    "accessconditionthreshold" INTEGER,
    "accessconditiontype" VARCHAR(20),
    "resultid" BIGINT,
    "repeattype" VARCHAR(10),
    "emailwhensatisfied" BOOLEAN,
    "enableschedule" BOOLEAN,
    "scheduletype" VARCHAR(10),
    "schedulerepeatsevery" INTEGER,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("agentid")
);
