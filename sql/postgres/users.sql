-- Data set: Users
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#users
CREATE TABLE "users" (
    "userid" INTEGER NOT NULL,
    "username" VARCHAR(270),
    "orgdefinedid" VARCHAR(256),
    "firstname" VARCHAR(64),
    "middlename" VARCHAR(64),
    "lastname" VARCHAR(64),
    "isactive" BOOLEAN,
    "externalemail" VARCHAR(256),
    "creationdate" TIMESTAMP(6),
    "version" BIGINT,
    "orgroleid" INTEGER,
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("userid")
);
