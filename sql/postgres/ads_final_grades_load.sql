-- Data set: ADS Final Grades (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#final-grades
CREATE TABLE "ads_final_grades_load" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "semesterid" TEXT,
    "semestername" TEXT,
    "semestercode" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionname" TEXT,
    "finalcalculatedgradepercentage" TEXT,
    "finalcalculatedgradelastmodifieddate" TEXT,
    "finaladjustedgradepercentage" TEXT,
    "finaladjustedlastmodifieddate" TEXT,
    "finaladjustedcomments" TEXT,
    "finaladjustedgradeisreleased" TEXT,
    "finaladjustedlastmodifiedby" TEXT
);
