INSERT INTO Users (id, first_name, last_name, email, password, birth_date, phone) 
VALUES (1, 'João', 'Biston', 'Joãov.Biston@email.com', '1234', '1990-05-15', '1499198-6666');

INSERT INTO Users (id, first_name, last_name, email, password, birth_date, phone) 
VALUES (1, 'Guilherme', 'Paglioni', 'Gui.Bixa@email.com', '1234', '1989-07-23', '1499198-8888');

INSERT INTO Users (id, first_name, last_name, email, password, birth_date, phone) 
VALUES (1, 'Bruna', 'Muniz', 'MunizBru@email.com', '1234', '1996-12-8', '1499198-5656');



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