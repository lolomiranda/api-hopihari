DELIMITER $$

CREATE TRIGGER after_insert_lines
AFTER INSERT ON hopi_hari_db.lines
FOR EACH ROW
BEGIN
    DECLARE wait_time INT;
    DECLARE line_count INT;
    DECLARE total_wait INT;

    -- Corrigido: usa 'id' na tabela rides
    SELECT waiting_time INTO wait_time
    FROM rides 
    WHERE id = NEW.id_ride;

    -- Aqui tudo certo: estamos na tabela lines, que tem id_ride
    SELECT COUNT(id) INTO line_count
    FROM hopi_hari_db.lines
    WHERE id_ride = NEW.id_ride;

    SET total_wait = wait_time * line_count;

    INSERT INTO notifications (description, id_rides, id_user, status)
    VALUES (CONCAT(total_wait, " minuto(s) de espera para o brinquedo"), NEW.id_ride, NEW.id_user, TRUE);
END $$

DELIMITER ;