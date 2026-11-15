-- Data set: User Attribute Values
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE "user_attribute_values" (
    "userid" INTEGER NOT NULL,
    "attributeid" VARCHAR(128) NOT NULL,
    "value" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" INTEGER,
    PRIMARY KEY ("userid", "attributeid")
);
CREATE INDEX "ix_user_attribute_values_attributeid" ON "user_attribute_values" ("attributeid");
CREATE INDEX "ix_user_attribute_values_modifiedby" ON "user_attribute_values" ("modifiedby");
