-- Data set: Awards Issued (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE "awards_issued_load" (
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
