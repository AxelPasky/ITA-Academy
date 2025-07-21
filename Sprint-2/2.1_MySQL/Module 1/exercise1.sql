----------------TIENDA-------------------------

--1 Llista el nom de tots els productes que hi ha en la taula "producto".
SELECT nombre FROM producto;

--2 Llista els noms i els preus de tots els productes de la taula "producto".
SELECT nombre, precio FROM producto ;

--3 Llista totes les columnes de la taula "producto".
SHOW COLUMNS FROM producto;

--4 Llista el nom dels "productos", el preu en euros i el preu en dòlars nord-americans (USD).
SELECT nombre, precio , precio * 1.1 AS precio_USD FROM producto; 

--5 Llista el nom dels "productos", el preu en euros i el preu en dòlars nord-americans. Utilitza els següents àlies per a les columnes: nom de "producto", euros, dòlars nord-americans.
SELECT nombre AS nombre_producto, precio AS EUR , precio * 1.1 AS USD FROM producto; 

--6 Llista els noms i els preus de tots els productes de la taula "producto", convertint els noms a majúscula.
SELECT UPPER(nombre), precio FROM producto; 

--7 Llista els noms i els preus de tots els productes de la taula "producto", convertint els noms a minúscula.
SELECT LOWER(nombre), precio FROM producto;

--8 Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.
SELECT nombre,UPPER(LEFT(nombre,2)) AS dos_primers_caràcters FROM fabricante;                  

--9 Llista els noms i els preus de tots els productes de la taula "producto", arrodonint el valor del preu.
SELECT nombre, ROUND(precio,0) AS precio FROM producto;

--10 Llista els noms i els preus de tots els productes de la taula "producto", truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
SELECT nombre, TRUNCATE(precio, 0) as precio_int  FROM producto; 

--11 Llista el codi dels fabricants que tenen productes en la taula "producto".
SELECT codigo_fabricante FROM producto;

--12 Llista el codi dels fabricants que tenen productes en la taula "producto", eliminant els codis que apareixen repetits.
SELECT DISTINCT codigo_fabricante FROM producto;

--13 Llista els noms dels fabricants ordenats de manera ascendent.
SELECT nombre FROM fabricante ORDER BY nombre ;

--14 Llista els noms dels fabricants ordenats de manera descendent.
SELECT nombre FROM fabricante ORDER BY nombre DESC;

--15 Llista els noms dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.
SELECT nombre, precio  FROM producto ORDER BY nombre, precio DESC;

--16 Retorna una llista amb les 5 primeres files de la taula "fabricante".
SELECT * FROM fabricante LIMIT 5;

--17 Retorna una llista amb 2 files a partir de la quarta fila de la taula "fabricante". La quarta fila també s'ha d'incloure en la resposta.
SELECT * FROM fabricante LIMIT  2 OFFSET 3;

--18 Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podries usar MIN(preu), necessitaries GROUP BY
SELECT 	nombre, precio FROM producto ORDER BY precio LIMIT 1;

--19 Llista el nom i el preu del producte més car. (Fes servir solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podries usar MAX(preu), necessitaries GROUP BY.
SELECT 	nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

--20 Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.
SELECT 	nombre FROM producto WHERE codigo_fabricante = 2;

--21 Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.
SELECT producto.nombre , producto.precio , fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ;

--22 Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordena el resultat pel nom del fabricant, per ordre alfabètic.
SELECT producto.nombre , producto.precio , fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY fabricante.nombre;

--23 Retorna una llista amb el codi del producte, nom del producte, codi del fabricant i nom del fabricant, de tots els productes de la base de dades.
SELECT producto.codigo AS codigo_producto, producto.nombre AS nombre_producto, fabricante.codigo AS codigo_fabricante, fabricante.nombre AS nombre_fabricante FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;

--24 Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.
SELECT producto.nombre  , producto.precio , fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY precio LIMIT 1;

--25 Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.
SELECT producto.nombre, producto.precio , fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY precio DESC LIMIT 1;

--26 Retorna una llista de tots els productes del fabricant Lenovo.
SELECT * FROM producto  INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante WHERE fabricante.nombre = "Lenovo";

--27 Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200 €.
SELECT * FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante WHERE fabricante.nombre = "Crucial" AND producto.precio > 200;

--28 Retorna una llista amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Sense utilitzar l'operador IN.
SELECT * FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante WHERE fabricante.nombre = "Asus" OR  fabricante.nombre = "Seagate" OR fabricante.nombre = "Hewlett-Packard";

--29 Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packard i Seagate. Usant l'operador IN.
SELECT producto.nombre AS nombre_producto , fabricante.nombre AS nombre_fabricante FROM producto JOIN fabricante  ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');

--30 Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.
SELECT producto.nombre,producto.precio,fabricante.nombre AS fabricante FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante WHERE fabricante.nombre LIKE '%e';

--31 Retorna un llistat amb el nom i el preu de tots els productes dels fabricants dels quals contingui el caràcter w en el seu nom.
SELECT producto.nombre,producto.precio,fabricante.nombre AS fabricante FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante WHERE fabricante.nombre LIKE '%w%';

--32 Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180 €. Ordena el resultat, en primer lloc, pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).
SELECT producto.precio,producto.nombre, fabricante.nombre AS fabricante FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante WHERE producto.precio >= 180 ORDER BY 	producto.precio DESC , producto.nombre;

--33 Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.
SELECT DISTINCT fabricante.codigo , fabricante.nombre FROM fabricante INNER JOIN producto ON producto.codigo_fabricante = fabricante.codigo;

--34 Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.
SELECT fabricante.codigo , fabricante.nombre , producto.nombre AS nombre_producto FROM fabricante LEFT JOIN producto ON producto.codigo_fabricante = fabricante.codigo;

--35 Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.
SELECT fabricante.nombre FROM fabricante LEFT JOIN producto ON producto.codigo_fabricante = fabricante.codigo WHERE producto.codigo_fabricante IS NULL ;

--36 Retorna tots els productes del fabricant Lenovo. (Sense utilitzar INNER JOIN).
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo');

--37 Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense fer servir INNER JOIN).
SELECT * FROM producto WHERE precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante =( SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));

--38 Llista el nom del producte més car del fabricant Lenovo.
SELECT producto.nombre  FROM producto INNER JOIN fabricante ON fabricante.codigo = producto.codigo_fabricante  WHERE fabricante.nombre = "Lenovo" ORDER BY producto.precio DESC LIMIT 1  ;

--39 Llista el nom del producte més barat del fabricant Hewlett-Packard.
SELECT producto.nombre  FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = "Hewlett-Packard" ORDER BY producto.precio LIMIT 1 ;

--40 Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.
SELECT * FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE producto.precio >= (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = 2 );

--41 Llesta tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.
SELECT * FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE producto.precio >= (SELECT AVG(precio) FROM producto WHERE codigo_fabricante = 1 ) AND fabricante.nombre = "Asus";


-------------------- UNIVERSIDAD -------------------------
--1 Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
SELECT apellido1,apellido2,nombre FROM persona WHERE tipo = 'alumno' ORDER BY apellido1,apellido2,nombre;

--2 Esbrina el nom i els dos cognoms dels/les alumnes que no han donat d'alta el seu número de telèfon en la base de dades.
SELECT apellido1,apellido2,nombre FROM persona WHERE telefono IS NULL AND tipo = 'alumno';

--3 Retorna el llistat dels/les alumnes que van néixer en 1999.
SELECT apellido1,apellido2,nombre , YEAR(fecha_nacimiento) FROM persona WHERE YEAR(fecha_nacimiento) = 1999;

--4 Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.
SELECT nif ,tipo, telefono FROM persona WHERE tipo = "profesor" AND nif LIKE "%K" AND telefono IS NULL;

--5 Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.
SELECT nombre , cuatrimestre , curso , id_grado FROM asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;

--6 Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats/des. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
SELECT persona.apellido1, persona.apellido2, persona.nombre , departamento.nombre AS nombre_departamento FROM persona INNER JOIN profesor ON profesor.id_profesor = persona.id INNER JOIN departamento ON profesor.id_departamento = departamento.id ORDER BY persona.apellido1,persona.apellido2,persona.nombre;

--7 Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.
SELECT asi.nombre, curso.anyo_inicio, curso.anyo_fin FROM persona INNER JOIN alumno_se_matricula_asignatura alumno ON persona.id = alumno.id_alumno INNER JOIN asignatura asi ON alumno.id_asignatura = asi.id INNER JOIN curso_escolar curso ON alumno.id_curso_escolar = curso.id WHERE persona.nif = '26902806M';

--8 Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).
SELECT DISTINCT departamento.nombre AS nombre_departamento FROM asignatura JOIN grado ON asignatura.id_grado = grado.id JOIN profesor  ON asignatura.id_profesor = profesor.id_profesor JOIN departamento  ON profesor.id_departamento = departamento.id WHERE grado.nombre = 'Grado en Ingeniería Informática (Plan 2015)';

--9 Retorna un llistat amb tots els/les alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.
SELECT DISTINCT alumno.id_alumno , persona.apellido1 ,persona.apellido2, persona.nombre FROM alumno_se_matricula_asignatura AS alumno INNER JOIN curso_escolar AS curso ON curso.id = alumno.id_curso_escolar INNER JOIN persona ON persona.id = alumno.id_alumno WHERE curso.id=5;

----------------------------------LEFT RIGHT JOIN------------------------

--1 Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats/des. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
SELECT dep.nombre AS nombre_departamento, persona.apellido1, persona.apellido2, persona.nombre AS nombre_profesor FROM profesor prof LEFT JOIN departamento dep ON prof.id_departamento = dep.id JOIN persona ON persona.id = prof.id_profesor ORDER BY nombre_departamento,persona.apellido1,persona.apellido2,nombre_profesor;

--2 Retorna un llistat amb els professors/es que no estan associats a un departament.
SELECT persona.apellido1 , persona.apellido2 , persona.nombre FROM persona LEFT JOIN profesor prof ON prof.id_profesor = persona.id LEFT JOIN departamento dep ON dep.id = prof.id_departamento WHERE dep.nombre IS NULL AND persona.tipo = 'profesor';

--3 Retorna un llistat amb els departaments que no tenen professors/es associats.
SELECT dep.nombre FROM profesor prof RIGHT JOIN departamento dep ON dep.id = prof.id_departamento WHERE prof.id_profesor IS NULL;

--4 Retorna un llistat amb els professors/es que no imparteixen cap assignatura.
SELECT persona.apellido1, persona.apellido2, persona.nombre FROM persona LEFT JOIN profesor prof ON persona.id = prof.id_profesor LEFT JOIN asignatura ON prof.id_profesor = asignatura.id_profesor WHERE asignatura.id IS NULL AND persona.tipo = 'profesor';

--5 Retorna un llistat amb les assignatures que no tenen un professor/a assignat.
SELECT asignatura.id , asignatura.nombre AS nombre_asignatura FROM asignatura LEFT JOIN profesor ON profesor.id_profesor = asignatura.id_profesor WHERE asignatura.id_profesor IS NULL;

--6 Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
SELECT dep.nombre FROM departamento dep LEFT JOIN profesor prof ON dep.id = prof.id_departamento LEFT JOIN asignatura asi ON prof.id_profesor = asi.id_profesor LEFT JOIN alumno_se_matricula_asignatura alumno ON asi.id = alumno.id_asignatura GROUP BY dep.nombre HAVING COUNT(alumno.id_asignatura) = 0;
------------ CONSULTES RESUM -----------------------------

--1 Retorna el nombre total d'alumnes que hi ha.
SELECT COUNT(*) AS numero_alumnos FROM persona WHERE tipo = 'alumno';

--2 Calcula quants/es alumnes van néixer en 1999.
SELECT COUNT(*) AS alumnos_1999 FROM persona WHERE tipo = 'alumno' AND fecha_nacimiento >= '1999-01-01'AND fecha_nacimiento <= '1999-12-31';

--3 Calcula quants/es professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.
SELECT dep.nombre, COUNT(prof.id_profesor) AS num_profesor FROM departamento dep JOIN profesor prof ON dep.id = prof.id_departamento GROUP BY dep.nombre ORDER BY num_profesor DESC;

--4 Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Té en compte que poden existir departaments que no tenen professors/es associats/des. Aquests departaments també han d'aparèixer en el llistat.
SELECT dep.nombre, COUNT(prof.id_profesor) AS numero_professori FROM departamento dep LEFT JOIN profesor prof ON dep.id = prof.id_departamento GROUP BY dep.nombre;

--5 Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Té en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.
SELECT g.nombre, COUNT(asi.id) AS num_asignature FROM grado g LEFT JOIN asignatura asi ON g.id = asi.id_grado GROUP BY g.nombre ORDER BY num_asignature DESC;

--6 Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.
--7 Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.
--8 Retorna un llistat que mostri quants/es alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats/des.
--9 Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.
--10 Retorna totes les dades de l'alumne més jove.
--11 Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.


