-- number of published courses for quarters

select
	year(publishedDate)
	,quarter(publishedDate)
	,count(*) 
from udemy_courses uc
group by 1,2
order by 1,2

-- number of subs for coursers lectures

select
	numPublishedLectures 
	,avg(numSubscribers) 
from udemy_courses uc
group by 1
order by 1