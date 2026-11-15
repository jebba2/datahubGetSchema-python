-- Data set: CPD Methods
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-methods
CREATE TABLE "cpd_methods" (
    "methodid" INTEGER NOT NULL,
    "name" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("methodid")
);
