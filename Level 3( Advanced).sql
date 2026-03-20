
                             -- Level 3: Advanced
                             -- Task 5: Reasons for Investment 
							
use cognifyz;
select * from dataset;
-- what i have known about this task 5 ,why participants did do investment TO UNDERSTANDING THIS TASK THIS IS KNOWING TO US
-- first i find the all reasons columns and each reason column i will count, ofter all reasons column  i will find throuth uninee all 
-- then now i can fine why participants did do investment

select Reason_Equity,Reason_Mutual,Reason_Bonds,Reason_FD from dataset;
 -- Reason_Equity
 select Reason_Equity,count(Reason_Equity) as total_Equity from dataset group by Reason_Equity order by total_Equity desc;
 -- Reason_Mutual
 select Reason_Mutual,count(Reason_Mutual) as total_mutuval from dataset group by Reason_Mutual order by total_mutuval desc;
 -- Reason_Bonds
  select Reason_Bonds,count(Reason_Bonds) as total_bonds from dataset group by Reason_Bonds order by total_bonds desc;
  -- Reason_FD
   select Reason_FD,count(Reason_FD) as total_fd from dataset group by Reason_FD order by total_fd desc;
   
   -- now i am combining total reasons like Reason_Equity,Reason_Mutual,Reason_Bonds,Reason_FD at once 
   -- for combining that all i am using the union all command.
SELECT 'Equity' AS InvestmentName, Reason_Equity AS ReasonName, COUNT(Reason_Equity) AS total_frequency FROM dataset GROUP BY Reason_Equity
UNION ALL
SELECT 'Mutual Funds', Reason_Mutual, COUNT(Reason_Mutual) FROM dataset GROUP BY Reason_Mutual
UNION ALL 
SELECT 'Bonds', Reason_Bonds, COUNT( Reason_Bonds) FROM dataset GROUP BY Reason_Bonds
UNION ALL
SELECT 'Fixed Deposits', Reason_FD, COUNT(Reason_FD) FROM dataset GROUP BY Reason_FD ORDER BY total_frequency DESC; 
select Reason_Equity,Reason_Mutual,Reason_Bonds,Reason_FD from dataset;

                                              -- end Task 5: Reasons for Investment
                                              
                                              -- Task 6: Savings Objectives
-- ok i understand this question what mean this task6 ,why participants is doing the main savings objectives. i sould find ok!
-- frist i consider column after i will find why the participants is putting   savings objectives .

select * from dataset;
SELECT `What are your savings objectives?`, COUNT(`What are your savings objectives?`) AS total_frequency FROM dataset 
GROUP BY `What are your savings objectives?` ORDER BY total_frequency DESC;

-- i am finding the most saving objective and lowyest saving objective
select `What are your savings objectives?`,count(`What are your savings objectives?`) as total_frequency from dataset
group by `What are your savings objectives?` order by total_frequency desc limit 1;

-- this same queary copy and past but i am removing the desc command because if i remove desc we can see lowest saving objective
select `What are your savings objectives?`,count(`What are your savings objectives?`) as total_frequency from dataset
group by `What are your savings objectives?` order by total_frequency  limit 1;
    
                                        -- end level 3(advanced)


   