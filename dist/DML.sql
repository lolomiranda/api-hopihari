<<<<<<< HEAD
USE hopi_hari_db;

INSERT INTO users (first_name, last_name, email, password, birth_date, phone)
VALUES  ("João", "Biston", "JoãoV@gmail.com", "$2b$10$x3TJGwflhcDiiiNYIsdzYOCty4B44tDi2yX3unm4vQtYFUCotp0RO", "2025-05-09", "14887956022"),
		("Guilherme", "Paglioni", "GuiBixa@email.com", "$2b$10$/JZfGZMxAzuOhHupOxm1o.KGvVId4lmLeNDK0cvSXQ.fY04OBv4s6", "2025-02-03", "14995846033"),
		("Bruna", "Muniz", "Munizbru@gmail.com", "$2b$10$87ctfPqjQMYIVfWzdW1oWO4RI3H0LvAW/DyINjnYejzLiHIXFDpo6", "2025-10-11", "14997586022");

INSERT INTO rides (name, waiting_time, status, area)
VALUES  ("Trem Fantasma", 5, "aberto", "1"),
        ("Montanha Russa", 2, "aberto", "2"),
        ("Roda Gigante", 3, "aberto", "3");
=======
INSERT INTO Users (id, first_name, last_name, email, password, birth_date, phone) 
VALUES (1, 'João', 'Biston', 'Joãov.Biston@email.com', '1234', '1990-05-15', '1499198-6666');

INSERT INTO Users (id, first_name, last_name, email, password, birth_date, phone) 
VALUES (1, 'Guilherme', 'Paglioni', 'Gui.Bixa@email.com', '1234', '1989-07-23', '1499198-8888');

INSERT INTO Users (id, first_name, last_name, email, password, birth_date, phone) 
VALUES (1, 'Bruna', 'Muniz', 'MunizBru@email.com', '1234', '1996-12-8', '1499198-5656');
>>>>>>> c10152e9567717eb238af57e41cdbda49006591e

INSERT INTO `linhas` (id_ride, id_user)
VALUES  (8, 10),
        (8, 11),
        (9, 11),
        (9, 12),
        (10, 10),
        (10, 12);

<<<<<<< HEAD
SELECT users.first_name        AS name,
       rides.`name`            AS brinquedo,
       `linhas`.*
FROM   `linhas`
INNER JOIN   users     ON users.id = `linhas`.id_user
INNER JOIN   rides     ON rides.id = `linhas`.id_ride
WHERE  rides.area = '1';
=======

INSERT INTO rides (id_ride, name, waiting_time, status, area) 
VALUES (1, 'Montezum', 900, "Em manutenção", area1 );  

INSERT INTO rides (id_ride, name, waiting_time, status, area) 
VALUES (2, 'Giranda-Mundi', 120, "Em andamento", area1);  

INSERT INTO rides (id_ride, name, waiting_time, status, area) 
VALUES (3, 'Splash Aquático', 600,  "Fechado", area2); 


INSERT INTO Filas (id_fila, id_usuario, id_ride, hora_entrada, posicao) 
VALUES (1, 1, 1, '2025-05-13 09:30:00', 1);

INSERT INTO Filas (id_fila, id_usuario, id_ride, hora_entrada, posicao) 
VALUES (2, 2, 1, '2025-05-13 09:35:00', 2);


INSERT INTO Filas (id_fila, id_usuario, id_ride, hora_entrada, posicao) 
VALUES (3, 3, 2, '2025-05-13 10:15:00', 1);

INSERT INTO Filas (id_fila, id_usuario, id_ride, hora_entrada, posicao) 
VALUES (4, 1, 2, '2025-05-13 10:20:00', 2);


INSERT INTO Filas (id_fila, id_usuario, id_ride, hora_entrada, posicao) 
VALUES (5, 2, 3, '2025-05-13 11:05:00', 1);

INSERT INTO Filas (id_fila, id_usuario, id_ride, hora_entrada, posicao) 
VALUES (6, 3, 3, '2025-05-13 11:10:00', 2);
>>>>>>> c10152e9567717eb238af57e41cdbda49006591e
