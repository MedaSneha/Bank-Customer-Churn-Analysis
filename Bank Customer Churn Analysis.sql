select * from churn;

select count(*) as Total_customers from churn;

select count(Exited) as Active_customers from churn where Exited=0;

select count(Exited) as Churned_customers from churn where Exited=1;

select round(avg(Exited)*100,2) as Churned_customers from churn;

select round(Avg(Balance),2) as Avg_of_Balance from churn;

select round(Avg(Salary),2) as Avg_of_Salary from churn;

select Geography,round(avg(Exited)*100,0) as Churn_percent from churn 
group by Geography;

SELECT Gender, Round(avg(Exited)*100, 2 ) as churn_percent from churn
GROUP BY Gender;

SELECT
    Gender,
    ROUND((SUM(Exited) * 100.0) / COUNT(*), 2) AS Churn_Rate
FROM churn
GROUP BY Gender;

select 
case 
when age < 30 then '<30'
when age between 31 and 40 then '31-40'
when age between 41 and 50 then '41-50'
when age between 51 and 60 then '51-60'
else '61+'
end as Age_group,
round(avg(exited)*100,2) as churn_percent
from churn
group by Age_group
order by churn_percent desc;


select NumOfProducts,round(avg(exited)*100,0) as churn_percent
from churn
group by NumOfProducts;

select Tenure,round(avg(exited)*100,0) as churn_percent
from churn
group by Tenure;

select CreditScore, round(avg(exited)*100,0) as churn_percent
from churn
group by CreditScore;

select IsActiveMember as Active_Membership, round(avg(exited)*100,0) as churn_percent 
From churn
group by Active_Membership; 

SELECT Surname, Balance, Exited
FROM churn 
WHERE Balance > 100000
order by Balance desc;
 





