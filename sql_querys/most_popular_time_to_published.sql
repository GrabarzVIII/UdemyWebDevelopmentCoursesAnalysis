-- months with highest number of published courses


select 
	month(publishedDate)
	,count(*) 
from udemy_courses uc 
group by 1
order by 1

-- number of subs by week day of published

select 
	dayofweek(publishedDate) as nr_of_weekDay
	,avg(numSubscribers)
from udemy_courses uc
group by 1
order by 2 desc 

-- number of subs by hour of published

select 
	hour(publishedTime)
	,avg(numSubscribers)
from udemy_courses uc 
group by 1
order by 2 desc
