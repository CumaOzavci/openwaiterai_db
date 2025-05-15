--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.4 (Ubuntu 17.4-1.pgdg22.04+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: allergens; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.allergens (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.allergens OWNER TO openwaiterai;

--
-- Name: allergens_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.allergens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.allergens_id_seq OWNER TO openwaiterai;

--
-- Name: allergens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.allergens_id_seq OWNED BY public.allergens.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.categories OWNER TO openwaiterai;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO openwaiterai;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.ingredients (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.ingredients OWNER TO openwaiterai;

--
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ingredients_id_seq OWNER TO openwaiterai;

--
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;


--
-- Name: menuitemallergens; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.menuitemallergens (
    menu_item_id integer NOT NULL,
    allergen_id integer NOT NULL
);


ALTER TABLE public.menuitemallergens OWNER TO openwaiterai;

--
-- Name: menuitemingredients; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.menuitemingredients (
    menu_item_id integer NOT NULL,
    ingredient_id integer NOT NULL
);


ALTER TABLE public.menuitemingredients OWNER TO openwaiterai;

--
-- Name: menuitems; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.menuitems (
    id integer NOT NULL,
    category_id integer,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.menuitems OWNER TO openwaiterai;

--
-- Name: menuitems_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.menuitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.menuitems_id_seq OWNER TO openwaiterai;

--
-- Name: menuitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.menuitems_id_seq OWNED BY public.menuitems.id;


--
-- Name: nutritionalvalues; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.nutritionalvalues (
    id integer NOT NULL,
    menu_item_id integer,
    calories numeric(6,2),
    protein numeric(6,2),
    carbohydrates numeric(6,2),
    fats numeric(6,2),
    saturated_fats numeric(6,2),
    sugar numeric(6,2),
    salt numeric(6,2),
    fiber numeric(6,2)
);


ALTER TABLE public.nutritionalvalues OWNER TO openwaiterai;

--
-- Name: nutritionalvalues_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.nutritionalvalues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nutritionalvalues_id_seq OWNER TO openwaiterai;

--
-- Name: nutritionalvalues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.nutritionalvalues_id_seq OWNED BY public.nutritionalvalues.id;


--
-- Name: orderitems; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.orderitems (
    id integer NOT NULL,
    order_id integer,
    menu_item_id integer,
    quantity integer NOT NULL,
    notes text,
    CONSTRAINT orderitems_quantity_check CHECK ((quantity > 0))
);


ALTER TABLE public.orderitems OWNER TO openwaiterai;

--
-- Name: orderitems_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.orderitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orderitems_id_seq OWNER TO openwaiterai;

--
-- Name: orderitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.orderitems_id_seq OWNED BY public.orderitems.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    order_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.orders OWNER TO openwaiterai;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO openwaiterai;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: restaurantinfo; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.restaurantinfo (
    id integer NOT NULL,
    category character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.restaurantinfo OWNER TO openwaiterai;

--
-- Name: restaurantinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.restaurantinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.restaurantinfo_id_seq OWNER TO openwaiterai;

--
-- Name: restaurantinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.restaurantinfo_id_seq OWNED BY public.restaurantinfo.id;


--
-- Name: waitercalls; Type: TABLE; Schema: public; Owner: openwaiterai
--

CREATE TABLE public.waitercalls (
    id integer NOT NULL,
    call_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    reason text
);


ALTER TABLE public.waitercalls OWNER TO openwaiterai;

--
-- Name: waitercalls_id_seq; Type: SEQUENCE; Schema: public; Owner: openwaiterai
--

CREATE SEQUENCE public.waitercalls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.waitercalls_id_seq OWNER TO openwaiterai;

--
-- Name: waitercalls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openwaiterai
--

ALTER SEQUENCE public.waitercalls_id_seq OWNED BY public.waitercalls.id;


--
-- Name: allergens id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.allergens ALTER COLUMN id SET DEFAULT nextval('public.allergens_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: ingredients id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);


--
-- Name: menuitems id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitems ALTER COLUMN id SET DEFAULT nextval('public.menuitems_id_seq'::regclass);


--
-- Name: nutritionalvalues id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.nutritionalvalues ALTER COLUMN id SET DEFAULT nextval('public.nutritionalvalues_id_seq'::regclass);


--
-- Name: orderitems id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.orderitems ALTER COLUMN id SET DEFAULT nextval('public.orderitems_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: restaurantinfo id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.restaurantinfo ALTER COLUMN id SET DEFAULT nextval('public.restaurantinfo_id_seq'::regclass);


--
-- Name: waitercalls id; Type: DEFAULT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.waitercalls ALTER COLUMN id SET DEFAULT nextval('public.waitercalls_id_seq'::regclass);


--
-- Name: allergens allergens_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.allergens
    ADD CONSTRAINT allergens_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: ingredients ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- Name: menuitemallergens menuitemallergens_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitemallergens
    ADD CONSTRAINT menuitemallergens_pkey PRIMARY KEY (menu_item_id, allergen_id);


--
-- Name: menuitemingredients menuitemingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitemingredients
    ADD CONSTRAINT menuitemingredients_pkey PRIMARY KEY (menu_item_id, ingredient_id);


--
-- Name: menuitems menuitems_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitems
    ADD CONSTRAINT menuitems_pkey PRIMARY KEY (id);


--
-- Name: nutritionalvalues nutritionalvalues_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.nutritionalvalues
    ADD CONSTRAINT nutritionalvalues_pkey PRIMARY KEY (id);


--
-- Name: orderitems orderitems_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: restaurantinfo restaurantinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.restaurantinfo
    ADD CONSTRAINT restaurantinfo_pkey PRIMARY KEY (id);


--
-- Name: allergens unique_allergen_name; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.allergens
    ADD CONSTRAINT unique_allergen_name UNIQUE (name);


--
-- Name: waitercalls waitercalls_pkey; Type: CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.waitercalls
    ADD CONSTRAINT waitercalls_pkey PRIMARY KEY (id);


--
-- Name: menuitemallergens menuitemallergens_allergen_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitemallergens
    ADD CONSTRAINT menuitemallergens_allergen_id_fkey FOREIGN KEY (allergen_id) REFERENCES public.allergens(id) ON DELETE CASCADE;


--
-- Name: menuitemallergens menuitemallergens_menu_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitemallergens
    ADD CONSTRAINT menuitemallergens_menu_item_id_fkey FOREIGN KEY (menu_item_id) REFERENCES public.menuitems(id) ON DELETE CASCADE;


--
-- Name: menuitemingredients menuitemingredients_ingredient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitemingredients
    ADD CONSTRAINT menuitemingredients_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredients(id) ON DELETE CASCADE;


--
-- Name: menuitemingredients menuitemingredients_menu_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitemingredients
    ADD CONSTRAINT menuitemingredients_menu_item_id_fkey FOREIGN KEY (menu_item_id) REFERENCES public.menuitems(id) ON DELETE CASCADE;


--
-- Name: menuitems menuitems_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.menuitems
    ADD CONSTRAINT menuitems_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: nutritionalvalues nutritionalvalues_menu_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.nutritionalvalues
    ADD CONSTRAINT nutritionalvalues_menu_item_id_fkey FOREIGN KEY (menu_item_id) REFERENCES public.menuitems(id) ON DELETE CASCADE;


--
-- Name: orderitems orderitems_menu_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_menu_item_id_fkey FOREIGN KEY (menu_item_id) REFERENCES public.menuitems(id);


--
-- Name: orderitems orderitems_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: openwaiterai
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

