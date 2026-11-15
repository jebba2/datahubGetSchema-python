-- Data set: Portfolio Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE "portfolio_categories_load" (
    "categoryid" UUID NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(256),
    "isretired" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("categoryid")
);
