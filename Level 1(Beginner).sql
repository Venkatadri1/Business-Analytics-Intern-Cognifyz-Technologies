create database Cognifyz;
use Cognifyz;
-- now i am inporting the dataaset into mysql workbench

                                 -- Level 1: Beginner
                                  -- Task 1: Data Overview
-- lest start quearies how my tables and coulums and total information i am going to see
select * from dataset;
desc dataset;
show columns from dataset;
select count(gender) as total_rows from dataset;
select age,count(age) as total_count from dataset group by age;select * from dataset;
select age,Mutual_Funds,Equity_Market,Debentures,Government_Bonds,Fixed_Deposits from dataset;
select max(age) as max_age,min(age) as min_age,avg(age) as avg_age from dataset;

-- now i am using min and max ang avg at all numerial column
SELECT MAX(Mutual_Funds) AS max_funds,MIN(Mutual_Funds) AS min_funds,AVG(Mutual_Funds) AS avg_funds,
MAX(Equity_Market) AS max_Equity,MIN(Equity_Market) AS min_marker,AVG(Equity_Market) AS avg_market,
MAX(Debentures) AS max_Debentures,min(Debentures) as min_Debentures,avg(Debentures) as avg_Debentures,
max(Government_Bonds) as max_bonds,min(Government_Bonds) as min_bonds,avg(Government_Bonds) as avg_bonds,
max(Fixed_Deposits) as max_deposit,min(Fixed_Deposits) as min_deposite,avg(Fixed_Deposits) as avg_deposits
from dataset;
-- now i am counting only averages at all numaric columns
select * from dataset;
select avg(age) as avg_age,avg(Mutual_Funds) as avg_funds,avg(Equity_Market) as avg_market,avg(Debentures)
as avg_Debentures,avg(Government_Bonds) as avg_bonds,avg(Fixed_Deposits) as avg_deposits,avg(gold) 
as avg_gold from dataset;

                                 --  end task 1
                     
                         -- Task 2: Gender Distribution                     
 -- if i see given your task 2 counting the gender  and creat the he charts! ok i do
 --  i am counting the gender as well as persentage also frst
 select * from dataset;
 select gender,count(gender) as total_count from dataset group by gender order by total_count;
  -- if we want to see desending order we use desc command
 select gender,count(gender) as total_count from dataset group by gender order by total_count desc;
 
 -- if we want to see desending order we use desc command
 SELECT gender,COUNT(gender) AS total_count,ROUND(COUNT(gender) * 100.0 / (SELECT COUNT(gender) 
 FROM dataset), 2) AS total_Pstg from dataset GROUP BY gender ORDER BY total_count DESC;