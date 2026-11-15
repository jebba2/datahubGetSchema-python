-- Data set: Portfolio Evidence Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-objects
CREATE TABLE "portfolio_evidence_objects" (
    "evidenceid" UUID NOT NULL,
    "ownerid" INTEGER,
    "orgunitid" INTEGER,
    "evidencetype" VARCHAR(30),
    "title" VARCHAR(1000),
    "isapproved" BOOLEAN,
    "isspotlighted" BOOLEAN,
    "issharedtoparents" BOOLEAN,
    "isdeleted" BOOLEAN,
    "isrecoverablebyinstructor" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "issharedwithinstructor" BOOLEAN,
    "datesharedwithinstructor" TIMESTAMP(6),
    PRIMARY KEY ("evidenceid")
);
CREATE INDEX "ix_portfolio_evidence_objects_ownerid" ON "portfolio_evidence_objects" ("ownerid");
CREATE INDEX "ix_portfolio_evidence_objects_orgunitid" ON "portfolio_evidence_objects" ("orgunitid");
CREATE INDEX "ix_portfolio_evidence_objects_lastmodifiedby" ON "portfolio_evidence_objects" ("lastmodifiedby");
