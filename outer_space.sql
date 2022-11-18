CREATE TABLE moons(
    id serial PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,

)

CREATE TABLE stars(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    start_temp INT NOT NULL
)

CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    orbital_period NUMERIC NOT NULL,
    orbits_around TEXT NOT NULL REFERENCES stars,
    moons text REFERENCES moons
);
