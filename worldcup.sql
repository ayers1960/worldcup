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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    game_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 102, 103, 97, 4, 2);
INSERT INTO public.games VALUES (2018, 'Third Place', 104, 105, 98, 2, 0);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 103, 105, 99, 2, 1);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 102, 104, 100, 1, 0);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 103, 106, 101, 3, 2);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 105, 107, 102, 2, 0);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 104, 108, 103, 2, 1);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 102, 109, 104, 2, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 105, 110, 105, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 107, 111, 106, 1, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 104, 112, 107, 3, 2);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 108, 113, 108, 2, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 103, 114, 109, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 106, 115, 110, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 109, 116, 111, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 102, 117, 112, 4, 3);
INSERT INTO public.games VALUES (2014, 'Final', 118, 117, 113, 1, 0);
INSERT INTO public.games VALUES (2014, 'Third Place', 119, 108, 114, 3, 0);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 117, 119, 115, 1, 0);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 118, 108, 116, 7, 1);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 119, 120, 117, 1, 0);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 117, 104, 118, 1, 0);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 108, 110, 119, 2, 1);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 118, 102, 120, 1, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 108, 121, 121, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 110, 109, 122, 2, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 102, 122, 123, 2, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 118, 123, 124, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 119, 113, 125, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 120, 124, 126, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 117, 111, 127, 1, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 104, 125, 128, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (102, 'France');
INSERT INTO public.teams VALUES (103, 'Croatia');
INSERT INTO public.teams VALUES (104, 'Belgium');
INSERT INTO public.teams VALUES (105, 'England');
INSERT INTO public.teams VALUES (106, 'Russia');
INSERT INTO public.teams VALUES (107, 'Sweden');
INSERT INTO public.teams VALUES (108, 'Brazil');
INSERT INTO public.teams VALUES (109, 'Uruguay');
INSERT INTO public.teams VALUES (110, 'Colombia');
INSERT INTO public.teams VALUES (111, 'Switzerland');
INSERT INTO public.teams VALUES (112, 'Japan');
INSERT INTO public.teams VALUES (113, 'Mexico');
INSERT INTO public.teams VALUES (114, 'Denmark');
INSERT INTO public.teams VALUES (115, 'Spain');
INSERT INTO public.teams VALUES (116, 'Portugal');
INSERT INTO public.teams VALUES (117, 'Argentina');
INSERT INTO public.teams VALUES (118, 'Germany');
INSERT INTO public.teams VALUES (119, 'Netherlands');
INSERT INTO public.teams VALUES (120, 'Costa Rica');
INSERT INTO public.teams VALUES (121, 'Chile');
INSERT INTO public.teams VALUES (122, 'Nigeria');
INSERT INTO public.teams VALUES (123, 'Algeria');
INSERT INTO public.teams VALUES (124, 'Greece');
INSERT INTO public.teams VALUES (125, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 125, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

