-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS party_members CASCADE;
DROP TABLE IF EXISTS goblins CASCADE;
DROP TABLE IF EXISTS loot CASCADE;

CREATE TABLE users (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  email TEXT NOT NULL,
  password_hash TEXT NOT NULL
);

CREATE TABLE party_members (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name TEXT NOT NULL,
    job TEXT NOT NULL,
    armor TEXT NOT NULL,
    weapons TEXT NOT NULL,
    lvl VARCHAR NOT NULL,
    exp VARCHAR NOT NULL,
    gold VARCHAR NOT NULL,
    health_potions VARCHAR NOT NULL,
    mana_potions VARCHAR NOT NULL
);

CREATE TABLE goblins (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name TEXT NOT NULL,
    job TEXT NOT NULL,
    armor TEXT NOT NULL,
    weapons TEXT NOT NULL,
    lvl VARCHAR NOT NULL,
    gold VARCHAR NOT NULL,
    health_potions VARCHAR NOT NULL,
    mana_potions VARCHAR NOT NULL
);

CREATE TABLE loot (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    item_name TEXT NOT NULL,
    job_class TEXT NOT NULL,
    quantity TEXT NOT NULL,
    shop_price TEXT NOT NULL,
    lvl_req VARCHAR NOT NULL
);
