--Members that are from Victoria based on their phone number
drop view Q1 cascade;
create view Q1 as
    (select name from members)
        intersect
    (select name
    from persons
    where((phone like '250%') or (phone like '778%')));

-- Number of Merchandises of type clothes and different prices
drop view Q2 cascade;
create view Q2 as
    select count(distinct price) as Different_clothes_prices
    from Merchandise
    where Merchandise.category = 'Clothes';

-- Largest transactions
drop view Q3 cascade;
create view Q3 as
    select *
    from Transactions
    where amount >= all(select amount
                        from Transactions);

-- Members with membership FIT and part of RUNNING camp
drop view Q4 cascade;
create view Q4 as
    select name as Fit_members_in_running_camp
    from members
    where name in (select member_name
                   from Joins
                   where camp_name in (select name
                                       from Camps
                                       where c_type = 'Running')
                  ) and
          name in(select member
                  from Owns
                  where m_type = 'Fit');

-- Instructors who are teaching !0 weeks camps
drop view Q5 cascade;
create view Q5 as
    select name as Instructors_10_weeks
    from instructors
    where SIN_N in (select SIN_N
                    from teaches
                    where camp_name in ( select name
                                         from Camps
                                         where Duration = '10_weeks'));

-- Average amount on cash transactions for metchandises
drop view Q6 cascade;
create view Q6 as
    select avg(amount) as average_cash_merchandise
    from (select distinct tid, amount
          from ( Buy natural join Transactions)
          where t_type = 'Cash') AM ;

-- Members who just carry a membership types that has access to just one service
drop view Q7 cascade;
create view Q7 as
    select member as has_singular_service
    from Owns O1
    where O1.m_type in ( select m_type
                         from AccessS S1
                         where not exists( select *
                                    from AccessS
                                    Where m_type = S1.m_type and s_name <> S1.s_name)
                       );

-- members who paied more than 100$ for their membership pass
drop view Q8 cascade;
create view Q8 as
    select member as wealthy_members
    from ((select member, tid from Owns) MT  natural join
    (select tid, sum(amount)
                 from (Owns natural join Transactions)
                 where amount >= 100
                 group by tid) TS );

-- services that John Doe has access between 13:00 to 15:00
drop view Q9 cascade;
create view Q9 as
    select s_name as John_doe_access_13_15
    from ((
    select m_type
    from Owns
    where member = 'John Doe') M1 natural join (
                                            (select * from AccessS) A1  natural join
                                                    (select name as s_name
                                                        from Services
                                                        where start_hour < '13:00' and finish_hour > '15:00' ) S1
                                              ) MS
    ) NS ;

-- Price of an Annual Gold membership for a student
drop view Q10 cascade;
create view Q10 as
    select distinct amount as Price_of_Annual_Gold
    from (Owns O1 natural join transactions T1)
    where (O1.passes = 'Annual' and
            O1.m_type = 'Gold' and
            O1.member in (select name
                          from members
                          where status = 'Student'));
drop view Q10_2 cascade;
create view Q10_2 as
    select distinct amount as Price_of_Annual_Gold
    from (Owns O1 right outer join transactions T1 on (O1.tid = T1.tid and O1.passes = 'Annual' and O1.m_type = 'Gold' ))
    where (O1.member in (select name
                         from members
                         where status = 'Student'));


-- Calling Queries --
select * from Q1;
select * from Q2;
select * from Q3;
select * from Q4;
select * from Q5;
select * from Q6;
select * from Q7;
select * from Q8;
select * from Q9;
select * from Q10;
select * from Q10_2;
