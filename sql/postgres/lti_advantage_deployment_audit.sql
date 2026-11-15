-- Data set: LTI Advantage Deployment Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-deployment-audit
CREATE TABLE "lti_advantage_deployment_audit" (
    "action" VARCHAR(10),
    "deploymentid" VARCHAR(36) NOT NULL,
    "clientid" VARCHAR(36),
    "deploymentname" VARCHAR(200),
    "isdeploymentenabled" BOOLEAN,
    "hasassignmentsandgrades" BOOLEAN,
    "hasdeeplinking" BOOLEAN,
    "hasnamesandroles" BOOLEAN,
    "hassubmissionreview" BOOLEAN,
    "hasactivityitemprofile" BOOLEAN,
    "hasplatformnotificationservice" BOOLEAN,
    "hascontextcopy" BOOLEAN,
    "modifiedby" BIGINT,
    "anonymous" BOOLEAN,
    "preprovisioningenabled" BOOLEAN,
    "sendorgunitinfo" BOOLEAN,
    "senduserfirstname" BOOLEAN,
    "sendusermiddlename" BOOLEAN,
    "senduserlastname" BOOLEAN,
    "senduseremail" BOOLEAN,
    "sendbrightspaceuserid" BOOLEAN,
    "sendbrightspaceusername" BOOLEAN,
    "sendbrightspaceorgdefinedid" BOOLEAN,
    "sendlinktitle" BOOLEAN,
    "sendlinkdescription" BOOLEAN,
    "openasexternal" BOOLEAN,
    "automigratelinks" BOOLEAN,
    "issharedtomanyorgunits" BOOLEAN,
    "autocreategrades" BOOLEAN,
    "includeinfinalgrade" BOOLEAN,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "hasassetprocessor" BOOLEAN,
    PRIMARY KEY ("deploymentid", "timestamp")
);
CREATE INDEX "ix_lti_advantage_deployment_audit_clientid" ON "lti_advantage_deployment_audit" ("clientid");
CREATE INDEX "ix_lti_advantage_deployment_audit_modifiedby" ON "lti_advantage_deployment_audit" ("modifiedby");
