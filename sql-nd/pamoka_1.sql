select 1 as vienas, 2+3 as suma, 7/4 as dalyba,2*9 as daugyba,21-18 as atimtis, 'labas' as tekstas,
'world' + 1; -- piram komanda

select 2 as du;

-- komentaras per visa eilute
-- stringas zymimas tik viengubom kabutem

-- ----------------------------------------------------------------
-- VYKDYMO TVARKA/EILIŠKUMAS
select name, district			-- 4-as
from city						-- 1-mas
where countrycode = 'NLD'		-- 2-as
order by countrycode; 			-- 3-cias

-- ----------------------------------------------------------------
-- LIKE
--  % bet kiek simbolių
--  _ vienas bet koks simbolis 

-- ATRINKTI VISUS PAVADINIMUS, KURIE SUDARYTI IŠ 6 raidžių
-- where name like '______' 

--  % ir _ yra specialieji simboliai. Jeigu norime atrinkti pavadinimus, kurie gali turėti šiuos simboliu naudojam escapinimą
--  where name like '~%' escape '~'		-- nusistatom, kad tilde bus musu escape simbolis ir atrenkam visus pavadinimus, kurie turi simboli %

-- ----------------------------------------------------------------
-- PAMOKA 1 
-- SELECT
-- FROM
-- WHERE
-- ORDER BY
-- =    ar lygu
-- >    ar daugiau
-- <    ar maziau
-- >=    ar daugiau arba lygu
-- <=    ar maziau arba lygu
-- <>    ar nelygu (JS !=)
-- like    ar panasu;
--     specialus simboliai:
--         % - bet kiek bet kokiu
--         _ - vienas bet koks
-- like '....' escape '~' - nurodomas escape simbolis ~
-- AND    loginis ir (JS &&)
-- OR    loginis arba (JS ||)
-- NOT    loginis ne (neiginys) (JS !)

-- rusiavimo kryptys
-- ASC    didejimo tvarka (default)
-- DESC    mazejimo tvarka

-- ----------------------------------------------------------------

select name as pavadinimas, countrycode as 'salies kodas', population / 1000000 as 'gyventojai (mln)'
from city;
-- ----------------------------------------------------------------
-- valstybiu pavadinimai
-- afrikoje
-- virs 3mln gyventoju
-- surusiuota pagal gyventojus mazejimo tvarka

select name
from country
where continent = 'Africa' and population > 3000000
order by population DESC;

-- ----------------------------------------------------------------
-- NAMU DARBAS

-- UŽDAVINYS:
-- - rodomas valstybės kodas ir klabos pavadinimas;
-- - atrenkamos tik oficialios klabos prasidedančios raidėmis 'd', 'e' ir 'f';
-- - surūšiuota pagal valstybės kodą didėjimo ir panaudojimo procentą mažėjimo tvarka.

-- ATSAKYMAS
SELECT countrycode as Valstybes_kodas, language as Kalbos_pavadinimas
FROM world.countrylanguage
where isofficial = 'T' and (language like 'd%' or language like 'e%' or language like 'f%')
order by countrycode asc, percentage desc 