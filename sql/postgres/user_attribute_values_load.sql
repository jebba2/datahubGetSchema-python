-- Data set: User Attribute Values (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE "user_attribute_values_load" (
    "userid" INTEGER NOT NULL,
    "attributeid" VARCHAR(128) NOT NULL,
    "value" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" INTEGER,
    PRIMARY KEY ("userid", "attributeid")
);
