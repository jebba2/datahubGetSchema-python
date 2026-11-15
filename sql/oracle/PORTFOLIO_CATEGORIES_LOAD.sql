-- Data set: Portfolio Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE "PORTFOLIO_CATEGORIES_LOAD" (
    "CATEGORYID" VARCHAR2(36 CHAR) NOT NULL,
    "ORGUNITID" NUMBER(10),
    "NAME" VARCHAR2(256 CHAR),
    "ISRETIRED" NUMBER(1),
    "ISDELETED" NUMBER(1),
    "LASTMODIFIED" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    PRIMARY KEY ("CATEGORYID")
);
