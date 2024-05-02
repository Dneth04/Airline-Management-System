use airlinesystem;

Delimiter :
CREATE PROCEDURE GetTicketDetailsByPassengerNo(IN p_passengerNo VARCHAR(25))
BEGIN
  SELECT td.ticketId, td.ticketClass, td.ticketStatus, td.ticketFare, td.bookingDate 
  FROM TicketDetails td 
  INNER JOIN TicketAllocation ta ON td.ticketId = ta.ticketId 
  WHERE ta.passengerId = p_passengerNo;
END :
Delimiter :
CREATE PROCEDURE staff_summary(IN airline_code VARCHAR(25))
BEGIN SELECT 'Cabin Crew' AS Job_Position,  COUNT(*) AS Total_Count,  SUM(salary) AS Total_Salary FROM CabinCrew
WHERE airlineNo = airline_code UNION 
SELECT 'Pilot' AS Job_Position, COUNT(*) AS Total_Count, SUM(salary) AS Total_Salary FROM Pilot
WHERE airlineNo = airline_code UNION
SELECT 'Ground Staff' AS Job_Position, COUNT(*) AS Total_Count, SUM(salary) AS Total_Salary FROM GroundStaff
WHERE airlineNo = airline_code
ORDER BY Total_Salary DESC;
END :

delimiter :
CREATE PROCEDURE top_routes()
BEGIN
    SELECT 
        CONCAT(f1.departure, ' - ', f1.destination) AS route, 
        COUNT(*) AS total_tickets_sold, 
        SUM(td.ticketFare) AS total_revenue
    FROM 
        BookedFlight bf
        INNER JOIN TicketDetails td ON bf.ticketId = td.ticketId AND bf.ticketClass = td.ticketClass
        INNER JOIN TicketAllocation ta ON bf.ticketId = ta.ticketId
        INNER JOIN Flight f1 ON ta.flightId = f1.flightId AND ta.airlineNo = f1.airlineNo
    GROUP BY 
        f1.departure, f1.destination
    ORDER BY 
        total_tickets_sold DESC;
END :

delimiter :
CREATE PROCEDURE getPassengersWithLuggage(IN p_airlineNo VARCHAR(25))
BEGIN
  SELECT p.firstName, p.lastName, SUM(b.weight) AS total_luggage_weight
  FROM Passengers p
  INNER JOIN Reservation r ON p.passengerNo = r.passengerNo
  INNER JOIN LuggageInfo l ON r.passengerNo = l.passengerNo AND r.airlineNo = l.airlineNo
  INNER JOIN Baggage b ON l.baggageId = b.baggageId
  WHERE r.airlineNo = p_airlineNo
  GROUP BY p.passengerNo
  ORDER BY total_luggage_weight DESC;
END :

delimiter :
CREATE PROCEDURE GetFlightDetailsByAirlineNo(IN p_airlineNo VARCHAR(25))
BEGIN
  SELECT f.flightId, f.departure, f.destination, COUNT(ta.passengerId) AS passengerCount
  FROM Flight f
  LEFT JOIN TicketAllocation ta ON f.flightId = ta.flightId AND f.airlineNo = ta.airlineNo
  WHERE f.airlineNo = p_airlineNo
  GROUP BY f.flightId, f.departure, f.destination;
END :

