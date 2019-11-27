CREATE USER alice with password 'postgres';
CREATE USER eve with password 'postgres';
CREATE USER bob with password 'postgres';

CREATE DATABASE jaffle_shop;

GRANT ALL PRIVILEGES ON DATABASE jaffle_shop TO alice;
GRANT ALL PRIVILEGES ON DATABASE jaffle_shop TO eve;
GRANT ALL PRIVILEGES ON DATABASE jaffle_shop TO bob;

ALTER ROLE alice SET search_path to "$user", public, dbt_alice;
ALTER ROLE eve SET search_path to "$user", public, dbt_eve;
ALTER ROLE bob SET search_path to "$user", public, dbt_bob;
