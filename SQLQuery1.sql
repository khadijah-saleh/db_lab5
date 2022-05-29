use World


-- 1

select Name , Language
from Country c   ,    CountryLanguage cl
where c.Code = cl.CountryCode and IsOfficial = 1


-- 2

select Name  
from City
where district = Name

-- 3

select c.Name  , COUNT(*)
from Country c , City ci
where c.Continent = 'Africa' and ci.CountryCode = c.Code
group by c.Name

select c.Name , COUNT(ci.ID)
from Country c join City ci
on c.Continent = 'Africa' and c.Code = ci.CountryCode
group by c.Name

-- 4

select c.Name , count(*)
from Country c , CountryLanguage cl
where cl.IsOfficial = 0 and c.Code = cl.CountryCode
group by c.Name

select c.Name , COUNT(*)
from Country c join CountryLanguage cl
on cl.IsOfficial = 0 and c.Code = cl.CountryCode
group by c.Name

-- 5

select c.Name , COUNT(*)
from Country c , CountryLanguage cl
where IsOfficial = 0
group by c.Name
having COUNT(*) > 1

-- 7

select c.Name , count(ci.ID) ,sum(ci.Population)
from Country c ,  City ci
where c.Code = ci.CountryCode
group by c.Name
having SUM(ci.Population) > 100000000


-- 8

select c.Name , max(ci.Population)
from Country c , City ci
where c.Code = ci.CountryCode


 






