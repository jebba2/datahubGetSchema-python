-- Data set: Organizational Unit Parents (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE "ORGANIZATIONAL_UNIT_PARENTS_LOAD" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "PARENTORGUNITID" NUMBER(10) NOT NULL,
    "ROWVERSION" NUMBER(19),
    "DATEDELETED" TIMESTAMP(7),
    PRIMARY KEY ("ORGUNITID", "PARENTORGUNITID")
);
