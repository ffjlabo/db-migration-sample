-- create "blog_posts" table
CREATE TABLE "blog_posts" (
    "id" integer NOT NULL,
    "title" varchar(100),
    "body" text,
    "author_id" integer,
    PRIMARY KEY ("id"),
    CONSTRAINT "author_fk" FOREIGN KEY ("author_id") REFERENCES "users" ("id")
);
