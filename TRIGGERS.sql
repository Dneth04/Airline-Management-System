DELIMITER :
CREATE TRIGGER delete_passenger_reservations
AFTER DELETE ON Passengers
FOR EACH ROW
BEGIN
  DELETE FROM Reservations
  WHERE passengerNo = OLD.passengerNo;
END :


DELIMITER :
CREATE TRIGGER baggage_loaded_trigger AFTER INSERT ON LuggageInfo
FOR EACH ROW
BEGIN
UPDATE Baggage
SET status = 'Checked'
WHERE baggageId = NEW.baggageId;
END :

delimiter :
CREATE TRIGGER increment_pilot_salary
AFTER INSERT ON Pilot
FOR EACH ROW
BEGIN
    DECLARE increment_amount DECIMAL(10, 2);
    SELECT 0.05 * AVG(flightFare) INTO increment_amount FROM Flight;
    UPDATE Pilot SET salary = salary + increment_amount WHERE pilotId = NEW.pilotId;
END :

DELIMITER //
CREATE TRIGGER decrease_seats AFTER INSERT ON BookedFlight
FOR EACH ROW
BEGIN
    IF NEW.ticketClass = 'Business' THEN
        UPDATE Flight
        SET businessSeatsAvailability = businessSeatsAvailability - 1
        WHERE flightId = NEW.flightNo;
    ELSEIF NEW.ticketClass = 'Economy' THEN
        UPDATE Flight
        SET economySeatsAvailability = economySeatsAvailability - 1
        WHERE flightId = NEW.flightNo;
    END IF;
END //




DELIMITER //
CREATE TRIGGER add_baggage AFTER INSERT ON LuggageInfo
FOR EACH ROW
BEGIN
    INSERT INTO Baggage (baggageId, status, weight)
    VALUES (NEW.baggageId, 'Checked-In', 0);
END //
DELIMITER ;

delimiter :
CREATE TRIGGER unique_passport_no 
BEFORE INSERT ON Passengers 
FOR EACH ROW 
BEGIN
  IF EXISTS (SELECT 1 FROM Passengers WHERE passportNo = NEW.passportNo) THEN
    SIGNAL SQLSTATE '45000' 
      SET MESSAGE_TEXT = 'Passport number must be unique';
  END IF;
END :



