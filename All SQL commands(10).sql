
SELECT gs.staffId, gs.cname, gs.gender, gs.staffLocation, gs.department, gs.salary, gs.primContactNo, gs.secContactNo, 
    (SELECT airlineName FROM Airlines WHERE airlineNo = gs.airlineNo) AS airlineName
FROM GroundStaff gs 
WHERE gs.airlineNo = 'EK001';

SELECT Airlines.Country, Pilot.CName AS PilotName, Pilot.HoursFlown, AVG(Pilot.salary) AS avg_salary
FROM Airlines
JOIN Pilot ON Airlines.airlineNo = Pilot.airlineNo
GROUP BY Airlines.country, Pilot.CName, Pilot.HoursFlown;


SELECT ps.passengerNo, ps.passportNo, ps.firstName, ps.lastName, ps.gender, ps.DOB, ps.Nationality, ps.primContactNo, ps.secContactNo, r.reservationId 
FROM Passengers ps 
INNER JOIN Reservation r ON ps.passengerNo = r.passengerNo 
WHERE r.airlineNo = 'SQ001';

SELECT * FROM Passengers WHERE passengerNo IN (SELECT passengerNo FROM Reservation WHERE airlineNo = 'EY001');

SELECT b.baggageId, b.status, b.weight, f.flightId, f.departure, f.destination, f.departureDate, f.arrivalDate, a.airlineName 
FROM Baggage b 
LEFT JOIN LuggageInfo li ON b.baggageId = li.baggageId 
LEFT JOIN Reservation r ON li.passengerNo = r.passengerNo 
LEFT JOIN Flight f ON r.airlineNo = f.airlineNo 
LEFT JOIN Airlines a ON f.airlineNo = a.airlineNo 
WHERE li.passengerNo = 'P1004';

SELECT * FROM passengers WHERE passengerNo IN (SELECT passengerNo FROM reservation WHERE airlineNo = 'QR001');

SELECT * FROM flight WHERE departure = 'Dubai' AND businessSeatsAvailability > 0;

SELECT * FROM bookedflight WHERE ticketId IN (SELECT ticketId FROM ticketallocation WHERE passengerId= 'P1009');


SELECT f1.flightId, f1.airlineNo
FROM Flight f1
INNER JOIN Flight f2
ON f1.airlineNo = f2.airlineNo AND f1.flightId <> f2.flightId;
