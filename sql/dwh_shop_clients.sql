-- Table: raw_data.shop_clients

-- DROP TABLE IF EXISTS raw_data.shop_clients;

CREATE TABLE IF NOT EXISTS raw_data.shop_clients
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

ALTER TABLE IF EXISTS raw_data.shop_clients
    OWNER to postgres;
-- Index: idx_shop_clients_lookup

-- DROP INDEX IF EXISTS raw_data.idx_shop_clients_lookup;

CREATE INDEX IF NOT EXISTS idx_shop_clients_lookup
    ON raw_data.shop_clients USING btree
    (id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: idx_shop_clients_tk

-- DROP INDEX IF EXISTS raw_data.idx_shop_clients_tk;

CREATE INDEX IF NOT EXISTS idx_shop_clients_tk
    ON raw_data.shop_clients USING btree
    (tech_id ASC NULLS LAST)
    TABLESPACE pg_default;