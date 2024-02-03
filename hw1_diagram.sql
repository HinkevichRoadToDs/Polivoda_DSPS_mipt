CREATE TABLE IF NOT EXISTS "customer" (
  "customer_id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "gender" varchar,
  "DOB" date,
  "job_id" integer,
  "wealth_segment" varchar,
  "deceased_indicator" varchar,
  "owns_car" varchar,
  "address_id" integer,
  "property_valuation" int,
  UNIQUE("customer_id")
);

CREATE TABLE IF NOT EXISTS "transaction" (
  "transaction_id" integer PRIMARY KEY,
  "product_id" integer,
  "customer_id" integer, --REFERENCES customer("customer_id"),
  "transaction_date" date,
  "online_order" bool,
  "order_status" varchar,
  UNIQUE("transaction_id")
);

CREATE TABLE IF NOT EXISTS "products" (
  "product_id" integer PRIMARY KEY,
  "brand" varchar,
  "product_line" varchar,
  "product_class" varchar,
  "product_size" varchar,
  "list_price" float,
  "standard_cost" float,

  UNIQUE(product_id)
);

CREATE TABLE IF NOT EXISTS "addresses" (
  "address_id" integer PRIMARY KEY,
  "address" text,
  "postcode" integer,
  "state" varchar,
  "country" varchar,
  UNIQUE("address_id")
);

CREATE TABLE IF NOT EXISTS "jobs" (
  "job_id" integer PRIMARY KEY,
  "job_title" varchar,
  "job_industry_category" varchar,
  UNIQUE("job_id")
);

--ALTER TABLE "transaction" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("product_id");

--ALTER TABLE "transaction" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

--ALTER TABLE "jobs" ADD FOREIGN KEY ("job_id") REFERENCES "customer" ("job_id");

--ALTER TABLE "customer" ADD FOREIGN KEY ("address_id") REFERENCES "addresses" ("address_id");
