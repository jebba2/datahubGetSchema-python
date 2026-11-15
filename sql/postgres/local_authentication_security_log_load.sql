-- Data set: Local Authentication Security Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4714-local-authentication-data-sets#local-authentication-security-log
CREATE TABLE "local_authentication_security_log_load" (
    "userid" INTEGER NOT NULL,
    "action" VARCHAR(70) NOT NULL,
    "modifiedby" INTEGER NOT NULL,
    "modifieddate" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("userid", "action", "modifiedby", "modifieddate")
);
