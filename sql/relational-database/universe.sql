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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying(128),
    a integer NOT NULL,
    b integer NOT NULL
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(128) NOT NULL,
    description text,
    type integer NOT NULL,
    category integer,
    diameter numeric,
    is_a boolean,
    is_b boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(128) NOT NULL,
    description text,
    type integer NOT NULL,
    category integer,
    diameter numeric,
    is_a boolean,
    is_b boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(128) NOT NULL,
    description text,
    type integer NOT NULL,
    category integer,
    diameter numeric,
    is_a boolean,
    is_b boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(128) NOT NULL,
    description text,
    type integer NOT NULL,
    category integer,
    diameter numeric,
    is_a boolean,
    is_b boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'a', 1, 2);
INSERT INTO public.country VALUES (2, 'a', 2, 2);
INSERT INTO public.country VALUES (3, 'a', 3, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'a', 'a', 1, 1, 1000, true, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'b', 'a', 1, 2, 1000, true, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (7, 'b', 'a', 1, 3, 1000, true, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (8, 'b', 'a', 1, 4, 1000, true, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (9, 'b', 'a', 1, 5, 1000, true, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (10, 'b', 'a', 1, 6, 1000, true, false);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (11, 'b', 'a', 1, 7, 1000, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'b', 'a', 1, 1, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'b', 'a', 1, 2, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'b', 'a', 1, 3, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'b', 'a', 1, 4, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'b', 'a', 1, 5, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'b', 'a', 1, 6, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'b', 'a', 1, 7, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'b', 'a', 1, 8, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'b', 'a', 1, 9, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'b', 'a', 1, 10, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'b', 'a', 1, 11, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'b', 'a', 1, 12, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'b', 'a', 1, 13, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'b', 'a', 1, 14, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'b', 'a', 1, 15, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'b', 'a', 1, 16, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'b', 'a', 1, 17, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'b', 'a', 1, 18, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'b', 'a', 1, 19, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'b', 'a', 1, 20, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (21, 'b', 'a', 1, 21, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (22, 'b', 'a', 1, 22, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (23, 'b', 'a', 1, 23, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (24, 'b', 'a', 1, 24, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (25, 'b', 'a', 1, 25, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (26, 'b', 'a', 1, 26, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (27, 'b', 'a', 1, 27, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (28, 'b', 'a', 1, 28, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (29, 'b', 'a', 1, 29, 1000, true, false, 28);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (30, 'b', 'a', 1, 30, 1000, true, false, 28);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'b', 'a', 1, 1, 1000, true, false, 10);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'b', 'a', 1, 2, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'b', 'a', 1, 3, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'b', 'a', 1, 4, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'b', 'a', 1, 5, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'b', 'a', 1, 6, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'b', 'a', 1, 7, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'b', 'a', 1, 8, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'b', 'a', 1, 9, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'b', 'a', 1, 10, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'b', 'a', 1, 11, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'b', 'a', 1, 12, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (13, 'b', 'a', 1, 13, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (14, 'b', 'a', 1, 14, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (15, 'b', 'a', 1, 15, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (16, 'b', 'a', 1, 16, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (17, 'b', 'a', 1, 17, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (18, 'b', 'a', 1, 18, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (19, 'b', 'a', 1, 19, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (20, 'b', 'a', 1, 20, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (21, 'b', 'a', 1, 21, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (22, 'b', 'a', 1, 22, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (23, 'b', 'a', 1, 23, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (24, 'b', 'a', 1, 24, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (25, 'b', 'a', 1, 25, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (26, 'b', 'a', 1, 26, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (27, 'b', 'a', 1, 27, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (28, 'b', 'a', 1, 28, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (29, 'b', 'a', 1, 29, 1000, true, false, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (30, 'b', 'a', 1, 30, 1000, true, false, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'b', 'a', 1, 1, 1000, true, false, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'b', 'a', 1, 2, 1000, true, false, 10);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'b', 'a', 1, 3, 1000, true, false, 11);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (8, 'b', 'a', 1, 4, 1000, true, false, 9);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (9, 'b', 'a', 1, 5, 1000, true, false, 8);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (10, 'b', 'a', 1, 6, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (11, 'b', 'a', 1, 7, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (12, 'b', 'a', 1, 8, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (13, 'b', 'a', 1, 9, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (14, 'b', 'a', 1, 10, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (15, 'b', 'a', 1, 11, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (16, 'b', 'a', 1, 12, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (17, 'b', 'a', 1, 13, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (18, 'b', 'a', 1, 14, 1000, true, false, 7);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (19, 'b', 'a', 1, 15, 1000, true, false, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 30, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 19, true);


--
-- Name: country country_a_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_a_key UNIQUE (a);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: galaxy galaxy_category_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_category_key UNIQUE (category);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_category_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_category_key UNIQUE (category);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_category_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_category_key UNIQUE (category);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_category_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_category_key UNIQUE (category);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

