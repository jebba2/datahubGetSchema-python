-- Data set: User Attribute Values (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE "USER_ATTRIBUTE_VALUES_LOAD" (
    "USERID" NUMBER(10) NOT NULL,
    "ATTRIBUTEID" VARCHAR2(128 CHAR) NOT NULL,
    "VALUE" CLOB,
    "LASTMODIFIED" TIMESTAMP(7),
    "MODIFIEDBY" NUMBER(10),
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(10),
    PRIMARY KEY ("USERID", "ATTRIBUTEID")
);
