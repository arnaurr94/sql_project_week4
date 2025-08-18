-- DROP TABLES IF THEY EXIST
DROP TABLE IF EXISTS Location;
DROP TABLE IF EXISTS Apartments;
DROP TABLE IF EXISTS rats;
DROP TABLE IF EXISTS neighbourhoods;
DROP TABLE IF EXISTS host;

-- Tabla Host
CREATE TABLE host (
    host_id BIGINT NOT NULL PRIMARY KEY,
    host_name VARCHAR(255) NOT NULL
);

-- Tabla Neighbourhoods
CREATE TABLE neighbourhoods (
    combined_id INT NOT NULL PRIMARY KEY,
    neighbourhood_group VARCHAR(255),
    neighbourhood VARCHAR(255)
);

-- Tabla Apartments
CREATE TABLE Apartments (
    airbnb_id INT NOT NULL PRIMARY KEY,
    airbnb_name VARCHAR(255),
    host_id BIGINT NOT NULL,
    price INT,
    room_type VARCHAR(100),
    number_of_reviews INT,
    availability_365 INT,
    FOREIGN KEY (host_id) REFERENCES host(host_id)
);

-- Tabla Location
CREATE TABLE Location (
    airbnb_id INT NOT NULL PRIMARY KEY,
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    neighbourhood_id INT NOT NULL,
    FOREIGN KEY (airbnb_id) REFERENCES Apartments(airbnb_id),
    FOREIGN KEY (neighbourhood_id) REFERENCES neighbourhoods(combined_id)
);

-- Tabla Rats
CREATE TABLE rats (
    neighbourhood VARCHAR(255) NOT NULL,
    number_of_rat_incidents INT
);