-- Data set: Portfolio Evidence Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-categories
CREATE TABLE "PORTFOLIO_EVIDENCE_CATEGORIES_LOAD" (
    "CATEGORYID" VARCHAR2(36 CHAR) NOT NULL,
    "EVIDENCEID" VARCHAR2(36 CHAR) NOT NULL,
    "GROUP" VARCHAR2(30 CHAR) NOT NULL,
    "ISDELETED" NUMBER(1),
    "LASTMODIFIED" TIMESTAMP(7),
    "LASTMODIFIEDBY" NUMBER(10),
    PRIMARY KEY ("CATEGORYID", "EVIDENCEID", "GROUP")
);
