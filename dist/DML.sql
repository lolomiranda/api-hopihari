USE hopi_hari_db;

INSERT INTO users (first_name, last_name, email, password, birth_date, phone)
VALUES  ("João", "Biston", "JoãoV@gmail.com", "$2b$10$x3TJGwflhcDiiiNYIsdzYOCty4B44tDi2yX3unm4vQtYFUCotp0RO", "2025-05-09", "14887956022"),
		("Guilherme", "Paglioni", "GuiBixa@email.com", "$2b$10$/JZfGZMxAzuOhHupOxm1o.KGvVId4lmLeNDK0cvSXQ.fY04OBv4s6", "2025-02-03", "14995846033"),
		("Bruna", "Muniz", "Munizbru@gmail.com", "$2b$10$87ctfPqjQMYIVfWzdW1oWO4RI3H0LvAW/DyINjnYejzLiHIXFDpo6", "2025-10-11", "14997586022");

INSERT INTO rides (name, waiting_time, status, area)
VALUES  ("Trem Fantasma", 5, "aberto", "1"),
        ("Montanha Russa", 2, "aberto", "2"),
        ("Roda Gigante", 3, "aberto", "3");

INSERT INTO `linhas` (id_ride, id_user)
VALUES  (8, 10),
        (8, 11),
        (9, 11),
        (9, 12),
        (10, 10),
        (10, 12);

SELECT users.first_name        AS name,
       rides.`name`            AS brinquedo,
       `linhas`.*
FROM   `linhas`
INNER JOIN   users     ON users.id = `linhas`.id_user
INNER JOIN   rides     ON rides.id = `linhas`.id_ride
WHERE  rides.area = '1';