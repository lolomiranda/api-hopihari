
DROP TRIGGER IF EXISTS after_insert_lines;


DELIMITER $$

  
  CREATE TRIGGER after_insert_linhas
  AFTER INSERT ON hopi_hari_db.linhas
  FOR EACH ROW
  BEGIN
  
     DECLARE wait_time INT;
     DECLARE line_count INT;
     DECLARE total_wait INT;
     
     SELECT waiting_time INTO wait_time
      FROM rides 
	 WHERE id = NEW.id_ride;
     
     SELECT COUNT(id_user) INTO line_count
      FROM hopi_hari_db.linhas
	 WHERE id_ride = NEW.id_ride;
     
     SET total_wait = wait_time * line_count;
     
     INSERT INTO notifications (description, id_ride, id_user, status)
     values (concat(total_wait_time, " Minuto(s) de espera para o brinquedo" ), NEW.id_ride, NEW.id_user, true);
END $$

DELIMITER ;
