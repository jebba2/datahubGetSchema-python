-- Data set: Tools
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE "TOOLS" (
    "TOOLID" NUMBER(10) NOT NULL,
    "NAME" VARCHAR2(50 CHAR),
    "DISPLAYNAME" VARCHAR2(200 CHAR),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("TOOLID")
);
