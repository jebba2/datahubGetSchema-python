-- Data set: Brightspace App Deployments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE "brightspace_app_deployments_load" (
    "deploymentid" BIGINT NOT NULL,
    "appid" BIGINT,
    "deploymentname" VARCHAR(256),
    "enabled" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastupdateddate" TIMESTAMP(6),
    "lastupdatedby" INTEGER,
    "ouavailabilitysetid" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("deploymentid")
);
