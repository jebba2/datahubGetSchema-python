-- Data set: Brightspace App Deployments
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE "brightspace_app_deployments" (
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
CREATE INDEX "ix_brightspace_app_deployments_appid" ON "brightspace_app_deployments" ("appid");
CREATE INDEX "ix_brightspace_app_deployments_createdby" ON "brightspace_app_deployments" ("createdby");
CREATE INDEX "ix_brightspace_app_deployments_lastupdatedby" ON "brightspace_app_deployments" ("lastupdatedby");
