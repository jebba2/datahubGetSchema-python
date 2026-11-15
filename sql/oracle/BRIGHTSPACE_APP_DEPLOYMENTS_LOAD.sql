-- Data set: Brightspace App Deployments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE "BRIGHTSPACE_APP_DEPLOYMENTS_LOAD" (
    "DEPLOYMENTID" NUMBER(19) NOT NULL,
    "APPID" NUMBER(19),
    "DEPLOYMENTNAME" VARCHAR2(256 CHAR),
    "ENABLED" NUMBER(1),
    "CREATEDDATE" TIMESTAMP(7),
    "CREATEDBY" NUMBER(10),
    "LASTUPDATEDDATE" TIMESTAMP(7),
    "LASTUPDATEDBY" NUMBER(10),
    "OUAVAILABILITYSETID" NUMBER(19),
    "DATEDELETED" TIMESTAMP(7),
    "LASTMODIFIED" TIMESTAMP(7),
    PRIMARY KEY ("DEPLOYMENTID")
);
