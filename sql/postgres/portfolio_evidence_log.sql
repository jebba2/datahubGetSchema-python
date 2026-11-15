-- Data set: Portfolio Evidence Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE "portfolio_evidence_log" (
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
CREATE INDEX "ix_portfolio_evidence_log_userid" ON "portfolio_evidence_log" ("userid");
CREATE INDEX "ix_portfolio_evidence_log_orgunitid" ON "portfolio_evidence_log" ("orgunitid");
