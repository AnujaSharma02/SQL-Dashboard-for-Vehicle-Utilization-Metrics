-- Insert vehicles
INSERT INTO vehicles VALUES ('V101', 'EulerX', 'Delhi', '2023-01-01');
INSERT INTO vehicles VALUES ('V102', 'EulerY', 'Mumbai', '2023-02-01');

-- Insert trips
INSERT INTO trips (vehicle_id, start_time, end_time, distance_km) VALUES
('V101', '2023-07-01 09:00', '2023-07-01 09:45', 12.5),
('V102', '2023-07-01 10:00', '2023-07-01 10:30', 15.0);

-- Insert charging sessions
INSERT INTO charging_sessions (vehicle_id, charge_start, charge_end, energy_kwh) VALUES
('V101', '2023-07-01 11:00', '2023-07-01 11:45', 5.5),
('V102', '2023-07-01 12:00', '2023-07-01 12:30', 6.2);
