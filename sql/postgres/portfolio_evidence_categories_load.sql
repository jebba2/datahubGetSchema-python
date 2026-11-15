-- Data set: Portfolio Evidence Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-categories
CREATE TABLE "portfolio_evidence_categories_load" (
    "categoryid" UUID NOT NULL,
    "evidenceid" UUID NOT NULL,
    "group" VARCHAR(30) NOT NULL,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("categoryid", "evidenceid", "group")
);
