-- vehicles table
CREATE TABLE vehicles (
    vehicle_id TEXT PRIMARY KEY,
    model TEXT,
    region TEXT,
    registration_date DATE
);

-- trips table
CREATE TABLE trips (
    trip_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicle_id TEXT,
    start_time DATETIME,
    end_time DATETIME,
    distance_km FLOAT,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

-- charging_sessions table
CREATE TABLE charging_sessions (
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicle_id TEXT,
    charge_start DATETIME,
    charge_end DATETIME,
    energy_kwh FLOAT,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);
