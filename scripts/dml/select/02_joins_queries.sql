--INNER JOIN
--Buscar especie segun su estado de consevacion teniendo en cuenta que su familia sea Delfín.
SELECT E.nombre AS ESPECIE,
EC.nombre AS ESTADO_CONSERVACION,
FA.nombrecomun AS FAMILIA

FROM ESPECIE E
INNER JOIN estado_conservacion EC ON E.idestadoconservacion = EC.id
INNER JOIN familia FA ON E.idfamilia = FA.id
WHERE E.nombre LIKE '%Delfín%';

--INNER JOIN
--Listar animales con el nombre de su cuidador y el habitat en el que viven.
SELECT A.nombre AS nombre_animal,
CU.nombre AS CUIDADOR,
HA.nombre AS HABITAT

FROM ANIMALES AS A
INNER JOIN CUIDADOR CU ON A.IDcuidador=CU.ID
INNER JOIN HABITAT HA ON A.IDhabitat=HA.ID;

--LEFT JOIN
--Listar todos los animales, incluyendo aquellos que no tienen un habitad asignado.
SELECT A.nombre AS ANIMAL,
HA.nombre AS HABITAT

FROM ANIMALES AS A
LEFT JOIN HABITAT HA ON A.IDhabitat=HA.ID
WHERE A.IDhabitat IS NOT NULL;

--RIGHT JOIN
--Listar todos los cuidadores y los animales que tienen asignados, incluyendo los cuidadores que no tienen animales a su cargo
SELECT CU.nombre AS CUIDADOR,
A.nombre AS ANIMAL

FROM ANIMALES AS A
RIGHT JOIN CUIDADOR CU ON A.IDcuidador=CU.ID;