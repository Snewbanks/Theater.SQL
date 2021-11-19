CREATE TABLE "customer" (
  "customer_id" serial PRIMARY KEY,
  "customer_fn" varchar(50),
  "customer_ln" varchar(50),
  "customer_email" varchar(50)
);

CREATE TABLE "movie" (
  "movie_id" serial PRIMARY KEY,
  "film_name" varchar(50),
  "year_made" integer,
  "rating" varchar(50)
);

CREATE TABLE "concession" (
  "concession_id" serial PRIMARY KEY,
  "price" int,
  "customer_id" int
);

CREATE TABLE "ticket" (
  "ticket_id" serial PRIMARY KEY,
  "title" varchar,
  "customer_id" int,
  "price" int,
  "movie_id" int
);

ALTER TABLE "ticket" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "concession" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "ticket" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("movie_id");



-- customers

insert into customer(customer_fn, customer_ln, customer_email)
values('Tony', 'Stark', 'IamIronMan@Avengers.com');

insert into customer(customer_fn, customer_ln, customer_email)
values('Steve', 'Rogers', 'Cap@Avengers.com');

insert into customer(customer_fn, customer_ln, customer_email)
values('Groot', 'Groot', 'IamGroot@Avengers.com');


-- movies

insert into movie(film_name, year_made, rating)
values('Avengers WW8', '2050', 'XXX');

insert into movie(film_name, year_made, rating)
values('Avengers WW9', '2053', 'XXX');


- concession

insert  into concession (price)
values(1.99);


-- ticket


insert into ticket(title, customer_id, price, movie_id)
values('Avengers WW8', '1', '10', '1');

insert into ticket(title, customer_id, price, movie_id)
values('Avengers WW9', '2', '10', '2');
