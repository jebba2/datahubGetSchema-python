-- Data set: User Attribute Definitions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-definitions
CREATE TABLE "user_attribute_definitions_load" (
    "attributeid" VARCHAR(128) NOT NULL,
    "name" VARCHAR(128),
    "type" VARCHAR(8),
    "allowmultiple" BOOLEAN,
    "isdefault" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("attributeid")
);
