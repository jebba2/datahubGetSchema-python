-- Data set: Portfolio Evidence Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE "portfolio_evidence_log_load" (
    "logid" UUID NOT NULL,
    "parentobjectid" UUID,
    "objectid" UUID,
    "objecttype" VARCHAR(40),
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "action" VARCHAR(16),
    "ismobile" BOOLEAN,
    "actiondate" TIMESTAMP(6),
    PRIMARY KEY ("logid")
);
