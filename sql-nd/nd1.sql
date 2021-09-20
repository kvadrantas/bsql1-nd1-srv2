-- UŽDAVINYS:
-- - rodomas valstybės kodas ir klabos pavadinimas;
-- - atrenkamos tik oficialios klabos prasidedančios raidėmis 'd', 'e' ir 'f';
-- - surūšiuota pagal valstybės kodą didėjimo ir panaudojimo procentą mažėjimo tvarka.

-- ATSAKYMAS
SELECT countrycode as Valstybes_kodas, language as Kalbos_pavadinimas
FROM world.countrylanguage
where isofficial = 'T' and (language like 'd%' or language like 'e%' or language like 'f%')
order by countrycode asc, percentage desc