CREATE ROLE work_stg WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md56e737fe053c6099a21877aa18dbcd7a7';
CREATE SCHEMA work_stg AUTHORIZATION work_stg;
GRANT ALL ON SCHEMA work_stg TO work_stg;
GRANT ALL ON SCHEMA work_stg TO admin;

CREATE ROLE etl_stg WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md5d5d24bf47c64fdc7350bb43df66e0526';

CREATE SCHEMA etl_stg AUTHORIZATION etl_stg;
GRANT ALL ON SCHEMA etl_stg TO etl_stg;
GRANT ALL ON SCHEMA etl_stg TO admin;

CREATE ROLE etl_sys WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md56fc0ee20642902d90f85d440f5938101';

CREATE SCHEMA etl_sys;
GRANT ALL ON SCHEMA etl_sys TO PUBLIC;
GRANT ALL ON SCHEMA etl_sys TO etl_sys;