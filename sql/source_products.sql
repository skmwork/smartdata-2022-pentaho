-- Table: shop.products

-- DROP TABLE IF EXISTS shop.products;

CREATE TABLE IF NOT EXISTS shop.products
(
    id integer,
    product_type_id integer,
    product_name character varying(512) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS shop.products
    OWNER to postgres;