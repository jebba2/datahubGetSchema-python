-- Data set: JIT Provisioned Users Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/5782-jit-provisioning-data-sets#jit-provisioned-users-log
CREATE TABLE "JIT_PROVISIONED_USERS_LOG_LOAD" (
    "USERID" NUMBER(10) NOT NULL,
    "MAPPINGFIELD" VARCHAR2(32 CHAR),
    "MAPPINGFIELDVALUE" VARCHAR2(270 CHAR),
    "PROVIDERTYPE" VARCHAR2(32 CHAR),
    "PROVIDERID" CLOB,
    "ROLEID" NUMBER(10),
    "TIMESTAMP" TIMESTAMP(7) NOT NULL,
    "ACTION" VARCHAR2(16 CHAR),
    PRIMARY KEY ("USERID", "TIMESTAMP")
);
