-- AGREGACINES FUNKCIJOS 

select count(*), sum(population), avg(population), min(population), max(population)
from city
where name like 'a%';

-- GROPUP BY 
select countrycode, count(*), sum(population), avg(population), min(population), max(population)
from city
group by countrycode;

-- GROPUP BY 2
select countrycode, district, count(*), sum(population), avg(population), min(population), max(population)
from city
group by countrycode, district;

-- HAVING 
select countrycode, district, count(*), sum(population), avg(population), min(population), max(population)
from city
where name like '%a%'
group by countrycode, district
having avg(population) > 5000000;

-- grupuoti pagal kontinenta, regiona, 
-- bendras valstybiu plotas, bendras valstybiu gyventoju kiekis, valstybiu plotu vidurkis
-- tik nepriklausomas valstybes
-- pagal kontinenta ir regiona
-- nerodyti mazesniu valstybiu plotu vidurkiu negu 1000

-- + kontinenta, regiona, bendras valstybiu plotas, bendras valstybiu gyventoju kiekis, valstybiu plotu vidurkis
-- + tik nepriklausomas valstybes
-- + pagal kontinenta ir regiona
-- nerodyti mazesniu valstybiu plotu vidurkiu negu 1000


-- NAMU DARBAS -------------------------------
select continent, region, sum(surfacearea), sum(population), avg(surfacearea)
from country
where IndepYear is not null
group by continent, region
having avg(surfacearea) >= 1000
order by continent, region
-- -------------------------------------------



select * 
from country



