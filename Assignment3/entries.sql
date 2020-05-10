insert into Persons values ('John Doe', '1234 Here Avenue, Victoria, BC', '250-2502502');
insert into Persons values ('Julia Roberts', '10100 Santa Monica Blvd.', '888-8888888');
insert into Persons values ('George Clooney', '10866 Wilshire Blvd.', '800-8008000');
insert into Persons values ('Brad Pitt', '100 there Rd., Victoria, BC', '250-1111111');
insert into Persons values ('Matt Damon', '102-254 View St., Victoria, BC', '250-2222222');
insert into Persons values ('Andy Garcia', '1234 Here Avenue, Victoria, BC', '250-2502500');
insert into Persons values ('Catherine Zeta-jones', 'Private Address');
insert into Persons values ('Al Pacino', '1234 Here Avenue, Victoria, BC', '778-2502501');

insert into Members values ('John Doe', '1234 Here Avenue, Victoria, BC', 'Student', '000000001' );
insert into Members values ('Julia Roberts', '10100 Santa Monica Blvd.', 'Community', '000000011' );
insert into Members values ('Matt Damon', '102-254 View St., Victoria, BC', 'Staff', '000000022' );
insert into Members values ('Andy Garcia', '1234 Here Avenue, Victoria, BC', 'Alumni', '987654321');
insert into Members values ('Catherine Zeta-jones', 'Private Address', 'Student', '000123123' );
insert into Members values ('Al Pacino', '1234 Here Avenue, Victoria, BC', 'Student', '123123123');

insert into Instructors values ('John Doe', '1234 Here Avenue, Victoria, BC', '1234567890');
insert into Instructors values ('George Clooney', '10866 Wilshire Blvd.', '9876543210');
insert into Instructors values ('Brad Pitt', '100 there Rd., Victoria, BC', '9999999999');

insert into  Memberships values ('Fit' , 'All year');
insert into  Memberships values ('Swimming' , 'All year');
insert into  Memberships values ('Outdoor' , 'Summer');
insert into  Memberships values ('Fit_plus' , 'All year');
insert into  Memberships values ('Gold' , 'All year');

insert into Services values ('Weight Room', '06:00:00', '23:00:00', 'Everyday');
insert into Services values ('Climbing Wall', '07:00:00', '21:30:00', 'Weekdays');
insert into Services values ('Swimming Pool', '08:00:00', '21:00:00', 'Everyday' );
insert into Services values ('Soccer Field', '08:00:00', '17:00:00', 'Everyday' );
insert into Services values ('Yolates', '13:30:00', '14:15:00', 'Thursday');
insert into Services values ('Run_10k', '07:00:00', '8:30:00', 'Tuesday');
insert into Services values ('Marathon', '10:00:00', '14:00:00', 'Everyday');

insert into Camps values ('Yolates', 'Mind_body', '10_weeks');
insert into Camps values ('Run_10k', 'Running', '10_weeks') ;
insert into Camps values ('Marathon', 'Running', '15_weeks');

insert into Transactions values ('123ab123', 100.12, 'Visa');
insert into Transactions values ('888888', 27.27, 'Master');
insert into Transactions values ('777777', 27.27, 'Cash');
insert into Transactions values ('999999', 60, 'Cash');
insert into Transactions values ('000000', 72.15, 'Debit');
insert into Transactions values ('100a100', 147.22, 'Cash');
insert into Transactions values ('200b200', 75, 'Cash');
insert into Transactions values ('111', 650.22, 'Visa');
insert into Transactions values ('222', 300, 'Master');
insert into Transactions values ('333', 99.99, 'Debit');
insert into Transactions values ('444', 45, 'Cash');
insert into Transactions values ('555', 650.22, 'Cash');
insert into Transactions values ('666', 399.99, 'Cash');

insert into Merchandise values ('a123123', 'Clothes', 12.22 );
insert into Merchandise values ('b111111', 'Locker', 30.00 );
insert into Merchandise values ('c222222', 'Accessories', 200 );
insert into Merchandise values ('a111111', 'Clothes', 75.00 );
insert into Merchandise values ('a222222', 'Clothes', 60.00 );
insert into Merchandise values ('a333333', 'Clothes', 43.15 );

insert into Owns values ('John Doe', '1234 Here Avenue, Victoria, BC', 'Annual', '2019-09-01', 'Gold', '111');
insert into Owns values ('Julia Roberts', '10100 Santa Monica Blvd.', 'Annual', '2019-11-01', 'Swimming', '222');
insert into Owns values ('Matt Damon', '102-254 View St., Victoria, BC', 'Quarterly', '2020-02-01','Fit_plus', '333');
insert into Owns values ('Andy Garcia', '1234 Here Avenue, Victoria, BC', '10_Drop_in', '2020-02-01','Fit', '444');
insert into Owns values ('Catherine Zeta-jones', 'Private Address','Annual' , '2020-01-02', 'Gold', '555');
insert into Owns values ('Al Pacino', '1234 Here Avenue, Victoria, BC','Annual', '2020-01-02', 'Fit', '666');

insert into Teaches values ('Yolates', '9876543210');
insert into Teaches values ('Marathon', '1234567890');
insert into Teaches values ('Run_10k', '9999999999');
insert into Teaches values ('Run_10k', '1234567890');

insert into AccessS values ('Fit', 'Weight Room');
insert into AccessS values ('Swimming', 'Swimming Pool');
insert into AccessS values ('Outdoor', 'Soccer Field');
insert into AccessS values ('Fit_plus', 'Weight Room');
insert into AccessS values ('Fit_plus', 'Climbing Wall');
insert into AccessS values ('Gold', 'Weight Room');
insert into AccessS values ('Gold', 'Swimming Pool');
insert into AccessS values ('Gold', 'Climbing Wall');

insert into Joins values ('Julia Roberts', '10100 Santa Monica Blvd.', 'Yolates','123ab123');
insert into Joins values ('Julia Roberts', '10100 Santa Monica Blvd.', 'Marathon', '999999');
insert into Joins values ('Catherine Zeta-jones', 'Private Address', 'Yolates','888888');
insert into Joins values ('Al Pacino', '1234 Here Avenue, Victoria, BC', 'Run_10k','777777');

insert into Buy values ('b111111', '000000');
insert into Buy values ('a333333', '000000');
insert into Buy values ('a111111', '200b200');
insert into Buy values ('a111111', '100a100');
insert into Buy values ('a222222', '100a100');
insert into Buy values ('a123123', '100a100');


