-- Data set: CPD Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-categories
CREATE TABLE "CPD_CATEGORIES_LOAD" (
    "CATEGORYID" NUMBER(10) NOT NULL,
    "NAME" VARCHAR2(256 CHAR),
    "LASTMODIFIED" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("CATEGORYID")
);
