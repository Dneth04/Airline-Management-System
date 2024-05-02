use AirlineSystem;
CREATE VIEW ReservationView AS
SELECT Passengers.firstName, Passengers.lastName, Airlines.airlineName, Flight.departure, Flight.destination
FROM Reservation
JOIN Passengers ON Reservation.passengerNo = Passengers.passengerNo
JOIN Airlines ON Reservation.airlineNo = Airlines.airlineNo
JOIN Flight ON Reservation.airlineNo = Flight.airlineNo;

CREATE VIEW FlightBaggageView AS
SELECT Flight.flightId, SUM(Baggage.weight) AS totalWeight
FROM Flight
JOIN FlightBaggage ON Flight.flightId = FlightBaggage.flightId AND Flight.departureDate = FlightBaggage.departureDate AND Flight.arrivalDate = FlightBaggage.arrivalDate
JOIN Baggage ON FlightBaggage.baggageId = Baggage.baggageId
GROUP BY Flight.flightId;

CREATE VIEW passenger_details AS
SELECT p.passengerNo, p.firstName, p.lastName, r.airlineNo, r.reservationId, ta.ticketId, td.ticketClass, td.ticketStatus, td.ticketFare
FROM passengers p
JOIN reservation r ON p.passengerNo = r.passengerNo
JOIN ticketallocation ta ON r.passengerNo = ta.passengerId AND r.airlineNo = ta.airlineNo
JOIN ticketdetails td ON ta.ticketId = td.ticketId;

CREATE VIEW flight_info AS
SELECT f.flightId, f.businessSeatsAvailability, f.economySeatsAvailability, f.departure, f.destination, f.departureDate, f.arrivalDate, a.airlineName
FROM Flight f
JOIN Airlines a ON f.airlineNo = a.airlineNo;

CREATE VIEW AvailableSeats AS
SELECT f.flightId, f.departureDate, f.arrivalDate, 
       f.businessSeatsAvailability - COUNT(CASE WHEN bf.ticketClass = 'Business' THEN bf.seatNo END) AS availableBusinessSeats, 
       f.economySeatsAvailability - COUNT(CASE WHEN bf.ticketClass = 'Economy' THEN bf.seatNo END) AS availableEconomySeats
FROM Flight f
LEFT JOIN BookedFlight bf ON f.flightId = bf.flightNo
GROUP BY f.flightId, f.departureDate, f.arrivalDate;
