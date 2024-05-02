
DELIMITER //

CREATE FUNCTION getPassengerCountForAirline(airlineNo VARCHAR(25)) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE passengerCount INT;
    SELECT COUNT(*) INTO passengerCount
    FROM Reservation
    WHERE Reservation.airlineNo = airlineNo;
    RETURN passengerCount;
END //

DELIMITER ;

SELECT getPassengerCountForAirline('SQ001');

delimiter :
CREATE FUNCTION getAverageSalaryForPilots(x VARCHAR(25))
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
    DECLARE avgSalary DECIMAL(10,2);
    SELECT AVG(salary) INTO avgSalary
    FROM Pilot WHERE Pilot.airlineNo = x;
    RETURN avgSalary;
END :
SELECT getAverageSalaryForPilots('AC001');


CREATE FUNCTION getBagCountForPassenger(passengerNo VARCHAR(25), airlineNo VARCHAR(25))
RETURNS INT
BEGIN
    DECLARE bagCount INT;
    SELECT COUNT(*) INTO bagCount
    FROM LuggageInfo
    WHERE passengerNo = 'P1014' AND airlineNo = 'EK001';
    RETURN bagCount;
END;
drop function getBagCountForPassenger;
delimiter :
CREATE FUNCTION getBagCountForPassenger(passengerNo VARCHAR(25), airlineNo VARCHAR(25))
RETURNS INT deterministic
BEGIN
    DECLARE bagCount INT;
    SELECT COUNT(*) INTO bagCount
    FROM LuggageInfo
    WHERE LuggageInfo.passengerNo = passengerNo AND LuggageInfo.airlineNo = airlineNo;
    RETURN bagCount;
END :
SELECT getBagCountForPassenger('P1001','AC001');


delimiter :
CREATE FUNCTION get_num_available_economy_seats(flight_id VARCHAR(25), departure_date DATE)
RETURNS INT deterministic
BEGIN
    DECLARE num_available_seats INT;
    SELECT economySeatsAvailability INTO num_available_seats FROM Flight WHERE Flight.flightId = flight_id AND Flight.departureDate =departure_date ;
    RETURN num_available_seats;
END :
SELECT get_num_available_economy_seats ('AC123','2023-05-01');

DELIMITER //

CREATE FUNCTION calculate_total_salary(department_name VARCHAR(25))
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE total_salary INT;
    SELECT SUM(salary) INTO total_salary FROM GroundStaff WHERE GroundStaff.department = department_name;
    RETURN total_salary;
END //

DELIMITER ;

SELECT calculate_total_salary('Catering');
