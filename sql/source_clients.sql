-- Table: shop.clients

-- DROP TABLE IF EXISTS shop.clients;

CREATE TABLE IF NOT EXISTS shop.clients
(
    id integer NOT NULL DEFAULT nextval('shop.clients_id_seq'::regclass),
    first_name character varying(512) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(512) COLLATE pg_catalog."default" NOT NULL,
    patronomic character varying(512) COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    is_active boolean NOT NULL,
    CONSTRAINT clients_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS shop.clients
    OWNER to postgres;