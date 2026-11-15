-- Data set: LTI Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-launches
CREATE TABLE "lti_launches_load" (
    "ltilaunchid" UUID NOT NULL,
    "userid" INTEGER,
    "imsrolenames" VARCHAR(10000),
    "impersonatinguserid" BIGINT,
    "impersonatinguserimsrolenames" VARCHAR(10000),
    "launchdate" TIMESTAMP(6),
    "orgunitid" BIGINT,
    "ltilinkid" BIGINT,
    "deploymentid" UUID,
    "clientid" UUID,
    "toolproviderid" VARCHAR(300),
    "contenttopicid" BIGINT,
    "parentmoduleid" BIGINT,
    "placement" VARCHAR(10),
    "messageversion" VARCHAR(10),
    "requesttype" VARCHAR(30),
    PRIMARY KEY ("ltilaunchid")
);
