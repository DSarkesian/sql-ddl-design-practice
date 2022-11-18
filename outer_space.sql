CREATE TABLE stars (
  star TEXT PRIMARY KEY,
  temp_k INT NOT NULL);

CREATE TABLE planets (
  planet TEXT PRIMARY KEY,
  star TEXT NOT NULL REFERENCES stars,
  orbital_period_in_years FLOAT NOT NULL);

CREATE TABLE moons (
  moon TEXT PRIMARY KEY,
  planet TEXT NOT NULL REFERENCES planets);
