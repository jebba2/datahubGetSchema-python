-- Data set: JIT Provisioned Users Log
-- Source: https://community.d2l.com/brightspace/kb/articles/5782-jit-provisioning-data-sets#jit-provisioned-users-log
CREATE TABLE "jit_provisioned_users_log" (
    "userid" INTEGER NOT NULL,
    "mappingfield" VARCHAR(32),
    "mappingfieldvalue" VARCHAR(270),
    "providertype" VARCHAR(32),
    "providerid" VARCHAR(1024),
    "roleid" INTEGER,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "action" VARCHAR(16),
    PRIMARY KEY ("userid", "timestamp")
);
CREATE INDEX "ix_jit_provisioned_users_log_roleid" ON "jit_provisioned_users_log" ("roleid");
