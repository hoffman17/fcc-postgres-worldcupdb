--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (31, 2018, 'Final', 4, 2, 142, 143);
INSERT INTO public.games VALUES (32, 2018, 'Third Place', 2, 0, 144, 145);
INSERT INTO public.games VALUES (33, 2018, 'Semi-Final', 2, 1, 143, 145);
INSERT INTO public.games VALUES (34, 2018, 'Semi-Final', 1, 0, 142, 144);
INSERT INTO public.games VALUES (35, 2018, 'Quarter-Final', 3, 2, 143, 146);
INSERT INTO public.games VALUES (36, 2018, 'Quarter-Final', 2, 0, 145, 147);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 2, 1, 144, 148);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 0, 142, 149);
INSERT INTO public.games VALUES (39, 2018, 'Eighth-Final', 2, 1, 145, 150);
INSERT INTO public.games VALUES (40, 2018, 'Eighth-Final', 1, 0, 147, 151);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 3, 2, 144, 152);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 2, 0, 148, 153);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 2, 1, 143, 154);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 1, 146, 155);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 2, 1, 149, 156);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 4, 3, 142, 157);
INSERT INTO public.games VALUES (47, 2014, 'Final', 1, 0, 158, 157);
INSERT INTO public.games VALUES (48, 2014, 'Third Place', 3, 0, 159, 148);
INSERT INTO public.games VALUES (49, 2014, 'Semi-Final', 1, 0, 157, 159);
INSERT INTO public.games VALUES (50, 2014, 'Semi-Final', 7, 1, 158, 148);
INSERT INTO public.games VALUES (51, 2014, 'Quarter-Final', 1, 0, 159, 160);
INSERT INTO public.games VALUES (52, 2014, 'Quarter-Final', 1, 0, 157, 144);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 2, 1, 148, 150);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 0, 158, 142);
INSERT INTO public.games VALUES (55, 2014, 'Eighth-Final', 2, 1, 148, 161);
INSERT INTO public.games VALUES (56, 2014, 'Eighth-Final', 2, 0, 150, 149);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 0, 142, 162);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 2, 1, 158, 163);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 1, 159, 153);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 160, 164);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 1, 0, 157, 151);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 1, 144, 165);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (142, 'France');
INSERT INTO public.teams VALUES (143, 'Croatia');
INSERT INTO public.teams VALUES (144, 'Belgium');
INSERT INTO public.teams VALUES (145, 'England');
INSERT INTO public.teams VALUES (146, 'Russia');
INSERT INTO public.teams VALUES (147, 'Sweden');
INSERT INTO public.teams VALUES (148, 'Brazil');
INSERT INTO public.teams VALUES (149, 'Uruguay');
INSERT INTO public.teams VALUES (150, 'Colombia');
INSERT INTO public.teams VALUES (151, 'Switzerland');
INSERT INTO public.teams VALUES (152, 'Japan');
INSERT INTO public.teams VALUES (153, 'Mexico');
INSERT INTO public.teams VALUES (154, 'Denmark');
INSERT INTO public.teams VALUES (155, 'Spain');
INSERT INTO public.teams VALUES (156, 'Portugal');
INSERT INTO public.teams VALUES (157, 'Argentina');
INSERT INTO public.teams VALUES (158, 'Germany');
INSERT INTO public.teams VALUES (159, 'Netherlands');
INSERT INTO public.teams VALUES (160, 'Costa Rica');
INSERT INTO public.teams VALUES (161, 'Chile');
INSERT INTO public.teams VALUES (162, 'Nigeria');
INSERT INTO public.teams VALUES (163, 'Algeria');
INSERT INTO public.teams VALUES (164, 'Greece');
INSERT INTO public.teams VALUES (165, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 62, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 165, true);


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

