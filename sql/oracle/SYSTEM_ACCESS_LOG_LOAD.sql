-- Data set: System Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-log
CREATE TABLE "SYSTEM_ACCESS_LOG_LOAD" (
    "SESSIONID" VARCHAR2(36 CHAR) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "TIMESTAMP" TIMESTAMP(7) NOT NULL,
    "STATE" VARCHAR2(20 CHAR) NOT NULL,
    "SOURCE" VARCHAR2(20 CHAR),
    "APPVERSION" VARCHAR2(20 CHAR),
    "DEVICE" VARCHAR2(50 CHAR),
    "ISOFFLINEMODE" NUMBER(1),
    "IPADDRESS" VARCHAR2(45 CHAR),
    PRIMARY KEY ("SESSIONID", "USERID", "TIMESTAMP", "STATE")
);
