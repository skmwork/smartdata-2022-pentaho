-- Table: shop.delivered_products

-- DROP TABLE IF EXISTS shop.delivered_products;

CREATE TABLE IF NOT EXISTS shop.delivered_products
(
    id double precision,
    product text COLLATE pg_catalog."default",
    producttype text COLLATE pg_catalog."default",
    productyear double precision,
    newtype double precision
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS shop.delivered_products
    OWNER to postgres;