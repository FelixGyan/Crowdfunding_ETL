CREATE TABLE contacts (
    contact_id INTEGER  NOT NULL ,
    first_name VARCHAR(100)  NOT NULL ,
    last_name VARCHAR(100)  NOT NULL ,
    email VARCHAR(100)  NOT NULL,
	CONSTRAINT "primary_contacts" PRIMARY KEY ("contact_id")
);

SELECT * FROM contacts;


CREATE TABLE category (
    category_id VARCHAR(100)  NOT NULL ,
    category VARCHAR(100)  NOT NULL ,
	CONSTRAINT "primary_category" PRIMARY KEY ("category_id")
);

SELECT * FROM category;

CREATE TABLE subcategory (
    subcategory_id VARCHAR(100)  NOT NULL ,
    subcategory VARCHAR(100)  NOT NULL ,
    CONSTRAINT "primary_subcategory" PRIMARY KEY ("subcategory_id")
);

SELECT * FROM subcategory;

CREATE TABLE campaign (
    cf_id INTEGER  NOT NULL ,
    contact_id INTEGER  NOT NULL ,
    company_name VARCHAR(100)  NOT NULL ,
    description TEXT  NOT NULL ,
    goal FLOAT  NOT NULL ,
    pledged FLOAT  NOT NULL ,
    outcome VARCHAR(100)  NOT NULL ,
    backers_count INTEGER  NOT NULL ,
    country VARCHAR(100)  NOT NULL ,
    currency VARCHAR(100)  NOT NULL ,
    launched_date DATE  NOT NULL ,
    end_date DATE  NOT NULL ,
    category_id VARCHAR(100)  NOT NULL ,
    subcategory_id VARCHAR(100)  NOT NULL ,
	CONSTRAINT "primary_campaign" PRIMARY KEY ("cf_id")	
);

SELECT * FROM campaign;

ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_con_id" 
FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_cat_id" 
FOREIGN KEY("category_id") REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_subcat_id" 
FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id");