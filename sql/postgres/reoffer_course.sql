-- Data set: Reoffer Course
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE "reoffer_course" (
    "courseofferingid" INTEGER NOT NULL,
    "sourcecourseid" INTEGER NOT NULL,
    "createdby" INTEGER,
    "reofferdate" TIMESTAMP(6),
    PRIMARY KEY ("courseofferingid", "sourcecourseid")
);
CREATE INDEX "ix_reoffer_course_sourcecourseid" ON "reoffer_course" ("sourcecourseid");
CREATE INDEX "ix_reoffer_course_createdby" ON "reoffer_course" ("createdby");
