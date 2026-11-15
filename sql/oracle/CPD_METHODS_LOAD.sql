-- Data set: CPD Methods (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-methods
CREATE TABLE "CPD_METHODS_LOAD" (
    "METHODID" NUMBER(10) NOT NULL,
    "NAME" CLOB,
    "LASTMODIFIED" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("METHODID")
);
