--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

ALTER TABLE ONLY public.planet DROP CONSTRAINT fk_planet;
ALTER TABLE ONLY public.moon DROP CONSTRAINT fk_p_moon;
ALTER TABLE ONLY public.star DROP CONSTRAINT fk_g_star;
ALTER TABLE ONLY public.star DROP CONSTRAINT uq_name_star;
ALTER TABLE ONLY public.planet DROP CONSTRAINT uq_name_planet;
ALTER TABLE ONLY public.star DROP CONSTRAINT uq_name_pl;
ALTER TABLE ONLY public._5th_table DROP CONSTRAINT uq_name_5;
ALTER TABLE ONLY public.galaxy DROP CONSTRAINT uq_name;
ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
ALTER TABLE ONLY public.moon DROP CONSTRAINT qu_name_mo;
ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
ALTER TABLE ONLY public._5th_table DROP CONSTRAINT _5th_table_pkey;
ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
DROP SEQUENCE public.star_s_id_seq;
DROP TABLE public.star;
DROP SEQUENCE public.planet_p_id_seq;
DROP TABLE public.planet;
DROP SEQUENCE public.moon_m_id_seq;
DROP TABLE public.moon;
DROP SEQUENCE public.galaxy_g_id_seq;
DROP TABLE public.galaxy;
DROP TABLE public._5th_table;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _5th_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public._5th_table (
    name character varying NOT NULL,
    _5th_table_id integer NOT NULL,
    _3th integer,
    _4th integer,
    _5th integer
);


ALTER TABLE public._5th_table OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    length numeric(4,1),
    is_1 boolean,
    _5th integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    _4th integer,
    _5th integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer NOT NULL,
    _4th integer,
    _5th integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    miaoshu text,
    is_2 boolean,
    galaxy_id integer NOT NULL,
    _5th integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: _5th_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public._5th_table VALUES ('1', 1, NULL, NULL, NULL);
INSERT INTO public._5th_table VALUES ('2', 2, NULL, NULL, NULL);
INSERT INTO public._5th_table VALUES ('3,', 3, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '1', 1.0, true, 1);
INSERT INTO public.galaxy VALUES (2, '2', 2.0, true, 2);
INSERT INTO public.galaxy VALUES (3, '3', 3.0, true, 3);
INSERT INTO public.galaxy VALUES (4, '4', 4.0, true, 4);
INSERT INTO public.galaxy VALUES (5, '5', 5.0, true, 5);
INSERT INTO public.galaxy VALUES (6, '6', 6.0, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, '2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, '3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, '4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, '5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, '6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, '7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, '8', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, '9', 9, NULL, NULL);
INSERT INTO public.moon VALUES (10, '10', 10, NULL, NULL);
INSERT INTO public.moon VALUES (22, '11', 1, NULL, NULL);
INSERT INTO public.moon VALUES (23, '12', 1, NULL, NULL);
INSERT INTO public.moon VALUES (24, '13', 1, NULL, NULL);
INSERT INTO public.moon VALUES (26, '14', 1, NULL, NULL);
INSERT INTO public.moon VALUES (27, '15', 1, NULL, NULL);
INSERT INTO public.moon VALUES (28, '16', 1, NULL, NULL);
INSERT INTO public.moon VALUES (29, '17', 1, NULL, NULL);
INSERT INTO public.moon VALUES (30, '18', 1, NULL, NULL);
INSERT INTO public.moon VALUES (31, '19', 1, NULL, NULL);
INSERT INTO public.moon VALUES (32, '20', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, 1, 1);
INSERT INTO public.planet VALUES (2, '2', 2, 2, 2);
INSERT INTO public.planet VALUES (3, '3', 3, 3, 3);
INSERT INTO public.planet VALUES (4, '4', 4, 4, 4);
INSERT INTO public.planet VALUES (5, '5', 5, 5, 5);
INSERT INTO public.planet VALUES (6, '6', 6, 6, 6);
INSERT INTO public.planet VALUES (7, '7', 6, 7, 7);
INSERT INTO public.planet VALUES (8, '8', 6, 8, 8);
INSERT INTO public.planet VALUES (9, '9', 6, 9, 9);
INSERT INTO public.planet VALUES (10, '10', 6, 10, 10);
INSERT INTO public.planet VALUES (11, '11', 6, 11, 11);
INSERT INTO public.planet VALUES (12, '12', 6, 12, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', '1', true, 1, 1);
INSERT INTO public.star VALUES (2, '2', '2', true, 2, 2);
INSERT INTO public.star VALUES (3, '3', '3', true, 3, 3);
INSERT INTO public.star VALUES (4, '4', '4', true, 4, 4);
INSERT INTO public.star VALUES (5, '5', '5', true, 5, 5);
INSERT INTO public.star VALUES (6, '6', '6', true, 6, 6);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 6, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 32, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 12, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 6, true);


--
-- Name: _5th_table _5th_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public._5th_table
    ADD CONSTRAINT _5th_table_pkey PRIMARY KEY (_5th_table_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: moon qu_name_mo; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT qu_name_mo UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: _5th_table uq_name_5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public._5th_table
    ADD CONSTRAINT uq_name_5 UNIQUE (name);


--
-- Name: star uq_name_pl; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_name_pl UNIQUE (name);


--
-- Name: planet uq_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_name_planet UNIQUE (name);


--
-- Name: star uq_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_name_star UNIQUE (name);


--
-- Name: star fk_g_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_g_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_p_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_p_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

