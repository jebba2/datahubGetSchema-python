-- Data set: Auditor Relationships Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE "AUDITOR_RELATIONSHIPS_LOG_LOAD" (
    "AUDITORID" NUMBER(10) NOT NULL,
    "USERTOAUDITID" NUMBER(10) NOT NULL,
    "ORGUNITID" NUMBER(10) NOT NULL,
    "ACTION" VARCHAR2(16 CHAR),
    "MODIFIEDBY" NUMBER(10),
    "MODIFIEDDATE" TIMESTAMP(7) NOT NULL,
    PRIMARY KEY ("AUDITORID", "USERTOAUDITID", "ORGUNITID", "MODIFIEDDATE")
);
