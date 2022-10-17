-- Table: shop.product_types

-- DROP TABLE IF EXISTS shop.product_types;

CREATE TABLE IF NOT EXISTS shop.product_types
(
    id integer,
    name character varying(512) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS shop.product_types
    OWNER to postgres;