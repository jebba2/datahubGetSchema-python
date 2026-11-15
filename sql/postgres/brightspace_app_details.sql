-- Data set: Brightspace App Details
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-details
CREATE TABLE "brightspace_app_details" (
    "appid" BIGINT NOT NULL,
    "globalid" UUID,
    "name" VARCHAR(200),
    "islocal" BOOLEAN,
    "state" INTEGER,
    "installedversion" VARCHAR(100),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastpublisheddate" TIMESTAMP(6),
    "lastpublishedby" INTEGER,
    "lastupdateddate" TIMESTAMP(6),
    "lastupdatedby" INTEGER,
    "categories" VARCHAR(500),
    "orgid" INTEGER,
    "defaultdeploymentid" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("appid")
);
CREATE INDEX "ix_brightspace_app_details_createdby" ON "brightspace_app_details" ("createdby");
CREATE INDEX "ix_brightspace_app_details_lastpublishedby" ON "brightspace_app_details" ("lastpublishedby");
CREATE INDEX "ix_brightspace_app_details_lastupdatedby" ON "brightspace_app_details" ("lastupdatedby");
CREATE INDEX "ix_brightspace_app_details_orgid" ON "brightspace_app_details" ("orgid");
CREATE INDEX "ix_brightspace_app_details_defaultdeploymentid" ON "brightspace_app_details" ("defaultdeploymentid");
