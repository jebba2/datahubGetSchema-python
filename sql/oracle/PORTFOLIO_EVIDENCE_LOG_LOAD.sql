-- Data set: Portfolio Evidence Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE "PORTFOLIO_EVIDENCE_LOG_LOAD" (
    "LOGID" VARCHAR2(36 CHAR) NOT NULL,
    "PARENTOBJECTID" VARCHAR2(36 CHAR),
    "OBJECTID" VARCHAR2(36 CHAR),
    "OBJECTTYPE" VARCHAR2(40 CHAR),
    "USERID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "ACTION" VARCHAR2(16 CHAR),
    "ISMOBILE" NUMBER(1),
    "ACTIONDATE" TIMESTAMP(7),
    PRIMARY KEY ("LOGID")
);
