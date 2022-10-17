-- Table: shop.orders

-- DROP TABLE IF EXISTS shop.orders;

CREATE TABLE IF NOT EXISTS shop.orders
(
    id integer,
    client_id integer,
    product_id integer,
    order_date date
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS shop.orders
    OWNER to postgres;