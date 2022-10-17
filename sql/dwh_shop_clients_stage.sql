-- Table: raw_data.shop_clients_stage

-- DROP TABLE IF EXISTS raw_data.shop_clients_stage;

CREATE TABLE IF NOT EXISTS raw_data.shop_clients_stage
(
    tech_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    id integer,
    first_name character varying(512) COLLATE pg_catalog."default",
    last_name character varying(512) COLLATE pg_catalog."default",
    patronomic character varying(512) COLLATE pg_catalog."default",
    birth_date date,
    tech_deleted boolean,
    tech_modified date,
    tech_hash character varying(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS raw_data.shop_clients_stage
    OWNER to postgres;