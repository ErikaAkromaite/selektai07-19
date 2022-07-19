 
 1 Užduotis


 SELECT
    SUM(kaina)
FROM
    `ingredientai`

 2 Užduotis

    SELECT
    `id`
   `Kalorju_skaicius_100g`
FROM
    ingredientai
WHERE
    `Kalorju_skaicius_100g` < 90;
3 Užduotis
           SELECT
    `pavadinimas`
    `kaina`
FROM
    ingredientai
WHERE
   `kaina` > 2.20 AND `kaina` < 5.50;

 4 Užduotis
     SELECT
    `id`,
    `pavadinimas`
    `Kalorju_skaicius_100g`,
    `kaina`
FROM
    `ingredientai`
WHERE
    id >= 6 AND id <= 10;

5 Užduotis
        SELECT
        MAX(kaina)
    FROM
        `ingredientai`

 6 Užduotis       

  SELECT
    `id`,
    `pavadinimas`
FROM
    `receptas`

    7 Užduotis   

     SELECT
        AVG(kaina)
    FROM
        `receptas` 

  8 Užduotis

       SELECT
        sum(kaina)
    FROM
        `receptas` 

    9 Užduotis

    SELECT `id`, 
     `pavadinimas`
    FROM `receptas` WHERE `id` >= 3 AND id <= 8 AND `kalorijos_per100g` > 500

    10 Užduotis

        SELECT
    `pavadinimas`,
    `nurodymai`
FROM
    `receptas`
WHERE
    `kaina` < 10 AND  `kalorijos_per100g` < 350;

    11 Užduotis

    SELECT
    AVG(`kalorijos_per100g`)
FROM
    `receptas`
WHERE
    `id` >= 1 AND id <= 5

 12 Užduotis


  SELECT
    id,
    pavadinimas
FROM
    receptas
WHERE
    kaina =(
    SELECT
        MAX(kaina)
    FROM
        `receptas`
)

13 Užduotis

SELECT
    pavadinimas,
    nurodymai
FROM
    receptas
WHERE
	kalorijos_per100g = (  
    SELECT
        MAX(kalorijos_per100g)
    FROM
        `receptas`
);


14 Užduotis

SELECT
   kaina
FROM
    `receptas`
ORDER BY
    kaina
DESC
LIMIT 3;

15 Užduotis

SELECT
   id,
   pavadinimas
FROM
    `receptas`
ORDER BY
    kaina
ASC
LIMIT 5;

SELECT <stulpeliai_kuriuos_paimti_rezultatui>, <kitas_stulpelis>, <dar_vienas>
FROM <iš_kurios_lentelės>
[WHERE <tikrinama_sąlyga> AND <dar_viena_sąlyga> OR <arba_šita_sąlyga>]
[ORDER BY <stulpelio_pavadinimas_pagal_kurį_rikiuot> ASC, jei didėjančia / DESC, jei mažėjančia] 


SELECT
    [kokius_stulpelius_grąžinti]
FROM
    [iš_kurios_lentelės]
WHERE
	[kur_tenkina_sąlyga] AND [kita_sąlyga] OR [kita_dar_sąlyga]
ORDER BY
	[pagal_kurį_stulpelį_rikiuoti] ASC|DESC (didėjančia|mažėjančia)
LIMIT x
	[grąžina_tik_pirmus_keliss]

--Grąžinkite pirmo recepto visų ingredientų id ir pavadinimus.--

SELECT
    receptas.id,
    receptas.pavadinimas
FROM
    `receptas`
JOIN sujungimas_receptai_ingredientai ON sujungimas_receptai_ingredientai.receptas_id = receptas.id
JOIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE
    receptas.id = 1;

--Grąžinkite antro recepto ingredientų kainas ir kalorijas per 100 g--
    SELECT
    receptas.`Kaina`,
    receptas.`kalorijos_per100g`
FROM
    `receptas`
JOIN sujungimas_receptai_ingredientai ON sujungimas_receptai_ingredientai.receptas_id = receptas.id
JOIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE
    receptas.id = 2;

  --  Grąžinkite trečio recepto ingredientų kainų sumą (nenaudojant kaina stulpelio recepto lentelėje, o sumuojant ingredientų kainas)--


  OIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE

--ingredientas.id viena lentele sujungimas_receptai_ingredientai.ingredientas_id kita lentele, kurias tarousavi jungiu, join  pavadinimas 

SELECT
    ingredientai.Pavadinimas,
    ingredientai.id
FROM
    receptas
JOIN sujungimas_receptai_ingredientai ON receptas.id = sujungimas_receptai_ingredientai.receptas_id
JOIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE
    receptas.id = 1;


    2 Užduotis

    SELECT
    ingredientai.kaina,
    ingredientai.Kalorju_skaicius_100g
FROM
    receptas
JOIN sujungimas_receptai_ingredientai ON receptas.id = sujungimas_receptai_ingredientai.receptas_id
JOIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE
    receptas.id = 2;

    3 Užduotis

        SELECT
    SUM(kaina)
FROM
    sujungimas_receptai_ingredientai
JOIN sujungimas_receptai_ingredientai ON receptas.id = sujungimas_receptai_ingredientai.receptas_id
JOIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE
    receptas.id = 3;

    SUM(ingredientai.kaina)
11.08

SELECT
    SUM(ingredientai.kaina)
FROM
    receptas
JOIN sujungimas_receptai_ingredientai ON receptas.id = sujungimas_receptai_ingredientai.receptas_id
JOIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE
    receptas.id = 3;
       
    --Grąžinkite ketvirto recepto visas alergijas ir jų id.   --
       
      4 užduotis 
       
    SELECT
    alergijos.id,
    alergijos.pavadinimas
FROM
    receptas
    JOIN sujungimas_receptai_alergijos ON receptas.id = sujungimas_receptai_alergijos.receptad_id
    JOIN alergijos ON alergijos.id = sujungimas_receptai_alergijos.alergijos_id
WHERE
    receptas.id = 4;


--Grąžinkite visas alergijas receptų, kurių kaina yra mažiau nei 7.20

    SELECT
    alergijos.id,
    alergijos.pavadinimas
FROM
    receptas
    JOIN sujungimas_receptai_alergijos ON receptas.id = sujungimas_receptai_alergijos.receptas_id
    JOIN alergijos ON alergijos.id = sujungimas_receptai_alergijos.alergija_id
WHERE
    receptas.kaina < 7.20;

   -- Grąžinkite kokie ingredientai yra naudojami pirmame, antrame ir trečiame recepte, tačiau pasikartojančių ingredientų neišveskite antrą kartą (tam naudojamas SELECT DISTINCT)

     SELECT DISTINCT 
    ingredientai.Pavadinimas,
    ingredientai.id
  
FROM
    receptas
JOIN sujungimas_receptai_ingredientai ON receptas.id = sujungimas_receptai_ingredientai.receptas_id
JOIN ingredientai ON ingredientai.id = sujungimas_receptai_ingredientai.ingredientas_id
WHERE
    receptas.id = 1 OR receptas.id = 2 OR  receptas.id = 3;


-- Grąžinkite receptų id, pavadinimą ir nurodymus, kurie yra “Universali” virtuvės receptai

SELECT
    receptas.id,
    receptas.pavadinimas,
    receptas.Nurodymai 
    
FROM
    `receptas`
    JOIN sujungimas_virtuvė_receptai ON receptas.id = sujungimas_virtuvė_receptai.receptas_id
    JOIN virtuvė ON virtuvė.id = sujungimas_virtuvė_receptai.virtuvė_id
WHERE
    virtuvė.id = 3;

