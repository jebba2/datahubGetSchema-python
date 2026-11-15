-- Data set: LTI Links
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-links
CREATE TABLE "lti_links" (
    "ltilinkid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "title" VARCHAR(200),
    "linktype" INTEGER,
    "ltiversion" VARCHAR(12),
    "url" VARCHAR(2000),
    "description" VARCHAR(1000),
    "isvisible" BOOLEAN,
    "sendtcinfo" BOOLEAN,
    "sendcontextinfo" BOOLEAN,
    "sendcourseinfo" BOOLEAN,
    "sendorgunitinfo" BOOLEAN,
    "senduserid" BOOLEAN,
    "sendusername" BOOLEAN,
    "senduseremail" BOOLEAN,
    "sendlinktitle" BOOLEAN,
    "sendlinkdescription" BOOLEAN,
    "sendd2lusername" BOOLEAN,
    "sendd2lorgdefinedid" BOOLEAN,
    "sendd2lorgroleid" BOOLEAN,
    "sendbrightspaceuserid" BOOLEAN,
    "anonymous" BOOLEAN,
    "shared" BOOLEAN,
    "usetoolprovidersecuritysettings" BOOLEAN,
    "lastmodifieddate" TIMESTAMP(6),
    "ouavailabilitysetid" BIGINT,
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "deploymentid" UUID,
    "linksubtype" INTEGER,
    PRIMARY KEY ("ltilinkid")
);
CREATE INDEX "ix_lti_links_orgunitid" ON "lti_links" ("orgunitid");
CREATE INDEX "ix_lti_links_lastmodifiedby" ON "lti_links" ("lastmodifiedby");
CREATE INDEX "ix_lti_links_deploymentid" ON "lti_links" ("deploymentid");
