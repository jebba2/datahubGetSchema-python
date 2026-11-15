-- Data set: Portfolio Evidence Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-objects
CREATE TABLE "portfolio_evidence_objects_load" (
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
