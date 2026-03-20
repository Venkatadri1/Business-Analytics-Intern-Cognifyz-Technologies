
									-- Level 2: Intermediate
									
                                    -- task 3: Descriptive Statistics
-- in this task3 you have given identify the numerical columns(numberical data) and calculate
-- the mean and median and standard deviaction you would find ok! i understood this question.
use cognifyz; 
select * from dataset;
select age,Mutual_Funds,Equity_Market,Debentures,Government_Bonds,Fixed_Deposits,PPF,gold from dataset;
-- one by one i calculating frist but in mysql we do not have median function and we can  use the average function
-- insted of mean fucntion (mean or average both are same).
select * from dataset;
select avg(age) as avg_age,stddev(age) as atd_age from dataset;
select avg(Mutual_Funds) as mean_funds,stddev(Mutual_Funds) as std_funds from dataset;

-- now ony by one without write code at once i am writing all numerical columns based on
select avg(age) as avg_age,stddev(age) as std_age,
avg(Mutual_Funds) as avg_funds,stddev(Mutual_Funds) as std_funds,
avg(Equity_Market) as avg_equity,stddev(Equity_Market) as std_quity,
avg(Debentures) as avg_debts,stddev(Debentures) as std_bdts,
avg(Government_Bonds) as avg_bonds,stddev(Government_Bonds) as std_bonds,
avg(Fixed_Deposits) as avg_deposits,stddev(Fixed_Deposits) as std_deposits,
avg(PPF) as avg_ppf,stddev(PPF) as std_ppf,
avg(gold) as avg_gold,stddev(gold) as std_gold from dataset;
                            -- end task 3
                            
                            -- Task 4: Most Preferred Investment
-- i did not understnad this but i have two columns they are avenue and Investment_Avenues which column
-- i should able to find i dont know but i will find both column heighst performed investment 
select * from dataset;
-- first counting the both column
select Investment_Avenues ,count(Investment_Avenues) as total_count from dataset group by Investment_Avenues order by total_count;
-- as well as  avenue also
select Avenue ,count(Avenue) as count_avenue from dataset group by Avenue order by count_avenue;

-- now  here i am finding the Most Preferred Investment both (avenue and Investment_Avenues)
select Investment_Avenues,count(Investment_Avenues) as frequency from dataset group by Investment_Avenues order by frequency desc limit 1;
select Avenue,count(Avenue) as frequency from dataset group by Avenue order by frequency desc limit 1;
