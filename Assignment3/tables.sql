drop table Persons cascade;
create table Persons (
	name char(40),
	address char(80),
	phone char(15),
	primary key (name, address)
);

drop table Instructors cascade;
create table Instructors (
	name char(40),
	address char(80),
	SIN_N char(10),
    primary key (name , address),
    foreign key(name, address) references Persons(name, address)
        on delete set null
        on update cascade
);

drop table Members cascade;
create table Members (
    name char(40),
    address char(80),
    status char(20),
    fitness_ID char(20),
    primary key (name, address),
    foreign key(name, address) references Persons(name, address)
        on delete set null
        on update cascade
);

drop table Memberships cascade;
create table Memberships (
    m_type char(40) primary key,
    availability char(40)
);

drop table Services cascade;
create table Services (
    name char(40) primary key,
    start_hour time,
    finish_hour time,
    days char(40)
);

drop table Camps cascade;
create table Camps (
    name char(40) primary key,
    c_type char(40),
    Duration char(40),
    foreign key (name) references Services(name)
        on delete cascade
        on update cascade
);

drop table Transactions cascade;
create table Transactions (
    TID char(40) primary key,
    amount real,
    t_type char(40)
);

drop table Merchandise cascade;
create table Merchandise (
    barcode char(40) primary key,
    category char(40),
    price real
);

drop table Owns cascade;
create table Owns(
    member char(40),
    address char(80),
    passes char(20),
    start_date date,
    m_type char(40),
    TID char(40),
    primary key (member, address, start_date, m_type),
    foreign key (member, address) references Members(name, address)
        on delete cascade
);

drop table Teaches cascade;
create table Teaches (
    camp_name char(40),
    SIN_N char(10),
    primary key (camp_name, SIN_N),
    foreign key (camp_name) references Camps(name)
        on delete cascade
        on update cascade
);

drop table AccessS cascade;
create table AccessS (
    m_type char(40),
    s_name char(40),
    foreign key (m_type) references Memberships(m_type)
);

drop table Joins cascade;
create table Joins (
    member_name char(40),
    member_address char(80),
    camp_name char(40),
    TID char(40) primary key,
    foreign key (TID) references Transactions(TID)
        on delete cascade
        on update restrict
);

drop table Buy cascade;
create table Buy (
    barcode char(40),
    TID char(40)
);

