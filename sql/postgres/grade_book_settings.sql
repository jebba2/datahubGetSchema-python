-- Data set: Grade Book Settings
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-book-settings
CREATE TABLE "grade_book_settings" (
    "orgunitid" INTEGER NOT NULL,
    "gradeschemeid" BIGINT NOT NULL,
    "gradingsystem" VARCHAR(8),
    "ungradeditems" VARCHAR(25),
    "isadjustedfinalgradereleased" BOOLEAN,
    "iscalculatedfinalgradereleased" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "gradeschemeid")
);
