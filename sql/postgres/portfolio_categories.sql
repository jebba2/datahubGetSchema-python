-- Data set: Portfolio Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE "portfolio_categories" (
    "categoryid" UUID NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(256),
    "isretired" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("categoryid")
);
CREATE INDEX "ix_portfolio_categories_orgunitid" ON "portfolio_categories" ("orgunitid");
CREATE INDEX "ix_portfolio_categories_lastmodifiedby" ON "portfolio_categories" ("lastmodifiedby");
