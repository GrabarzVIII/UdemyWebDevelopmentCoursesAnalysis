-- popularity of courses depending on advancement

select 
	instructionalLevel
	,avg(numSubscribers)
from udemy_courses uc 
group by 1
order by 2

-- the most popular courses on expert level

select
	id
	,title
	,numSubscribers 
from udemy_courses uc
where instructionalLevel = 'Expert Level'
order by 3 desc
limit 10

-- the most frequently rated expert level courses

select 
	id
	,title 
	,numReviews 
from udemy_courses uc 
where uc.instructionalLevel = 'Expert Level'
order by 3 desc 
limit 10

-- the most popular courses on beginner level

select
	id
	,title
	,numSubscribers 
from udemy_courses uc
where instructionalLevel = 'Beginner Level'
order by 3 desc
limit 10

-- the most frequently rated Beginner level courses

select 
	id
	,title 
	,numReviews 
from udemy_courses uc 
where uc.instructionalLevel = 'Beginner Level'
order by 3 desc 
limit 10