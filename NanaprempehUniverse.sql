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
-- Name: foon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.foon (
    foon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    planet integer
);


ALTER TABLE public.foon OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    occupants integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: foon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.foon VALUES (19, 'Car', 'Spiral', 22000, true, 1);
INSERT INTO public.foon VALUES (20, 'kele', 'Spiral', 5000, true, 2);
INSERT INTO public.foon VALUES (21, 'Erh', 'main', 5488, true, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky', 'Spiral', 13000, true, 10000);
INSERT INTO public.galaxy VALUES (2, 'Andre', 'Spiral', 22000, true, 10000);
INSERT INTO public.galaxy VALUES (3, 'Trian', 'Spiral', 5000, true, 20222);
INSERT INTO public.galaxy VALUES (4, 'MES', 'Elliptical', 6000, false, 5000);
INSERT INTO public.galaxy VALUES (5, 'IC', 'Suppermassive', 14000, true, 29980);
INSERT INTO public.galaxy VALUES (6, 'Messier', 'Irregular', 8000, true, 32000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Andre', 'Spiral', 22000, true, 1);
INSERT INTO public.moon VALUES (3, 'Trian', 'Spiral', 5000, true, 2);
INSERT INTO public.moon VALUES (4, 'MES', 'Elliptical', 6000, false, 5);
INSERT INTO public.moon VALUES (5, 'IC', 'Suppermassive', 14000, true, 2);
INSERT INTO public.moon VALUES (6, 'Messier', 'Irregular', 8000, true, 3);
INSERT INTO public.moon VALUES (1, 'sun', 'main', 5488, true, 6);
INSERT INTO public.moon VALUES (7, 'Canri', 'Spiral', 22000, true, 1);
INSERT INTO public.moon VALUES (8, 'kepler', 'Spiral', 5000, true, 2);
INSERT INTO public.moon VALUES (9, 'Neptune', 'Elliptical', 6000, false, 5);
INSERT INTO public.moon VALUES (10, 'saturn', 'Suppermassive', 14000, true, 2);
INSERT INTO public.moon VALUES (11, 'Venus', 'Irregular', 8000, true, 3);
INSERT INTO public.moon VALUES (12, 'Earth', 'main', 5488, true, 3);
INSERT INTO public.moon VALUES (13, 'Canr', 'Spiral', 22000, true, 1);
INSERT INTO public.moon VALUES (14, 'keple', 'Spiral', 5000, true, 2);
INSERT INTO public.moon VALUES (15, 'Neptun', 'Elliptical', 6000, false, 5);
INSERT INTO public.moon VALUES (16, 'satun', 'Suppermassive', 14000, true, 2);
INSERT INTO public.moon VALUES (17, 'Venu', 'Irregular', 8000, true, 3);
INSERT INTO public.moon VALUES (18, 'Earh', 'main', 5488, true, 6);
INSERT INTO public.moon VALUES (19, 'Car', 'Spiral', 22000, true, 1);
INSERT INTO public.moon VALUES (20, 'kele', 'Spiral', 5000, true, 2);
INSERT INTO public.moon VALUES (21, 'Erh', 'main', 5488, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Andre', 'Spiral', 22000, true, 1);
INSERT INTO public.planet VALUES (3, 'Trian', 'Spiral', 5000, true, 2);
INSERT INTO public.planet VALUES (4, 'MES', 'Elliptical', 6000, false, 5);
INSERT INTO public.planet VALUES (5, 'IC', 'Suppermassive', 14000, true, 2);
INSERT INTO public.planet VALUES (6, 'Messier', 'Irregular', 8000, true, 3);
INSERT INTO public.planet VALUES (1, 'sun', 'main', 5488, true, 6);
INSERT INTO public.planet VALUES (7, 'Canri', 'Spiral', 22000, true, 1);
INSERT INTO public.planet VALUES (8, 'kepler', 'Spiral', 5000, true, 2);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Elliptical', 6000, false, 5);
INSERT INTO public.planet VALUES (10, 'saturn', 'Suppermassive', 14000, true, 2);
INSERT INTO public.planet VALUES (11, 'Venus', 'Irregular', 8000, true, 3);
INSERT INTO public.planet VALUES (12, 'Earth', 'main', 5488, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Andre', 'Spiral', 22000, true, 1);
INSERT INTO public.star VALUES (3, 'Trian', 'Spiral', 5000, true, 2);
INSERT INTO public.star VALUES (4, 'MES', 'Elliptical', 6000, false, 5);
INSERT INTO public.star VALUES (5, 'IC', 'Suppermassive', 14000, true, 2);
INSERT INTO public.star VALUES (6, 'Messier', 'Irregular', 8000, true, 3);
INSERT INTO public.star VALUES (1, 'sun', 'main', 5488, true, 6);


--
-- Name: foon foon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.foon
    ADD CONSTRAINT foon_name_key UNIQUE (name);


--
-- Name: foon foon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.foon
    ADD CONSTRAINT foon_pkey PRIMARY KEY (foon_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

