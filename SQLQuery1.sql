

with hoteldata as (
select * from ['2018$']
union
select * from [dbo].['2019$']
union
select * from [dbo].['2020$'])



select * from hoteldata
left join market_segment$
on hoteldata.market_segment = market_segment$.market_segment
left join [dbo].[meal_cost$]
on meal_cost$.meal = hoteldata.meal

