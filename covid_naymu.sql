create database covid;
use covid;
select * from covid;

select distinct `State/UTs`, `Active`, `Total Cases`
from covid
where `Active` > 10000
order by `Total Cases` desc;

select `State/UTs`, `Total Cases`, `Deaths`, ((`Deaths`/`Total Cases`) * 100 )
as fatality_rate
from covid 
order by fatality_rate desc limit 5;

select sum(`Total Cases`) as Total_Cases , 
sum(`Active`) as Total_Actives, 
sum(`Deaths`) as Total_Deaths , 
round((sum(`Discharged`) /sum(`Total Cases`)) * 100,2) 
as `National Recovery Rate (%)` from covid;

select distinct `State/UTs`, `Deaths`, `Total Cases`, case
when ((`Deaths`/`Total Cases`)*100) > 2 then 'High Risk'
when ((`Deaths`/`Total Cases`)*100) between 1 and 2 then 'Medium Risk'
else 'Low Risk'
end as severity_level
from covid;

select `State/UTs`, `Active`,
rank() over (order by `Active` desc) as 'rankactive',
dense_rank() over (order by `Active` desc) as 'denseactiverank'
from covid
order by `Active`;

select `State/UTs`, sum(`Active`) as Active_rate,
round((sum(`Discharged`)/sum(`Total Cases`)) * 100,2) as recovery_rate
from covid
group by `State/UTs`
having Active_rate > 5000 and recovery_rate > 98
order by recovery_rate desc;

select `State/UTs`, `Deaths`, `Total Cases`,
round((`Deaths`/`Total Cases`) * 100,2) as fatality_re,
round((`Discharged`/`Total Cases`) * 100,2) as recovery_re
from covid
where `Total Cases` > 23000
order by fatality_re desc
limit 5;
