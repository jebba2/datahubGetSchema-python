-- Data set: Local Authentication Security Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4714-local-authentication-data-sets#local-authentication-security-log
CREATE TABLE "LOCAL_AUTHENTICATION_SECURITY_LOG_LOAD" (
    "USERID" NUMBER(10) NOT NULL,
    "ACTION" VARCHAR2(70 CHAR) NOT NULL,
    "MODIFIEDBY" NUMBER(10) NOT NULL,
    "MODIFIEDDATE" TIMESTAMP(7) NOT NULL,
    PRIMARY KEY ("USERID", "ACTION", "MODIFIEDBY", "MODIFIEDDATE")
);
