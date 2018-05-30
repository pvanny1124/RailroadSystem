DELIMITER //

CREATE PROCEDURE FILL_TRAIN()
BEGIN
  DECLARE ORIGIN_ID INT(11);
  DECLARE DEST_ID INT(11);
  DECLARE ITERATOR INT(2);

  SET ORIGIN_ID = (SELECT min(STATION_ID) FROM S18336PRRteam1.STATION);
  SET DEST_ID = (SELECT max(STATION_ID) FROM S18336PRRteam1.STATION);
  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (ORIGIN_ID, DEST_ID, 'MOR', '1');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (ORIGIN_ID, DEST_ID, 'AFT', '1');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 2 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (ORIGIN_ID, DEST_ID, 'EVE', '1');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (ORIGIN_ID, DEST_ID, 'MOR', '0');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (ORIGIN_ID, DEST_ID, 'AFT', '0');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 2 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (ORIGIN_ID, DEST_ID, 'EVE', '0');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (DEST_ID, ORIGIN_ID, 'MOR', '1');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (DEST_ID, ORIGIN_ID, 'AFT', '1');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 2 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (DEST_ID, ORIGIN_ID, 'EVE', '1');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (DEST_ID, ORIGIN_ID, 'MOR', '0');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 3 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (DEST_ID, ORIGIN_ID, 'AFT', '0');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

  SET ITERATOR = 0;

  WHILE ITERATOR != 2 DO
    INSERT INTO S18336PRRteam1.TRAIN (`ORIGIN`, `DESTINATION`, `TIME_DAY`, `WKD_BIN`) VALUES (DEST_ID, ORIGIN_ID, 'EVE', '0');
    SET ITERATOR = ITERATOR + 1;
  END WHILE;

END //

DELIMITER ;
