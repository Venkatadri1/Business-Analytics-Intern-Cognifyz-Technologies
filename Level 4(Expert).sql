
                                          -- Level 4: Expert
									-- Task 7 Common Information Sources
use cognifyz;
select * from dataset;
-- this task mean we have to know where the people or participants is knowing about mutuval funds yes! ok i find
select source from dataset;
select source,count(source) as total_source from dataset group by source order by total_source;
 
 -- if i see above result mostly people or participants is knowing from tFinancial Consultants i thing,ok lets see 
 select source ,count(source) as total_source from dataset group by source order by total_source desc limit 1;
  select source ,count(source) as total_source from dataset group by source order by total_source limit 2;
  
                                              -- ok done task 7
										 -- Task 8: Investment Duration
select * from dataset;
-- this task is knowing how far the participants made investment   we have to calculate  total average duration investments   
select * from dataset;
select duration from dataset;
select duration,count(duration) as total_count from dataset group by duration order by total_count;
select avg(duration) as avg_duration from dataset;
-- i gives max and min and avg duration investments 
SELECT  MIN(Duration) AS min_duration, MAX(Duration) AS max_duration, AVG(Duration) AS average_duration FROM dataset; 
select Investment_Avenues, avg(duration) as avg_duration from dataset group by Investment_Avenues order by avg_duration desc;
                                               -- end task 8
                                               
                                               -- Task 9: Expectations from Investments
-- i do not know which one like objective or purpose  i have to find the frequency so,i wil find both
select * from dataset;
-- objective
select objective,count(objective) as total_frequency from dataset group by objective order by total_frequency desc;
-- purpose
 select Purpose,count(Purpose) as total_frequency from dataset group by Purpose order by total_frequency desc;
 -- most participants expectations i am finding
 -- objective
select objective,count(objective) as total_frequency from dataset group by objective order by total_frequency desc limit 1;
select objective,count(objective) as total_frequency from dataset group by objective order by total_frequency limit 1;
-- purpose
select Purpose,count(Purpose) as total_frequency from dataset group by Purpose order by total_frequency desc limit 1;
select Purpose,count(Purpose) as total_frequency from dataset group by Purpose order by total_frequency  limit 1;
                                              -- task completed
                                             
                                             -- task 10: Correlation Analysis
-- in this task we have to find the potential relationship, when we are analysing corelation we use the numerical columns only 
-- we have some numerical columna in our dataset (age,Mutual_Funds,Equity_Market,Debentures,Government_Bonds,Fixed_Deposits ect) between numeric column
-- i have to fine Correlation but my sql is not accept corr() funcation but it will accept PostgreSQL ,Oracle , Excel style function
-- so now to complete the task i write advanced queary.
select * from dataset;
select  
(COUNT(age)*SUM(age*Duration) - SUM(age)*SUM(Duration)) / SQRT((COUNT(age)*SUM(age*age) - SUM(age)*SUM(age)) *
(COUNT(age)*SUM(duration*Duration) - SUM(Duration)*SUM(Duration))) AS corr_age_duration
FROM dataset;
SELECT 
(COUNT(age)*SUM(age*Mutual_Funds) - SUM(age)*SUM(Mutual_Funds)) / SQRT((COUNT(age)*SUM(age*age) - SUM(age)*SUM(age)) *
(COUNT(age)*SUM(Mutual_Funds*Mutual_Funds) - SUM(Mutual_Funds)*SUM(Mutual_Funds))) AS corr_age_Mutual_Funds
FROM dataset;
SELECT 
(COUNT(duration)*SUM(duration*Mutual_Funds) - SUM(duration)*SUM(Mutual_Funds)) / SQRT((COUNT(duration)*SUM(duration*duration) - SUM(duration)*SUM(duration)) *
(COUNT(duration)*SUM(Mutual_Funds*Mutual_Funds) - SUM(Mutual_Funds)*SUM(Mutual_Funds))) AS corr_duration_Mutual_Funds
FROM dataset;
select * from dataset;
 SELECT 
(COUNT(Mutual_Funds)*SUM(Mutual_Funds*Equity_Market) - SUM(Mutual_Funds)*SUM(Equity_Market)) / SQRT((COUNT(Mutual_Funds)*SUM(Mutual_Funds*Mutual_Funds) - SUM(Mutual_Funds)*SUM(Mutual_Funds)) *
(COUNT(Mutual_Funds)*SUM(Equity_Market*Equity_Market) - SUM(Equity_Market)*SUM(Equity_Market))) AS corr_MF_EM
FROM dataset;
                                          -- END THE TOTAL TASKS

