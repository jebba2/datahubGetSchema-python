-- Data set: Reoffer Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE "reoffer_course_load" (
    "courseofferingid" INTEGER NOT NULL,
    "sourcecourseid" INTEGER NOT NULL,
    "createdby" INTEGER,
    "reofferdate" TIMESTAMP(6),
    PRIMARY KEY ("courseofferingid", "sourcecourseid")
);
