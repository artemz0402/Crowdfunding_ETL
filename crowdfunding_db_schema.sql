CREATE TABLE "category" (
    "category_id" VARCHAR(30) NOT NULL,
    "category" VARCHAR(30) NOT NULL,
    CONSTRAINT "category_pk" PRIMARY KEY ("category_id")
);


CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(30) NOT NULL,
    "subcategory" VARCHAR(30) NOT NULL,
    CONSTRAINT "subcategory_pk" PRIMARY KEY ("subcategory_id")
);


CREATE TABLE "contacts" (
    "contact_id" VARCHAR(30) NOT NULL,
    "first_name" VARCHAR(30) NOT NULL,
    "last_name" VARCHAR(30) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    CONSTRAINT "contacts_pk" PRIMARY KEY ("contact_id")
);

CREATE TABLE "campaign" (
    "cf_id" VARCHAR(30) NOT NULL,
    "contact_id" VARCHAR(30) NOT NULL,
    "company_name" VARCHAR(50) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(30) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(30) NOT NULL,
    "currency" VARCHAR(30) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(30)   NOT NULL,
    "subcategory_id" VARCHAR(30)   NOT NULL,
    CONSTRAINT "campaign_pk" PRIMARY KEY ("cf_id")
);


ALTER TABLE "campaign" ADD CONSTRAINT "cam_contact_id_fk" FOREIGN KEY ("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "cam_category_id_fk" FOREIGN KEY ("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "cam_subcategory_id_fk" FOREIGN KEY ("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");