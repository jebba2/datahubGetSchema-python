-- Data set: Awards Issued
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE "awards_issued" (
    "awardid" BIGINT,
    "orgunitid" BIGINT,
    "userid" BIGINT,
    "issuedby" INTEGER,
    "issuedate" TIMESTAMP(6),
    "expirydate" TIMESTAMP(6),
    "issuedid" BIGINT NOT NULL,
    "criteria" VARCHAR(1000),
    "evidence" VARCHAR(1000),
    "revokeddate" TIMESTAMP(6),
    "revokedreason" VARCHAR(1000),
    "revokedby" BIGINT,
    "lastmodifiedby" BIGINT,
    "lastmodifieddate" TIMESTAMP(6),
    "version" BIGINT,
    "certificateid" VARCHAR(12),
    PRIMARY KEY ("issuedid")
);
CREATE INDEX "ix_awards_issued_awardid" ON "awards_issued" ("awardid");
CREATE INDEX "ix_awards_issued_orgunitid" ON "awards_issued" ("orgunitid");
CREATE INDEX "ix_awards_issued_userid" ON "awards_issued" ("userid");
CREATE INDEX "ix_awards_issued_issuedby" ON "awards_issued" ("issuedby");
CREATE INDEX "ix_awards_issued_revokedby" ON "awards_issued" ("revokedby");
CREATE INDEX "ix_awards_issued_lastmodifiedby" ON "awards_issued" ("lastmodifiedby");
