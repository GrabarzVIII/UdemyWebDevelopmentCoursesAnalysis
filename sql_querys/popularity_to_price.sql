-- average number of subs by cours price

select 
	distinct(price)
	,avg(numSubscribers)			as average_nr_of_subs
from udemy_courses uc
group by 1
order by 2

-- average number of subs for free and paid courses

select 
	is_paid 
	,avg(numSubscribers)			as average_nr_of_subs
from udemy_courses uc
group by 1
order by 1

-- number of reviews for cours price

select
	distinct(price)
	,avg(numReviews)				as average_nr_of_reviews
from udemy_courses uc 
group by 1
order by 1
