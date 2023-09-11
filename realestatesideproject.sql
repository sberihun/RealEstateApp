begin transaction;

--rollback;

drop table if exists agent_property;
drop table if exists property;
drop table if exists agent;
drop table if exists client;

create table client(
	client_number serial,
	name varchar null,
	email_address varchar null,
	buyer_or_seller varchar not null,
	loan_type varchar not null,
	
	constraint pk_client_constraint primary key (client_number)
	
);

create table agent(
	agent_number serial,
	last_name varchar not null,
	first_name varchar not null,
	email_address varchar not null,
	yrs_as_agent numeric not null,
	
	constraint pk_agent_constraint primary key (agent_number)
	
);

create table property(
	property_number serial,
	property_type varchar not null,
	number_of_beds int not null,
	number_of_baths int not null,
	basement boolean not null,
	total_sq_footage int not null,
	sale_price int not null,
	property_address varchar not null,
	closing_date date not null,

	constraint pk_property_constraint primary key (property_number)
	-- ADD ADDRESS PROPERTY
	--ADD CLOSING DATE FOR EACH PROPERTY
);


create table agent_property(
	agent_number int not null,
	property_number int not null,
	client_number int not null,
	closing_date date not null,
	
	
	constraint pk_agent_property_constraint primary key (agent_number, property_number),
	constraint FK_agent_property_agent foreign key (agent_number) references agent (agent_number),
	constraint FK_agent_property_property foreign key (property_number) references property (property_number),
	constraint FK_agent_property_client foreign key (client_number) references client (client_number)
);

commit transaction;

--now fill in the table with values from the MLS...

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1, false, 1534, 220000, '3495 Torrington Street, Hilliard, OH 43026', '10-14-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Dersom', 'Erinn', 'realtorerinndersom@gmail.com', 21);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 1.5, true, 1444, 210000, '5313 Berrywood Drive, Columbus, OH 43220', '08-05-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 1.5, true, 1088, 177900, '4081 Blendon Point Drive 62C, Columbus, OH 43230', '05-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2483, 523000, '5064 Broxburn Court, Dublin, OH 43017', '11-09-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 3287, 610000, '7535 Heatherwood Lane, Dublin, OH 43017', '11-02-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2090, 400000, '260 Indigo Blue Street, Delaware, OH 43015', '07-08-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 5, 3, true, 2846, 425000, '199 Silver Maple Drive, Commercial Point, OH 43116', '05-03-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1328, 435000, '355 Northridge Road, Columbus, OH 43214', '06-15-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 2054, 515000, '292 Richards Road, Columbus, OH 43214', '10-28-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1, true, 1488, 328500, '562 Loveman Avenue, Worthington, OH 43085', '11-16-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1, true, 1242, 354400, '544 Kenbrook Drive, Worthington, OH 43085', '05-24-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 2188, 375000, '345 S Selby Boulebard, Worthington, OH 43085', '09-16-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1898, 427250, '165 E Selby Boulevard, Worthington, OH 43085', '03-23-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 2192, 580000, '51 E Riverglen Drive, Worthington, OH 43085', '06-01-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2252, 360000, '123 Ellington Boulevard, Granville, OH 43023', '01-10-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 5, 4.5, true, 3043, 990848, '11240 Juniper Way, Plain City, OH 43064', '09-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 3.5, true, 3141, 807565, '11179 Kingfisher Place, Plain City, OH 43064', '07-22-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 2.5, true, 1680, 287500, '5162 Twin Falls Drive 11-516, Dublin, OH 43016', '04-22-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2275, 315000, '5489 Blue Ash road, Columbus, OH 43229', '01-21-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1184, 215000, '114 Chicago Avenue, Columbus, OH 43222', '08-08-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1, true, 1284, 245000, '3536 Karikal Drive, Westerville, OH 43081', '08-08-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2376, 410000, '2812 Shadow Falls Lane, Columbus, Oh 43231', '05-17-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 1.5, false, 1750, 340000, '540 Slate Hollow Drive, Powell, OH 43065', '12-27-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 3, 2.5, true, 1450, 226000, '1812 Ridgebury Drive, Hilliard, OH 43026', '01-28-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2624, 469000, '4361 Leppert Road, Hilliard, OH 43026', '06-15-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2203, 327500, '6327 Beaver Lake Drive, Grove City, OH 43213', '04-05-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Morgan', 'morganhessrealestate@gmail.com', 1);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, false, 1496, 285000, '1868 Ashburn Drive, Delaware, OH 43015', '07-20-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2, true, 2430, 408500, '5854 Ulster Drive, Dublin, OH 43016', '09-22-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 2, false, 1769, 316000, '3225 Rossmore Circle, Powell, OH 43065', '04-27-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 1400, 275000, '1332 Costigan Road, Grove City, OH 43213', '08-10-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2, true, 2184, 300000, '180 Scenic Drive, Newark, OH 43055', '09-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Kavanaugh', 'Thomas', 'realestate.kavanaugh@gmail.com', 2);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 5, 2, true, 2833, 490000, '5907 Linworth Road, Worthington, OH 43085', '04-29-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, false, 2132, 293000, '190 Pasadena Avenue, Columbus, OH 43228', '06-08-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1240, 250000, '225 Overtrick Drive, Delaware, OH 43015', '02-11-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2960, 375000, '112 Leasure Drive, Pickerington, OH 43147', '12-27-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 1811, 340000, '106 Crafton Court, Delaware, OH 43015', '05-11-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1652, 291000, '1184 Village Drive, Marysville, OH 43040', '07-28-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 2666, 295000, '1508 Meadowlark Lane, Marysville, OH 43040', '09-01-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 3.5, true, 3417, 503000, '10129 Corona Lane, Plain City, OH 43064', '02-07-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 2, 1, true, 892, 240000, '448 Chase Road, Columbus, OH 43214', '11-08-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 2058, 600000, '164 Northigh Drive, Worthington, OH 43085', '04-07-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 2, false, 966, 76500, '4143 Karl Road 312, Columbus, OH 43224', '11-16-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2305, 420000, '144 Olentangy Meadows Drive, Lewis Center, OH 43085', '05-09-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1505, 285000, '371 Meadows Boulevard, Pickerington, OH 43147', '03-18-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 4, true, 4289, 789900, '6802 Rosewell Lane, New Albany, OH 43054', '05-06-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 3540, 530000, '4400 Plymouth Rock Court, Columbus, OH 43230', '05-09-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 1.5, true, 1674, 268000, '6471 Red Fox Road, Reynoldsburg, OH 43068', '10-17-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 3.5, true, 4044, 450000, '2906 Kool Air Way, Columbus, OH 43231', '08-15-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 3.5, true, 4123, 750000, '8267 Timble Falls Drive, Dublin, OH 43016', '05-23-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 1.5, true, 2574, 362000, '4560 Bowers Road, Cable, OH 43009', '07-18-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 3761, 800000, '4844 Tralee Lane, Westerville, OH 43082', '05-25-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1259, 215000, '1159 Lenore Avenue, Columbus, OH 43224', '07-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 2, false, 966, 230000, '2421 Warm Springs Drive, Hilliard, OH 43026', '03-10-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2346, 442000, '93 Spring Valley Road, Westerville, OH 43081', '04-05-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 3200, 470000, '11513 Glencrest Drive NW, Pickerington, OH 43147', '01-10-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 2286, 418000, '1048 Jobar Court, Westerville, OH 43081', '04-15-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2500, 383610, '233 Bevan Way, Delaware, OH 43015', '02-11-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, false, 2531, 431900, '43 Scarlett Drive, Delaware, OH 43015', '01-26-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 1.5, true, 1044, 146000, '653 Milcrest Drive 653, Marysville, OH 43040', '06-30-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1547, 250000, '3769 Harborough Drive, Columbus, OH 43230', '11-17-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 3.5, true, 2069, 395000, '536 Prairie Run Drive, Sunbury, OH 43074', '06-23-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 1970, 369850, '646 Village Mill Drive, Sunbury, OH 43074', '12-01-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2605, 459000, '818 Peacock Drive Lot 2080, Sunbury, OH 43074', '12-27-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 4.5, true, 4918, 855000, '6613 Raynor Court, Dublin, OH 43017', '03-04-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 1.5, true, 1202, 209900, '1117 Farmlane Drive 24, Worthington, OH 43085', '05-20-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2386, 400000, '5447 Moccasin Drive, Westerville, OH 43081', '04-15-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Morgan', 'morganhessrealestate@gmail.com', 1);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 3, 3, false, 2208, 396000, '4692 Saint Andrews Drive 13B, Grove City, 43213', '12-19-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 3.5, true, 3832, 600000, '860 Royal Oak Drive, Marysville, OH 43040', '05-06-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2640, 500000, '5862 Rocky Shore Drive, Lewis Center, OH 43035', '07-18-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 2, false, 1336, 335000, '7573 Red Maple Place, Westerville, OH 43082', '07-14-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 3.5, true, 3958, 650000, '330 Delegate Drive, Columbus, OH 43235', '04-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 1680, 370000, '1515 Willowcreek Drive, Columbus, OH 43228', '08-12-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2384, 380000, '1477 Willowcreek Drive, Columbus, OH 43228', '12-30-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 1, false, 2993, 526600, '2227 Deeds Road, Granville, OH 43023', '06-03-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 3, 2, false, 1204, 250000, '3684 Colonial Drive, Hilliard, OH 43026', '03-11-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 3, 2, true, 2500, 345000, '8430 Lazelle Village Drive, Lewis Center, OH 43035', '04-25-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 3312, 475000, '7766 Henry David Court, Dublin, OH 43016', '06-21-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, false, 1985, 265000, '3127 Quinby Drive, Columbus, OH 43232', '12-12-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 5676, 799000, '10710 Abington Place , Powell, OH 43065', '08-17-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 1547, 362000, '919 Military Drive, Galloway, OH 43119', '04-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1530, 300000, '1261 Fahlander Drive N, Columbus, OH 43229', '03-25-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Freestanding', 2, 2, true, 858, 225000, '7700 Flynnway Drive 49, Worthington, OH 43085', '09-16-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 3, 1.5, true, 1264, 185000, '664 Mawyer Drive 154, Worthington, OH 43085', '06-17-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 2, 1, true, 1150, 120000, '814 Lakeview Drive, Marysville, OH 43040', '05-11-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 1, 1, true, 685, 142000, '106 Elm Street, Johnstown, OH 43031', '08-12-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 2, 1, false, 1452, 160000, '3920 County Road 217, Marengo, OH 43334', '08-12-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 1674, 165000, '6471 Red Fox Road, Reynoldsburg, OH 43068', '07-29-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 1, true, 1724, 180000, '3315 Lockbourne Road, Columbus, OH 43207', '06-10-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1306, 189900, '516 Bulen Avenue, Columbus, OH 43205', '03-03-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1, false, 952, 195000, '405 Darby Court, Galloway, OH 43119', '09-19-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2, true, 1085, 210000, '315 Buerger Street, Marysville, OH 43040', '04-29-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 5, 2.5, false, 2196, 210000, '542 Wooster Road, Mount Vernon, OH 43050', '07-05-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 2484, 210000, '7180 Cleveland Street, South Solon, OH 43153', '08-12-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1, true, 1137, 210000, '195 Sherborne Drive, Columbus, OH 43219', '09-19-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1, false, 1216, 227000, '277 Eastwood Avenue, Delaware, OH 43015', '02-09-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1573, 234000, '6517 Dobson Square E, Columbus, OH 43229', '01-19-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 2, 2.5, true, 1769, 240000, '4127 Emerius Drive, Columbus, OH 43219', '07-01-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Wengatz', 'Jaime', 'wengatzj@yahoo.com', 8);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 2080, 245000, '309 Hermitage Road, Columbus, OH 43230', '12-01-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'FHA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1515, 250000, '271 Monticello Road, Circleville, OH 43113', '10-14-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 1.5, true, 1200, 267500, '1784 Gallo Drive, Powell, OH 43065', '11-16-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1664, 276800, '6590 Davis Road, Hilliard, OH 43026', '02-18-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Condo-Shared Wall', 3, 3, false, 1824, 287000, '1288 Winningham Lane, Columbus, OH 43240', '01-17-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1228, 296000, '959 Francis Avenue, Columbus, OH 43209', '07-29-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 1696, 299900, '3055 County Road 24, Cardington, OH 43315', '01-22-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Morgan', 'morganhessrealestate@gmail.com', 1);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 1764, 340000, '742 Rebecca Avenue, Westerville, OH 43081', '07-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2, true, 2979, 340000, '4700 Blue Church Road, Sunbury, OH 43074', '01-18-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 2, 2, true, 1537, 340000, '49 N Broadleigh Road, Columbus, OH 43209', '03-18-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 1811, 375000, '5164 Garand Drive, Westerville, OH 43081', '05-31-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Cash');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2, true, 3452, 420000, '118 Coover Road, Delaware, OH 43015', '07-18-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Kelly', 'kelly@meachamrealestate.com', 10);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2, true, 2010, 420000, '4900 Hyatts Road, Delaware, OH 43015', '07-25-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 3063, 425000, '2075 State Route 56 NW, London, OH 43140', '07-28-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Berihun', 'Sefanit', 'sefanit@sefanitberihun.com', 4);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 1782, 475000, '11642 State Route 13, Thornville, OH 43076', '05-06-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 3, 2.5, true, 2767, 490000, '10260 Urbana Woodstock Pike, Woodstock, OH 43084', '12-12-2022');

insert into client (buyer_or_seller, loan_type)
values ('Seller', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2780, 510000, '6635 Springview Drive, Westerville, OH 43082', '06-02-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'VA');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Meacham', 'Timothy', 'tim@meachamrealestate.com', 23);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 4, 2.5, true, 2700, 510000, '6982 Wethersfield Place, Worthington, OH 43085', '09-13-2022');

insert into client (buyer_or_seller, loan_type)
values ('Buyer', 'Conventional');

insert into agent (last_name, first_name, email_address, yrs_as_agent)
values('Hess', 'Tracy', 'tracyhessrealestate@gmail.com', 6);

insert into property (property_type, number_of_beds, number_of_baths, basement, total_sq_footage, sale_price, property_address, closing_date)
values('Single-Family Freestanding', 2, 2, false, 2767, 606000, '830 Pollock Road, Delaware, OH 43015', '09-28-2022');

select * from property;


