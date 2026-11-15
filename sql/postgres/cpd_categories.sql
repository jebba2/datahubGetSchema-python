-- Data set: CPD Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-categories
CREATE TABLE "cpd_categories" (
    "categoryid" INTEGER NOT NULL,
    "name" VARCHAR(256),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("categoryid")
);
