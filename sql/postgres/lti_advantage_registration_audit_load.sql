-- Data set: LTI Advantage Registration Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-registration-audit
CREATE TABLE "lti_advantage_registration_audit_load" (
    "action" VARCHAR(10),
    "clientid" VARCHAR(255) NOT NULL,
    "toolname" VARCHAR(200),
    "domain" VARCHAR(2083),
    "redirecturls" VARCHAR(2083),
    "keyseturl" VARCHAR(255),
    "loginurl" VARCHAR(255),
    "ltiversion" VARCHAR(12),
    "isregistrationenabled" BOOLEAN,
    "sendinstitutionrole" BOOLEAN,
    "targetlinkuri" VARCHAR(255),
    "modifiedby" BIGINT,
    "hasassignmentandgradeservices" BOOLEAN,
    "hassubmissionreview" BOOLEAN,
    "hasdeeplinking" BOOLEAN,
    "hasnamesandroleprovisioningservices" BOOLEAN,
    "hasactivityitemprofile" BOOLEAN,
    "hasplatformnotificationservice" BOOLEAN,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "hasassetprocessor" BOOLEAN,
    PRIMARY KEY ("clientid", "timestamp")
);
