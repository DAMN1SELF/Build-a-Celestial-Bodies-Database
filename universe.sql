--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying(30),
    blackhole_id integer NOT NULL,
    height numeric(4,4),
    weight_int integer,
    height_int integer,
    bh_name text,
    bh_bool boolean,
    bh_bool2 boolean,
    bh_bool3 boolean NOT NULL,
    bh_bool4 boolean NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    height numeric(4,4),
    var_unique character varying(30),
    var_bool boolean NOT NULL,
    var_nonulo character varying(10) DEFAULT 'valor'::character varying NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    height numeric(4,4),
    planet_id integer,
    var_unique character varying(30),
    var_null character varying(30),
    var_nonulo character varying(10) DEFAULT 'valor'::character varying NOT NULL,
    var_unico2 character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    height numeric(4,4),
    star_id integer,
    var_unique character varying(30),
    var_nonulo character varying(10) DEFAULT 'valor'::character varying NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    height numeric(4,4),
    galaxy_id integer,
    var_unique character varying(30),
    var_nonulo character varying(10) DEFAULT 'valor'::character varying NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('bh1', 1, 0.1330, 3, 2, 'name1', false, false, false, false);
INSERT INTO public.blackhole VALUES ('bh2', 2, 0.2133, 3, 2, 'name2', false, false, false, false);
INSERT INTO public.blackhole VALUES ('bh3', 3, 0.2133, 3, 2, 'name3', false, false, false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, 0.4444, 'Unico1', true, 'valor');
INSERT INTO public.galaxy VALUES ('galaxy2', 2, 0.4454, 'Unico2', true, 'valor');
INSERT INTO public.galaxy VALUES ('galaxy3', 3, 0.1254, 'Unico3', false, 'valor');
INSERT INTO public.galaxy VALUES ('galaxy4', 4, 0.4454, 'Unico4', true, 'valor');
INSERT INTO public.galaxy VALUES ('galaxy5', 5, 0.5400, 'Unico5', true, 'valor');
INSERT INTO public.galaxy VALUES ('galaxy6', 6, 0.6654, 'Unico6', true, 'valor');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, 0.2777, 1, 'unique1', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon2', 2, 0.2557, 2, 'unique2', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon3', 3, 0.3333, 3, 'unique3', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon4', 4, 0.3333, 3, 'unique4', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon5', 5, 0.3200, 1, 'unique5', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon6', 6, 0.1110, 2, 'unique6', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon7', 7, 0.1441, 2, 'unique7', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon8', 8, 0.8810, 3, 'unique8', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon9', 9, 0.9910, 2, 'unique9', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon10', 10, 0.1910, 1, 'unique10', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon11', 11, 0.1910, 2, 'unique11', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon12', 12, 0.1910, 2, 'unique12', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon13', 13, 0.1300, 3, 'unique13', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon14', 14, 0.1400, 3, 'unique14', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon15', 15, 0.1550, 3, 'unique15', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon16', 16, 0.1550, 3, 'unique16', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon17', 17, 0.1775, 3, 'unique17', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon18', 18, 0.1885, 1, 'unique18', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon19', 19, 0.1885, 1, 'unique19', NULL, 'valor', NULL);
INSERT INTO public.moon VALUES ('moon20', 20, 0.1885, 2, 'unique20', NULL, 'valor', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, 0.2222, 1, 'unique1', 'valor');
INSERT INTO public.planet VALUES ('planet2', 2, 0.2423, 2, 'unique2', 'valor');
INSERT INTO public.planet VALUES ('planet3', 3, 0.2777, 3, 'unique3', 'valor');
INSERT INTO public.planet VALUES ('planet4', 4, 0.2222, 3, 'unique4', 'valor');
INSERT INTO public.planet VALUES ('planet5', 5, 0.2222, 3, 'unique5', 'valor');
INSERT INTO public.planet VALUES ('planet6', 6, 0.6620, 1, 'unique6', 'valor');
INSERT INTO public.planet VALUES ('planet7', 7, 0.7000, 1, 'unique7', 'valor');
INSERT INTO public.planet VALUES ('planet8', 8, 0.8800, 2, 'unique8', 'valor');
INSERT INTO public.planet VALUES ('planet9', 9, 0.9990, 1, 'unique9', 'valor');
INSERT INTO public.planet VALUES ('planet10', 10, 0.9990, 1, 'unique10', 'valor');
INSERT INTO public.planet VALUES ('planet11', 11, 0.9119, 1, 'unique11', 'valor');
INSERT INTO public.planet VALUES ('planet12', 12, 0.9119, 1, 'unique12', 'valor');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, 0.2222, 2, 'Unique2', 'valor');
INSERT INTO public.star VALUES ('star2', 2, 0.2112, 1, 'Unique1', 'valor');
INSERT INTO public.star VALUES ('star3', 3, 0.2233, 3, 'Unique3', 'valor');
INSERT INTO public.star VALUES ('star4', 4, 0.2233, 3, 'Unique4', 'valor');
INSERT INTO public.star VALUES ('star5', 5, 0.2233, 3, 'Unique5', 'valor');
INSERT INTO public.star VALUES ('star6', 6, 0.2233, 3, 'Unique6', 'valor');


--
-- Name: blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_var_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_var_unique_key UNIQUE (var_unique);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_var_unico2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_var_unico2_key UNIQUE (var_unico2);


--
-- Name: moon moon_var_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_var_unique_key UNIQUE (var_unique);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_var_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_var_unique_key UNIQUE (var_unique);


--
-- Name: blackhole u_bhx; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT u_bhx UNIQUE (bh_name);


--
-- Name: planet x_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT x_unique UNIQUE (var_unique);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

