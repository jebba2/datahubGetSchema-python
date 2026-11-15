-- Data set: User Attribute Definitions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-definitions
CREATE TABLE "USER_ATTRIBUTE_DEFINITIONS_LOAD" (
    "ATTRIBUTEID" VARCHAR2(128 CHAR) NOT NULL,
    "NAME" VARCHAR2(128 CHAR),
    "TYPE" VARCHAR2(8 CHAR),
    "ALLOWMULTIPLE" NUMBER(1),
    "ISDEFAULT" NUMBER(1),
    "LASTMODIFIED" TIMESTAMP(7),
    "MODIFIEDBY" NUMBER(10),
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("ATTRIBUTEID")
);
