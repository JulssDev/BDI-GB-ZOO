-- CONTAR CUANTOS ANIMALES HAY POR ESPECIE
SELECT E.NOMBRE, COUNT(*) "#ANIMALES"
FROM ANIMALES A
INNER JOIN ESPECIE E ON A.IDESPECIE=E.ID
GROUP BY E.NOMBRE;
-- CONTAR CUANTOS ANIMALES DE LA FAMILIA Felidae Y Ursidae hay
SELECT F.NombreCientifico, COUNT(*) "#ANIMALESXFAMILIA"
FROM ANIMALES A
INNER JOIN ESPECIE E ON A.IDESPECIE=E.ID
INNER JOIN FAMILIA F ON E.IDFAMILIA=F.ID
WHERE F.NombreCientifico IN ('Felidae','Ursidae')
GROUP BY F.NombreCientifico;

SELECT Nombre FROM ANIMALES WHERE IDHabitat FROM HABITAT IN ('Santuario de aves tropicales');