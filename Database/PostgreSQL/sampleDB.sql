--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: agencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agencia (
    banco_numero integer NOT NULL,
    numero integer NOT NULL,
    nome character varying(100) NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.agencia OWNER TO postgres;

--
-- Name: banco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banco (
    numero integer NOT NULL,
    nome character varying(50) NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.banco OWNER TO postgres;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    numero bigint NOT NULL,
    nome character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_numero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_numero_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_numero_seq OWNER TO postgres;

--
-- Name: cliente_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_numero_seq OWNED BY public.cliente.numero;


--
-- Name: cliente_transacoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente_transacoes (
    id bigint NOT NULL,
    banco_numero integer NOT NULL,
    agencia_numero integer NOT NULL,
    conta_corrente_numero bigint NOT NULL,
    conta_corrente_digito bigint NOT NULL,
    cliente_numero bigint NOT NULL,
    tipo_transacao_id smallint NOT NULL,
    valor numeric(15,2) NOT NULL,
    data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.cliente_transacoes OWNER TO postgres;

--
-- Name: cliente_transacoes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_transacoes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_transacoes_id_seq OWNER TO postgres;

--
-- Name: cliente_transacoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_transacoes_id_seq OWNED BY public.cliente_transacoes.id;


--
-- Name: conta_corrente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conta_corrente (
    banco_numero integer NOT NULL,
    agencia_numero integer NOT NULL,
    numero bigint NOT NULL,
    digito smallint NOT NULL,
    cliente_numero bigint NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.conta_corrente OWNER TO postgres;

--
-- Name: tipo_transacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_transacao (
    id smallint NOT NULL,
    nome character varying(50) NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.tipo_transacao OWNER TO postgres;

--
-- Name: tipo_transacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_transacao_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_transacao_id_seq OWNER TO postgres;

--
-- Name: tipo_transacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_transacao_id_seq OWNED BY public.tipo_transacao.id;


--
-- Name: cliente numero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN numero SET DEFAULT nextval('public.cliente_numero_seq'::regclass);


--
-- Name: cliente_transacoes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_transacoes ALTER COLUMN id SET DEFAULT nextval('public.cliente_transacoes_id_seq'::regclass);


--
-- Name: tipo_transacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_transacao ALTER COLUMN id SET DEFAULT nextval('public.tipo_transacao_id_seq'::regclass);


--
-- Data for Name: agencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agencia (banco_numero, numero, nome, ativo, data_criacao) FROM stdin;
1	1	Agência número 1 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	2	Agência número 2 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	3	Agência número 3 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	4	Agência número 4 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	5	Agência número 5 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	6	Agência número 6 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	7	Agência número 7 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	8	Agência número 8 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	9	Agência número 9 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	10	Agência número 10 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	11	Agência número 11 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	12	Agência número 12 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	13	Agência número 13 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	14	Agência número 14 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	15	Agência número 15 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	16	Agência número 16 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	17	Agência número 17 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	18	Agência número 18 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	19	Agência número 19 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	20	Agência número 20 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	21	Agência número 21 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	22	Agência número 22 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	23	Agência número 23 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	24	Agência número 24 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	25	Agência número 25 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	26	Agência número 26 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	27	Agência número 27 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	28	Agência número 28 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	29	Agência número 29 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	30	Agência número 30 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	31	Agência número 31 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	32	Agência número 32 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	33	Agência número 33 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	34	Agência número 34 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	35	Agência número 35 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	36	Agência número 36 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	37	Agência número 37 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	38	Agência número 38 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	39	Agência número 39 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	40	Agência número 40 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	41	Agência número 41 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	42	Agência número 42 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	43	Agência número 43 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	44	Agência número 44 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	45	Agência número 45 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	46	Agência número 46 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	47	Agência número 47 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	48	Agência número 48 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	49	Agência número 49 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
1	50	Agência número 50 do banco Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
247	1	Agência número 1 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	2	Agência número 2 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	3	Agência número 3 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	4	Agência número 4 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	5	Agência número 5 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	6	Agência número 6 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	7	Agência número 7 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	8	Agência número 8 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	9	Agência número 9 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	10	Agência número 10 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	11	Agência número 11 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	12	Agência número 12 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	13	Agência número 13 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	14	Agência número 14 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	15	Agência número 15 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	16	Agência número 16 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	17	Agência número 17 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	18	Agência número 18 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	19	Agência número 19 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	20	Agência número 20 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	21	Agência número 21 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	22	Agência número 22 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	23	Agência número 23 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	24	Agência número 24 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	25	Agência número 25 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	26	Agência número 26 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	27	Agência número 27 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	28	Agência número 28 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	29	Agência número 29 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	30	Agência número 30 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	31	Agência número 31 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	32	Agência número 32 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	33	Agência número 33 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	34	Agência número 34 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
247	35	Agência número 35 do banco Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
237	1	Agência número 1 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	2	Agência número 2 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	3	Agência número 3 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	4	Agência número 4 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	5	Agência número 5 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	6	Agência número 6 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	7	Agência número 7 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	8	Agência número 8 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	9	Agência número 9 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	10	Agência número 10 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	11	Agência número 11 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	12	Agência número 12 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	13	Agência número 13 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	14	Agência número 14 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	15	Agência número 15 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	16	Agência número 16 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	17	Agência número 17 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	18	Agência número 18 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	19	Agência número 19 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	20	Agência número 20 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	21	Agência número 21 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	22	Agência número 22 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	23	Agência número 23 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	24	Agência número 24 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	25	Agência número 25 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	26	Agência número 26 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	27	Agência número 27 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	28	Agência número 28 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	29	Agência número 29 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
237	30	Agência número 30 do banco Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
33	1	Agência número 1 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	2	Agência número 2 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	3	Agência número 3 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	4	Agência número 4 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	5	Agência número 5 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	6	Agência número 6 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	7	Agência número 7 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	8	Agência número 8 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	9	Agência número 9 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	10	Agência número 10 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	11	Agência número 11 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	12	Agência número 12 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	13	Agência número 13 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	14	Agência número 14 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	15	Agência número 15 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	16	Agência número 16 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	17	Agência número 17 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	18	Agência número 18 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	19	Agência número 19 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	20	Agência número 20 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	21	Agência número 21 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	22	Agência número 22 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	23	Agência número 23 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	24	Agência número 24 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	25	Agência número 25 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	26	Agência número 26 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	27	Agência número 27 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	28	Agência número 28 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
33	29	Agência número 29 do banco Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
104	1	Agência número 1 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	2	Agência número 2 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	3	Agência número 3 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	4	Agência número 4 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	5	Agência número 5 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	6	Agência número 6 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	7	Agência número 7 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	8	Agência número 8 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	9	Agência número 9 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	10	Agência número 10 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	11	Agência número 11 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	12	Agência número 12 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	13	Agência número 13 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	14	Agência número 14 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	15	Agência número 15 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	16	Agência número 16 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	17	Agência número 17 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	18	Agência número 18 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	19	Agência número 19 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	20	Agência número 20 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	21	Agência número 21 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	22	Agência número 22 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	23	Agência número 23 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	24	Agência número 24 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	25	Agência número 25 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	26	Agência número 26 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	27	Agência número 27 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	28	Agência número 28 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	29	Agência número 29 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	30	Agência número 30 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	31	Agência número 31 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	32	Agência número 32 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	33	Agência número 33 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	34	Agência número 34 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	35	Agência número 35 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	36	Agência número 36 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	37	Agência número 37 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	38	Agência número 38 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	39	Agência número 39 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	40	Agência número 40 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	41	Agência número 41 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	42	Agência número 42 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	43	Agência número 43 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	44	Agência número 44 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	45	Agência número 45 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	46	Agência número 46 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	47	Agência número 47 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	48	Agência número 48 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	49	Agência número 49 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	50	Agência número 50 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	51	Agência número 51 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	52	Agência número 52 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	53	Agência número 53 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	54	Agência número 54 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	55	Agência número 55 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	56	Agência número 56 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	57	Agência número 57 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	58	Agência número 58 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	59	Agência número 59 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	60	Agência número 60 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	61	Agência número 61 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	62	Agência número 62 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	63	Agência número 63 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	64	Agência número 64 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	65	Agência número 65 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	66	Agência número 66 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	67	Agência número 67 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	68	Agência número 68 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	69	Agência número 69 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	70	Agência número 70 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	71	Agência número 71 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	72	Agência número 72 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	73	Agência número 73 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	74	Agência número 74 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	75	Agência número 75 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	76	Agência número 76 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	77	Agência número 77 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	78	Agência número 78 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	79	Agência número 79 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	80	Agência número 80 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	81	Agência número 81 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	82	Agência número 82 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	83	Agência número 83 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	84	Agência número 84 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	85	Agência número 85 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	86	Agência número 86 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	87	Agência número 87 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	88	Agência número 88 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	89	Agência número 89 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	90	Agência número 90 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	91	Agência número 91 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	92	Agência número 92 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	93	Agência número 93 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	94	Agência número 94 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	95	Agência número 95 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	96	Agência número 96 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	97	Agência número 97 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	98	Agência número 98 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	99	Agência número 99 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	100	Agência número 100 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	101	Agência número 101 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
104	102	Agência número 102 do banco Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
399	1	Agência número 1 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	2	Agência número 2 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	3	Agência número 3 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	4	Agência número 4 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	5	Agência número 5 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	6	Agência número 6 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	7	Agência número 7 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	8	Agência número 8 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	9	Agência número 9 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	10	Agência número 10 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	11	Agência número 11 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	12	Agência número 12 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	13	Agência número 13 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	14	Agência número 14 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	15	Agência número 15 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	16	Agência número 16 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	17	Agência número 17 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	18	Agência número 18 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	19	Agência número 19 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	20	Agência número 20 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	21	Agência número 21 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
399	22	Agência número 22 do banco HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
623	1	Agência número 1 do banco Banco Panamericano S.A.	t	2020-12-25 10:07:39.281486
623	2	Agência número 2 do banco Banco Panamericano S.A.	t	2020-12-25 10:07:39.281486
623	3	Agência número 3 do banco Banco Panamericano S.A.	t	2020-12-25 10:07:39.281486
623	4	Agência número 4 do banco Banco Panamericano S.A.	t	2020-12-25 10:07:39.281486
623	5	Agência número 5 do banco Banco Panamericano S.A.	t	2020-12-25 10:07:39.281486
655	1	Agência número 1 do banco Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
655	2	Agência número 2 do banco Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
655	3	Agência número 3 do banco Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
655	4	Agência número 4 do banco Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
655	5	Agência número 5 do banco Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
655	6	Agência número 6 do banco Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
655	7	Agência número 7 do banco Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
477	1	Agência número 1 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	2	Agência número 2 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	3	Agência número 3 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	4	Agência número 4 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	5	Agência número 5 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	6	Agência número 6 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	7	Agência número 7 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	8	Agência número 8 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	9	Agência número 9 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	10	Agência número 10 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	11	Agência número 11 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	12	Agência número 12 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	13	Agência número 13 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	14	Agência número 14 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	15	Agência número 15 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
477	16	Agência número 16 do banco Citibank N.A.	t	2020-12-25 10:07:39.281486
\.


--
-- Data for Name: banco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banco (numero, nome, ativo, data_criacao) FROM stdin;
654	Banco A.J.Renner S.A.	t	2020-12-25 10:07:39.281486
246	Banco ABC Brasil S.A.	t	2020-12-25 10:07:39.281486
25	Banco Alfa S.A.	t	2020-12-25 10:07:39.281486
641	Banco Alvorada S.A.	t	2020-12-25 10:07:39.281486
213	Banco Arbi S.A.	t	2020-12-25 10:07:39.281486
19	Banco Azteca do Brasil S.A.	t	2020-12-25 10:07:39.281486
29	Banco Banerj S.A.	t	2020-12-25 10:07:39.281486
0	Banco Bankpar S.A.	t	2020-12-25 10:07:39.281486
740	Banco Barclays S.A.	t	2020-12-25 10:07:39.281486
107	Banco BBM S.A.	t	2020-12-25 10:07:39.281486
31	Banco Beg S.A.	t	2020-12-25 10:07:39.281486
739	Banco BGN S.A.	t	2020-12-25 10:07:39.281486
96	Banco BM&F de Serviços de Liquidação e Custódia S.	t	2020-12-25 10:07:39.281486
318	Banco BMG S.A.	t	2020-12-25 10:07:39.281486
752	Banco BNP Paribas Brasil S.A.	t	2020-12-25 10:07:39.281486
248	Banco Boavista Interatlântico S.A.	t	2020-12-25 10:07:39.281486
218	Banco Bonsucesso S.A.	t	2020-12-25 10:07:39.281486
65	Banco Bracce S.A.	t	2020-12-25 10:07:39.281486
36	Banco Bradesco BBI S.A.	t	2020-12-25 10:07:39.281486
204	Banco Bradesco Cartões S.A.	t	2020-12-25 10:07:39.281486
394	Banco Bradesco Financiamentos S.A.	t	2020-12-25 10:07:39.281486
237	Banco Bradesco S.A.	t	2020-12-25 10:07:39.281486
225	Banco Brascan S.A.	t	2020-12-25 10:07:39.281486
208	Banco BTG Pactual S.A.	t	2020-12-25 10:07:39.281486
44	Banco BVA S.A.	t	2020-12-25 10:07:39.281486
263	Banco Cacique S.A.	t	2020-12-25 10:07:39.281486
473	Banco Caixa Geral - Brasil S.A.	t	2020-12-25 10:07:39.281486
412	Banco Capital S.A.	t	2020-12-25 10:07:39.281486
40	Banco Cargill S.A.	t	2020-12-25 10:07:39.281486
745	Banco Citibank S.A.	t	2020-12-25 10:07:39.281486
241	Banco Clássico S.A.	t	2020-12-25 10:07:39.281486
215	Banco Comercial e de Investimento Sudameris S.A.	t	2020-12-25 10:07:39.281486
756	Banco Cooperativo do Brasil S.A. - BANCOOB	t	2020-12-25 10:07:39.281486
748	Banco Cooperativo Sicredi S.A.	t	2020-12-25 10:07:39.281486
75	Banco CR2 S.A.	t	2020-12-25 10:07:39.281486
721	Banco Credibel S.A.	t	2020-12-25 10:07:39.281486
222	Banco Credit Agricole Brasil S.A.	t	2020-12-25 10:07:39.281486
505	Banco Credit Suisse (Brasil) S.A.	t	2020-12-25 10:07:39.281486
229	Banco Cruzeiro do Sul S.A.	t	2020-12-25 10:07:39.281486
266	Banco Cédula S.A.	t	2020-12-25 10:07:39.281486
3	Banco da Amazônia S.A.	t	2020-12-25 10:07:39.281486
833	Banco da China Brasil S.A.	t	2020-12-25 10:07:39.281486
707	Banco Daycoval S.A.	t	2020-12-25 10:07:39.281486
300	Banco de La Nacion Argentina	t	2020-12-25 10:07:39.281486
495	Banco de La Provincia de Buenos Aires	t	2020-12-25 10:07:39.281486
494	Banco de La Republica Oriental del Uruguay	t	2020-12-25 10:07:39.281486
24	Banco de Pernambuco S.A. - BANDEPE	t	2020-12-25 10:07:39.281486
456	Banco de Tokyo-Mitsubishi UFJ Brasil S.A.	t	2020-12-25 10:07:39.281486
214	Banco Dibens S.A.	t	2020-12-25 10:07:39.281486
1	Banco do Brasil S.A.	t	2020-12-25 10:07:39.281486
47	Banco do Estado de Sergipe S.A.	t	2020-12-25 10:07:39.281486
37	Banco do Estado do Pará S.A.	t	2020-12-25 10:07:39.281486
39	Banco do Estado do Piauí S.A. - BEP	t	2020-12-25 10:07:39.281486
41	Banco do Estado do Rio Grande do Sul S.A.	t	2020-12-25 10:07:39.281486
4	Banco do Nordeste do Brasil S.A.	t	2020-12-25 10:07:39.281486
265	Banco Fator S.A.	t	2020-12-25 10:07:39.281486
224	Banco Fibra S.A.	t	2020-12-25 10:07:39.281486
626	Banco Ficsa S.A.	t	2020-12-25 10:07:39.281486
233	Banco GE Capital S.A.	t	2020-12-25 10:07:39.281486
734	Banco Gerdau S.A.	t	2020-12-25 10:07:39.281486
612	Banco Guanabara S.A.	t	2020-12-25 10:07:39.281486
63	Banco Ibi S.A. Banco Múltiplo	t	2020-12-25 10:07:39.281486
604	Banco Industrial do Brasil S.A.	t	2020-12-25 10:07:39.281486
320	Banco Industrial e Comercial S.A.	t	2020-12-25 10:07:39.281486
653	Banco Indusval S.A.	t	2020-12-25 10:07:39.281486
630	Banco Intercap S.A.	t	2020-12-25 10:07:39.281486
779	Banco Intermedium S.A.	t	2020-12-25 10:07:39.281486
249	Banco Investcred Unibanco S.A.	t	2020-12-25 10:07:39.281486
184	Banco Itaú BBA S.A.	t	2020-12-25 10:07:39.281486
479	Banco ItaúBank S.A	t	2020-12-25 10:07:39.281486
376	Banco J. P. Morgan S.A.	t	2020-12-25 10:07:39.281486
74	Banco J. Safra S.A.	t	2020-12-25 10:07:39.281486
217	Banco John Deere S.A.	t	2020-12-25 10:07:39.281486
76	Banco KDB S.A.	t	2020-12-25 10:07:39.281486
757	Banco KEB do Brasil S.A.	t	2020-12-25 10:07:39.281486
600	Banco Luso Brasileiro S.A.	t	2020-12-25 10:07:39.281486
212	Banco Matone S.A.	t	2020-12-25 10:07:39.281486
389	Banco Mercantil do Brasil S.A.	t	2020-12-25 10:07:39.281486
746	Banco Modal S.A.	t	2020-12-25 10:07:39.281486
738	Banco Morada S.A.	t	2020-12-25 10:07:39.281486
66	Banco Morgan Stanley S.A.	t	2020-12-25 10:07:39.281486
243	Banco Máxima S.A.	t	2020-12-25 10:07:39.281486
45	Banco Opportunity S.A.	t	2020-12-25 10:07:39.281486
623	Banco Panamericano S.A.	t	2020-12-25 10:07:39.281486
611	Banco Paulista S.A.	t	2020-12-25 10:07:39.281486
613	Banco Pecúnia S.A.	t	2020-12-25 10:07:39.281486
942	Banco Petra S.A.	t	2020-12-25 10:07:39.281486
643	Banco Pine S.A.	t	2020-12-25 10:07:39.281486
724	Banco Porto Seguro S.A.	t	2020-12-25 10:07:39.281486
735	Banco Pottencial S.A.	t	2020-12-25 10:07:39.281486
638	Banco Prosper S.A.	t	2020-12-25 10:07:39.281486
747	Banco Rabobank International Brasil S.A.	t	2020-12-25 10:07:39.281486
884	Banco Randon S.A.	t	2020-12-25 10:07:39.281486
356	Banco Real S.A.	t	2020-12-25 10:07:39.281486
633	Banco Rendimento S.A.	t	2020-12-25 10:07:39.281486
741	Banco Ribeirão Preto S.A.	t	2020-12-25 10:07:39.281486
72	Banco Rural Mais S.A.	t	2020-12-25 10:07:39.281486
453	Banco Rural S.A.	t	2020-12-25 10:07:39.281486
422	Banco Safra S.A.	t	2020-12-25 10:07:39.281486
33	Banco Santander (Brasil) S.A.	t	2020-12-25 10:07:39.281486
250	Banco Schahin S.A.	t	2020-12-25 10:07:39.281486
743	Banco Semear S.A.	t	2020-12-25 10:07:39.281486
749	Banco Simples S.A.	t	2020-12-25 10:07:39.281486
366	Banco Société Générale Brasil S.A.	t	2020-12-25 10:07:39.281486
637	Banco Sofisa S.A.	t	2020-12-25 10:07:39.281486
12	Banco Standard de Investimentos S.A.	t	2020-12-25 10:07:39.281486
464	Banco Sumitomo Mitsui Brasileiro S.A.	t	2020-12-25 10:07:39.281486
825	Banco Topázio S.A.	t	2020-12-25 10:07:39.281486
634	Banco Triângulo S.A.	t	2020-12-25 10:07:39.281486
655	Banco Votorantim S.A.	t	2020-12-25 10:07:39.281486
610	Banco VR S.A.	t	2020-12-25 10:07:39.281486
370	Banco WestLB do Brasil S.A.	t	2020-12-25 10:07:39.281486
21	BANESTES S.A. Banco do Estado do Espírito Santo	t	2020-12-25 10:07:39.281486
719	Banif-Banco Internacional do Funchal (Brasil)S.A.	t	2020-12-25 10:07:39.281486
755	Bank of America Merrill Lynch Banco Múltiplo S.A.	t	2020-12-25 10:07:39.281486
744	BankBoston N.A.	t	2020-12-25 10:07:39.281486
73	BB Banco Popular do Brasil S.A.	t	2020-12-25 10:07:39.281486
78	BES Investimento do Brasil S.A.-Banco de Investime	t	2020-12-25 10:07:39.281486
69	BPN Brasil Banco Múltiplo S.A.	t	2020-12-25 10:07:39.281486
70	BRB - Banco de Brasília S.A.	t	2020-12-25 10:07:39.281486
922	Brickell S.A. Crédito, financiamento e Investiment	t	2020-12-25 10:07:39.281486
104	Caixa Econômica Federal	t	2020-12-25 10:07:39.281486
477	Citibank N.A.	t	2020-12-25 10:07:39.281486
817	Concórdia Banco S.A.	t	2020-12-25 10:07:39.281486
973	Cooperativa Central de Crédito Noroeste Brasileiro	t	2020-12-25 10:07:39.281486
85	Cooperativa Central de Crédito Urbano-CECRED	t	2020-12-25 10:07:39.281486
99	Cooperativa Central de Economia e Credito Mutuo da	t	2020-12-25 10:07:39.281486
90	Cooperativa Central de Economia e Crédito Mutuo da	t	2020-12-25 10:07:39.281486
892	Cooperativa de Crédito Rural da Região de Mogiana	t	2020-12-25 10:07:39.281486
876	Cooperativa Unicred Central Santa Catarina	t	2020-12-25 10:07:39.281486
981	Credicorol Cooperativa de Crédito Rural	t	2020-12-25 10:07:39.281486
487	Deutsche Bank S.A. - Banco Alemão	t	2020-12-25 10:07:39.281486
751	Dresdner Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
64	Goldman Sachs do Brasil Banco Múltiplo S.A.	t	2020-12-25 10:07:39.281486
62	Hipercard Banco Múltiplo S.A.	t	2020-12-25 10:07:39.281486
399	HSBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
168	HSBC Finance (Brasil) S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
492	ING Bank N.V.	t	2020-12-25 10:07:39.281486
652	Itaú Unibanco Holding S.A.	t	2020-12-25 10:07:39.281486
341	Itaú Unibanco S.A.	t	2020-12-25 10:07:39.281486
79	JBS Banco S.A.	t	2020-12-25 10:07:39.281486
488	JPMorgan Chase Bank	t	2020-12-25 10:07:39.281486
14	Natixis Brasil S.A. Banco Múltiplo	t	2020-12-25 10:07:39.281486
753	NBC Bank Brasil S.A. - Banco Múltiplo	t	2020-12-25 10:07:39.281486
868	OBOE Crédito Financiamento e Investimento S.A.	t	2020-12-25 10:07:39.281486
254	Paraná Banco S.A.	t	2020-12-25 10:07:39.281486
409	UNIBANCO - União de Bancos Brasileiros S.A.	t	2020-12-25 10:07:39.281486
230	Unicard Banco Múltiplo S.A.	t	2020-12-25 10:07:39.281486
914	Unicred Central do Rio Grande do Sul	t	2020-12-25 10:07:39.281486
84	Unicred Norte do Paraná	t	2020-12-25 10:07:39.281486
247	Banco Itaú S.A.	t	2020-12-25 10:07:39.281486
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (numero, nome, email, ativo, data_criacao) FROM stdin;
1	Umbelina Neves	umbelina_neves@usa.net	t	2020-12-25 10:07:39.281486
2	Godinho ou Godim Felgueiras	godinho_ou_godim_felgueiras@hermanos.com.ar	t	2020-12-25 10:07:39.281486
3	Ricardo Garcés	ricardo_garces@discovery.channel.com	t	2020-12-25 10:07:39.281486
4	Adélia Sobral	adelia_sobral@usa.net	t	2020-12-25 10:07:39.281486
5	Zenaide Peçanha	zenaide_pecanha@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
6	Sabrina SantAnna	sabrina_santanna@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
7	Eduardo Rua	eduardo_rua@samba.br	t	2020-12-25 10:07:39.281486
8	Cesário Brião	cesario_briao@sertanejo.com.br	t	2020-12-25 10:07:39.281486
9	Alexandra Ramírez	alexandra_ramirez@hbo.com	t	2020-12-25 10:07:39.281486
10	Luzia Rivas	luzia_rivas@globo.com	t	2020-12-25 10:07:39.281486
11	Cristiano Quinteiro	cristiano_quinteiro@linux.com	t	2020-12-25 10:07:39.281486
12	Ofélia Cerveira	ofelia_cerveira@record.com.br	t	2020-12-25 10:07:39.281486
13	Elvira Guimarães	elvira_guimaraes@heavy.metal.com	t	2020-12-25 10:07:39.281486
14	Hélia Fortunato	helia_fortunato@discovery.channel.com	t	2020-12-25 10:07:39.281486
15	Eloi Casqueira	eloi_casqueira@linux.com	t	2020-12-25 10:07:39.281486
16	Alberta Araripe	alberta_araripe@hotmail.com	t	2020-12-25 10:07:39.281486
17	Adosindo Suaçuna	adosindo_suacuna@marvel.com	t	2020-12-25 10:07:39.281486
18	Rebeca Pérez	rebeca_perez@linux.com	t	2020-12-25 10:07:39.281486
19	Fiona Nóbrega	fiona_nobrega@cultura.com.br	t	2020-12-25 10:07:39.281486
20	Veríssimo Sobreira	verissimo_sobreira@terra.com.br	t	2020-12-25 10:07:39.281486
21	Natália Bezerra	natalia_bezerra@discovery.channel.com	t	2020-12-25 10:07:39.281486
22	Alexandre Carneiro	alexandre_carneiro@record.com.br	t	2020-12-25 10:07:39.281486
23	Ismael Uchoa	ismael_uchoa@heavy.metal.com	t	2020-12-25 10:07:39.281486
24	Diamantino Becerril	diamantino_becerril@terra.com.br	t	2020-12-25 10:07:39.281486
25	Alexandre Lancastre	alexandre_lancastre@globo.com	t	2020-12-25 10:07:39.281486
26	Alberta Amaro	alberta_amaro@mtv.tv	t	2020-12-25 10:07:39.281486
27	Donata Fagundes	donata_fagundes@selecao.br	t	2020-12-25 10:07:39.281486
28	Alberto Caneira	alberto_caneira@hermanos.com.ar	t	2020-12-25 10:07:39.281486
29	Blasco Amorim	blasco_amorim@usa.net	t	2020-12-25 10:07:39.281486
30	Adérito Pedrozo	aderito_pedrozo@sbt.com.br	t	2020-12-25 10:07:39.281486
31	Gonçalo Jesus	goncalo_jesus@samba.br	t	2020-12-25 10:07:39.281486
32	Caím Quintão	caim_quintao@yahoo.com	t	2020-12-25 10:07:39.281486
33	Sancho Cardin	sancho_cardin@friends.com.us	t	2020-12-25 10:07:39.281486
34	Melinda Carvalhal	melinda_carvalhal@terra.com.br	t	2020-12-25 10:07:39.281486
35	Angélico Aragón	angelico_aragon@globo.com	t	2020-12-25 10:07:39.281486
36	Rômulo   Piñero	romulo___pinero@selecao.br	t	2020-12-25 10:07:39.281486
37	Esperança Quinterno	esperanca_quinterno@windows.com	t	2020-12-25 10:07:39.281486
38	Gerusa Zarco	gerusa_zarco@linux.com	t	2020-12-25 10:07:39.281486
39	Julieta Negromonte	julieta_negromonte@temp.tmp	t	2020-12-25 10:07:39.281486
40	Morgana Ipiranga	morgana_ipiranga@cultura.com.br	t	2020-12-25 10:07:39.281486
41	Luís Rivas	luis_rivas@record.com.br	t	2020-12-25 10:07:39.281486
42	Zacarias Domínguez	zacarias_dominguez@yahoo.com	t	2020-12-25 10:07:39.281486
43	Moisés Jardim	moises_jardim@hermanos.com.ar	t	2020-12-25 10:07:39.281486
44	Ítalo Caires	italo_caires@linux.com	t	2020-12-25 10:07:39.281486
45	Eládio Ferrão	eladio_ferrao@globo.com	t	2020-12-25 10:07:39.281486
46	Zubaida Barreto	zubaida_barreto@sertanejo.com.br	t	2020-12-25 10:07:39.281486
47	Beatriz Oleiro	beatriz_oleiro@sertanejo.com.br	t	2020-12-25 10:07:39.281486
48	Artur Olaio	artur_olaio@friends.com.us	t	2020-12-25 10:07:39.281486
49	Nídia Valerio	nidia_valerio@marvel.com	t	2020-12-25 10:07:39.281486
50	Donato Lacerda	donato_lacerda@hermanos.com.ar	t	2020-12-25 10:07:39.281486
51	Brígida Portella	brigida_portella@gmail.com	t	2020-12-25 10:07:39.281486
52	Ximeno Holanda	ximeno_holanda@discovery.channel.com	t	2020-12-25 10:07:39.281486
53	Poliana Flores	poliana_flores@sbt.com.br	t	2020-12-25 10:07:39.281486
54	Bernardo Guterres	bernardo_guterres@sbt.com.br	t	2020-12-25 10:07:39.281486
55	Beatriz Pari	beatriz_pari@yahoo.com	t	2020-12-25 10:07:39.281486
56	Zulmira Toledo	zulmira_toledo@gmail.com	t	2020-12-25 10:07:39.281486
57	Leonor Garcia	leonor_garcia@sbt.com.br	t	2020-12-25 10:07:39.281486
58	Hipólito Velasco	hipolito_velasco@friends.com.us	t	2020-12-25 10:07:39.281486
59	Sara Ferrón	sara_ferron@samba.br	t	2020-12-25 10:07:39.281486
60	João Rebello	joao_rebello@selecao.br	t	2020-12-25 10:07:39.281486
61	Elias Cunha	elias_cunha@heavy.metal.com	t	2020-12-25 10:07:39.281486
62	Anacleto Vilarim	anacleto_vilarim@hbo.com	t	2020-12-25 10:07:39.281486
63	Ilduara Bulhão	ilduara_bulhao@friends.com.us	t	2020-12-25 10:07:39.281486
64	Mário Malta	mario_malta@terra.com.br	t	2020-12-25 10:07:39.281486
65	Alzira Semedo	alzira_semedo@samba.br	t	2020-12-25 10:07:39.281486
66	Aires Falcão	aires_falcao@temp.tmp	t	2020-12-25 10:07:39.281486
67	Carlos Cairu	carlos_cairu@linux.com	t	2020-12-25 10:07:39.281486
68	Félix Castelo	felix_castelo@record.com.br	t	2020-12-25 10:07:39.281486
69	Clarindo Mendonça	clarindo_mendonca@selecao.br	t	2020-12-25 10:07:39.281486
70	Romão Collares	romao_collares@yahoo.com	t	2020-12-25 10:07:39.281486
71	Floripes Gouveia	floripes_gouveia@hermanos.com.ar	t	2020-12-25 10:07:39.281486
72	Eduarda Corvelo	eduarda_corvelo@temp.tmp	t	2020-12-25 10:07:39.281486
73	Teodorico Nazário	teodorico_nazario@gmail.com	t	2020-12-25 10:07:39.281486
74	Emílio Barboza	emilio_barboza@record.com.br	t	2020-12-25 10:07:39.281486
75	Mileide Marroquim	mileide_marroquim@yahoo.com	t	2020-12-25 10:07:39.281486
76	Patrícia Meira	patricia_meira@temp.tmp	t	2020-12-25 10:07:39.281486
77	Renan Grande	renan_grande@globo.com	t	2020-12-25 10:07:39.281486
78	Gerson Portela	gerson_portela@mtv.tv	t	2020-12-25 10:07:39.281486
79	Verónica Anlicoara	veronica_anlicoara@hotmail.com	t	2020-12-25 10:07:39.281486
80	Siquenique Teves	siquenique_teves@globo.com	t	2020-12-25 10:07:39.281486
81	Raquel Guzmán	raquel_guzman@hermanos.com.ar	t	2020-12-25 10:07:39.281486
82	Eduardo Aguiar	eduardo_aguiar@temp.tmp	t	2020-12-25 10:07:39.281486
83	Armanda Malheiro	armanda_malheiro@cultura.com.br	t	2020-12-25 10:07:39.281486
84	Alcides Borba	alcides_borba@globo.com	t	2020-12-25 10:07:39.281486
85	Dirceu Peláez	dirceu_pelaez@marvel.com	t	2020-12-25 10:07:39.281486
86	Xisto Dornelles	xisto_dornelles@temp.tmp	t	2020-12-25 10:07:39.281486
87	Valério Cordeiro	valerio_cordeiro@temp.tmp	t	2020-12-25 10:07:39.281486
88	Selma Rúa	selma_rua@usa.net	t	2020-12-25 10:07:39.281486
89	Fábio Villaverde	fabio_villaverde@globo.com	t	2020-12-25 10:07:39.281486
90	Débora Palhares	debora_palhares@windows.com	t	2020-12-25 10:07:39.281486
91	Cosperranho Carreiro	cosperranho_carreiro@hermanos.com.ar	t	2020-12-25 10:07:39.281486
92	Amália Vilaça	amalia_vilaca@marvel.com	t	2020-12-25 10:07:39.281486
93	Quintilien Robalo	quintilien_robalo@cultura.com.br	t	2020-12-25 10:07:39.281486
94	Solange Negromonte	solange_negromonte@windows.com	t	2020-12-25 10:07:39.281486
95	Marcos Lemes	marcos_lemes@sbt.com.br	t	2020-12-25 10:07:39.281486
96	Jerónimo, Jerônimo Cantanhede	jeronimo__jeronimo_cantanhede@gmail.com	t	2020-12-25 10:07:39.281486
97	Natividade Maior	natividade_maior@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
98	Ildefonso Castellano	ildefonso_castellano@globo.com	t	2020-12-25 10:07:39.281486
99	Quintiliano Peláez	quintiliano_pelaez@selecao.br	t	2020-12-25 10:07:39.281486
100	Domingas Canejo	domingas_canejo@mtv.tv	t	2020-12-25 10:07:39.281486
101	Hélia Espírito Santo	helia_espirito_santo@record.com.br	t	2020-12-25 10:07:39.281486
102	Magali Nolasco	magali_nolasco@heavy.metal.com	t	2020-12-25 10:07:39.281486
103	Enia   Valente	enia___valente@temp.tmp	t	2020-12-25 10:07:39.281486
104	Célia Alancastre	celia_alancastre@selecao.br	t	2020-12-25 10:07:39.281486
105	Marli Gusmão	marli_gusmao@hermanos.com.ar	t	2020-12-25 10:07:39.281486
106	Carolina Torres	carolina_torres@selecao.br	t	2020-12-25 10:07:39.281486
107	Borrás Monsanto	borras_monsanto@discovery.channel.com	t	2020-12-25 10:07:39.281486
108	Davide Carneiro	davide_carneiro@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
109	Anita Alcaide	anita_alcaide@discovery.channel.com	t	2020-12-25 10:07:39.281486
110	Quintiliano Vieyra	quintiliano_vieyra@heavy.metal.com	t	2020-12-25 10:07:39.281486
111	Minervina Blanco	minervina_blanco@selecao.br	t	2020-12-25 10:07:39.281486
112	Vicente Quintela	vicente_quintela@gmail.com	t	2020-12-25 10:07:39.281486
113	Abraão Faro	abraao_faro@gmail.com	t	2020-12-25 10:07:39.281486
114	Norberto Canadas	norberto_canadas@samba.br	t	2020-12-25 10:07:39.281486
115	Liana Espartero	liana_espartero@mtv.tv	t	2020-12-25 10:07:39.281486
116	Flor Leite	flor_leite@telecine.com	t	2020-12-25 10:07:39.281486
117	Gilda Franca	gilda_franca@hbo.com	t	2020-12-25 10:07:39.281486
118	Ubirajara Siqueira	ubirajara_siqueira@temp.tmp	t	2020-12-25 10:07:39.281486
119	Talita Grillo	talita_grillo@sertanejo.com.br	t	2020-12-25 10:07:39.281486
120	Leonir Cyrne	leonir_cyrne@selecao.br	t	2020-12-25 10:07:39.281486
121	Edgar Gallindo	edgar_gallindo@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
122	Solano Alvim	solano_alvim@terra.com.br	t	2020-12-25 10:07:39.281486
123	Augusto Ramires	augusto_ramires@yahoo.com	t	2020-12-25 10:07:39.281486
124	Óscar Antúnez	oscar_antunez@hotmail.com	t	2020-12-25 10:07:39.281486
125	Armando Valle	armando_valle@samba.br	t	2020-12-25 10:07:39.281486
126	Olívia Goes	olivia_goes@hotmail.com	t	2020-12-25 10:07:39.281486
127	Sebastião Jaguaribe	sebastiao_jaguaribe@samba.br	t	2020-12-25 10:07:39.281486
128	Jacinto Galvão	jacinto_galvao@cultura.com.br	t	2020-12-25 10:07:39.281486
129	Roseli Bento	roseli_bento@hbo.com	t	2020-12-25 10:07:39.281486
130	Eliseu Rabello	eliseu_rabello@sbt.com.br	t	2020-12-25 10:07:39.281486
131	Zuleica Valentim	zuleica_valentim@cultura.com.br	t	2020-12-25 10:07:39.281486
132	Neusa Castella	neusa_castella@gmail.com	t	2020-12-25 10:07:39.281486
133	Adriano Cambezes	adriano_cambezes@record.com.br	t	2020-12-25 10:07:39.281486
134	Nicolau Barcellos	nicolau_barcellos@heavy.metal.com	t	2020-12-25 10:07:39.281486
135	Célia Rufino	celia_rufino@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
136	Guiomar Vale	guiomar_vale@terra.com.br	t	2020-12-25 10:07:39.281486
137	Maura Capanema	maura_capanema@hbo.com	t	2020-12-25 10:07:39.281486
138	Zoe Valentín	zoe_valentin@temp.tmp	t	2020-12-25 10:07:39.281486
139	Leopoldina Varanda	leopoldina_varanda@hbo.com	t	2020-12-25 10:07:39.281486
140	Cláudio Amorín	claudio_amorin@marvel.com	t	2020-12-25 10:07:39.281486
141	Ifigénia Figueiredo	ifigenia_figueiredo@telecine.com	t	2020-12-25 10:07:39.281486
142	Guálter, Walter Cerqueira	gualter__walter_cerqueira@terra.com.br	t	2020-12-25 10:07:39.281486
143	Aarão Valentín	aarao_valentin@telecine.com	t	2020-12-25 10:07:39.281486
144	Viriato Barata	viriato_barata@terra.com.br	t	2020-12-25 10:07:39.281486
145	Lavínia Portella	lavinia_portella@temp.tmp	t	2020-12-25 10:07:39.281486
146	Emílio Morais	emilio_morais@gmail.com	t	2020-12-25 10:07:39.281486
147	Salvador Dias	salvador_dias@cultura.com.br	t	2020-12-25 10:07:39.281486
148	Quitéria Vilarim	quiteria_vilarim@record.com.br	t	2020-12-25 10:07:39.281486
149	Floripes Vargas	floripes_vargas@globo.com	t	2020-12-25 10:07:39.281486
150	Silvério Bento	silverio_bento@hermanos.com.ar	t	2020-12-25 10:07:39.281486
151	Ítala Collares	itala_collares@mtv.tv	t	2020-12-25 10:07:39.281486
152	Bernardete Pequeno	bernardete_pequeno@discovery.channel.com	t	2020-12-25 10:07:39.281486
153	Judá Villar	juda_villar@hotmail.com	t	2020-12-25 10:07:39.281486
154	Henrique Pinhal	henrique_pinhal@selecao.br	t	2020-12-25 10:07:39.281486
155	Danilo Caminha	danilo_caminha@heavy.metal.com	t	2020-12-25 10:07:39.281486
156	Jaime Souto Maior	jaime_souto_maior@yahoo.com	t	2020-12-25 10:07:39.281486
157	Esmeralda Froes	esmeralda_froes@heavy.metal.com	t	2020-12-25 10:07:39.281486
158	Denise Castello Branco	denise_castello_branco@friends.com.us	t	2020-12-25 10:07:39.281486
159	Siquenique Taborda	siquenique_taborda@temp.tmp	t	2020-12-25 10:07:39.281486
160	Filipe Quinzeiro	filipe_quinzeiro@globo.com	t	2020-12-25 10:07:39.281486
161	Alda Benavides	alda_benavides@heavy.metal.com	t	2020-12-25 10:07:39.281486
162	Pedro Castelo Branco	pedro_castelo_branco@heavy.metal.com	t	2020-12-25 10:07:39.281486
163	Adalberto Cerqueira	adalberto_cerqueira@mtv.tv	t	2020-12-25 10:07:39.281486
164	Gláucia Salguero	glaucia_salguero@linux.com	t	2020-12-25 10:07:39.281486
165	Manuela Carvalhosa	manuela_carvalhosa@discovery.channel.com	t	2020-12-25 10:07:39.281486
166	Romano Mirandela	romano_mirandela@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
167	Romano Festas	romano_festas@hermanos.com.ar	t	2020-12-25 10:07:39.281486
168	Estefânia Macieira	estefania_macieira@marvel.com	t	2020-12-25 10:07:39.281486
169	Catarino Boaventura	catarino_boaventura@record.com.br	t	2020-12-25 10:07:39.281486
170	Amália Soeiro	amalia_soeiro@discovery.channel.com	t	2020-12-25 10:07:39.281486
171	Mécia Soto	mecia_soto@marvel.com	t	2020-12-25 10:07:39.281486
172	Noel Cipriano	noel_cipriano@yahoo.com	t	2020-12-25 10:07:39.281486
173	Gregório Pimienta	gregorio_pimienta@selecao.br	t	2020-12-25 10:07:39.281486
174	Honorina Lousado	honorina_lousado@heavy.metal.com	t	2020-12-25 10:07:39.281486
175	Ximena Calheiros	ximena_calheiros@linux.com	t	2020-12-25 10:07:39.281486
176	Joaquina Aragão	joaquina_aragao@discovery.channel.com	t	2020-12-25 10:07:39.281486
177	António Cysneiros	antonio_cysneiros@sbt.com.br	t	2020-12-25 10:07:39.281486
178	Verónica Guedes	veronica_guedes@mtv.tv	t	2020-12-25 10:07:39.281486
179	Rufus Fróis	rufus_frois@samba.br	t	2020-12-25 10:07:39.281486
180	Sandra Silveira	sandra_silveira@telecine.com	t	2020-12-25 10:07:39.281486
181	Eurico Santos	eurico_santos@linux.com	t	2020-12-25 10:07:39.281486
182	Boaventura Ataí	boaventura_atai@samba.br	t	2020-12-25 10:07:39.281486
183	Valentina Bivar	valentina_bivar@record.com.br	t	2020-12-25 10:07:39.281486
184	Lázaro Veiga	lazaro_veiga@sertanejo.com.br	t	2020-12-25 10:07:39.281486
185	Florêncio Palmeira	florencio_palmeira@sbt.com.br	t	2020-12-25 10:07:39.281486
186	Clementina Alvim	clementina_alvim@linux.com	t	2020-12-25 10:07:39.281486
187	Ricardina Fuentes	ricardina_fuentes@temp.tmp	t	2020-12-25 10:07:39.281486
188	Ginéculo Pinho	gineculo_pinho@record.com.br	t	2020-12-25 10:07:39.281486
189	Mateus Gómez	mateus_gomez@hbo.com	t	2020-12-25 10:07:39.281486
190	Ubaldo Cordero	ubaldo_cordero@samba.br	t	2020-12-25 10:07:39.281486
191	Xisto Castro	xisto_castro@discovery.channel.com	t	2020-12-25 10:07:39.281486
192	Hermenegildo Saraiva	hermenegildo_saraiva@hotmail.com	t	2020-12-25 10:07:39.281486
193	Quitério Galvão	quiterio_galvao@friends.com.us	t	2020-12-25 10:07:39.281486
194	Virgílio Alencar	virgilio_alencar@discovery.channel.com	t	2020-12-25 10:07:39.281486
195	Lídia Assumpção	lidia_assumpcao@sertanejo.com.br	t	2020-12-25 10:07:39.281486
196	Hugo Arouca	hugo_arouca@sertanejo.com.br	t	2020-12-25 10:07:39.281486
197	Geraldo Meneses	geraldo_meneses@temp.tmp	t	2020-12-25 10:07:39.281486
198	Greice Rico	greice_rico@marvel.com	t	2020-12-25 10:07:39.281486
199	Heriberto Murtinho	heriberto_murtinho@record.com.br	t	2020-12-25 10:07:39.281486
200	Edite Guaraná	edite_guarana@cultura.com.br	t	2020-12-25 10:07:39.281486
201	Márcia Caneira	marcia_caneira@discovery.channel.com	t	2020-12-25 10:07:39.281486
202	Lucílio Chagas	lucilio_chagas@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
203	Camila Paranaguá	camila_paranagua@samba.br	t	2020-12-25 10:07:39.281486
204	Gonçalo García	goncalo_garcia@globo.com	t	2020-12-25 10:07:39.281486
205	Ivete Pardo	ivete_pardo@hermanos.com.ar	t	2020-12-25 10:07:39.281486
206	Vanda Moita	vanda_moita@selecao.br	t	2020-12-25 10:07:39.281486
207	Brígida Aveiro	brigida_aveiro@heavy.metal.com	t	2020-12-25 10:07:39.281486
208	Susana Fragoso	susana_fragoso@globo.com	t	2020-12-25 10:07:39.281486
209	Palmira Foquiço	palmira_foquico@discovery.channel.com	t	2020-12-25 10:07:39.281486
210	Simeão Simões	simeao_simões@gmail.com	t	2020-12-25 10:07:39.281486
211	Aldonça Osório	aldonca_osorio@mtv.tv	t	2020-12-25 10:07:39.281486
212	Filena Blanco	filena_blanco@gmail.com	t	2020-12-25 10:07:39.281486
213	Gaudêncio Diniz	gaudencio_diniz@hotmail.com	t	2020-12-25 10:07:39.281486
214	Paraguaçu Louzada	paraguacu_louzada@record.com.br	t	2020-12-25 10:07:39.281486
215	Bernardina Moita	bernardina_moita@discovery.channel.com	t	2020-12-25 10:07:39.281486
216	Solano Castelão	solano_castelao@friends.com.us	t	2020-12-25 10:07:39.281486
217	Francisco Henriques	francisco_henriques@terra.com.br	t	2020-12-25 10:07:39.281486
218	Deise Graça	deise_graca@usa.net	t	2020-12-25 10:07:39.281486
219	Quirino Sousa do Prado	quirino_sousa_do_prado@selecao.br	t	2020-12-25 10:07:39.281486
220	Hugo Godói	hugo_godoi@windows.com	t	2020-12-25 10:07:39.281486
221	Roberta Assumpção	roberta_assumpcao@marvel.com	t	2020-12-25 10:07:39.281486
222	Jamari Naves	jamari_naves@globo.com	t	2020-12-25 10:07:39.281486
223	Heloísa Pinhal	heloisa_pinhal@selecao.br	t	2020-12-25 10:07:39.281486
224	Piedade Cordeiro	piedade_cordeiro@gmail.com	t	2020-12-25 10:07:39.281486
225	Manuela Morais	manuela_morais@heavy.metal.com	t	2020-12-25 10:07:39.281486
226	Mónica Fialho	monica_fialho@samba.br	t	2020-12-25 10:07:39.281486
227	Angélico Santana	angelico_santana@selecao.br	t	2020-12-25 10:07:39.281486
228	Salomão Carijó	salomao_carijo@gmail.com	t	2020-12-25 10:07:39.281486
229	Remo Avelar	remo_avelar@temp.tmp	t	2020-12-25 10:07:39.281486
230	Palmiro Freitas	palmiro_freitas@temp.tmp	t	2020-12-25 10:07:39.281486
231	Dália Villégas	dalia_villegas@discovery.channel.com	t	2020-12-25 10:07:39.281486
232	Ítalo Cysneiros	italo_cysneiros@sbt.com.br	t	2020-12-25 10:07:39.281486
233	Girão Grillo	girao_grillo@sertanejo.com.br	t	2020-12-25 10:07:39.281486
234	Adelaide Ruela	adelaide_ruela@sbt.com.br	t	2020-12-25 10:07:39.281486
235	Laís Holanda	lais_holanda@telecine.com	t	2020-12-25 10:07:39.281486
236	Quirina Colares	quirina_colares@terra.com.br	t	2020-12-25 10:07:39.281486
237	Marcos Simas	marcos_simas@hermanos.com.ar	t	2020-12-25 10:07:39.281486
238	Minervina Leal	minervina_leal@usa.net	t	2020-12-25 10:07:39.281486
239	Deolindo Azeredo	deolindo_azeredo@friends.com.us	t	2020-12-25 10:07:39.281486
240	Vanda Barbosa	vanda_barbosa@telecine.com	t	2020-12-25 10:07:39.281486
241	Paulina Quiroga	paulina_quiroga@cultura.com.br	t	2020-12-25 10:07:39.281486
242	Adélia Cezar	adelia_cezar@friends.com.us	t	2020-12-25 10:07:39.281486
243	Juçara Cabeça de Vaca	jucara_cabeca_de_vaca@terra.com.br	t	2020-12-25 10:07:39.281486
244	Minervina Castelão	minervina_castelao@marvel.com	t	2020-12-25 10:07:39.281486
245	Aniano Núñez	aniano_nunez@discovery.channel.com	t	2020-12-25 10:07:39.281486
246	Roseli Salomão	roseli_salomao@selecao.br	t	2020-12-25 10:07:39.281486
247	Laurinda Ferraço	laurinda_ferraco@gmail.com	t	2020-12-25 10:07:39.281486
248	Américo Reis	americo_reis@selecao.br	t	2020-12-25 10:07:39.281486
249	Damião Robalo	damiao_robalo@hermanos.com.ar	t	2020-12-25 10:07:39.281486
250	Brás Beserra	bras_beserra@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
251	Emílio Vega	emilio_vega@terra.com.br	t	2020-12-25 10:07:39.281486
252	Guida Teodoro	guida_teodoro@hotmail.com	t	2020-12-25 10:07:39.281486
253	Arnaldo Estrela	arnaldo_estrela@discovery.channel.com	t	2020-12-25 10:07:39.281486
254	Flor Castilhos	flor_castilhos@linux.com	t	2020-12-25 10:07:39.281486
255	Aniana Faia	aniana_faia@temp.tmp	t	2020-12-25 10:07:39.281486
256	Timóteo Álvarez	timoteo_alvarez@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
257	Astolfo Guedes	astolfo_guedes@discovery.channel.com	t	2020-12-25 10:07:39.281486
258	Eudes Matos	eudes_matos@discovery.channel.com	t	2020-12-25 10:07:39.281486
259	Diogo Ramírez	diogo_ramirez@linux.com	t	2020-12-25 10:07:39.281486
260	Aurélia Foquiço	aurelia_foquico@usa.net	t	2020-12-25 10:07:39.281486
261	Irene Mortágua	irene_mortagua@sbt.com.br	t	2020-12-25 10:07:39.281486
262	Casimiro Granjeia	casimiro_granjeia@gmail.com	t	2020-12-25 10:07:39.281486
263	Albino Seixas	albino_seixas@selecao.br	t	2020-12-25 10:07:39.281486
264	Almor Camello	almor_camello@hbo.com	t	2020-12-25 10:07:39.281486
265	Emílio Macena	emilio_macena@heavy.metal.com	t	2020-12-25 10:07:39.281486
266	Delfim Fiestas	delfim_fiestas@hbo.com	t	2020-12-25 10:07:39.281486
267	Vanda Viegas	vanda_viegas@samba.br	t	2020-12-25 10:07:39.281486
268	Bartolomeu Mendoza	bartolomeu_mendoza@temp.tmp	t	2020-12-25 10:07:39.281486
269	Sabino Tévez	sabino_tevez@temp.tmp	t	2020-12-25 10:07:39.281486
270	Flávio Teles	flavio_teles@hermanos.com.ar	t	2020-12-25 10:07:39.281486
271	Nazaré Quintanilha	nazare_quintanilha@gmail.com	t	2020-12-25 10:07:39.281486
272	Deolindo Motta	deolindo_motta@heavy.metal.com	t	2020-12-25 10:07:39.281486
273	Valdeci Figueiró	valdeci_figueiro@hbo.com	t	2020-12-25 10:07:39.281486
274	Teodorico Castelão	teodorico_castelao@telecine.com	t	2020-12-25 10:07:39.281486
275	Iberê Siqueira	ibere_siqueira@heavy.metal.com	t	2020-12-25 10:07:39.281486
276	Bruna Soeiro	bruna_soeiro@marvel.com	t	2020-12-25 10:07:39.281486
277	Henriqueta Estévez	henriqueta_estevez@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
278	Zacarias Varela	zacarias_varela@usa.net	t	2020-12-25 10:07:39.281486
279	Rogério Carmona	rogerio_carmona@selecao.br	t	2020-12-25 10:07:39.281486
280	Carine Beserril	carine_beserril@usa.net	t	2020-12-25 10:07:39.281486
281	Simone Nobre	simone_nobre@samba.br	t	2020-12-25 10:07:39.281486
282	Juliano Rodrigues	juliano_rodrigues@linux.com	t	2020-12-25 10:07:39.281486
283	Tibúrcio Soeiro	tiburcio_soeiro@gmail.com	t	2020-12-25 10:07:39.281486
284	Vasco Fuentes	vasco_fuentes@sbt.com.br	t	2020-12-25 10:07:39.281486
285	Collin Capucho	collin_capucho@cultura.com.br	t	2020-12-25 10:07:39.281486
286	Zita Caneira	zita_caneira@friends.com.us	t	2020-12-25 10:07:39.281486
287	Zidane Faro	zidane_faro@windows.com	t	2020-12-25 10:07:39.281486
288	Rudá Blanco	ruda_blanco@hbo.com	t	2020-12-25 10:07:39.281486
289	Mariana Albuquerque	mariana_albuquerque@cultura.com.br	t	2020-12-25 10:07:39.281486
290	Gabriela Anjos	gabriela_anjos@discovery.channel.com	t	2020-12-25 10:07:39.281486
291	Virgílio Igrejas	virgilio_igrejas@temp.tmp	t	2020-12-25 10:07:39.281486
292	Políbio Campelo	polibio_campelo@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
293	Polibe Rios	polibe_rios@sertanejo.com.br	t	2020-12-25 10:07:39.281486
294	Godo Clementino	godo_clementino@discovery.channel.com	t	2020-12-25 10:07:39.281486
295	Belchior Tomé	belchior_tome@heavy.metal.com	t	2020-12-25 10:07:39.281486
296	Godofredo Noite	godofredo_noite@linux.com	t	2020-12-25 10:07:39.281486
297	Ludovico Carrasco	ludovico_carrasco@mtv.tv	t	2020-12-25 10:07:39.281486
298	Odete Carvajal	odete_carvajal@friends.com.us	t	2020-12-25 10:07:39.281486
299	Palmiro Neres	palmiro_neres@yahoo.com	t	2020-12-25 10:07:39.281486
300	Glauco Vilas-Boas	glauco_vilas-boas@temp.tmp	t	2020-12-25 10:07:39.281486
301	Balduíno Grilo	balduino_grilo@hbo.com	t	2020-12-25 10:07:39.281486
302	Rudi Coelho	rudi_coelho@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
303	Ubiratã Marmou	ubirata_marmou@gmail.com	t	2020-12-25 10:07:39.281486
304	Adélia Viana	adelia_viana@cultura.com.br	t	2020-12-25 10:07:39.281486
305	Rúben Alvarenga	ruben_alvarenga@linux.com	t	2020-12-25 10:07:39.281486
306	Benedita Portugal	benedita_portugal@usa.net	t	2020-12-25 10:07:39.281486
307	Luísa Gonçalves	luisa_goncalves@cultura.com.br	t	2020-12-25 10:07:39.281486
308	Augusto Curado	augusto_curado@sbt.com.br	t	2020-12-25 10:07:39.281486
309	Carlos Cambezes	carlos_cambezes@yahoo.com	t	2020-12-25 10:07:39.281486
310	Ximeno Valentín	ximeno_valentin@samba.br	t	2020-12-25 10:07:39.281486
311	Valdeci Pirajá	valdeci_piraja@selecao.br	t	2020-12-25 10:07:39.281486
312	Lavínia Peçanha	lavinia_pecanha@discovery.channel.com	t	2020-12-25 10:07:39.281486
313	Frederica Azevedo	frederica_azevedo@selecao.br	t	2020-12-25 10:07:39.281486
314	Agostinho Estévez	agostinho_estevez@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
315	Elias Ipanema	elias_ipanema@yahoo.com	t	2020-12-25 10:07:39.281486
316	Roque Rios	roque_rios@windows.com	t	2020-12-25 10:07:39.281486
317	Márcia Carreiro	marcia_carreiro@selecao.br	t	2020-12-25 10:07:39.281486
318	Alarico Pino	alarico_pino@sbt.com.br	t	2020-12-25 10:07:39.281486
319	Milu Loureiro	milu_loureiro@sertanejo.com.br	t	2020-12-25 10:07:39.281486
320	Vítor ou Victor Malheiros	vitor_ou_victor_malheiros@windows.com	t	2020-12-25 10:07:39.281486
321	Gláuber Azenha	glauber_azenha@linux.com	t	2020-12-25 10:07:39.281486
322	Delfim Varanda	delfim_varanda@cultura.com.br	t	2020-12-25 10:07:39.281486
323	Laís Belchiorinho	lais_belchiorinho@cultura.com.br	t	2020-12-25 10:07:39.281486
324	Cauê Caetano	caue_caetano@marvel.com	t	2020-12-25 10:07:39.281486
325	Tália Guedelha	talia_guedelha@windows.com	t	2020-12-25 10:07:39.281486
326	Xavier Ornellas	xavier_ornellas@selecao.br	t	2020-12-25 10:07:39.281486
327	Eva Cunha	eva_cunha@linux.com	t	2020-12-25 10:07:39.281486
328	Afonso Bahía	afonso_bahia@windows.com	t	2020-12-25 10:07:39.281486
329	Diógenes Pimienta	diogenes_pimienta@record.com.br	t	2020-12-25 10:07:39.281486
330	Roberta Guerrero	roberta_guerrero@heavy.metal.com	t	2020-12-25 10:07:39.281486
331	Miriam Tévez	miriam_tevez@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
332	Virgínia Baptista	virginia_baptista@telecine.com	t	2020-12-25 10:07:39.281486
333	Isidro Caminha	isidro_caminha@hotmail.com	t	2020-12-25 10:07:39.281486
334	Amandio Castillo	amandio_castillo@yahoo.com	t	2020-12-25 10:07:39.281486
335	Potira Macena	potira_macena@discovery.channel.com	t	2020-12-25 10:07:39.281486
336	Ofélia Fróis	ofelia_frois@sertanejo.com.br	t	2020-12-25 10:07:39.281486
337	Célia Guerreiro	celia_guerreiro@hotmail.com	t	2020-12-25 10:07:39.281486
338	Andreia Villas Bôas	andreia_villas_boas@windows.com	t	2020-12-25 10:07:39.281486
339	Natacha Vásquez	natacha_vasquez@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
340	Camila Orriça	camila_orrica@sertanejo.com.br	t	2020-12-25 10:07:39.281486
341	Vitória Picanço	vitoria_picanco@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
342	Rosaura Caldas	rosaura_caldas@marvel.com	t	2020-12-25 10:07:39.281486
343	Bernardete Casquero	bernardete_casquero@windows.com	t	2020-12-25 10:07:39.281486
344	Sílvia Estrella	silvia_estrella@marvel.com	t	2020-12-25 10:07:39.281486
345	Teresina Cervera	teresina_cervera@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
346	Tércio Quirós	tercio_quiros@sbt.com.br	t	2020-12-25 10:07:39.281486
347	Astolfo Telles	astolfo_telles@samba.br	t	2020-12-25 10:07:39.281486
348	Alexandra Rebimbas	alexandra_rebimbas@marvel.com	t	2020-12-25 10:07:39.281486
349	Caetano Gentil	caetano_gentil@selecao.br	t	2020-12-25 10:07:39.281486
350	Abigail Belém	abigail_belem@telecine.com	t	2020-12-25 10:07:39.281486
351	Luciana Câmara	luciana_camara@samba.br	t	2020-12-25 10:07:39.281486
352	Corina Uchoa	corina_uchoa@telecine.com	t	2020-12-25 10:07:39.281486
353	Aurélia Noronha	aurelia_noronha@selecao.br	t	2020-12-25 10:07:39.281486
354	Xênia   Damazio	xenia___damazio@gmail.com	t	2020-12-25 10:07:39.281486
355	Félix Thomé	felix_thome@telecine.com	t	2020-12-25 10:07:39.281486
356	Frutuoso Neres	frutuoso_neres@terra.com.br	t	2020-12-25 10:07:39.281486
357	Fausto Losada	fausto_losada@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
358	Ilídio Carmona	ilidio_carmona@samba.br	t	2020-12-25 10:07:39.281486
359	Lídia Meneses	lidia_meneses@samba.br	t	2020-12-25 10:07:39.281486
360	Romano Mena	romano_mena@friends.com.us	t	2020-12-25 10:07:39.281486
361	Lúcio Rebouças	lucio_reboucas@friends.com.us	t	2020-12-25 10:07:39.281486
362	Flamínia Valentín	flaminia_valentin@sertanejo.com.br	t	2020-12-25 10:07:39.281486
363	Guadalupe Macedo	guadalupe_macedo@marvel.com	t	2020-12-25 10:07:39.281486
364	Manuel Souto	manuel_souto@windows.com	t	2020-12-25 10:07:39.281486
365	Deolindo Pinho	deolindo_pinho@mtv.tv	t	2020-12-25 10:07:39.281486
366	Teodoro Almeyda	teodoro_almeyda@selecao.br	t	2020-12-25 10:07:39.281486
367	Isadora Blanco	isadora_blanco@telecine.com	t	2020-12-25 10:07:39.281486
368	Gabriel Raminhos	gabriel_raminhos@hotmail.com	t	2020-12-25 10:07:39.281486
369	Doroteia Souza	doroteia_souza@terra.com.br	t	2020-12-25 10:07:39.281486
370	Daniela Rijo	daniela_rijo@hermanos.com.ar	t	2020-12-25 10:07:39.281486
371	Astolfo Viera	astolfo_viera@terra.com.br	t	2020-12-25 10:07:39.281486
372	Alexandre Azenha	alexandre_azenha@windows.com	t	2020-12-25 10:07:39.281486
373	Clementina Gabeira	clementina_gabeira@hermanos.com.ar	t	2020-12-25 10:07:39.281486
374	Milu Carvalheira	milu_carvalheira@temp.tmp	t	2020-12-25 10:07:39.281486
375	Gaudêncio Valim	gaudencio_valim@windows.com	t	2020-12-25 10:07:39.281486
376	Mafalda Tristão	mafalda_tristao@usa.net	t	2020-12-25 10:07:39.281486
377	Constantino Guimaraes	constantino_guimaraes@marvel.com	t	2020-12-25 10:07:39.281486
378	Guilherme Sacadura	guilherme_sacadura@record.com.br	t	2020-12-25 10:07:39.281486
379	Elba Simão	elba_simao@usa.net	t	2020-12-25 10:07:39.281486
380	Inês Carvalhais	ines_carvalhais@yahoo.com	t	2020-12-25 10:07:39.281486
381	Ruca Boaventura	ruca_boaventura@linux.com	t	2020-12-25 10:07:39.281486
382	Ramiro Viégas	ramiro_viegas@marvel.com	t	2020-12-25 10:07:39.281486
383	Elvira Vidal	elvira_vidal@hbo.com	t	2020-12-25 10:07:39.281486
384	Ubiratã Camello	ubirata_camello@gmail.com	t	2020-12-25 10:07:39.281486
385	Hermesinda Lisboa	hermesinda_lisboa@telecine.com	t	2020-12-25 10:07:39.281486
386	Nicolas Távora	nicolas_tavora@hotmail.com	t	2020-12-25 10:07:39.281486
387	Luís Amaral	luis_amaral@heavy.metal.com	t	2020-12-25 10:07:39.281486
388	Frederica Freitas	frederica_freitas@linux.com	t	2020-12-25 10:07:39.281486
389	Filipe Quental	filipe_quental@yahoo.com	t	2020-12-25 10:07:39.281486
390	Denise Bogalho	denise_bogalho@gmail.com	t	2020-12-25 10:07:39.281486
391	Cora Cavadas	cora_cavadas@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
392	Mariano Albuquerque	mariano_albuquerque@record.com.br	t	2020-12-25 10:07:39.281486
393	Crispim Quiroga	crispim_quiroga@discovery.channel.com	t	2020-12-25 10:07:39.281486
394	Antónia Cidreira	antonia_cidreira@hbo.com	t	2020-12-25 10:07:39.281486
395	Timóteo Doutel	timoteo_doutel@heavy.metal.com	t	2020-12-25 10:07:39.281486
396	Judas Gorjão	judas_gorjao@discovery.channel.com	t	2020-12-25 10:07:39.281486
397	Alceste Felgueiras	alceste_felgueiras@marvel.com	t	2020-12-25 10:07:39.281486
398	Adriana Mantas	adriana_mantas@usa.net	t	2020-12-25 10:07:39.281486
399	Liedson Dias	liedson_dias@telecine.com	t	2020-12-25 10:07:39.281486
400	Fabíola Belchior	fabiola_belchior@terra.com.br	t	2020-12-25 10:07:39.281486
401	Jandira Castaño	jandira_castano@gmail.com	t	2020-12-25 10:07:39.281486
402	Guadalupe Albernaz	guadalupe_albernaz@heavy.metal.com	t	2020-12-25 10:07:39.281486
403	Olga Blanco	olga_blanco@temp.tmp	t	2020-12-25 10:07:39.281486
404	Maíra Canário	maira_canario@windows.com	t	2020-12-25 10:07:39.281486
405	Levindo Duarte	levindo_duarte@telecine.com	t	2020-12-25 10:07:39.281486
406	Inês Granjeiro	ines_granjeiro@hbo.com	t	2020-12-25 10:07:39.281486
407	Ovídio Azenha	ovidio_azenha@marvel.com	t	2020-12-25 10:07:39.281486
408	Rosalinda Damazio	rosalinda_damazio@telecine.com	t	2020-12-25 10:07:39.281486
409	Alarico Tibiriçá	alarico_tibirica@telecine.com	t	2020-12-25 10:07:39.281486
410	Lineu Abasto	lineu_abasto@usa.net	t	2020-12-25 10:07:39.281486
411	Flávio Villas Boas	flavio_villas_boas@windows.com	t	2020-12-25 10:07:39.281486
412	Gisela Caiado	gisela_caiado@windows.com	t	2020-12-25 10:07:39.281486
413	Josias Viégas	josias_viegas@discovery.channel.com	t	2020-12-25 10:07:39.281486
414	Augusta Prada	augusta_prada@sertanejo.com.br	t	2020-12-25 10:07:39.281486
415	Gil Estrada	gil_estrada@hotmail.com	t	2020-12-25 10:07:39.281486
416	Alzira Mesquita	alzira_mesquita@record.com.br	t	2020-12-25 10:07:39.281486
417	Aline Braga	aline_braga@terra.com.br	t	2020-12-25 10:07:39.281486
418	Nestor Castelbranco	nestor_castelbranco@marvel.com	t	2020-12-25 10:07:39.281486
419	Tobias Bacelar	tobias_bacelar@terra.com.br	t	2020-12-25 10:07:39.281486
420	Clarisse Paula	clarisse_paula@linux.com	t	2020-12-25 10:07:39.281486
421	Raoni Thamily	raoni_thamily@gmail.com	t	2020-12-25 10:07:39.281486
422	Nivaldo Ramírez	nivaldo_ramirez@hbo.com	t	2020-12-25 10:07:39.281486
423	Suniário Souto	suniario_souto@terra.com.br	t	2020-12-25 10:07:39.281486
424	Artur Portella	artur_portella@record.com.br	t	2020-12-25 10:07:39.281486
425	Sidônio   Mena	sidonio___mena@heavy.metal.com	t	2020-12-25 10:07:39.281486
426	Alípio Canela	alipio_canela@cultura.com.br	t	2020-12-25 10:07:39.281486
427	Marli Morales	marli_morales@samba.br	t	2020-12-25 10:07:39.281486
428	Teresa Fiestas	teresa_fiestas@cultura.com.br	t	2020-12-25 10:07:39.281486
429	Burtira Franca	burtira_franca@hbo.com	t	2020-12-25 10:07:39.281486
430	Tarrataca Thomé	tarrataca_thome@friends.com.us	t	2020-12-25 10:07:39.281486
431	Viridiana Thamily	viridiana_thamily@sertanejo.com.br	t	2020-12-25 10:07:39.281486
432	Tibúrcio Montero	tiburcio_montero@linux.com	t	2020-12-25 10:07:39.281486
433	Mileide Semedo	mileide_semedo@terra.com.br	t	2020-12-25 10:07:39.281486
434	Dorindo Faustino	dorindo_faustino@cultura.com.br	t	2020-12-25 10:07:39.281486
435	Bernardete Frota	bernardete_frota@discovery.channel.com	t	2020-12-25 10:07:39.281486
436	Simeão Quirino	simeao_quirino@heavy.metal.com	t	2020-12-25 10:07:39.281486
437	Ema Butantã	ema_butanta@globo.com	t	2020-12-25 10:07:39.281486
438	Ismael Valverde	ismael_valverde@discovery.channel.com	t	2020-12-25 10:07:39.281486
439	Clara Lameira	clara_lameira@discovery.channel.com	t	2020-12-25 10:07:39.281486
440	Júlia Quintela	julia_quintela@mtv.tv	t	2020-12-25 10:07:39.281486
441	Gabriela Sabala	gabriela_sabala@hermanos.com.ar	t	2020-12-25 10:07:39.281486
442	Flora Murtinho	flora_murtinho@terra.com.br	t	2020-12-25 10:07:39.281486
443	Eugénio Góis	eugenio_gois@windows.com	t	2020-12-25 10:07:39.281486
444	Apoena Javier	apoena_javier@telecine.com	t	2020-12-25 10:07:39.281486
445	Quintino Tavares	quintino_tavares@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
446	Cleusa Rabello	cleusa_rabello@yahoo.com	t	2020-12-25 10:07:39.281486
447	Estêvão Mattos	estevao_mattos@linux.com	t	2020-12-25 10:07:39.281486
448	Ulrico Cysneiros	ulrico_cysneiros@hbo.com	t	2020-12-25 10:07:39.281486
449	Glauco Queirós	glauco_queiros@yahoo.com	t	2020-12-25 10:07:39.281486
450	Susana Noguera	susana_noguera@hermanos.com.ar	t	2020-12-25 10:07:39.281486
451	Alice Corte-Real	alice_corte-real@usa.net	t	2020-12-25 10:07:39.281486
452	Marlene Pirajá	marlene_piraja@hbo.com	t	2020-12-25 10:07:39.281486
453	Odete Taborda	odete_taborda@discovery.channel.com	t	2020-12-25 10:07:39.281486
454	Diógenes Novaes	diogenes_novaes@discovery.channel.com	t	2020-12-25 10:07:39.281486
455	Daniel Alcántara	daniel_alcantara@telecine.com	t	2020-12-25 10:07:39.281486
456	Benedita Pacheco	benedita_pacheco@hbo.com	t	2020-12-25 10:07:39.281486
457	Henriqueta Ignacio	henriqueta_ignacio@windows.com	t	2020-12-25 10:07:39.281486
458	Itiberê Márquez	itibere_marquez@globo.com	t	2020-12-25 10:07:39.281486
459	Oscar   Fontoura	oscar___fontoura@globo.com	t	2020-12-25 10:07:39.281486
460	Lavínia Higuera	lavinia_higuera@cultura.com.br	t	2020-12-25 10:07:39.281486
461	Débora Quaresma	debora_quaresma@temp.tmp	t	2020-12-25 10:07:39.281486
462	Belchior Gracia	belchior_gracia@usa.net	t	2020-12-25 10:07:39.281486
463	Hermenegildo Sosa	hermenegildo_sosa@temp.tmp	t	2020-12-25 10:07:39.281486
464	Jaci Pirassununga	jaci_pirassununga@marvel.com	t	2020-12-25 10:07:39.281486
465	Gil Magalhães	gil_magalhaes@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
466	Délia Valladares	delia_valladares@usa.net	t	2020-12-25 10:07:39.281486
467	Jacir Félix	jacir_felix@cultura.com.br	t	2020-12-25 10:07:39.281486
468	Fernanda Cantanhede	fernanda_cantanhede@discovery.channel.com	t	2020-12-25 10:07:39.281486
469	Sebastião Guimaraes	sebastiao_guimaraes@hermanos.com.ar	t	2020-12-25 10:07:39.281486
470	Orestes Pegado	orestes_pegado@hbo.com	t	2020-12-25 10:07:39.281486
471	Hernâni Bethancout	hernani_bethancout@discovery.channel.com	t	2020-12-25 10:07:39.281486
472	Lúcio Villégas	lucio_villegas@sertanejo.com.br	t	2020-12-25 10:07:39.281486
473	Honório Sobreira	honorio_sobreira@samba.br	t	2020-12-25 10:07:39.281486
474	Mara Vilar	mara_vilar@marvel.com	t	2020-12-25 10:07:39.281486
475	Cristiana Téllez	cristiana_tellez@yahoo.com	t	2020-12-25 10:07:39.281486
476	Janaína Collares	janaina_collares@cultura.com.br	t	2020-12-25 10:07:39.281486
477	Florbela Ferraz	florbela_ferraz@yahoo.com	t	2020-12-25 10:07:39.281486
478	Evandro Lobo	evandro_lobo@telecine.com	t	2020-12-25 10:07:39.281486
479	Tomé Cezimbra	tome_cezimbra@friends.com.us	t	2020-12-25 10:07:39.281486
480	Palmira Neiva	palmira_neiva@telecine.com	t	2020-12-25 10:07:39.281486
481	Belmifer Ferrón	belmifer_ferron@samba.br	t	2020-12-25 10:07:39.281486
482	Pascoal Teles	pascoal_teles@heavy.metal.com	t	2020-12-25 10:07:39.281486
483	Luana Junqueira	luana_junqueira@hermanos.com.ar	t	2020-12-25 10:07:39.281486
484	Zuleica Larangeira	zuleica_larangeira@terra.com.br	t	2020-12-25 10:07:39.281486
485	Milu Velásquez	milu_velasquez@vaildochaves.com.mx	t	2020-12-25 10:07:39.281486
486	Ágata Carvalhaes	agata_carvalhaes@samba.br	t	2020-12-25 10:07:39.281486
487	Mécia Damásio	mecia_damasio@samba.br	t	2020-12-25 10:07:39.281486
488	Gaudêncio Tavares	gaudencio_tavares@cultura.com.br	t	2020-12-25 10:07:39.281486
489	Hugo Silveira dos Açores	hugo_silveira_dos_acores@hermanos.com.ar	t	2020-12-25 10:07:39.281486
490	Maíra Mourinho	maira_mourinho@linux.com	t	2020-12-25 10:07:39.281486
491	Leonel Rúa	leonel_rua@yahoo.com	t	2020-12-25 10:07:39.281486
492	Sonás Ríos	sonas_rios@yahoo.com	t	2020-12-25 10:07:39.281486
493	Leônidas   Brandán	leonidas___brandan@globo.com	t	2020-12-25 10:07:39.281486
494	Gisela Azenha	gisela_azenha@selecao.br	t	2020-12-25 10:07:39.281486
495	Emídio Veríssimo	emidio_verissimo@yahoo.com	t	2020-12-25 10:07:39.281486
496	Eva Collares	eva_collares@selecao.br	t	2020-12-25 10:07:39.281486
497	Marcos Travassos	marcos_travassos@hermanos.com.ar	t	2020-12-25 10:07:39.281486
498	Crispim Querino	crispim_querino@samba.br	t	2020-12-25 10:07:39.281486
499	Paraguaçu Carijó	paraguacu_carijo@hotmail.com	t	2020-12-25 10:07:39.281486
500	Otávio Regueira	otavio_regueira@sertanejo.com.br	t	2020-12-25 10:07:39.281486
\.


--
-- Data for Name: cliente_transacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente_transacoes (id, banco_numero, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, tipo_transacao_id, valor, data_criacao) FROM stdin;
1	247	30	424222306	8	208	3	0.87	2020-12-25 10:07:39.281486
2	104	12	203989772	8	65	3	1.61	2020-12-25 10:07:39.281486
3	655	4	14118439	3	454	3	1.73	2020-12-25 10:07:39.281486
4	247	12	278633277	7	177	3	1.82	2020-12-25 10:07:39.281486
5	104	49	282599295	4	325	3	2.22	2020-12-25 10:07:39.281486
6	33	20	312103822	7	375	3	2.51	2020-12-25 10:07:39.281486
7	623	4	203580474	6	306	3	2.56	2020-12-25 10:07:39.281486
8	33	15	295186051	0	77	3	3.06	2020-12-25 10:07:39.281486
9	237	3	215637901	0	262	3	3.46	2020-12-25 10:07:39.281486
10	33	10	256786009	3	43	3	3.65	2020-12-25 10:07:39.281486
11	104	11	362325544	4	135	3	3.97	2020-12-25 10:07:39.281486
12	104	49	246690806	8	359	3	4.68	2020-12-25 10:07:39.281486
13	399	19	25574239	0	480	3	5.21	2020-12-25 10:07:39.281486
14	655	4	311520744	1	409	3	5.33	2020-12-25 10:07:39.281486
15	104	57	64421435	4	311	3	5.68	2020-12-25 10:07:39.281486
16	104	67	258044064	4	212	3	6.81	2020-12-25 10:07:39.281486
17	247	31	143117142	6	245	3	7.09	2020-12-25 10:07:39.281486
18	1	17	127918587	3	9	3	7.10	2020-12-25 10:07:39.281486
19	399	16	217545867	5	196	3	7.70	2020-12-25 10:07:39.281486
20	477	13	137736540	3	99	3	8.16	2020-12-25 10:07:39.281486
21	1	21	358751672	7	181	3	8.25	2020-12-25 10:07:39.281486
22	247	24	386436835	3	239	3	9.04	2020-12-25 10:07:39.281486
23	33	16	287612561	3	192	3	9.18	2020-12-25 10:07:39.281486
24	1	24	147091146	5	349	3	10.11	2020-12-25 10:07:39.281486
25	104	33	329711671	1	339	3	10.69	2020-12-25 10:07:39.281486
26	104	83	267011504	5	235	3	10.96	2020-12-25 10:07:39.281486
27	33	29	267312285	4	205	3	12.29	2020-12-25 10:07:39.281486
28	104	76	177198655	5	228	3	12.32	2020-12-25 10:07:39.281486
29	104	96	392769798	8	72	3	12.40	2020-12-25 10:07:39.281486
30	1	5	15140549	8	331	3	12.66	2020-12-25 10:07:39.281486
31	1	45	224478822	2	148	3	13.64	2020-12-25 10:07:39.281486
32	33	13	29777566	6	109	3	13.87	2020-12-25 10:07:39.281486
33	104	98	332447931	6	246	3	14.12	2020-12-25 10:07:39.281486
34	247	29	15769960	4	118	3	14.31	2020-12-25 10:07:39.281486
35	104	33	392493434	6	117	3	14.33	2020-12-25 10:07:39.281486
36	247	22	321020135	5	326	3	14.51	2020-12-25 10:07:39.281486
37	104	32	289928323	8	223	3	15.18	2020-12-25 10:07:39.281486
38	247	6	162159371	8	64	3	15.59	2020-12-25 10:07:39.281486
39	237	2	16015656	0	307	3	15.63	2020-12-25 10:07:39.281486
40	247	16	308257129	6	120	3	16.36	2020-12-25 10:07:39.281486
41	104	42	116265008	4	381	3	16.61	2020-12-25 10:07:39.281486
42	1	18	146124300	0	287	3	18.49	2020-12-25 10:07:39.281486
43	104	57	331149281	0	95	3	18.54	2020-12-25 10:07:39.281486
44	33	4	323404707	5	155	3	18.71	2020-12-25 10:07:39.281486
45	1	44	309470210	6	10	3	19.02	2020-12-25 10:07:39.281486
46	399	12	238033050	3	370	3	19.17	2020-12-25 10:07:39.281486
47	399	3	402204855	1	203	3	19.29	2020-12-25 10:07:39.281486
48	1	43	19183183	7	83	3	19.75	2020-12-25 10:07:39.281486
49	104	10	174663174	0	168	3	20.21	2020-12-25 10:07:39.281486
50	104	7	103691016	8	290	3	20.52	2020-12-25 10:07:39.281486
51	237	20	311248511	4	321	3	20.58	2020-12-25 10:07:39.281486
52	104	50	9758400	2	162	3	21.02	2020-12-25 10:07:39.281486
53	247	25	219131727	3	453	3	21.29	2020-12-25 10:07:39.281486
54	104	2	19174386	8	395	3	21.47	2020-12-25 10:07:39.281486
55	1	14	94265006	2	74	3	21.69	2020-12-25 10:07:39.281486
56	33	4	413602655	4	272	3	21.93	2020-12-25 10:07:39.281486
57	247	2	99943025	7	88	3	21.98	2020-12-25 10:07:39.281486
58	104	44	162980999	7	197	3	22.56	2020-12-25 10:07:39.281486
59	1	9	402464325	6	88	3	22.94	2020-12-25 10:07:39.281486
60	104	59	384760621	4	347	3	23.00	2020-12-25 10:07:39.281486
61	237	19	14767465	2	284	3	23.02	2020-12-25 10:07:39.281486
62	247	34	149514305	8	86	3	23.10	2020-12-25 10:07:39.281486
63	1	47	352794091	5	430	3	23.25	2020-12-25 10:07:39.281486
64	1	40	243591934	8	257	3	23.96	2020-12-25 10:07:39.281486
65	1	42	224479925	1	216	3	24.03	2020-12-25 10:07:39.281486
66	623	3	428795214	8	323	3	24.23	2020-12-25 10:07:39.281486
67	399	21	238231361	4	279	3	24.50	2020-12-25 10:07:39.281486
68	655	4	292888275	0	49	3	24.50	2020-12-25 10:07:39.281486
69	399	3	171793285	4	434	3	24.60	2020-12-25 10:07:39.281486
70	33	24	412424527	7	87	3	25.27	2020-12-25 10:07:39.281486
71	104	55	161995280	8	472	3	25.88	2020-12-25 10:07:39.281486
72	104	15	227768696	8	341	3	26.28	2020-12-25 10:07:39.281486
73	399	18	57900118	8	190	3	26.42	2020-12-25 10:07:39.281486
74	237	21	246458063	1	213	3	26.48	2020-12-25 10:07:39.281486
75	104	94	26116054	4	461	3	26.76	2020-12-25 10:07:39.281486
76	104	81	14949625	3	493	3	26.99	2020-12-25 10:07:39.281486
77	1	36	254359402	7	326	3	27.16	2020-12-25 10:07:39.281486
78	655	6	135836582	4	316	3	28.15	2020-12-25 10:07:39.281486
79	237	19	294600697	0	268	3	28.60	2020-12-25 10:07:39.281486
80	104	39	321331703	6	163	3	29.06	2020-12-25 10:07:39.281486
81	237	27	152607205	4	419	3	30.88	2020-12-25 10:07:39.281486
82	104	39	339694786	1	384	3	31.29	2020-12-25 10:07:39.281486
83	623	3	249749655	5	35	3	31.31	2020-12-25 10:07:39.281486
84	477	6	264454988	2	241	3	31.57	2020-12-25 10:07:39.281486
85	104	14	205133509	6	271	3	31.80	2020-12-25 10:07:39.281486
86	104	18	26909131	2	5	3	31.93	2020-12-25 10:07:39.281486
87	655	5	60980709	5	468	3	32.19	2020-12-25 10:07:39.281486
88	104	77	222531385	7	53	3	32.63	2020-12-25 10:07:39.281486
89	104	64	41274465	6	291	3	32.65	2020-12-25 10:07:39.281486
90	237	2	304599744	5	25	3	32.67	2020-12-25 10:07:39.281486
91	1	36	393292023	4	456	3	32.92	2020-12-25 10:07:39.281486
92	33	26	412461021	7	481	3	32.93	2020-12-25 10:07:39.281486
93	237	25	336251546	0	491	3	33.32	2020-12-25 10:07:39.281486
94	477	1	157848874	4	462	3	33.36	2020-12-25 10:07:39.281486
95	237	15	341282703	8	484	3	33.63	2020-12-25 10:07:39.281486
96	104	89	148739669	5	185	3	33.89	2020-12-25 10:07:39.281486
97	399	6	74138712	7	175	3	33.99	2020-12-25 10:07:39.281486
98	247	29	366490642	2	500	3	34.54	2020-12-25 10:07:39.281486
99	247	8	240285900	7	310	3	34.61	2020-12-25 10:07:39.281486
100	104	80	181763720	5	241	3	35.82	2020-12-25 10:07:39.281486
101	104	11	242717839	5	37	3	36.36	2020-12-25 10:07:39.281486
102	104	7	278629263	4	176	3	37.28	2020-12-25 10:07:39.281486
103	247	1	430754320	4	44	3	37.96	2020-12-25 10:07:39.281486
104	399	4	81061872	8	318	3	38.19	2020-12-25 10:07:39.281486
105	104	83	96295332	5	115	3	38.76	2020-12-25 10:07:39.281486
106	104	41	372887850	4	463	3	38.95	2020-12-25 10:07:39.281486
107	104	59	348334224	2	234	3	39.43	2020-12-25 10:07:39.281486
108	33	8	123157329	3	424	3	39.52	2020-12-25 10:07:39.281486
109	477	12	188340066	0	283	3	39.95	2020-12-25 10:07:39.281486
110	104	12	255958283	5	485	3	40.39	2020-12-25 10:07:39.281486
111	104	92	221373266	8	30	3	40.50	2020-12-25 10:07:39.281486
112	1	46	149882870	8	33	3	40.79	2020-12-25 10:07:39.281486
113	104	58	378367445	2	309	3	41.10	2020-12-25 10:07:39.281486
114	1	39	319852908	3	336	3	41.17	2020-12-25 10:07:39.281486
115	1	44	234700334	4	320	3	41.68	2020-12-25 10:07:39.281486
116	1	27	153273940	8	365	3	41.73	2020-12-25 10:07:39.281486
117	237	28	345939483	1	184	3	41.73	2020-12-25 10:07:39.281486
118	104	65	241144408	8	252	3	41.84	2020-12-25 10:07:39.281486
119	104	46	81820336	2	107	3	43.38	2020-12-25 10:07:39.281486
120	104	44	329070445	1	62	3	43.60	2020-12-25 10:07:39.281486
121	477	7	364294952	0	248	3	43.90	2020-12-25 10:07:39.281486
122	623	3	334786253	4	1	3	44.00	2020-12-25 10:07:39.281486
123	247	20	433631717	7	457	3	44.02	2020-12-25 10:07:39.281486
124	104	28	107717060	1	40	3	44.21	2020-12-25 10:07:39.281486
125	104	26	209234587	8	455	3	44.27	2020-12-25 10:07:39.281486
126	33	29	135452660	5	159	3	44.84	2020-12-25 10:07:39.281486
127	104	5	2681146	7	19	3	44.85	2020-12-25 10:07:39.281486
128	104	32	408421578	4	482	3	45.06	2020-12-25 10:07:39.281486
129	477	13	239033258	0	329	3	45.27	2020-12-25 10:07:39.281486
130	237	24	308764588	8	446	3	45.86	2020-12-25 10:07:39.281486
131	33	11	215478290	0	334	3	45.91	2020-12-25 10:07:39.281486
132	104	72	96562416	8	484	3	46.35	2020-12-25 10:07:39.281486
133	399	7	194158634	6	113	3	46.42	2020-12-25 10:07:39.281486
134	104	15	25338387	5	497	3	46.45	2020-12-25 10:07:39.281486
135	1	18	281590938	4	441	3	46.89	2020-12-25 10:07:39.281486
136	33	14	321871849	5	312	3	47.19	2020-12-25 10:07:39.281486
137	237	16	131349549	7	165	3	48.68	2020-12-25 10:07:39.281486
138	655	1	212415609	0	291	3	48.98	2020-12-25 10:07:39.281486
139	104	39	58862980	2	114	3	49.25	2020-12-25 10:07:39.281486
140	1	3	198474553	7	376	3	49.67	2020-12-25 10:07:39.281486
141	33	20	424879800	6	167	3	50.12	2020-12-25 10:07:39.281486
142	104	86	273638774	5	404	3	51.04	2020-12-25 10:07:39.281486
143	104	88	92658814	4	315	3	51.73	2020-12-25 10:07:39.281486
144	237	22	392353471	2	297	3	51.74	2020-12-25 10:07:39.281486
145	247	20	245051338	3	6	3	52.16	2020-12-25 10:07:39.281486
146	399	12	188542592	6	425	3	52.31	2020-12-25 10:07:39.281486
147	399	5	330794984	6	421	3	52.40	2020-12-25 10:07:39.281486
148	104	68	81705121	3	81	3	52.43	2020-12-25 10:07:39.281486
149	104	51	8106488	5	396	3	52.51	2020-12-25 10:07:39.281486
150	104	7	57689792	4	396	3	53.61	2020-12-25 10:07:39.281486
151	237	5	986103	7	460	3	53.96	2020-12-25 10:07:39.281486
152	104	47	132822257	7	458	3	54.07	2020-12-25 10:07:39.281486
153	1	20	271352669	7	429	3	55.21	2020-12-25 10:07:39.281486
154	399	3	148171067	1	260	3	55.22	2020-12-25 10:07:39.281486
155	237	24	304560641	2	24	3	55.38	2020-12-25 10:07:39.281486
156	104	64	21568237	3	39	3	56.33	2020-12-25 10:07:39.281486
157	623	2	282169851	5	283	3	56.42	2020-12-25 10:07:39.281486
158	237	17	157574169	5	127	3	56.74	2020-12-25 10:07:39.281486
159	104	9	219971673	3	64	3	57.30	2020-12-25 10:07:39.281486
160	399	1	378889628	6	366	3	57.68	2020-12-25 10:07:39.281486
161	1	23	431262421	3	143	3	57.85	2020-12-25 10:07:39.281486
162	477	4	305267511	3	478	3	57.86	2020-12-25 10:07:39.281486
163	104	16	85495902	8	471	3	58.74	2020-12-25 10:07:39.281486
164	237	8	179093455	3	249	3	59.24	2020-12-25 10:07:39.281486
165	1	31	162401264	7	147	3	59.40	2020-12-25 10:07:39.281486
166	247	28	278566345	2	29	3	59.92	2020-12-25 10:07:39.281486
167	1	5	225616342	3	119	3	59.95	2020-12-25 10:07:39.281486
168	237	1	282639475	4	171	3	60.45	2020-12-25 10:07:39.281486
169	247	9	254037645	1	158	3	60.87	2020-12-25 10:07:39.281486
170	33	21	409960	1	258	3	61.57	2020-12-25 10:07:39.281486
171	1	8	295739455	5	444	3	62.61	2020-12-25 10:07:39.281486
172	33	6	369692311	6	303	3	63.37	2020-12-25 10:07:39.281486
173	33	15	269295123	4	405	3	63.40	2020-12-25 10:07:39.281486
174	104	80	342928300	2	97	3	63.49	2020-12-25 10:07:39.281486
175	104	66	161410091	6	256	3	64.47	2020-12-25 10:07:39.281486
176	399	10	98305027	8	288	3	64.54	2020-12-25 10:07:39.281486
177	104	90	187035200	8	472	3	65.57	2020-12-25 10:07:39.281486
178	247	26	256236972	0	173	3	67.21	2020-12-25 10:07:39.281486
179	104	66	71561595	5	439	3	67.72	2020-12-25 10:07:39.281486
180	104	96	140698307	8	107	3	68.09	2020-12-25 10:07:39.281486
181	477	8	71822855	0	15	3	68.13	2020-12-25 10:07:39.281486
182	33	18	432446013	5	263	3	68.51	2020-12-25 10:07:39.281486
183	104	2	12457207	6	464	3	68.57	2020-12-25 10:07:39.281486
184	104	12	224859865	0	122	3	69.29	2020-12-25 10:07:39.281486
185	1	6	193291495	2	282	3	69.34	2020-12-25 10:07:39.281486
186	104	92	89644267	0	7	3	69.35	2020-12-25 10:07:39.281486
187	104	90	296604792	5	465	3	69.65	2020-12-25 10:07:39.281486
188	477	14	389148864	1	244	3	69.77	2020-12-25 10:07:39.281486
189	247	20	346855259	7	31	3	70.12	2020-12-25 10:07:39.281486
190	247	7	15822670	1	104	3	70.22	2020-12-25 10:07:39.281486
191	33	2	152303325	3	433	3	70.63	2020-12-25 10:07:39.281486
192	477	10	397364750	0	265	3	70.69	2020-12-25 10:07:39.281486
193	1	45	180159338	8	437	3	70.96	2020-12-25 10:07:39.281486
194	237	28	211747031	3	123	3	71.03	2020-12-25 10:07:39.281486
195	1	42	57155380	2	377	3	71.91	2020-12-25 10:07:39.281486
196	33	26	253294089	0	129	3	72.46	2020-12-25 10:07:39.281486
197	104	66	282349288	4	125	3	73.40	2020-12-25 10:07:39.281486
198	237	13	225866991	8	470	3	73.55	2020-12-25 10:07:39.281486
199	104	40	273600731	3	50	3	73.67	2020-12-25 10:07:39.281486
200	1	36	1943738	8	79	3	73.75	2020-12-25 10:07:39.281486
201	104	34	358212114	6	264	3	73.92	2020-12-25 10:07:39.281486
202	33	16	374955132	8	121	3	74.09	2020-12-25 10:07:39.281486
203	237	22	4845451	3	304	3	74.54	2020-12-25 10:07:39.281486
204	104	19	175233843	8	286	3	74.94	2020-12-25 10:07:39.281486
205	247	34	270864881	8	282	3	75.10	2020-12-25 10:07:39.281486
206	33	5	229504949	1	133	3	75.45	2020-12-25 10:07:39.281486
207	477	7	147843646	4	413	3	75.65	2020-12-25 10:07:39.281486
208	237	14	115584880	1	161	3	76.21	2020-12-25 10:07:39.281486
209	104	4	348850672	0	48	3	76.21	2020-12-25 10:07:39.281486
210	655	6	423138683	5	96	3	76.33	2020-12-25 10:07:39.281486
211	247	14	244883880	0	266	3	76.55	2020-12-25 10:07:39.281486
212	104	94	290489730	3	293	3	76.65	2020-12-25 10:07:39.281486
213	33	2	369267539	0	46	3	76.86	2020-12-25 10:07:39.281486
214	1	35	106124891	2	150	3	77.06	2020-12-25 10:07:39.281486
215	104	93	26894291	6	410	3	77.88	2020-12-25 10:07:39.281486
216	33	21	212102682	8	414	3	77.96	2020-12-25 10:07:39.281486
217	623	5	252881626	2	233	3	77.99	2020-12-25 10:07:39.281486
218	104	63	198413933	8	217	3	78.39	2020-12-25 10:07:39.281486
219	237	17	114157983	3	338	3	78.57	2020-12-25 10:07:39.281486
220	1	45	222583938	1	220	3	79.03	2020-12-25 10:07:39.281486
221	104	96	346098925	3	157	3	79.05	2020-12-25 10:07:39.281486
222	104	99	272266794	3	227	3	80.21	2020-12-25 10:07:39.281486
223	104	18	431014199	6	193	3	80.21	2020-12-25 10:07:39.281486
224	237	14	364578650	6	138	3	80.65	2020-12-25 10:07:39.281486
225	247	13	32823517	1	313	3	80.84	2020-12-25 10:07:39.281486
226	247	1	251144344	3	131	3	81.03	2020-12-25 10:07:39.281486
227	247	25	340618593	1	247	3	81.45	2020-12-25 10:07:39.281486
228	104	96	316578434	6	490	3	81.98	2020-12-25 10:07:39.281486
229	104	60	269892240	7	206	3	82.81	2020-12-25 10:07:39.281486
230	104	67	197457840	4	254	3	83.01	2020-12-25 10:07:39.281486
231	104	42	325666566	1	71	3	83.16	2020-12-25 10:07:39.281486
232	33	9	233072312	0	93	3	83.95	2020-12-25 10:07:39.281486
233	477	5	178152679	3	459	3	84.04	2020-12-25 10:07:39.281486
234	237	26	218769841	2	80	3	84.11	2020-12-25 10:07:39.281486
235	655	4	174214808	0	224	3	84.44	2020-12-25 10:07:39.281486
236	1	5	371047745	5	379	3	86.83	2020-12-25 10:07:39.281486
237	237	8	329523173	7	153	3	86.94	2020-12-25 10:07:39.281486
238	1	2	409112000	2	289	3	87.16	2020-12-25 10:07:39.281486
239	477	7	23691884	8	445	3	87.99	2020-12-25 10:07:39.281486
240	1	13	363352649	6	58	3	88.48	2020-12-25 10:07:39.281486
241	104	78	37430685	3	41	3	88.96	2020-12-25 10:07:39.281486
242	104	40	296326411	6	170	3	89.16	2020-12-25 10:07:39.281486
243	1	43	51824800	2	364	3	89.32	2020-12-25 10:07:39.281486
244	104	53	359745287	4	448	3	90.53	2020-12-25 10:07:39.281486
245	104	27	423757034	6	2	3	90.64	2020-12-25 10:07:39.281486
246	477	13	213259093	0	116	3	90.68	2020-12-25 10:07:39.281486
247	104	85	216061885	6	52	3	91.03	2020-12-25 10:07:39.281486
248	104	83	78037356	2	278	3	91.19	2020-12-25 10:07:39.281486
249	104	63	359816688	8	417	3	91.48	2020-12-25 10:07:39.281486
250	33	13	391415384	0	352	3	91.77	2020-12-25 10:07:39.281486
251	104	66	13854824	5	229	3	91.87	2020-12-25 10:07:39.281486
252	104	74	377416799	7	172	3	92.46	2020-12-25 10:07:39.281486
253	399	22	76253486	6	390	3	93.80	2020-12-25 10:07:39.281486
254	477	13	263560669	1	250	3	94.12	2020-12-25 10:07:39.281486
255	33	16	348964389	5	70	3	94.29	2020-12-25 10:07:39.281486
256	104	23	139584117	0	31	3	94.39	2020-12-25 10:07:39.281486
257	104	18	150555655	1	152	3	94.85	2020-12-25 10:07:39.281486
258	1	19	78358192	0	491	3	94.89	2020-12-25 10:07:39.281486
259	104	74	196779169	8	81	3	95.06	2020-12-25 10:07:39.281486
260	1	32	109393292	2	149	3	95.06	2020-12-25 10:07:39.281486
261	104	10	343698402	2	450	3	95.19	2020-12-25 10:07:39.281486
262	33	24	142177674	8	308	3	95.26	2020-12-25 10:07:39.281486
263	399	19	366988259	2	57	3	95.86	2020-12-25 10:07:39.281486
264	33	29	105294373	2	350	3	96.34	2020-12-25 10:07:39.281486
265	104	54	418125983	2	362	3	96.43	2020-12-25 10:07:39.281486
266	247	26	327147720	5	67	3	97.04	2020-12-25 10:07:39.281486
267	237	5	333716289	1	426	3	97.08	2020-12-25 10:07:39.281486
268	399	4	89746065	5	12	3	97.80	2020-12-25 10:07:39.281486
269	1	18	257406629	2	126	3	98.23	2020-12-25 10:07:39.281486
270	1	50	267909423	3	382	3	98.58	2020-12-25 10:07:39.281486
271	104	88	46291348	4	296	3	98.61	2020-12-25 10:07:39.281486
272	104	8	114263257	8	275	3	98.85	2020-12-25 10:07:39.281486
273	655	3	310867983	7	110	3	99.09	2020-12-25 10:07:39.281486
274	1	7	168215886	1	156	3	99.12	2020-12-25 10:07:39.281486
275	477	12	135889323	7	354	3	99.16	2020-12-25 10:07:39.281486
276	1	2	400962468	2	348	3	100.09	2020-12-25 10:07:39.281486
277	104	83	51673812	6	395	3	100.39	2020-12-25 10:07:39.281486
278	33	5	328901157	0	23	3	100.50	2020-12-25 10:07:39.281486
279	104	38	137080671	2	299	4	0.02	2020-12-25 10:07:39.281486
280	237	22	229671622	6	271	4	0.04	2020-12-25 10:07:39.281486
281	104	92	221373266	8	30	4	0.08	2020-12-25 10:07:39.281486
282	1	49	364941217	4	139	4	0.09	2020-12-25 10:07:39.281486
283	237	24	304560641	2	24	4	0.19	2020-12-25 10:07:39.281486
284	237	15	341282703	8	484	4	0.20	2020-12-25 10:07:39.281486
285	1	20	133151725	5	330	4	0.24	2020-12-25 10:07:39.281486
286	104	7	103691016	8	290	4	0.28	2020-12-25 10:07:39.281486
287	104	98	332447931	6	246	4	0.34	2020-12-25 10:07:39.281486
288	104	61	291023771	6	433	4	0.39	2020-12-25 10:07:39.281486
289	104	21	229048319	3	333	4	0.41	2020-12-25 10:07:39.281486
290	104	32	408421578	4	482	4	0.48	2020-12-25 10:07:39.281486
291	1	2	409112000	2	289	4	0.50	2020-12-25 10:07:39.281486
292	33	26	15325457	2	435	4	0.53	2020-12-25 10:07:39.281486
293	104	49	282599295	4	325	4	0.54	2020-12-25 10:07:39.281486
294	477	13	137736540	3	99	4	0.71	2020-12-25 10:07:39.281486
295	1	21	358751672	7	181	4	0.74	2020-12-25 10:07:39.281486
296	399	8	12481557	1	41	4	0.76	2020-12-25 10:07:39.281486
297	104	44	16293719	0	401	4	0.78	2020-12-25 10:07:39.281486
298	247	31	143117142	6	245	4	0.79	2020-12-25 10:07:39.281486
299	1	40	200322129	7	408	4	0.82	2020-12-25 10:07:39.281486
300	1	9	59256727	5	339	4	0.83	2020-12-25 10:07:39.281486
301	655	4	311520744	1	409	4	0.83	2020-12-25 10:07:39.281486
302	104	92	89644267	0	7	4	0.88	2020-12-25 10:07:39.281486
303	237	6	125418832	0	112	4	0.89	2020-12-25 10:07:39.281486
304	104	79	357292155	5	281	4	0.89	2020-12-25 10:07:39.281486
305	1	32	109393292	2	149	4	0.89	2020-12-25 10:07:39.281486
306	237	20	108994701	7	391	4	0.99	2020-12-25 10:07:39.281486
307	33	21	409960	1	258	4	0.99	2020-12-25 10:07:39.281486
308	237	19	294600697	0	268	4	1.02	2020-12-25 10:07:39.281486
309	237	8	119892528	3	449	4	1.03	2020-12-25 10:07:39.281486
310	247	16	347866165	6	380	4	1.05	2020-12-25 10:07:39.281486
311	399	11	383975196	8	345	4	1.10	2020-12-25 10:07:39.281486
312	104	40	24048895	8	76	4	1.14	2020-12-25 10:07:39.281486
313	104	74	196779169	8	81	4	1.17	2020-12-25 10:07:39.281486
314	104	14	205133509	6	271	4	1.19	2020-12-25 10:07:39.281486
315	1	44	309470210	6	10	4	1.20	2020-12-25 10:07:39.281486
316	104	82	198969482	2	488	4	1.21	2020-12-25 10:07:39.281486
317	104	44	162980999	7	197	4	1.21	2020-12-25 10:07:39.281486
318	237	27	152607205	4	419	4	1.29	2020-12-25 10:07:39.281486
319	1	42	385435512	4	378	4	1.31	2020-12-25 10:07:39.281486
320	237	7	82065030	7	406	4	1.31	2020-12-25 10:07:39.281486
321	104	73	239350397	1	469	4	1.33	2020-12-25 10:07:39.281486
322	247	16	335655953	1	357	4	1.35	2020-12-25 10:07:39.281486
323	247	35	314354173	0	160	4	1.37	2020-12-25 10:07:39.281486
324	33	8	123157329	3	424	4	1.42	2020-12-25 10:07:39.281486
325	477	8	71822855	0	15	4	1.43	2020-12-25 10:07:39.281486
326	247	16	308257129	6	120	4	1.51	2020-12-25 10:07:39.281486
327	104	40	19477901	5	467	4	1.53	2020-12-25 10:07:39.281486
328	623	3	428795214	8	323	4	1.58	2020-12-25 10:07:39.281486
329	33	25	42648609	2	169	4	1.62	2020-12-25 10:07:39.281486
330	1	46	255503693	6	60	4	1.63	2020-12-25 10:07:39.281486
331	104	40	296326411	6	170	4	1.66	2020-12-25 10:07:39.281486
332	104	30	385276988	1	355	4	1.67	2020-12-25 10:07:39.281486
333	399	5	330794984	6	421	4	1.71	2020-12-25 10:07:39.281486
334	104	67	197457840	4	254	4	1.71	2020-12-25 10:07:39.281486
335	104	57	331149281	0	95	4	1.77	2020-12-25 10:07:39.281486
336	247	27	332622562	7	388	4	1.91	2020-12-25 10:07:39.281486
337	237	5	986103	7	460	4	1.92	2020-12-25 10:07:39.281486
338	104	80	181763720	5	241	4	1.92	2020-12-25 10:07:39.281486
339	104	59	385733919	6	134	4	1.99	2020-12-25 10:07:39.281486
340	104	64	41274465	6	291	4	2.06	2020-12-25 10:07:39.281486
341	1	42	224479925	1	216	4	2.11	2020-12-25 10:07:39.281486
342	104	29	6399999	8	477	4	2.12	2020-12-25 10:07:39.281486
343	247	22	307438756	1	66	4	2.13	2020-12-25 10:07:39.281486
344	477	2	314912566	5	178	4	2.14	2020-12-25 10:07:39.281486
345	247	32	161547674	0	342	4	2.15	2020-12-25 10:07:39.281486
346	399	16	357659616	8	2	4	2.19	2020-12-25 10:07:39.281486
347	247	25	219131727	3	453	4	2.21	2020-12-25 10:07:39.281486
348	104	53	137709482	5	207	4	2.22	2020-12-25 10:07:39.281486
349	104	63	359816688	8	417	1	0.05	2020-12-25 10:07:39.281486
350	399	1	139042757	5	242	1	0.32	2020-12-25 10:07:39.281486
351	33	26	412461021	7	481	1	0.46	2020-12-25 10:07:39.281486
352	477	2	396397360	6	69	1	0.63	2020-12-25 10:07:39.281486
353	655	4	14118439	3	454	1	0.69	2020-12-25 10:07:39.281486
354	247	7	397059706	0	11	1	0.88	2020-12-25 10:07:39.281486
355	104	88	46291348	4	296	1	1.17	2020-12-25 10:07:39.281486
356	104	61	70289877	3	415	1	1.38	2020-12-25 10:07:39.281486
357	247	31	143117142	6	245	1	1.62	2020-12-25 10:07:39.281486
358	33	13	29777566	6	109	1	1.71	2020-12-25 10:07:39.281486
359	237	17	114157983	3	338	1	1.77	2020-12-25 10:07:39.281486
360	237	11	152000542	8	89	1	1.96	2020-12-25 10:07:39.281486
361	1	48	320009446	0	452	1	2.07	2020-12-25 10:07:39.281486
362	104	60	363715579	2	332	1	2.16	2020-12-25 10:07:39.281486
363	247	20	346855259	7	31	1	2.18	2020-12-25 10:07:39.281486
364	1	46	149882870	8	33	1	2.38	2020-12-25 10:07:39.281486
365	247	25	340618593	1	247	1	2.50	2020-12-25 10:07:39.281486
366	1	43	25081812	0	373	1	2.52	2020-12-25 10:07:39.281486
367	477	6	264454988	2	241	1	2.52	2020-12-25 10:07:39.281486
368	104	45	345163727	2	142	1	2.66	2020-12-25 10:07:39.281486
369	104	80	181763720	5	241	1	2.95	2020-12-25 10:07:39.281486
370	104	52	371571641	5	273	1	3.01	2020-12-25 10:07:39.281486
371	104	8	173005519	6	442	1	3.08	2020-12-25 10:07:39.281486
372	104	92	221373266	8	30	1	3.11	2020-12-25 10:07:39.281486
373	1	47	360538154	8	204	1	3.15	2020-12-25 10:07:39.281486
374	237	6	125418832	0	112	1	3.18	2020-12-25 10:07:39.281486
375	399	1	127838726	4	323	1	3.26	2020-12-25 10:07:39.281486
376	399	5	330794984	6	421	1	3.58	2020-12-25 10:07:39.281486
377	104	83	267011504	5	235	1	3.58	2020-12-25 10:07:39.281486
378	104	57	190517389	6	33	1	3.63	2020-12-25 10:07:39.281486
379	104	58	226031949	6	261	1	3.65	2020-12-25 10:07:39.281486
380	104	32	256686740	6	188	1	3.68	2020-12-25 10:07:39.281486
381	247	27	117059620	3	438	1	3.83	2020-12-25 10:07:39.281486
382	104	44	162980999	7	197	1	4.30	2020-12-25 10:07:39.281486
383	399	15	146926500	1	191	1	4.33	2020-12-25 10:07:39.281486
384	247	13	400129089	6	54	1	4.40	2020-12-25 10:07:39.281486
385	33	21	409960	1	258	1	4.57	2020-12-25 10:07:39.281486
386	104	40	19477901	5	467	1	4.57	2020-12-25 10:07:39.281486
387	104	52	156922631	8	179	1	4.71	2020-12-25 10:07:39.281486
388	399	3	19522853	0	473	1	4.78	2020-12-25 10:07:39.281486
389	104	66	161410091	6	256	1	4.79	2020-12-25 10:07:39.281486
390	104	85	216061885	6	52	1	4.82	2020-12-25 10:07:39.281486
391	104	44	329070445	1	62	1	4.83	2020-12-25 10:07:39.281486
392	104	102	394713802	7	254	1	4.92	2020-12-25 10:07:39.281486
393	104	21	229048319	3	333	1	5.22	2020-12-25 10:07:39.281486
394	247	14	244883880	0	266	1	5.28	2020-12-25 10:07:39.281486
395	237	22	392353471	2	297	1	5.29	2020-12-25 10:07:39.281486
396	1	40	125219232	8	85	1	5.42	2020-12-25 10:07:39.281486
397	104	18	150555655	1	152	1	5.48	2020-12-25 10:07:39.281486
398	104	30	163904238	3	361	1	5.55	2020-12-25 10:07:39.281486
399	104	14	205133509	6	271	1	5.85	2020-12-25 10:07:39.281486
400	33	27	59226760	2	8	1	5.92	2020-12-25 10:07:39.281486
401	104	59	297614839	1	26	1	6.31	2020-12-25 10:07:39.281486
402	1	21	358751672	7	181	1	6.31	2020-12-25 10:07:39.281486
403	104	46	214266971	7	209	1	6.34	2020-12-25 10:07:39.281486
404	104	9	219971673	3	64	1	6.43	2020-12-25 10:07:39.281486
405	104	51	159959225	1	446	1	6.60	2020-12-25 10:07:39.281486
406	1	40	200322129	7	408	1	6.71	2020-12-25 10:07:39.281486
407	1	42	224479925	1	216	1	6.72	2020-12-25 10:07:39.281486
408	247	14	314216724	3	17	1	6.77	2020-12-25 10:07:39.281486
409	104	43	339550311	0	280	1	6.93	2020-12-25 10:07:39.281486
410	104	37	133297860	7	232	1	7.38	2020-12-25 10:07:39.281486
411	33	4	323404707	5	155	1	7.41	2020-12-25 10:07:39.281486
412	399	18	57900118	8	190	1	7.59	2020-12-25 10:07:39.281486
413	104	7	57689792	4	396	1	7.71	2020-12-25 10:07:39.281486
414	33	18	16955469	7	259	1	7.81	2020-12-25 10:07:39.281486
415	1	31	1745250	4	200	1	7.87	2020-12-25 10:07:39.281486
416	104	93	60842821	8	210	1	7.91	2020-12-25 10:07:39.281486
417	104	63	21185091	6	301	1	7.98	2020-12-25 10:07:39.281486
418	655	6	135836582	4	316	1	8.28	2020-12-25 10:07:39.281486
419	1	4	414448303	0	328	1	8.44	2020-12-25 10:07:39.281486
420	237	20	311248511	4	321	1	8.53	2020-12-25 10:07:39.281486
421	1	48	88442466	4	92	1	8.57	2020-12-25 10:07:39.281486
422	33	18	432446013	5	263	1	8.70	2020-12-25 10:07:39.281486
423	1	50	267909423	3	382	1	8.78	2020-12-25 10:07:39.281486
424	1	21	260070721	1	135	1	8.86	2020-12-25 10:07:39.281486
425	104	54	418125983	2	362	1	9.28	2020-12-25 10:07:39.281486
426	104	46	120862725	7	28	1	9.51	2020-12-25 10:07:39.281486
427	237	19	294600697	0	268	1	9.52	2020-12-25 10:07:39.281486
428	1	36	1943738	8	79	1	9.70	2020-12-25 10:07:39.281486
429	104	86	273638774	5	404	1	9.75	2020-12-25 10:07:39.281486
430	104	28	107717060	1	40	1	9.81	2020-12-25 10:07:39.281486
431	399	4	81061872	8	318	1	9.82	2020-12-25 10:07:39.281486
432	104	45	98186070	6	356	1	9.86	2020-12-25 10:07:39.281486
433	1	42	385435512	4	378	1	9.90	2020-12-25 10:07:39.281486
434	33	25	178985163	4	466	1	9.99	2020-12-25 10:07:39.281486
435	104	78	37430685	3	41	1	10.06	2020-12-25 10:07:39.281486
436	104	59	385733919	6	134	1	10.12	2020-12-25 10:07:39.281486
437	1	43	19183183	7	83	1	10.15	2020-12-25 10:07:39.281486
438	237	6	68545428	5	20	1	10.39	2020-12-25 10:07:39.281486
439	104	26	209234587	8	455	1	10.41	2020-12-25 10:07:39.281486
440	33	9	52668425	5	98	1	10.76	2020-12-25 10:07:39.281486
441	1	25	293238749	6	274	1	10.81	2020-12-25 10:07:39.281486
442	104	7	103691016	8	290	1	10.82	2020-12-25 10:07:39.281486
443	104	64	278129049	7	319	1	10.99	2020-12-25 10:07:39.281486
444	1	31	162401264	7	147	1	11.08	2020-12-25 10:07:39.281486
445	247	29	15769960	4	118	1	11.16	2020-12-25 10:07:39.281486
446	1	10	11718435	5	182	1	11.81	2020-12-25 10:07:39.281486
447	104	50	44895790	7	383	1	11.85	2020-12-25 10:07:39.281486
448	1	23	431262421	3	143	1	11.94	2020-12-25 10:07:39.281486
449	477	11	373602010	6	236	1	12.22	2020-12-25 10:07:39.281486
450	104	60	360009812	8	292	1	12.65	2020-12-25 10:07:39.281486
451	623	3	249749655	5	35	1	13.01	2020-12-25 10:07:39.281486
452	399	4	281620715	3	146	1	13.25	2020-12-25 10:07:39.281486
453	33	20	147450401	4	189	1	13.25	2020-12-25 10:07:39.281486
454	247	35	359147377	3	34	1	13.33	2020-12-25 10:07:39.281486
455	1	19	288218636	5	205	1	13.58	2020-12-25 10:07:39.281486
456	655	6	423138683	5	96	1	13.64	2020-12-25 10:07:39.281486
457	104	97	370200553	7	475	1	13.81	2020-12-25 10:07:39.281486
458	104	95	292608330	5	476	1	13.96	2020-12-25 10:07:39.281486
459	33	5	246783691	6	199	1	14.03	2020-12-25 10:07:39.281486
460	33	13	391415384	0	352	1	14.12	2020-12-25 10:07:39.281486
461	477	8	71822855	0	15	1	14.20	2020-12-25 10:07:39.281486
462	237	8	291653525	8	13	1	14.21	2020-12-25 10:07:39.281486
463	104	72	31879157	7	213	1	14.58	2020-12-25 10:07:39.281486
464	1	43	141446647	6	447	1	14.59	2020-12-25 10:07:39.281486
465	623	4	203580474	6	306	1	14.59	2020-12-25 10:07:39.281486
466	104	83	78037356	2	278	1	14.80	2020-12-25 10:07:39.281486
467	104	80	342928300	2	97	1	14.95	2020-12-25 10:07:39.281486
468	104	41	372887850	4	463	1	14.98	2020-12-25 10:07:39.281486
469	477	8	145805591	2	397	1	15.10	2020-12-25 10:07:39.281486
470	104	51	390258408	6	32	1	15.25	2020-12-25 10:07:39.281486
471	104	93	26894291	6	410	1	15.28	2020-12-25 10:07:39.281486
472	247	1	251144344	3	131	1	15.28	2020-12-25 10:07:39.281486
473	247	22	321020135	5	326	1	15.62	2020-12-25 10:07:39.281486
474	104	89	392611601	1	407	1	15.70	2020-12-25 10:07:39.281486
475	1	5	225616342	3	119	1	15.92	2020-12-25 10:07:39.281486
476	104	2	10676972	4	302	1	15.93	2020-12-25 10:07:39.281486
477	33	11	215478290	0	334	1	16.05	2020-12-25 10:07:39.281486
478	237	2	304599744	5	25	1	16.07	2020-12-25 10:07:39.281486
479	1	41	110763269	6	55	1	16.24	2020-12-25 10:07:39.281486
480	104	11	7374585	5	358	1	16.42	2020-12-25 10:07:39.281486
481	104	94	119535816	0	319	1	16.44	2020-12-25 10:07:39.281486
482	33	16	348964389	5	70	1	16.49	2020-12-25 10:07:39.281486
483	655	7	375479909	2	418	1	16.53	2020-12-25 10:07:39.281486
484	104	34	358212114	6	264	1	16.70	2020-12-25 10:07:39.281486
485	104	73	239350397	1	469	1	16.74	2020-12-25 10:07:39.281486
486	399	11	336371340	0	298	1	16.77	2020-12-25 10:07:39.281486
487	104	4	348850672	0	48	1	16.89	2020-12-25 10:07:39.281486
488	104	2	19174386	8	395	1	16.98	2020-12-25 10:07:39.281486
489	237	2	16015656	0	307	1	16.99	2020-12-25 10:07:39.281486
490	477	13	239033258	0	329	1	17.04	2020-12-25 10:07:39.281486
491	1	22	427367751	7	492	1	17.30	2020-12-25 10:07:39.281486
492	1	36	254359402	7	326	1	17.34	2020-12-25 10:07:39.281486
493	237	27	152607205	4	419	1	17.51	2020-12-25 10:07:39.281486
494	399	6	74138712	7	175	1	17.53	2020-12-25 10:07:39.281486
495	247	25	219131727	3	453	1	17.83	2020-12-25 10:07:39.281486
496	33	2	369267539	0	46	1	17.84	2020-12-25 10:07:39.281486
497	104	94	94715990	6	411	1	17.98	2020-12-25 10:07:39.281486
498	104	74	196779169	8	81	1	18.12	2020-12-25 10:07:39.281486
499	1	43	51824800	2	364	1	18.23	2020-12-25 10:07:39.281486
500	237	8	29358466	0	180	1	18.26	2020-12-25 10:07:39.281486
501	33	20	334808963	7	343	1	18.42	2020-12-25 10:07:39.281486
502	104	99	272266794	3	227	1	18.63	2020-12-25 10:07:39.281486
503	33	16	374955132	8	121	1	18.67	2020-12-25 10:07:39.281486
504	33	11	291972848	4	226	1	18.90	2020-12-25 10:07:39.281486
505	399	22	307348526	2	374	1	19.30	2020-12-25 10:07:39.281486
506	1	20	133151725	5	330	1	19.31	2020-12-25 10:07:39.281486
507	104	15	25338387	5	497	1	19.32	2020-12-25 10:07:39.281486
508	247	17	284146067	6	36	1	19.34	2020-12-25 10:07:39.281486
509	247	9	109042865	5	122	1	19.37	2020-12-25 10:07:39.281486
510	104	39	339694786	1	384	1	19.39	2020-12-25 10:07:39.281486
511	1	18	146124300	0	287	1	19.45	2020-12-25 10:07:39.281486
512	237	5	333716289	1	426	1	19.49	2020-12-25 10:07:39.281486
513	33	15	295186051	0	77	1	19.56	2020-12-25 10:07:39.281486
514	399	11	383975196	8	345	1	19.62	2020-12-25 10:07:39.281486
515	104	59	384760621	4	347	1	19.64	2020-12-25 10:07:39.281486
516	104	82	111676611	2	389	1	19.75	2020-12-25 10:07:39.281486
517	104	96	138946166	1	423	1	20.39	2020-12-25 10:07:39.281486
518	237	3	215637901	0	262	1	20.70	2020-12-25 10:07:39.281486
519	247	8	240285900	7	310	1	20.73	2020-12-25 10:07:39.281486
520	104	94	26116054	4	461	1	20.93	2020-12-25 10:07:39.281486
521	1	4	11857381	6	240	1	21.12	2020-12-25 10:07:39.281486
522	655	5	60980709	5	468	1	21.93	2020-12-25 10:07:39.281486
523	247	12	424343051	0	280	1	21.97	2020-12-25 10:07:39.281486
524	1	9	402464325	6	88	1	22.15	2020-12-25 10:07:39.281486
525	1	36	170063359	2	70	1	22.37	2020-12-25 10:07:39.281486
526	33	13	53087598	4	238	1	22.41	2020-12-25 10:07:39.281486
527	247	4	276108961	3	137	1	22.56	2020-12-25 10:07:39.281486
528	104	83	51673812	6	395	1	22.85	2020-12-25 10:07:39.281486
529	247	28	280523875	6	390	1	23.19	2020-12-25 10:07:39.281486
530	33	6	181371673	7	187	1	23.55	2020-12-25 10:07:39.281486
531	104	31	176000826	7	109	1	23.68	2020-12-25 10:07:39.281486
532	104	3	239890161	3	194	1	23.74	2020-12-25 10:07:39.281486
533	1	26	93598696	7	399	1	23.93	2020-12-25 10:07:39.281486
534	104	67	258044064	4	212	1	24.16	2020-12-25 10:07:39.281486
535	104	57	383463676	0	59	1	24.26	2020-12-25 10:07:39.281486
536	477	12	53696318	6	161	1	24.26	2020-12-25 10:07:39.281486
537	104	58	106703716	7	295	1	24.29	2020-12-25 10:07:39.281486
538	104	89	148739669	5	185	1	24.33	2020-12-25 10:07:39.281486
539	1	20	271352669	7	429	1	24.34	2020-12-25 10:07:39.281486
540	33	29	267312285	4	205	1	24.38	2020-12-25 10:07:39.281486
541	247	35	357719152	2	45	1	24.39	2020-12-25 10:07:39.281486
542	477	12	188340066	0	283	1	24.43	2020-12-25 10:07:39.281486
543	104	42	325666566	1	71	1	24.79	2020-12-25 10:07:39.281486
544	247	1	430754320	4	44	1	24.80	2020-12-25 10:07:39.281486
545	399	2	296732505	5	61	1	24.82	2020-12-25 10:07:39.281486
546	1	5	371047745	5	379	1	24.96	2020-12-25 10:07:39.281486
547	33	8	123157329	3	424	1	24.96	2020-12-25 10:07:39.281486
548	1	46	193473237	0	324	1	25.15	2020-12-25 10:07:39.281486
549	104	66	282349288	4	125	1	25.33	2020-12-25 10:07:39.281486
550	33	2	152303325	3	433	1	25.34	2020-12-25 10:07:39.281486
551	104	42	72462928	6	486	1	25.46	2020-12-25 10:07:39.281486
552	33	29	342936889	2	499	1	25.48	2020-12-25 10:07:39.281486
553	104	38	137080671	2	299	1	25.48	2020-12-25 10:07:39.281486
554	104	15	101854984	2	402	1	25.94	2020-12-25 10:07:39.281486
555	104	11	242717839	5	37	1	26.04	2020-12-25 10:07:39.281486
556	104	76	177198655	5	228	1	26.10	2020-12-25 10:07:39.281486
557	247	3	339616064	3	243	1	26.14	2020-12-25 10:07:39.281486
558	1	38	14429544	3	22	1	26.20	2020-12-25 10:07:39.281486
559	104	12	224859865	0	122	1	26.50	2020-12-25 10:07:39.281486
560	104	75	167859094	0	67	1	26.63	2020-12-25 10:07:39.281486
561	247	21	414322296	5	346	1	26.98	2020-12-25 10:07:39.281486
562	247	7	15822670	1	104	1	27.34	2020-12-25 10:07:39.281486
563	1	23	22261025	8	412	1	27.43	2020-12-25 10:07:39.281486
564	33	21	212102682	8	414	1	27.44	2020-12-25 10:07:39.281486
565	247	29	366490642	2	500	1	27.59	2020-12-25 10:07:39.281486
566	655	4	292888275	0	49	1	27.64	2020-12-25 10:07:39.281486
567	104	71	332346818	0	3	1	27.81	2020-12-25 10:07:39.281486
568	104	12	203989772	8	65	1	28.12	2020-12-25 10:07:39.281486
569	399	16	357659616	8	2	1	28.15	2020-12-25 10:07:39.281486
570	104	53	359745287	4	448	1	28.20	2020-12-25 10:07:39.281486
571	1	47	352794091	5	430	1	28.58	2020-12-25 10:07:39.281486
572	247	5	4342689	0	498	1	28.66	2020-12-25 10:07:39.281486
573	1	18	281590938	4	441	1	28.78	2020-12-25 10:07:39.281486
574	477	10	397364750	0	265	1	28.79	2020-12-25 10:07:39.281486
575	33	24	323969502	4	479	1	28.81	2020-12-25 10:07:39.281486
576	104	38	366304544	5	222	1	28.82	2020-12-25 10:07:39.281486
577	237	1	233342431	4	295	1	28.94	2020-12-25 10:07:39.281486
578	237	16	87859333	3	337	1	29.03	2020-12-25 10:07:39.281486
579	237	14	352854329	3	73	1	29.06	2020-12-25 10:07:39.281486
580	623	3	428795214	8	323	1	29.12	2020-12-25 10:07:39.281486
581	399	1	253070359	2	77	1	29.25	2020-12-25 10:07:39.281486
582	237	14	410502527	1	132	1	29.35	2020-12-25 10:07:39.281486
583	237	28	345939483	1	184	1	29.42	2020-12-25 10:07:39.281486
584	33	23	385646699	4	128	1	29.53	2020-12-25 10:07:39.281486
585	1	13	363352649	6	58	1	29.54	2020-12-25 10:07:39.281486
586	1	49	364941217	4	139	1	29.68	2020-12-25 10:07:39.281486
587	104	34	167691573	0	253	1	29.87	2020-12-25 10:07:39.281486
588	104	28	404814467	0	408	1	29.89	2020-12-25 10:07:39.281486
589	104	47	132822257	7	458	1	29.91	2020-12-25 10:07:39.281486
590	104	83	96295332	5	115	1	29.99	2020-12-25 10:07:39.281486
591	399	10	98305027	8	288	1	30.11	2020-12-25 10:07:39.281486
592	104	42	116265008	4	381	1	30.39	2020-12-25 10:07:39.281486
593	104	71	215743932	0	450	1	30.39	2020-12-25 10:07:39.281486
594	104	66	13854824	5	229	1	30.53	2020-12-25 10:07:39.281486
595	1	42	57155380	2	377	1	30.64	2020-12-25 10:07:39.281486
596	104	94	290489730	3	293	1	30.70	2020-12-25 10:07:39.281486
597	104	74	377416799	7	172	1	30.77	2020-12-25 10:07:39.281486
598	1	45	373891103	1	351	1	31.10	2020-12-25 10:07:39.281486
599	104	15	227768696	8	341	1	31.33	2020-12-25 10:07:39.281486
600	1	34	94832614	5	244	1	31.72	2020-12-25 10:07:39.281486
601	247	27	332622562	7	388	1	31.72	2020-12-25 10:07:39.281486
602	1	12	343925259	8	56	1	31.79	2020-12-25 10:07:39.281486
603	104	32	408421578	4	482	1	32.05	2020-12-25 10:07:39.281486
604	655	1	172434281	2	82	1	32.50	2020-12-25 10:07:39.281486
605	104	92	89644267	0	7	1	32.54	2020-12-25 10:07:39.281486
606	237	8	179093455	3	249	1	32.65	2020-12-25 10:07:39.281486
607	33	15	131039705	4	214	1	33.18	2020-12-25 10:07:39.281486
608	1	24	147091146	5	349	1	33.21	2020-12-25 10:07:39.281486
609	104	66	71561595	5	439	1	33.44	2020-12-25 10:07:39.281486
610	237	5	986103	7	460	1	33.90	2020-12-25 10:07:39.281486
611	1	47	402884846	7	286	1	33.93	2020-12-25 10:07:39.281486
612	104	57	618414	1	325	1	34.02	2020-12-25 10:07:39.281486
613	104	39	58862980	2	114	1	34.04	2020-12-25 10:07:39.281486
614	33	19	297332461	0	409	1	34.05	2020-12-25 10:07:39.281486
615	104	79	185944483	8	154	1	34.08	2020-12-25 10:07:39.281486
616	104	72	237416846	0	285	1	34.12	2020-12-25 10:07:39.281486
617	399	5	109408088	5	231	1	34.17	2020-12-25 10:07:39.281486
618	247	30	424222306	8	208	1	34.36	2020-12-25 10:07:39.281486
619	104	79	357292155	5	281	1	34.42	2020-12-25 10:07:39.281486
620	237	26	22728113	7	151	1	34.43	2020-12-25 10:07:39.281486
621	104	52	81050224	0	105	1	34.64	2020-12-25 10:07:39.281486
622	104	64	21568237	3	39	1	34.69	2020-12-25 10:07:39.281486
623	247	2	305145937	8	369	1	34.70	2020-12-25 10:07:39.281486
624	399	8	123066776	5	183	1	34.93	2020-12-25 10:07:39.281486
625	104	33	392493434	6	117	1	35.02	2020-12-25 10:07:39.281486
626	399	12	238033050	3	370	1	35.03	2020-12-25 10:07:39.281486
627	104	60	269892240	7	206	1	35.12	2020-12-25 10:07:39.281486
628	237	14	115584880	1	161	1	35.31	2020-12-25 10:07:39.281486
629	247	13	32823517	1	313	1	35.31	2020-12-25 10:07:39.281486
630	104	7	278629263	4	176	1	35.31	2020-12-25 10:07:39.281486
631	247	16	347866165	6	380	1	35.35	2020-12-25 10:07:39.281486
632	477	7	147843646	4	413	1	35.52	2020-12-25 10:07:39.281486
633	399	22	199169029	0	201	1	35.59	2020-12-25 10:07:39.281486
634	104	11	362325544	4	135	1	35.67	2020-12-25 10:07:39.281486
635	477	4	305267511	3	478	1	35.79	2020-12-25 10:07:39.281486
636	104	55	161995280	8	472	1	36.44	2020-12-25 10:07:39.281486
637	104	63	419927856	3	432	1	36.54	2020-12-25 10:07:39.281486
638	33	1	394141331	1	164	1	36.75	2020-12-25 10:07:39.281486
639	33	22	431731035	2	84	1	36.80	2020-12-25 10:07:39.281486
640	104	96	316578434	6	490	1	36.80	2020-12-25 10:07:39.281486
641	1	43	312081481	6	400	1	36.92	2020-12-25 10:07:39.281486
642	477	2	314912566	5	178	1	36.93	2020-12-25 10:07:39.281486
643	237	1	282639475	4	171	1	37.04	2020-12-25 10:07:39.281486
644	104	77	384674782	6	344	1	37.08	2020-12-25 10:07:39.281486
645	247	34	50046444	8	198	1	37.13	2020-12-25 10:07:39.281486
646	104	70	182514182	1	243	1	37.19	2020-12-25 10:07:39.281486
647	1	35	281833930	4	251	1	37.34	2020-12-25 10:07:39.281486
648	237	8	329523173	7	153	1	37.40	2020-12-25 10:07:39.281486
649	247	17	120831779	6	230	1	37.42	2020-12-25 10:07:39.281486
650	399	1	378889628	6	366	1	37.61	2020-12-25 10:07:39.281486
651	33	6	369692311	6	303	1	37.93	2020-12-25 10:07:39.281486
652	237	17	157574169	5	127	1	38.07	2020-12-25 10:07:39.281486
653	237	19	14767465	2	284	1	38.46	2020-12-25 10:07:39.281486
654	237	19	184481231	5	392	1	38.82	2020-12-25 10:07:39.281486
655	104	88	92658814	4	315	1	38.93	2020-12-25 10:07:39.281486
656	247	2	201484438	0	32	1	39.42	2020-12-25 10:07:39.281486
657	477	13	45021305	5	353	1	39.63	2020-12-25 10:07:39.281486
658	104	10	343698402	2	450	1	39.70	2020-12-25 10:07:39.281486
659	104	98	332447931	6	246	1	39.76	2020-12-25 10:07:39.281486
660	104	8	114263257	8	275	1	39.88	2020-12-25 10:07:39.281486
661	399	21	238231361	4	279	1	40.17	2020-12-25 10:07:39.281486
662	33	24	142177674	8	308	1	40.29	2020-12-25 10:07:39.281486
663	477	16	106523513	8	463	1	40.32	2020-12-25 10:07:39.281486
664	399	20	305117207	0	117	1	40.32	2020-12-25 10:07:39.281486
665	1	42	271203609	8	394	1	40.36	2020-12-25 10:07:39.281486
666	104	34	401129052	2	440	1	40.50	2020-12-25 10:07:39.281486
667	104	24	44294555	7	495	1	40.53	2020-12-25 10:07:39.281486
668	237	15	341282703	8	484	1	40.66	2020-12-25 10:07:39.281486
669	104	73	372106632	3	422	2	0.29	2020-12-25 10:07:39.281486
670	1	43	25081812	0	373	2	0.33	2020-12-25 10:07:39.281486
671	655	4	14118439	3	454	2	0.48	2020-12-25 10:07:39.281486
672	104	83	51673812	6	395	2	1.25	2020-12-25 10:07:39.281486
673	104	65	241144408	8	252	2	1.29	2020-12-25 10:07:39.281486
674	1	27	153273940	8	365	2	1.30	2020-12-25 10:07:39.281486
675	247	7	397059706	0	11	2	1.46	2020-12-25 10:07:39.281486
676	33	22	300804522	7	420	2	1.84	2020-12-25 10:07:39.281486
677	104	66	13854824	5	229	2	2.18	2020-12-25 10:07:39.281486
678	104	89	202584093	3	363	2	2.41	2020-12-25 10:07:39.281486
679	247	16	308257129	6	120	2	2.52	2020-12-25 10:07:39.281486
680	104	77	315515906	2	312	2	2.85	2020-12-25 10:07:39.281486
681	33	12	403377721	3	368	2	2.90	2020-12-25 10:07:39.281486
682	247	27	117059620	3	438	2	3.26	2020-12-25 10:07:39.281486
683	399	11	336371340	0	298	2	3.74	2020-12-25 10:07:39.281486
684	237	1	282639475	4	171	2	3.79	2020-12-25 10:07:39.281486
685	1	19	319089332	7	494	2	3.82	2020-12-25 10:07:39.281486
686	237	19	294600697	0	268	2	3.84	2020-12-25 10:07:39.281486
687	399	19	366988259	2	57	2	4.02	2020-12-25 10:07:39.281486
688	33	29	135452660	5	159	2	4.04	2020-12-25 10:07:39.281486
689	1	50	267909423	3	382	2	4.30	2020-12-25 10:07:39.281486
690	247	4	276108961	3	137	2	4.38	2020-12-25 10:07:39.281486
691	399	16	357659616	8	2	2	4.50	2020-12-25 10:07:39.281486
692	623	3	249749655	5	35	2	4.50	2020-12-25 10:07:39.281486
693	104	71	332346818	0	3	2	4.57	2020-12-25 10:07:39.281486
694	1	6	193291495	2	282	2	4.69	2020-12-25 10:07:39.281486
695	1	44	234700334	4	320	2	4.76	2020-12-25 10:07:39.281486
696	104	5	2681146	7	19	2	4.98	2020-12-25 10:07:39.281486
697	104	26	209234587	8	455	2	5.34	2020-12-25 10:07:39.281486
698	104	40	273600731	3	50	2	5.60	2020-12-25 10:07:39.281486
699	1	49	364941217	4	139	2	5.80	2020-12-25 10:07:39.281486
700	104	77	384674782	6	344	2	5.84	2020-12-25 10:07:39.281486
701	247	12	278633277	7	177	2	6.07	2020-12-25 10:07:39.281486
702	104	74	196779169	8	81	2	6.19	2020-12-25 10:07:39.281486
703	104	94	290489730	3	293	2	6.29	2020-12-25 10:07:39.281486
704	33	1	27027541	4	221	2	6.37	2020-12-25 10:07:39.281486
705	104	70	182514182	1	243	2	6.42	2020-12-25 10:07:39.281486
706	104	39	58862980	2	114	2	6.59	2020-12-25 10:07:39.281486
707	33	5	328901157	0	23	2	6.75	2020-12-25 10:07:39.281486
708	237	2	304599744	5	25	2	6.81	2020-12-25 10:07:39.281486
709	237	16	131349549	7	165	2	7.13	2020-12-25 10:07:39.281486
710	104	79	185944483	8	154	2	7.13	2020-12-25 10:07:39.281486
711	247	2	99943025	7	88	2	7.19	2020-12-25 10:07:39.281486
712	1	42	271203609	8	394	2	7.20	2020-12-25 10:07:39.281486
713	1	40	125219232	8	85	2	7.21	2020-12-25 10:07:39.281486
714	237	7	269069867	2	218	2	7.57	2020-12-25 10:07:39.281486
715	247	1	430754320	4	44	2	7.69	2020-12-25 10:07:39.281486
716	1	12	343925259	8	56	2	7.75	2020-12-25 10:07:39.281486
717	399	22	76253486	6	390	2	7.99	2020-12-25 10:07:39.281486
718	477	12	53696318	6	161	2	7.99	2020-12-25 10:07:39.281486
719	1	25	293238749	6	274	2	8.32	2020-12-25 10:07:39.281486
720	477	8	145805591	2	397	2	8.35	2020-12-25 10:07:39.281486
721	237	28	345939483	1	184	2	8.37	2020-12-25 10:07:39.281486
722	477	7	23691884	8	445	2	8.52	2020-12-25 10:07:39.281486
723	104	8	310329511	7	94	2	8.57	2020-12-25 10:07:39.281486
724	104	90	187035200	8	472	2	8.60	2020-12-25 10:07:39.281486
725	399	19	343019537	2	42	2	8.95	2020-12-25 10:07:39.281486
726	399	8	123066776	5	183	2	9.12	2020-12-25 10:07:39.281486
727	399	19	25574239	0	480	2	9.21	2020-12-25 10:07:39.281486
728	104	45	262817224	4	255	2	9.29	2020-12-25 10:07:39.281486
729	399	3	78052423	7	428	2	9.46	2020-12-25 10:07:39.281486
730	247	24	386436835	3	239	2	9.55	2020-12-25 10:07:39.281486
731	104	3	398389701	8	106	2	9.60	2020-12-25 10:07:39.281486
732	399	3	308188397	7	21	2	9.64	2020-12-25 10:07:39.281486
733	104	67	197457840	4	254	2	9.82	2020-12-25 10:07:39.281486
734	477	4	305267511	3	478	2	9.88	2020-12-25 10:07:39.281486
735	33	19	53306245	5	371	2	10.05	2020-12-25 10:07:39.281486
736	33	25	262245541	4	111	2	10.05	2020-12-25 10:07:39.281486
737	477	13	239033258	0	329	2	10.33	2020-12-25 10:07:39.281486
738	1	26	93598696	7	399	2	10.49	2020-12-25 10:07:39.281486
739	1	46	149882870	8	33	2	11.08	2020-12-25 10:07:39.281486
740	104	83	78037356	2	278	2	11.16	2020-12-25 10:07:39.281486
741	104	40	24048895	8	76	2	11.17	2020-12-25 10:07:39.281486
742	104	12	255958283	5	485	2	11.44	2020-12-25 10:07:39.281486
743	399	8	12481557	1	41	2	11.67	2020-12-25 10:07:39.281486
744	247	34	50046444	8	198	2	11.99	2020-12-25 10:07:39.281486
745	399	1	378889628	6	366	2	12.02	2020-12-25 10:07:39.281486
746	104	59	384760621	4	347	2	12.46	2020-12-25 10:07:39.281486
747	247	27	373415894	7	186	2	12.58	2020-12-25 10:07:39.281486
748	399	5	109408088	5	231	2	12.60	2020-12-25 10:07:39.281486
749	104	58	226031949	6	261	2	12.82	2020-12-25 10:07:39.281486
750	1	28	284779153	0	215	2	13.00	2020-12-25 10:07:39.281486
751	477	10	301678419	2	75	2	13.02	2020-12-25 10:07:39.281486
752	237	15	341282703	8	484	2	13.17	2020-12-25 10:07:39.281486
753	1	39	319852908	3	336	2	13.18	2020-12-25 10:07:39.281486
754	1	9	59256727	5	339	2	13.26	2020-12-25 10:07:39.281486
755	33	16	374955132	8	121	2	13.30	2020-12-25 10:07:39.281486
756	477	8	71822855	0	15	2	13.57	2020-12-25 10:07:39.281486
757	104	28	367385521	2	267	2	13.60	2020-12-25 10:07:39.281486
758	104	39	339694786	1	384	2	13.87	2020-12-25 10:07:39.281486
759	399	1	127838726	4	323	2	13.91	2020-12-25 10:07:39.281486
760	477	13	45021305	5	353	2	13.93	2020-12-25 10:07:39.281486
761	247	29	15769960	4	118	2	14.17	2020-12-25 10:07:39.281486
762	1	5	15140549	8	331	2	14.29	2020-12-25 10:07:39.281486
763	477	16	106523513	8	463	2	14.41	2020-12-25 10:07:39.281486
764	1	20	158562267	0	136	2	14.43	2020-12-25 10:07:39.281486
765	247	7	15822670	1	104	2	14.54	2020-12-25 10:07:39.281486
766	1	29	353286653	8	360	2	14.56	2020-12-25 10:07:39.281486
767	655	4	267269132	5	327	2	14.78	2020-12-25 10:07:39.281486
768	237	13	64146061	0	63	2	15.01	2020-12-25 10:07:39.281486
769	104	57	423488548	1	443	2	15.21	2020-12-25 10:07:39.281486
770	1	41	110763269	6	55	2	15.53	2020-12-25 10:07:39.281486
771	237	6	125418832	0	112	2	15.69	2020-12-25 10:07:39.281486
772	237	1	233342431	4	295	2	15.71	2020-12-25 10:07:39.281486
773	1	9	402464325	6	88	2	15.81	2020-12-25 10:07:39.281486
774	399	4	81061872	8	318	2	15.93	2020-12-25 10:07:39.281486
775	33	1	394141331	1	164	2	16.07	2020-12-25 10:07:39.281486
776	104	55	161995280	8	472	2	16.30	2020-12-25 10:07:39.281486
777	104	4	363866700	4	87	2	16.39	2020-12-25 10:07:39.281486
778	477	6	264454988	2	241	2	16.61	2020-12-25 10:07:39.281486
779	1	35	278539794	3	416	2	16.82	2020-12-25 10:07:39.281486
780	1	42	385435512	4	378	2	16.83	2020-12-25 10:07:39.281486
781	1	35	99457920	7	47	2	17.07	2020-12-25 10:07:39.281486
782	247	14	244883880	0	266	2	17.10	2020-12-25 10:07:39.281486
783	104	66	71561595	5	439	2	17.58	2020-12-25 10:07:39.281486
784	33	26	412461021	7	481	2	17.86	2020-12-25 10:07:39.281486
785	104	39	5446986	4	102	2	17.94	2020-12-25 10:07:39.281486
786	104	33	329711671	1	339	2	17.94	2020-12-25 10:07:39.281486
787	104	82	111676611	2	389	2	18.07	2020-12-25 10:07:39.281486
788	33	19	297332461	0	409	2	18.19	2020-12-25 10:07:39.281486
789	247	28	212268745	2	141	2	18.65	2020-12-25 10:07:39.281486
790	33	15	269295123	4	405	2	18.76	2020-12-25 10:07:39.281486
791	1	3	198474553	7	376	2	18.77	2020-12-25 10:07:39.281486
792	104	64	41274465	6	291	2	18.83	2020-12-25 10:07:39.281486
793	104	32	256686740	6	188	2	18.90	2020-12-25 10:07:39.281486
794	247	22	321020135	5	326	2	19.00	2020-12-25 10:07:39.281486
795	655	6	423138683	5	96	2	19.27	2020-12-25 10:07:39.281486
796	1	19	288218636	5	205	2	19.28	2020-12-25 10:07:39.281486
797	247	9	109042865	5	122	2	19.30	2020-12-25 10:07:39.281486
798	1	40	200322129	7	408	2	19.49	2020-12-25 10:07:39.281486
799	237	19	14767465	2	284	2	19.55	2020-12-25 10:07:39.281486
800	33	18	432446013	5	263	2	19.67	2020-12-25 10:07:39.281486
801	1	5	371047745	5	379	2	19.68	2020-12-25 10:07:39.281486
802	33	5	229504949	1	133	2	20.53	2020-12-25 10:07:39.281486
803	1	43	19183183	7	83	2	20.59	2020-12-25 10:07:39.281486
804	477	12	143928549	0	431	2	20.76	2020-12-25 10:07:39.281486
805	399	8	343680986	0	101	2	20.80	2020-12-25 10:07:39.281486
806	1	36	170063359	2	70	2	20.89	2020-12-25 10:07:39.281486
807	237	19	138328967	0	489	2	21.49	2020-12-25 10:07:39.281486
808	33	19	60336965	5	116	2	21.53	2020-12-25 10:07:39.281486
809	104	102	394713802	7	254	2	21.63	2020-12-25 10:07:39.281486
810	104	79	357292155	5	281	2	21.68	2020-12-25 10:07:39.281486
811	33	15	295186051	0	77	2	21.95	2020-12-25 10:07:39.281486
812	1	38	14429544	3	22	2	22.28	2020-12-25 10:07:39.281486
813	655	4	389233085	3	276	2	22.31	2020-12-25 10:07:39.281486
814	104	52	371571641	5	273	2	22.35	2020-12-25 10:07:39.281486
815	247	28	280523875	6	390	2	22.57	2020-12-25 10:07:39.281486
816	104	72	96562416	8	484	2	22.95	2020-12-25 10:07:39.281486
817	104	96	346098925	3	157	2	23.20	2020-12-25 10:07:39.281486
818	104	102	60756551	5	195	2	23.29	2020-12-25 10:07:39.281486
819	477	1	424527622	3	16	2	23.29	2020-12-25 10:07:39.281486
820	104	58	106703716	7	295	2	23.40	2020-12-25 10:07:39.281486
821	655	1	228315155	5	251	2	23.91	2020-12-25 10:07:39.281486
822	247	2	305145937	8	369	2	24.51	2020-12-25 10:07:39.281486
823	104	81	14949625	3	493	2	24.71	2020-12-25 10:07:39.281486
824	104	12	203989772	8	65	2	24.76	2020-12-25 10:07:39.281486
825	399	3	402204855	1	203	2	25.03	2020-12-25 10:07:39.281486
826	104	59	348334224	2	234	2	25.06	2020-12-25 10:07:39.281486
827	104	50	44895790	7	383	2	25.23	2020-12-25 10:07:39.281486
828	237	3	215637901	0	262	2	25.27	2020-12-25 10:07:39.281486
829	104	11	242717839	5	37	2	25.52	2020-12-25 10:07:39.281486
830	104	68	81705121	3	81	2	25.58	2020-12-25 10:07:39.281486
831	655	4	292888275	0	49	2	25.98	2020-12-25 10:07:39.281486
832	399	3	19522853	0	473	2	26.24	2020-12-25 10:07:39.281486
833	1	29	262879112	2	78	2	26.30	2020-12-25 10:07:39.281486
834	247	35	314354173	0	160	2	26.30	2020-12-25 10:07:39.281486
835	104	64	21568237	3	39	2	26.33	2020-12-25 10:07:39.281486
836	237	25	336251546	0	491	2	26.92	2020-12-25 10:07:39.281486
837	1	35	284810999	8	144	2	27.10	2020-12-25 10:07:39.281486
838	237	12	389930193	0	210	2	27.59	2020-12-25 10:07:39.281486
839	104	39	321331703	6	163	2	27.63	2020-12-25 10:07:39.281486
840	104	11	7374585	5	358	2	27.75	2020-12-25 10:07:39.281486
841	104	4	348850672	0	48	2	27.78	2020-12-25 10:07:39.281486
842	104	83	267011504	5	235	2	27.89	2020-12-25 10:07:39.281486
843	237	6	68545428	5	20	2	28.03	2020-12-25 10:07:39.281486
844	237	20	311248511	4	321	2	28.29	2020-12-25 10:07:39.281486
845	104	45	98186070	6	356	2	28.46	2020-12-25 10:07:39.281486
846	104	15	25338387	5	497	2	28.80	2020-12-25 10:07:39.281486
847	1	22	427367751	7	492	2	29.17	2020-12-25 10:07:39.281486
848	33	4	323404707	5	155	2	29.24	2020-12-25 10:07:39.281486
849	104	90	296604792	5	465	2	29.36	2020-12-25 10:07:39.281486
850	1	42	57155380	2	377	2	29.97	2020-12-25 10:07:39.281486
851	104	51	390258408	6	32	2	30.17	2020-12-25 10:07:39.281486
852	247	35	357719152	2	45	2	30.20	2020-12-25 10:07:39.281486
853	1	32	109393292	2	149	2	30.27	2020-12-25 10:07:39.281486
854	104	54	418125983	2	362	2	30.44	2020-12-25 10:07:39.281486
855	1	21	358751672	7	181	2	30.86	2020-12-25 10:07:39.281486
856	104	49	282599295	4	325	2	30.93	2020-12-25 10:07:39.281486
857	104	94	94715990	6	411	2	31.05	2020-12-25 10:07:39.281486
858	1	17	127918587	3	9	2	31.11	2020-12-25 10:07:39.281486
859	237	8	291653525	8	13	2	31.29	2020-12-25 10:07:39.281486
860	1	42	306928356	3	317	2	31.38	2020-12-25 10:07:39.281486
861	104	71	215743932	0	450	2	31.48	2020-12-25 10:07:39.281486
862	247	31	146281797	0	489	2	31.57	2020-12-25 10:07:39.281486
863	1	45	224478822	2	148	2	31.86	2020-12-25 10:07:39.281486
864	247	25	219131727	3	453	2	32.50	2020-12-25 10:07:39.281486
865	104	60	360009812	8	292	2	32.51	2020-12-25 10:07:39.281486
866	104	18	150555655	1	152	2	32.66	2020-12-25 10:07:39.281486
867	104	59	385733919	6	134	2	32.69	2020-12-25 10:07:39.281486
868	104	77	222531385	7	53	2	33.17	2020-12-25 10:07:39.281486
869	1	22	212379546	3	427	2	33.21	2020-12-25 10:07:39.281486
870	1	47	352794091	5	430	2	33.36	2020-12-25 10:07:39.281486
871	33	13	29777566	6	109	2	33.53	2020-12-25 10:07:39.281486
872	247	32	161547674	0	342	2	33.71	2020-12-25 10:07:39.281486
873	104	44	162980999	7	197	2	33.90	2020-12-25 10:07:39.281486
874	1	31	1745250	4	200	2	34.05	2020-12-25 10:07:39.281486
875	399	21	238231361	4	279	2	34.24	2020-12-25 10:07:39.281486
876	247	2	201484438	0	32	2	34.28	2020-12-25 10:07:39.281486
877	104	85	368241711	8	140	2	34.31	2020-12-25 10:07:39.281486
878	1	45	81611528	0	385	2	34.89	2020-12-25 10:07:39.281486
879	399	8	112819583	7	124	2	35.43	2020-12-25 10:07:39.281486
880	247	30	424222306	8	208	2	35.97	2020-12-25 10:07:39.281486
881	1	36	1943738	8	79	2	36.10	2020-12-25 10:07:39.281486
882	477	14	389148864	1	244	2	36.32	2020-12-25 10:07:39.281486
883	104	38	366304544	5	222	2	36.55	2020-12-25 10:07:39.281486
884	237	29	408009128	0	184	2	36.61	2020-12-25 10:07:39.281486
885	33	29	105294373	2	350	2	36.62	2020-12-25 10:07:39.281486
886	1	40	243591934	8	257	2	36.63	2020-12-25 10:07:39.281486
887	237	22	392353471	2	297	2	37.03	2020-12-25 10:07:39.281486
888	104	5	162814876	8	322	2	37.32	2020-12-25 10:07:39.281486
889	33	9	52668425	5	98	2	37.32	2020-12-25 10:07:39.281486
890	247	8	240285900	7	310	2	37.51	2020-12-25 10:07:39.281486
891	33	11	291972848	4	226	2	37.91	2020-12-25 10:07:39.281486
892	399	3	148171067	1	260	2	37.91	2020-12-25 10:07:39.281486
893	104	32	408421578	4	482	2	37.95	2020-12-25 10:07:39.281486
894	104	92	89644267	0	7	2	38.38	2020-12-25 10:07:39.281486
895	33	24	323969502	4	479	2	38.39	2020-12-25 10:07:39.281486
896	237	27	152607205	4	419	2	38.61	2020-12-25 10:07:39.281486
897	104	63	21185091	6	301	2	38.65	2020-12-25 10:07:39.281486
898	1	5	225616342	3	119	2	38.86	2020-12-25 10:07:39.281486
899	33	20	312103822	7	375	2	39.30	2020-12-25 10:07:39.281486
900	237	5	986103	7	460	2	39.31	2020-12-25 10:07:39.281486
901	33	4	413602655	4	272	2	39.48	2020-12-25 10:07:39.281486
902	104	89	148739669	5	185	2	40.16	2020-12-25 10:07:39.281486
903	104	53	137709482	5	207	2	40.29	2020-12-25 10:07:39.281486
904	237	11	152000542	8	89	2	40.40	2020-12-25 10:07:39.281486
905	399	4	281620715	3	146	2	40.51	2020-12-25 10:07:39.281486
906	33	22	431731035	2	84	2	40.81	2020-12-25 10:07:39.281486
907	237	16	87859333	3	337	2	40.97	2020-12-25 10:07:39.281486
908	104	80	181763720	5	241	2	41.04	2020-12-25 10:07:39.281486
909	104	96	392769798	8	72	2	41.05	2020-12-25 10:07:39.281486
910	33	15	131039705	4	214	2	41.23	2020-12-25 10:07:39.281486
911	104	29	151040077	3	211	2	41.35	2020-12-25 10:07:39.281486
912	655	1	212415609	0	291	2	41.45	2020-12-25 10:07:39.281486
913	399	20	305117207	0	117	2	41.93	2020-12-25 10:07:39.281486
914	33	6	369692311	6	303	2	42.01	2020-12-25 10:07:39.281486
915	33	23	385646699	4	128	2	42.22	2020-12-25 10:07:39.281486
916	104	18	26909131	2	5	2	42.26	2020-12-25 10:07:39.281486
917	104	37	133297860	7	232	2	42.30	2020-12-25 10:07:39.281486
918	104	66	144355070	7	38	2	42.35	2020-12-25 10:07:39.281486
919	33	10	256786009	3	43	2	42.40	2020-12-25 10:07:39.281486
920	1	7	89940236	1	340	2	42.45	2020-12-25 10:07:39.281486
921	104	42	72462928	6	486	2	42.65	2020-12-25 10:07:39.281486
922	104	15	227768696	8	341	2	42.74	2020-12-25 10:07:39.281486
923	655	4	311520744	1	409	2	43.03	2020-12-25 10:07:39.281486
924	399	6	74138712	7	175	2	43.05	2020-12-25 10:07:39.281486
925	1	21	260070721	1	135	2	43.07	2020-12-25 10:07:39.281486
926	399	2	266654565	3	199	2	43.27	2020-12-25 10:07:39.281486
927	104	12	224859865	0	122	2	43.38	2020-12-25 10:07:39.281486
928	33	26	15325457	2	435	2	43.59	2020-12-25 10:07:39.281486
929	399	22	307348526	2	374	2	43.88	2020-12-25 10:07:39.281486
930	104	61	70289877	3	415	2	43.94	2020-12-25 10:07:39.281486
931	104	52	81050224	0	105	2	44.04	2020-12-25 10:07:39.281486
932	247	20	346855259	7	31	2	44.40	2020-12-25 10:07:39.281486
933	655	3	310867983	7	110	2	44.71	2020-12-25 10:07:39.281486
934	399	16	217545867	5	196	2	44.75	2020-12-25 10:07:39.281486
935	237	21	246458063	1	213	2	44.82	2020-12-25 10:07:39.281486
936	104	76	177198655	5	228	2	44.84	2020-12-25 10:07:39.281486
937	33	29	267312285	4	205	2	45.27	2020-12-25 10:07:39.281486
938	623	3	334786253	4	1	2	45.44	2020-12-25 10:07:39.281486
939	104	30	385276988	1	355	2	45.72	2020-12-25 10:07:39.281486
940	1	35	106124891	2	150	2	46.45	2020-12-25 10:07:39.281486
941	104	9	219971673	3	64	2	46.96	2020-12-25 10:07:39.281486
942	104	66	161410091	6	256	2	47.12	2020-12-25 10:07:39.281486
943	1	18	146124300	0	287	2	47.21	2020-12-25 10:07:39.281486
944	104	102	118676303	3	270	2	48.28	2020-12-25 10:07:39.281486
945	655	4	174214808	0	224	2	48.46	2020-12-25 10:07:39.281486
946	247	34	270864881	8	282	2	48.82	2020-12-25 10:07:39.281486
947	104	66	357559117	0	100	2	49.27	2020-12-25 10:07:39.281486
948	33	16	287612561	3	192	2	49.60	2020-12-25 10:07:39.281486
949	104	8	114263257	8	275	2	49.86	2020-12-25 10:07:39.281486
950	104	45	345163727	2	142	2	50.39	2020-12-25 10:07:39.281486
951	104	63	419927856	3	432	2	50.45	2020-12-25 10:07:39.281486
952	1	37	431398026	8	451	2	50.54	2020-12-25 10:07:39.281486
953	104	75	217989140	8	4	2	50.88	2020-12-25 10:07:39.281486
954	237	26	218769841	2	80	2	50.96	2020-12-25 10:07:39.281486
955	247	13	400129089	6	54	2	51.17	2020-12-25 10:07:39.281486
956	399	22	199169029	0	201	2	51.39	2020-12-25 10:07:39.281486
957	1	39	299247041	8	299	2	51.46	2020-12-25 10:07:39.281486
958	1	44	309470210	6	10	2	51.49	2020-12-25 10:07:39.281486
959	399	5	330794984	6	421	2	51.93	2020-12-25 10:07:39.281486
960	399	15	146926500	1	191	2	52.03	2020-12-25 10:07:39.281486
961	247	21	414322296	5	346	2	52.09	2020-12-25 10:07:39.281486
962	104	62	429625044	8	202	2	52.11	2020-12-25 10:07:39.281486
963	1	20	271352669	7	429	2	52.12	2020-12-25 10:07:39.281486
964	104	98	42191114	8	258	2	52.20	2020-12-25 10:07:39.281486
965	247	16	335655953	1	357	2	52.24	2020-12-25 10:07:39.281486
966	104	75	167859094	0	67	2	52.40	2020-12-25 10:07:39.281486
967	104	49	246690806	8	359	2	52.42	2020-12-25 10:07:39.281486
968	237	7	82065030	7	406	2	52.59	2020-12-25 10:07:39.281486
969	104	31	208066282	8	314	2	52.79	2020-12-25 10:07:39.281486
970	1	23	431262421	3	143	2	52.89	2020-12-25 10:07:39.281486
971	623	4	203580474	6	306	2	52.98	2020-12-25 10:07:39.281486
972	655	2	288432203	8	304	2	53.12	2020-12-25 10:07:39.281486
973	104	93	26894291	6	410	2	53.44	2020-12-25 10:07:39.281486
974	477	7	364294952	0	248	2	53.76	2020-12-25 10:07:39.281486
975	237	8	329523173	7	153	2	53.86	2020-12-25 10:07:39.281486
976	104	38	137080671	2	299	2	53.89	2020-12-25 10:07:39.281486
977	33	25	42648609	2	169	2	53.89	2020-12-25 10:07:39.281486
978	1	13	363352649	6	58	2	54.39	2020-12-25 10:07:39.281486
979	33	27	59226760	2	8	2	54.68	2020-12-25 10:07:39.281486
980	237	25	255674929	0	237	2	54.79	2020-12-25 10:07:39.281486
981	104	53	359745287	4	448	2	55.21	2020-12-25 10:07:39.281486
982	1	8	295739455	5	444	2	55.42	2020-12-25 10:07:39.281486
983	1	18	281590938	4	441	2	55.45	2020-12-25 10:07:39.281486
984	104	96	138946166	1	423	2	55.47	2020-12-25 10:07:39.281486
985	104	24	44294555	7	495	2	55.48	2020-12-25 10:07:39.281486
986	247	3	339616064	3	243	2	55.90	2020-12-25 10:07:39.281486
987	247	5	4342689	0	498	2	56.22	2020-12-25 10:07:39.281486
988	104	43	339550311	0	280	2	56.26	2020-12-25 10:07:39.281486
989	1	42	224479925	1	216	2	56.27	2020-12-25 10:07:39.281486
990	33	16	348964389	5	70	2	57.37	2020-12-25 10:07:39.281486
991	104	98	332447931	6	246	2	57.51	2020-12-25 10:07:39.281486
992	247	28	278566345	2	29	2	57.52	2020-12-25 10:07:39.281486
993	1	26	268004601	2	373	2	57.57	2020-12-25 10:07:39.281486
994	33	20	334808963	7	343	2	57.67	2020-12-25 10:07:39.281486
995	1	32	293237279	2	357	2	57.99	2020-12-25 10:07:39.281486
996	104	25	345398841	1	393	2	58.07	2020-12-25 10:07:39.281486
997	104	71	250891	7	196	2	58.27	2020-12-25 10:07:39.281486
998	1	44	77072861	2	184	2	58.32	2020-12-25 10:07:39.281486
999	104	57	64421435	4	311	2	58.95	2020-12-25 10:07:39.281486
1000	104	93	276689922	1	127	2	59.28	2020-12-25 10:07:39.281486
1001	104	78	37430685	3	41	2	59.50	2020-12-25 10:07:39.281486
1002	237	20	108994701	7	391	2	59.51	2020-12-25 10:07:39.281486
1003	623	3	428795214	8	323	2	59.81	2020-12-25 10:07:39.281486
1004	33	21	212102682	8	414	2	59.82	2020-12-25 10:07:39.281486
1005	104	57	618414	1	325	2	59.83	2020-12-25 10:07:39.281486
1006	104	20	336215247	8	51	2	59.98	2020-12-25 10:07:39.281486
1007	33	14	321871849	5	312	2	60.45	2020-12-25 10:07:39.281486
1008	237	22	229671622	6	271	2	60.51	2020-12-25 10:07:39.281486
1009	104	57	190517389	6	33	2	60.81	2020-12-25 10:07:39.281486
1010	104	64	278129049	7	319	2	61.00	2020-12-25 10:07:39.281486
1011	477	13	263560669	1	250	2	61.12	2020-12-25 10:07:39.281486
1012	399	10	98305027	8	288	2	61.33	2020-12-25 10:07:39.281486
1013	1	35	281833930	4	251	2	61.38	2020-12-25 10:07:39.281486
1014	1	20	133151725	5	330	2	61.42	2020-12-25 10:07:39.281486
1015	477	2	396397360	6	69	2	61.43	2020-12-25 10:07:39.281486
1016	104	33	392493434	6	117	2	61.64	2020-12-25 10:07:39.281486
1017	104	51	8106488	5	396	2	61.78	2020-12-25 10:07:39.281486
1018	399	1	253070359	2	77	2	61.79	2020-12-25 10:07:39.281486
1019	104	18	105980628	7	496	2	61.96	2020-12-25 10:07:39.281486
1020	104	40	19477901	5	467	2	62.07	2020-12-25 10:07:39.281486
1021	247	14	314216724	3	17	2	62.24	2020-12-25 10:07:39.281486
1022	104	73	239350397	1	469	2	62.25	2020-12-25 10:07:39.281486
1023	104	57	331149281	0	95	2	62.70	2020-12-25 10:07:39.281486
1024	33	20	147450401	4	189	2	62.78	2020-12-25 10:07:39.281486
1025	477	7	147843646	4	413	2	62.92	2020-12-25 10:07:39.281486
1026	1	4	11857381	6	240	2	63.17	2020-12-25 10:07:39.281486
1027	104	59	297614839	1	26	2	63.21	2020-12-25 10:07:39.281486
1028	104	61	152281312	7	404	2	63.44	2020-12-25 10:07:39.281486
1029	237	14	410502527	1	132	2	63.56	2020-12-25 10:07:39.281486
1030	104	44	16293719	0	401	2	63.57	2020-12-25 10:07:39.281486
1031	104	74	377416799	7	172	2	63.73	2020-12-25 10:07:39.281486
1032	33	13	391415384	0	352	2	63.97	2020-12-25 10:07:39.281486
1033	399	1	139042757	5	242	2	64.20	2020-12-25 10:07:39.281486
1034	33	21	409960	1	258	2	64.42	2020-12-25 10:07:39.281486
1035	104	28	404814467	0	408	2	64.54	2020-12-25 10:07:39.281486
1036	104	42	325666566	1	71	2	64.84	2020-12-25 10:07:39.281486
1037	237	8	119892528	3	449	2	65.17	2020-12-25 10:07:39.281486
1038	477	2	314912566	5	178	2	65.22	2020-12-25 10:07:39.281486
1039	104	88	92658814	4	315	2	65.34	2020-12-25 10:07:39.281486
1040	477	13	213259093	0	116	2	65.47	2020-12-25 10:07:39.281486
1041	104	89	392611601	1	407	2	65.63	2020-12-25 10:07:39.281486
1042	104	88	46291348	4	296	2	65.78	2020-12-25 10:07:39.281486
1043	399	18	57900118	8	190	2	65.94	2020-12-25 10:07:39.281486
1044	104	14	205133509	6	271	2	66.11	2020-12-25 10:07:39.281486
1045	104	94	119535816	0	319	2	66.41	2020-12-25 10:07:39.281486
1046	104	46	81820336	2	107	2	66.41	2020-12-25 10:07:39.281486
1047	655	6	135836582	4	316	2	66.42	2020-12-25 10:07:39.281486
1048	477	10	397364750	0	265	2	66.54	2020-12-25 10:07:39.281486
1049	104	27	423757034	6	2	2	66.64	2020-12-25 10:07:39.281486
1050	33	2	369267539	0	46	2	67.06	2020-12-25 10:07:39.281486
1051	237	17	114157983	3	338	2	67.27	2020-12-25 10:07:39.281486
1052	247	14	225836084	3	474	2	67.29	2020-12-25 10:07:39.281486
1053	477	12	188340066	0	283	2	67.30	2020-12-25 10:07:39.281486
1054	104	41	372887850	4	463	2	67.42	2020-12-25 10:07:39.281486
1055	237	22	4845451	3	304	2	67.60	2020-12-25 10:07:39.281486
1056	104	7	103691016	8	290	2	67.76	2020-12-25 10:07:39.281486
1057	104	72	237416846	0	285	2	67.78	2020-12-25 10:07:39.281486
1058	1	24	147091146	5	349	2	68.03	2020-12-25 10:07:39.281486
1059	399	7	68350421	7	403	2	68.08	2020-12-25 10:07:39.281486
1060	237	24	309944323	0	174	2	68.08	2020-12-25 10:07:39.281486
1061	104	52	156922631	8	179	2	68.37	2020-12-25 10:07:39.281486
1062	1	45	373891103	1	351	2	68.56	2020-12-25 10:07:39.281486
1063	104	18	431014199	6	193	2	68.94	2020-12-25 10:07:39.281486
1064	1	31	162401264	7	147	2	68.94	2020-12-25 10:07:39.281486
1065	104	29	6399999	8	477	2	69.05	2020-12-25 10:07:39.281486
1066	1	47	402884846	7	286	2	69.17	2020-12-25 10:07:39.281486
1067	399	11	383975196	8	345	2	69.18	2020-12-25 10:07:39.281486
1068	104	46	214266971	7	209	2	69.30	2020-12-25 10:07:39.281486
1069	477	5	178152679	3	459	2	69.41	2020-12-25 10:07:39.281486
1070	104	86	273638774	5	404	2	69.43	2020-12-25 10:07:39.281486
1071	1	2	409112000	2	289	2	69.44	2020-12-25 10:07:39.281486
1072	1	34	94832614	5	244	2	69.86	2020-12-25 10:07:39.281486
1073	104	21	229048319	3	333	2	70.04	2020-12-25 10:07:39.281486
1074	33	9	233072312	0	93	2	70.31	2020-12-25 10:07:39.281486
1075	104	31	176000826	7	109	2	70.48	2020-12-25 10:07:39.281486
1076	655	5	60980709	5	468	2	70.73	2020-12-25 10:07:39.281486
1077	104	72	31879157	7	213	2	70.73	2020-12-25 10:07:39.281486
1078	104	80	342928300	2	97	2	70.95	2020-12-25 10:07:39.281486
1079	33	13	53087598	4	238	2	70.98	2020-12-25 10:07:39.281486
1080	237	19	184481231	5	392	2	71.06	2020-12-25 10:07:39.281486
1081	104	10	174663174	0	168	2	71.13	2020-12-25 10:07:39.281486
1082	104	93	60842821	8	210	2	71.55	2020-12-25 10:07:39.281486
1083	104	10	343698402	2	450	2	71.62	2020-12-25 10:07:39.281486
1084	247	17	284146067	6	36	2	71.69	2020-12-25 10:07:39.281486
1085	1	46	193473237	0	324	2	71.77	2020-12-25 10:07:39.281486
1086	33	1	103068840	0	14	2	71.93	2020-12-25 10:07:39.281486
1087	104	94	26116054	4	461	2	72.09	2020-12-25 10:07:39.281486
1088	33	24	412424527	7	87	2	72.15	2020-12-25 10:07:39.281486
1089	655	1	433900313	3	176	2	72.58	2020-12-25 10:07:39.281486
1090	399	3	171793285	4	434	2	72.80	2020-12-25 10:07:39.281486
1091	104	34	358212114	6	264	2	73.36	2020-12-25 10:07:39.281486
1092	247	29	366490642	2	500	2	73.73	2020-12-25 10:07:39.281486
1093	104	17	297509693	5	18	2	73.99	2020-12-25 10:07:39.281486
1094	104	16	85495902	8	471	2	74.07	2020-12-25 10:07:39.281486
1095	33	5	246783691	6	199	2	74.19	2020-12-25 10:07:39.281486
1096	33	11	215478290	0	334	2	74.35	2020-12-25 10:07:39.281486
1097	247	29	174308602	8	360	2	74.61	2020-12-25 10:07:39.281486
1098	247	26	327147720	5	67	2	75.07	2020-12-25 10:07:39.281486
1099	247	27	332622562	7	388	2	75.31	2020-12-25 10:07:39.281486
1100	477	1	157848874	4	462	2	75.63	2020-12-25 10:07:39.281486
1101	104	61	291023771	6	433	2	75.83	2020-12-25 10:07:39.281486
1102	104	40	296326411	6	170	2	76.01	2020-12-25 10:07:39.281486
1103	104	50	9758400	2	162	2	76.29	2020-12-25 10:07:39.281486
1104	104	66	282349288	4	125	2	76.54	2020-12-25 10:07:39.281486
1105	247	22	261110475	7	62	2	76.60	2020-12-25 10:07:39.281486
1106	33	29	342936889	2	499	2	76.62	2020-12-25 10:07:39.281486
1107	1	10	11718435	5	182	2	77.00	2020-12-25 10:07:39.281486
1108	247	31	49466611	4	367	2	77.13	2020-12-25 10:07:39.281486
1109	104	95	59534795	8	51	2	77.24	2020-12-25 10:07:39.281486
1110	247	22	278600126	8	386	2	77.48	2020-12-25 10:07:39.281486
1111	247	20	245051338	3	6	2	77.48	2020-12-25 10:07:39.281486
1112	237	5	333716289	1	426	2	77.51	2020-12-25 10:07:39.281486
1113	33	8	123157329	3	424	2	77.81	2020-12-25 10:07:39.281486
1114	33	6	181371673	7	187	2	78.03	2020-12-25 10:07:39.281486
1115	247	34	149514305	8	86	2	78.11	2020-12-25 10:07:39.281486
1116	104	47	14065564	1	269	2	79.06	2020-12-25 10:07:39.281486
1117	1	36	254359402	7	326	2	79.21	2020-12-25 10:07:39.281486
1118	237	14	364578650	6	138	2	79.46	2020-12-25 10:07:39.281486
1119	33	24	142177674	8	308	2	79.54	2020-12-25 10:07:39.281486
1120	655	7	375479909	2	418	2	79.68	2020-12-25 10:07:39.281486
1121	104	46	120862725	7	28	2	79.77	2020-12-25 10:07:39.281486
1122	104	15	101854984	2	402	2	80.00	2020-12-25 10:07:39.281486
1123	247	17	120831779	6	230	2	80.42	2020-12-25 10:07:39.281486
1124	1	19	78358192	0	491	2	80.65	2020-12-25 10:07:39.281486
1125	237	26	22728113	7	151	2	80.78	2020-12-25 10:07:39.281486
1126	33	25	178985163	4	466	2	80.79	2020-12-25 10:07:39.281486
1127	247	4	92481500	3	91	2	80.87	2020-12-25 10:07:39.281486
1128	104	11	362325544	4	135	2	81.18	2020-12-25 10:07:39.281486
1129	247	31	143117142	6	245	2	81.47	2020-12-25 10:07:39.281486
1130	104	66	105180630	1	372	2	81.54	2020-12-25 10:07:39.281486
1131	1	43	51824800	2	364	2	81.64	2020-12-25 10:07:39.281486
1132	655	1	172434281	2	82	2	81.70	2020-12-25 10:07:39.281486
1133	399	20	31767518	3	277	2	81.75	2020-12-25 10:07:39.281486
1134	104	92	221373266	8	30	2	81.76	2020-12-25 10:07:39.281486
1135	1	44	115774292	1	294	2	81.96	2020-12-25 10:07:39.281486
1136	247	12	424343051	0	280	2	82.21	2020-12-25 10:07:39.281486
1137	104	63	359816688	8	417	2	82.29	2020-12-25 10:07:39.281486
1138	1	36	393292023	4	456	2	82.32	2020-12-25 10:07:39.281486
1139	237	8	29358466	0	180	2	82.88	2020-12-25 10:07:39.281486
1140	104	99	272266794	3	227	2	82.94	2020-12-25 10:07:39.281486
1141	399	12	238033050	3	370	2	82.96	2020-12-25 10:07:39.281486
1142	104	82	198969482	2	488	2	83.39	2020-12-25 10:07:39.281486
1143	247	9	254037645	1	158	2	83.42	2020-12-25 10:07:39.281486
1144	477	13	137736540	3	99	2	83.42	2020-12-25 10:07:39.281486
1145	33	26	253294089	0	129	2	83.69	2020-12-25 10:07:39.281486
1146	1	39	97217528	8	436	2	83.74	2020-12-25 10:07:39.281486
1147	237	8	179093455	3	249	2	83.82	2020-12-25 10:07:39.281486
1148	104	47	132822257	7	458	2	84.36	2020-12-25 10:07:39.281486
1149	237	26	22728113	7	151	4	0.28	2020-12-25 10:07:39.281486
1150	1	13	363352649	6	58	4	1.53	2020-12-25 10:07:39.281486
1151	1	20	133151725	5	330	4	1.84	2020-12-25 10:07:39.281486
1152	655	6	423138683	5	96	4	8.72	2020-12-25 10:07:39.281486
1153	104	3	398389701	8	106	4	9.10	2020-12-25 10:07:39.281486
1154	237	8	179093455	3	249	4	9.43	2020-12-25 10:07:39.281486
1155	399	8	12481557	1	41	4	13.65	2020-12-25 10:07:39.281486
1156	477	12	143928549	0	431	4	13.77	2020-12-25 10:07:39.281486
1157	247	4	276108961	3	137	4	14.26	2020-12-25 10:07:39.281486
1158	104	33	329711671	1	339	4	16.02	2020-12-25 10:07:39.281486
1159	104	3	239890161	3	194	4	16.31	2020-12-25 10:07:39.281486
1160	104	90	296604792	5	465	4	16.86	2020-12-25 10:07:39.281486
1161	104	80	181763720	5	241	4	17.64	2020-12-25 10:07:39.281486
1162	104	34	401129052	2	440	4	18.29	2020-12-25 10:07:39.281486
1163	477	8	71822855	0	15	4	18.63	2020-12-25 10:07:39.281486
1164	104	44	16293719	0	401	4	22.16	2020-12-25 10:07:39.281486
1165	1	26	268004601	2	373	4	23.91	2020-12-25 10:07:39.281486
1166	399	16	357659616	8	2	4	24.66	2020-12-25 10:07:39.281486
1167	399	3	148171067	1	260	4	24.95	2020-12-25 10:07:39.281486
1168	237	17	157574169	5	127	4	25.28	2020-12-25 10:07:39.281486
1169	237	16	131349549	7	165	4	27.31	2020-12-25 10:07:39.281486
1170	104	57	618414	1	325	4	27.51	2020-12-25 10:07:39.281486
1171	1	39	319852908	3	336	4	27.74	2020-12-25 10:07:39.281486
1172	247	22	278600126	8	386	4	28.83	2020-12-25 10:07:39.281486
1173	1	25	293238749	6	274	4	29.13	2020-12-25 10:07:39.281486
1174	104	89	202584093	3	363	4	29.25	2020-12-25 10:07:39.281486
1175	104	39	321331703	6	163	4	29.48	2020-12-25 10:07:39.281486
1176	237	6	68545428	5	20	4	30.00	2020-12-25 10:07:39.281486
1177	237	24	309944323	0	174	4	31.39	2020-12-25 10:07:39.281486
1178	104	44	329070445	1	62	4	34.06	2020-12-25 10:07:39.281486
1179	104	60	363715579	2	332	4	35.32	2020-12-25 10:07:39.281486
1180	104	7	103691016	8	290	4	35.51	2020-12-25 10:07:39.281486
1181	33	23	385646699	4	128	4	39.43	2020-12-25 10:07:39.281486
1182	104	2	10676972	4	302	4	43.72	2020-12-25 10:07:39.281486
1183	1	45	222583938	1	220	4	44.17	2020-12-25 10:07:39.281486
1184	1	5	225616342	3	119	4	44.97	2020-12-25 10:07:39.281486
1185	399	3	402204855	1	203	4	45.65	2020-12-25 10:07:39.281486
1186	104	30	385276988	1	355	4	46.56	2020-12-25 10:07:39.281486
1187	104	51	159959225	1	446	4	46.84	2020-12-25 10:07:39.281486
1188	1	16	400575456	1	483	4	48.28	2020-12-25 10:07:39.281486
1189	623	2	282169851	5	283	4	48.83	2020-12-25 10:07:39.281486
1190	104	58	106703716	7	295	4	49.67	2020-12-25 10:07:39.281486
1191	104	30	163904238	3	361	4	49.82	2020-12-25 10:07:39.281486
1192	477	2	314912566	5	178	4	49.97	2020-12-25 10:07:39.281486
1193	33	1	27027541	4	221	4	50.30	2020-12-25 10:07:39.281486
1194	104	77	315515906	2	312	4	51.09	2020-12-25 10:07:39.281486
1195	104	89	392611601	1	407	4	51.87	2020-12-25 10:07:39.281486
1196	1	2	187511463	1	300	4	52.85	2020-12-25 10:07:39.281486
1197	33	25	42648609	2	169	4	53.33	2020-12-25 10:07:39.281486
1198	399	6	74138712	7	175	4	54.03	2020-12-25 10:07:39.281486
1199	33	4	413602655	4	272	4	54.63	2020-12-25 10:07:39.281486
1200	104	29	151040077	3	211	4	54.68	2020-12-25 10:07:39.281486
1201	1	18	281590938	4	441	4	55.36	2020-12-25 10:07:39.281486
1202	1	38	14429544	3	22	4	56.06	2020-12-25 10:07:39.281486
1203	104	66	71561595	5	439	4	56.38	2020-12-25 10:07:39.281486
1204	104	47	14065564	1	269	4	56.83	2020-12-25 10:07:39.281486
1205	104	89	148739669	5	185	4	56.89	2020-12-25 10:07:39.281486
1206	33	1	103068840	0	14	4	60.51	2020-12-25 10:07:39.281486
1207	623	3	334786253	4	1	4	61.01	2020-12-25 10:07:39.281486
1208	1	15	141758207	5	335	4	61.49	2020-12-25 10:07:39.281486
1209	104	61	152281312	7	404	4	63.07	2020-12-25 10:07:39.281486
1210	655	1	172434281	2	82	4	63.24	2020-12-25 10:07:39.281486
1211	104	15	227768696	8	341	4	64.13	2020-12-25 10:07:39.281486
1212	104	45	262817224	4	255	4	68.72	2020-12-25 10:07:39.281486
1213	1	22	427367751	7	492	4	68.97	2020-12-25 10:07:39.281486
1214	33	19	297332461	0	409	4	72.10	2020-12-25 10:07:39.281486
1215	104	11	7374585	5	358	4	73.39	2020-12-25 10:07:39.281486
1216	247	13	400129089	6	54	4	73.44	2020-12-25 10:07:39.281486
1217	104	96	392769798	8	72	4	73.98	2020-12-25 10:07:39.281486
1218	104	52	371571641	5	273	4	76.32	2020-12-25 10:07:39.281486
1219	477	12	188340066	0	283	1	0.94	2020-12-25 10:07:39.281486
1220	104	60	363715579	2	332	1	1.61	2020-12-25 10:07:39.281486
1221	104	2	19174386	8	395	1	3.06	2020-12-25 10:07:39.281486
1222	237	8	291653525	8	13	1	3.29	2020-12-25 10:07:39.281486
1223	477	5	178152679	3	459	1	4.18	2020-12-25 10:07:39.281486
1224	477	7	364294952	0	248	1	4.86	2020-12-25 10:07:39.281486
1225	104	58	226031949	6	261	1	6.81	2020-12-25 10:07:39.281486
1226	1	9	402464325	6	88	1	7.28	2020-12-25 10:07:39.281486
1227	1	17	127918587	3	9	1	8.81	2020-12-25 10:07:39.281486
1228	1	39	299247041	8	299	1	8.99	2020-12-25 10:07:39.281486
1229	1	20	158562267	0	136	1	10.36	2020-12-25 10:07:39.281486
1230	104	67	197457840	4	254	1	11.26	2020-12-25 10:07:39.281486
1231	1	47	352794091	5	430	1	14.01	2020-12-25 10:07:39.281486
1232	1	43	19183183	7	83	1	14.13	2020-12-25 10:07:39.281486
1233	33	11	291972848	4	226	1	14.22	2020-12-25 10:07:39.281486
1234	399	1	253070359	2	77	1	14.49	2020-12-25 10:07:39.281486
1235	104	31	208066282	8	314	1	14.89	2020-12-25 10:07:39.281486
1236	104	5	162814876	8	322	1	15.56	2020-12-25 10:07:39.281486
1237	104	95	59534795	8	51	1	16.53	2020-12-25 10:07:39.281486
1238	104	42	325666566	1	71	1	17.28	2020-12-25 10:07:39.281486
1239	104	73	372106632	3	422	1	17.48	2020-12-25 10:07:39.281486
1240	399	5	109408088	5	231	1	18.27	2020-12-25 10:07:39.281486
1241	477	7	23691884	8	445	1	18.92	2020-12-25 10:07:39.281486
1242	104	39	5446986	4	102	1	19.00	2020-12-25 10:07:39.281486
1243	247	17	284146067	6	36	1	20.10	2020-12-25 10:07:39.281486
1244	33	4	323404707	5	155	1	21.03	2020-12-25 10:07:39.281486
1245	104	75	167859094	0	67	1	21.61	2020-12-25 10:07:39.281486
1246	1	31	1745250	4	200	1	21.94	2020-12-25 10:07:39.281486
1247	104	11	7374585	5	358	1	22.63	2020-12-25 10:07:39.281486
1248	1	48	320009446	0	452	1	23.01	2020-12-25 10:07:39.281486
1249	1	7	89940236	1	340	1	23.98	2020-12-25 10:07:39.281486
1250	104	15	25338387	5	497	1	28.39	2020-12-25 10:07:39.281486
1251	477	1	157848874	4	462	1	28.63	2020-12-25 10:07:39.281486
1252	247	25	404307387	8	145	1	29.23	2020-12-25 10:07:39.281486
1253	104	66	161410091	6	256	1	29.60	2020-12-25 10:07:39.281486
1254	247	31	146281797	0	489	1	31.01	2020-12-25 10:07:39.281486
1255	104	80	181763720	5	241	1	33.22	2020-12-25 10:07:39.281486
1256	104	90	187035200	8	472	1	33.23	2020-12-25 10:07:39.281486
1257	247	20	433631717	7	457	1	33.87	2020-12-25 10:07:39.281486
1258	104	39	339694786	1	384	1	37.56	2020-12-25 10:07:39.281486
1259	247	2	99943025	7	88	1	37.96	2020-12-25 10:07:39.281486
1260	247	28	280523875	6	390	1	38.00	2020-12-25 10:07:39.281486
1261	247	35	314354173	0	160	1	38.28	2020-12-25 10:07:39.281486
1262	1	4	414448303	0	328	1	39.91	2020-12-25 10:07:39.281486
1263	237	8	329523173	7	153	1	41.29	2020-12-25 10:07:39.281486
1264	623	3	428795214	8	323	1	41.55	2020-12-25 10:07:39.281486
1265	104	42	116265008	4	381	1	41.64	2020-12-25 10:07:39.281486
1266	399	4	281620715	3	146	1	42.12	2020-12-25 10:07:39.281486
1267	399	6	74138712	7	175	1	42.76	2020-12-25 10:07:39.281486
1268	399	18	57900118	8	190	1	44.36	2020-12-25 10:07:39.281486
1269	104	93	257282600	5	134	1	44.47	2020-12-25 10:07:39.281486
1270	33	29	135452660	5	159	1	45.82	2020-12-25 10:07:39.281486
1271	477	8	71822855	0	15	1	46.41	2020-12-25 10:07:39.281486
1272	104	4	348850672	0	48	1	46.79	2020-12-25 10:07:39.281486
1273	33	25	42648609	2	169	1	47.41	2020-12-25 10:07:39.281486
1274	477	13	263560669	1	250	1	48.28	2020-12-25 10:07:39.281486
1275	104	53	359745287	4	448	1	49.26	2020-12-25 10:07:39.281486
1276	104	102	394713802	7	254	1	51.35	2020-12-25 10:07:39.281486
1277	247	2	305145937	8	369	1	52.39	2020-12-25 10:07:39.281486
1278	237	7	82065030	7	406	1	52.57	2020-12-25 10:07:39.281486
1279	399	8	343680986	0	101	1	52.70	2020-12-25 10:07:39.281486
1280	399	21	238231361	4	279	1	52.93	2020-12-25 10:07:39.281486
1281	237	15	341282703	8	484	1	53.01	2020-12-25 10:07:39.281486
1282	247	4	92481500	3	91	1	53.83	2020-12-25 10:07:39.281486
1283	247	26	327147720	5	67	1	54.69	2020-12-25 10:07:39.281486
1284	33	24	323969502	4	479	1	55.45	2020-12-25 10:07:39.281486
1285	247	31	49466611	4	367	1	58.02	2020-12-25 10:07:39.281486
1286	33	10	256786009	3	43	1	58.12	2020-12-25 10:07:39.281486
1287	104	96	392769798	8	72	1	58.70	2020-12-25 10:07:39.281486
1288	104	32	408421578	4	482	1	60.00	2020-12-25 10:07:39.281486
1289	104	8	173005519	6	442	1	60.85	2020-12-25 10:07:39.281486
1290	399	1	127838726	4	323	1	61.09	2020-12-25 10:07:39.281486
1291	33	22	431731035	2	84	1	61.10	2020-12-25 10:07:39.281486
1292	237	21	246458063	1	213	1	63.77	2020-12-25 10:07:39.281486
1293	104	66	357559117	0	100	1	65.21	2020-12-25 10:07:39.281486
1294	247	24	386436835	3	239	1	66.49	2020-12-25 10:07:39.281486
1295	1	45	180159338	8	437	1	66.63	2020-12-25 10:07:39.281486
1296	247	7	15822670	1	104	1	66.89	2020-12-25 10:07:39.281486
1297	1	5	371047745	5	379	1	66.95	2020-12-25 10:07:39.281486
1298	247	28	278566345	2	29	1	67.00	2020-12-25 10:07:39.281486
1299	247	7	397059706	0	11	1	67.96	2020-12-25 10:07:39.281486
1300	247	25	219131727	3	453	1	69.33	2020-12-25 10:07:39.281486
1301	1	32	146565516	7	225	1	69.56	2020-12-25 10:07:39.281486
1302	104	12	224859865	0	122	1	70.54	2020-12-25 10:07:39.281486
1303	399	4	89746065	5	12	1	70.61	2020-12-25 10:07:39.281486
1304	399	12	188542592	6	425	1	71.14	2020-12-25 10:07:39.281486
1305	1	35	99457920	7	47	1	72.33	2020-12-25 10:07:39.281486
1306	104	98	332447931	6	246	1	72.92	2020-12-25 10:07:39.281486
1307	1	5	225616342	3	119	1	73.22	2020-12-25 10:07:39.281486
1308	104	89	202584093	3	363	1	73.23	2020-12-25 10:07:39.281486
1309	477	2	314912566	5	178	1	73.74	2020-12-25 10:07:39.281486
1310	399	8	12481557	1	41	1	73.78	2020-12-25 10:07:39.281486
1311	33	20	334808963	7	343	1	76.58	2020-12-25 10:07:39.281486
1312	104	51	8106488	5	396	1	76.60	2020-12-25 10:07:39.281486
1313	104	57	423488548	1	443	1	77.35	2020-12-25 10:07:39.281486
1314	1	20	133151725	5	330	1	77.45	2020-12-25 10:07:39.281486
1315	247	34	270864881	8	282	1	78.11	2020-12-25 10:07:39.281486
1316	655	1	172434281	2	82	1	79.00	2020-12-25 10:07:39.281486
1317	477	13	213259093	0	116	1	80.75	2020-12-25 10:07:39.281486
1318	477	4	305267511	3	478	1	81.56	2020-12-25 10:07:39.281486
1319	1	36	1943738	8	79	1	83.85	2020-12-25 10:07:39.281486
1320	104	23	227669380	8	473	1	84.70	2020-12-25 10:07:39.281486
1321	1	8	295739455	5	444	1	86.72	2020-12-25 10:07:39.281486
1322	33	2	152303325	3	433	1	87.56	2020-12-25 10:07:39.281486
1323	399	1	139042757	5	242	1	87.72	2020-12-25 10:07:39.281486
1324	33	23	385646699	4	128	1	88.99	2020-12-25 10:07:39.281486
1325	237	19	14767465	2	284	1	89.80	2020-12-25 10:07:39.281486
1326	104	63	359816688	8	417	1	93.53	2020-12-25 10:07:39.281486
1327	247	14	314216724	3	17	1	93.91	2020-12-25 10:07:39.281486
1328	1	37	431398026	8	451	1	94.21	2020-12-25 10:07:39.281486
1329	237	6	125418832	0	112	1	94.29	2020-12-25 10:07:39.281486
1330	247	27	332622562	7	388	1	94.32	2020-12-25 10:07:39.281486
1331	1	46	193473237	0	324	1	95.47	2020-12-25 10:07:39.281486
1332	104	77	384674782	6	344	1	95.69	2020-12-25 10:07:39.281486
1333	247	27	117059620	3	438	1	96.12	2020-12-25 10:07:39.281486
1334	399	3	78052423	7	428	1	99.20	2020-12-25 10:07:39.281486
1335	655	5	60980709	5	468	1	99.93	2020-12-25 10:07:39.281486
1336	104	78	37430685	3	41	1	101.46	2020-12-25 10:07:39.281486
1337	104	50	44895790	7	383	1	101.96	2020-12-25 10:07:39.281486
1338	399	20	305117207	0	117	1	102.33	2020-12-25 10:07:39.281486
1339	1	18	146124300	0	287	1	105.15	2020-12-25 10:07:39.281486
1340	1	44	77072861	2	184	1	106.99	2020-12-25 10:07:39.281486
1341	104	94	119535816	0	319	1	107.46	2020-12-25 10:07:39.281486
1342	247	16	347866165	6	380	1	107.93	2020-12-25 10:07:39.281486
1343	104	72	31879157	7	213	1	108.48	2020-12-25 10:07:39.281486
1344	237	19	138328967	0	489	1	108.85	2020-12-25 10:07:39.281486
1345	104	47	14065564	1	269	1	109.81	2020-12-25 10:07:39.281486
1346	104	73	239350397	1	469	1	110.09	2020-12-25 10:07:39.281486
1347	104	26	171859642	0	305	1	110.25	2020-12-25 10:07:39.281486
1348	1	23	22261025	8	412	1	111.21	2020-12-25 10:07:39.281486
1349	477	16	106523513	8	463	1	111.92	2020-12-25 10:07:39.281486
1350	33	25	178985163	4	466	1	113.56	2020-12-25 10:07:39.281486
1351	477	14	389148864	1	244	1	114.03	2020-12-25 10:07:39.281486
1352	104	46	120862725	7	28	1	115.34	2020-12-25 10:07:39.281486
1353	1	31	162401264	7	147	1	116.14	2020-12-25 10:07:39.281486
1354	104	85	216061885	6	52	1	117.37	2020-12-25 10:07:39.281486
1355	237	28	345939483	1	184	1	117.62	2020-12-25 10:07:39.281486
1356	399	4	81061872	8	318	1	118.26	2020-12-25 10:07:39.281486
1357	247	34	149514305	8	86	1	118.48	2020-12-25 10:07:39.281486
1358	1	12	343925259	8	56	1	119.74	2020-12-25 10:07:39.281486
1359	247	25	59227932	5	387	1	120.32	2020-12-25 10:07:39.281486
1360	399	3	171793285	4	434	1	120.95	2020-12-25 10:07:39.281486
1361	104	90	296604792	5	465	1	121.59	2020-12-25 10:07:39.281486
1362	104	92	89644267	0	7	1	122.49	2020-12-25 10:07:39.281486
1363	247	14	244883880	0	266	1	123.16	2020-12-25 10:07:39.281486
1364	33	26	15325457	2	435	1	123.17	2020-12-25 10:07:39.281486
1365	104	7	278629263	4	176	1	123.37	2020-12-25 10:07:39.281486
1366	247	1	430754320	4	44	1	123.88	2020-12-25 10:07:39.281486
1367	104	28	404814467	0	408	1	124.11	2020-12-25 10:07:39.281486
1368	104	96	346098925	3	157	1	124.24	2020-12-25 10:07:39.281486
1369	104	75	217989140	8	4	1	125.43	2020-12-25 10:07:39.281486
1370	655	1	212415609	0	291	1	125.88	2020-12-25 10:07:39.281486
1371	655	6	423138683	5	96	1	126.83	2020-12-25 10:07:39.281486
1372	104	42	72462928	6	486	1	127.04	2020-12-25 10:07:39.281486
1373	104	58	106703716	7	295	1	127.20	2020-12-25 10:07:39.281486
1374	104	58	378367445	2	309	1	127.93	2020-12-25 10:07:39.281486
1375	104	29	6399999	8	477	1	128.99	2020-12-25 10:07:39.281486
1376	237	14	364578650	6	138	1	129.51	2020-12-25 10:07:39.281486
1377	247	17	120831779	6	230	1	130.93	2020-12-25 10:07:39.281486
1378	33	18	432446013	5	263	1	131.27	2020-12-25 10:07:39.281486
1379	477	12	143928549	0	431	1	132.02	2020-12-25 10:07:39.281486
1380	237	13	64146061	0	63	1	134.06	2020-12-25 10:07:39.281486
1381	399	10	98305027	8	288	1	134.58	2020-12-25 10:07:39.281486
1382	399	6	211056099	4	487	1	134.78	2020-12-25 10:07:39.281486
1383	1	41	110763269	6	55	1	134.88	2020-12-25 10:07:39.281486
1384	399	2	296732505	5	61	1	135.25	2020-12-25 10:07:39.281486
1385	33	29	105294373	2	350	1	135.45	2020-12-25 10:07:39.281486
1386	104	45	98186070	6	356	1	135.72	2020-12-25 10:07:39.281486
1387	104	5	2681146	7	19	1	135.97	2020-12-25 10:07:39.281486
1388	247	12	278633277	7	177	1	137.34	2020-12-25 10:07:39.281486
1389	104	83	78037356	2	278	1	137.99	2020-12-25 10:07:39.281486
1390	399	1	378889628	6	366	1	138.19	2020-12-25 10:07:39.281486
1391	104	70	182514182	1	243	1	139.19	2020-12-25 10:07:39.281486
1392	104	28	367385521	2	267	1	139.89	2020-12-25 10:07:39.281486
1393	655	1	433900313	3	176	1	141.11	2020-12-25 10:07:39.281486
1394	1	39	319852908	3	336	1	141.16	2020-12-25 10:07:39.281486
1395	104	92	221373266	8	30	1	143.21	2020-12-25 10:07:39.281486
1396	104	76	177198655	5	228	1	143.76	2020-12-25 10:07:39.281486
1397	1	26	268004601	2	373	1	145.17	2020-12-25 10:07:39.281486
1398	1	42	306928356	3	317	1	145.68	2020-12-25 10:07:39.281486
1399	104	44	162980999	7	197	1	146.27	2020-12-25 10:07:39.281486
1400	399	11	383975196	8	345	1	146.70	2020-12-25 10:07:39.281486
1401	104	45	262817224	4	255	1	149.26	2020-12-25 10:07:39.281486
1402	104	34	401129052	2	440	1	150.16	2020-12-25 10:07:39.281486
1403	1	45	81611528	0	385	1	150.49	2020-12-25 10:07:39.281486
1404	1	47	402884846	7	286	1	152.24	2020-12-25 10:07:39.281486
1405	104	33	392493434	6	117	1	153.64	2020-12-25 10:07:39.281486
1406	1	2	187511463	1	300	1	155.05	2020-12-25 10:07:39.281486
1407	104	97	370200553	7	475	1	155.14	2020-12-25 10:07:39.281486
1408	33	20	147450401	4	189	1	156.55	2020-12-25 10:07:39.281486
1409	33	13	53087598	4	238	1	156.82	2020-12-25 10:07:39.281486
1410	104	102	118676303	3	270	1	158.06	2020-12-25 10:07:39.281486
1411	237	22	229671622	6	271	1	158.06	2020-12-25 10:07:39.281486
1412	33	19	53306245	5	371	1	158.40	2020-12-25 10:07:39.281486
1413	247	34	50046444	8	198	1	161.95	2020-12-25 10:07:39.281486
1414	104	29	151040077	3	211	1	162.52	2020-12-25 10:07:39.281486
1415	33	13	391415384	0	352	1	162.68	2020-12-25 10:07:39.281486
1416	237	8	179093455	3	249	1	163.82	2020-12-25 10:07:39.281486
1417	1	42	271203609	8	394	1	164.89	2020-12-25 10:07:39.281486
1418	104	44	16293719	0	401	1	165.76	2020-12-25 10:07:39.281486
1419	33	5	328901157	0	23	1	166.21	2020-12-25 10:07:39.281486
1420	33	15	131039705	4	214	1	169.81	2020-12-25 10:07:39.281486
1421	104	28	364721267	5	56	1	171.10	2020-12-25 10:07:39.281486
1422	237	17	157574169	5	127	1	171.50	2020-12-25 10:07:39.281486
1423	33	22	300804522	7	420	1	173.33	2020-12-25 10:07:39.281486
1424	623	4	203580474	6	306	1	176.34	2020-12-25 10:07:39.281486
1425	104	93	26894291	6	410	1	176.99	2020-12-25 10:07:39.281486
1426	1	42	224479925	1	216	1	177.05	2020-12-25 10:07:39.281486
1427	104	3	239890161	3	194	1	177.72	2020-12-25 10:07:39.281486
1428	247	2	201484438	0	32	1	177.79	2020-12-25 10:07:39.281486
1429	399	5	330794984	6	421	1	178.07	2020-12-25 10:07:39.281486
1430	33	20	312103822	7	375	1	179.43	2020-12-25 10:07:39.281486
1431	237	19	184481231	5	392	1	179.99	2020-12-25 10:07:39.281486
1432	1	30	403521640	1	108	1	181.12	2020-12-25 10:07:39.281486
1433	247	8	240285900	7	310	1	182.27	2020-12-25 10:07:39.281486
1434	237	19	294600697	0	268	1	182.32	2020-12-25 10:07:39.281486
1435	399	2	266654565	3	199	1	182.68	2020-12-25 10:07:39.281486
1436	104	55	161995280	8	472	1	183.37	2020-12-25 10:07:39.281486
1437	104	63	21185091	6	301	1	183.77	2020-12-25 10:07:39.281486
1438	399	12	238033050	3	370	1	185.93	2020-12-25 10:07:39.281486
1439	247	26	256236972	0	173	1	188.28	2020-12-25 10:07:39.281486
1440	33	11	215478290	0	334	1	189.51	2020-12-25 10:07:39.281486
1441	247	29	174308602	8	360	1	190.16	2020-12-25 10:07:39.281486
1442	33	18	16955469	7	259	1	190.39	2020-12-25 10:07:39.281486
1443	237	14	115584880	1	161	1	192.07	2020-12-25 10:07:39.281486
1444	33	5	229504949	1	133	1	192.53	2020-12-25 10:07:39.281486
1445	104	17	297509693	5	18	1	193.33	2020-12-25 10:07:39.281486
1446	247	20	346855259	7	31	1	194.98	2020-12-25 10:07:39.281486
1447	104	46	81820336	2	107	1	195.72	2020-12-25 10:07:39.281486
1448	247	35	359147377	3	34	1	195.82	2020-12-25 10:07:39.281486
1449	104	2	12457207	6	464	1	196.69	2020-12-25 10:07:39.281486
1450	104	98	42191114	8	258	1	196.69	2020-12-25 10:07:39.281486
1451	104	83	96295332	5	115	1	197.78	2020-12-25 10:07:39.281486
1452	247	3	339616064	3	243	1	198.08	2020-12-25 10:07:39.281486
1453	33	19	60336965	5	116	1	198.59	2020-12-25 10:07:39.281486
1454	1	43	141446647	6	447	1	198.99	2020-12-25 10:07:39.281486
1455	655	2	288432203	8	304	1	199.66	2020-12-25 10:07:39.281486
1456	399	16	217545867	5	196	1	200.42	2020-12-25 10:07:39.281486
1457	104	61	152281312	7	404	1	201.09	2020-12-25 10:07:39.281486
1458	104	41	372887850	4	463	1	201.33	2020-12-25 10:07:39.281486
1459	399	22	199169029	0	201	1	201.53	2020-12-25 10:07:39.281486
1460	104	4	363866700	4	87	1	201.65	2020-12-25 10:07:39.281486
1461	237	24	304560641	2	24	1	202.57	2020-12-25 10:07:39.281486
1462	104	79	357292155	5	281	1	203.42	2020-12-25 10:07:39.281486
1463	1	2	409112000	2	289	1	204.79	2020-12-25 10:07:39.281486
1464	237	25	336251546	0	491	1	205.86	2020-12-25 10:07:39.281486
1465	247	16	335655953	1	357	1	205.98	2020-12-25 10:07:39.281486
1466	104	15	101854984	2	402	1	206.00	2020-12-25 10:07:39.281486
1467	1	19	78358192	0	491	1	206.30	2020-12-25 10:07:39.281486
1468	399	22	76253486	6	390	1	207.02	2020-12-25 10:07:39.281486
1469	104	20	336215247	8	51	1	207.18	2020-12-25 10:07:39.281486
1470	1	19	319089332	7	494	1	209.14	2020-12-25 10:07:39.281486
1471	399	16	357659616	8	2	1	209.33	2020-12-25 10:07:39.281486
1472	33	26	412461021	7	481	1	210.08	2020-12-25 10:07:39.281486
1473	1	38	14429544	3	22	1	211.27	2020-12-25 10:07:39.281486
1474	247	22	321020135	5	326	1	211.66	2020-12-25 10:07:39.281486
1475	655	4	311520744	1	409	1	213.58	2020-12-25 10:07:39.281486
1476	104	89	79061444	1	329	1	213.75	2020-12-25 10:07:39.281486
1477	477	13	239033258	0	329	1	214.52	2020-12-25 10:07:39.281486
1478	33	29	267312285	4	205	1	215.63	2020-12-25 10:07:39.281486
1479	33	12	403377721	3	368	1	216.18	2020-12-25 10:07:39.281486
1480	104	71	250891	7	196	1	216.67	2020-12-25 10:07:39.281486
1481	33	13	29777566	6	109	1	216.79	2020-12-25 10:07:39.281486
1482	1	29	353286653	8	360	1	217.17	2020-12-25 10:07:39.281486
1483	247	31	143117142	6	245	1	217.52	2020-12-25 10:07:39.281486
1484	104	74	377416799	7	172	1	218.57	2020-12-25 10:07:39.281486
1485	33	9	233072312	0	93	1	218.83	2020-12-25 10:07:39.281486
1486	33	19	297332461	0	409	1	218.83	2020-12-25 10:07:39.281486
1487	104	77	222531385	7	53	1	218.97	2020-12-25 10:07:39.281486
1488	33	5	246783691	6	199	1	222.23	2020-12-25 10:07:39.281486
1489	104	23	139584117	0	31	1	222.74	2020-12-25 10:07:39.281486
1490	477	10	397364750	0	265	1	222.75	2020-12-25 10:07:39.281486
1491	399	19	25574239	0	480	1	227.04	2020-12-25 10:07:39.281486
1492	1	35	278539794	3	416	1	228.55	2020-12-25 10:07:39.281486
1493	1	15	141758207	5	335	1	229.03	2020-12-25 10:07:39.281486
1494	104	27	423757034	6	2	1	230.83	2020-12-25 10:07:39.281486
1495	1	28	284779153	0	215	1	231.89	2020-12-25 10:07:39.281486
1496	104	66	282349288	4	125	1	232.87	2020-12-25 10:07:39.281486
1497	33	2	369267539	0	46	1	235.73	2020-12-25 10:07:39.281486
1498	33	16	374955132	8	121	1	235.78	2020-12-25 10:07:39.281486
1499	477	11	373602010	6	236	1	235.99	2020-12-25 10:07:39.281486
1500	1	45	222583938	1	220	1	236.54	2020-12-25 10:07:39.281486
1501	1	47	360538154	8	204	1	236.63	2020-12-25 10:07:39.281486
1502	247	27	373415894	7	186	1	236.95	2020-12-25 10:07:39.281486
1503	477	8	145805591	2	397	1	237.52	2020-12-25 10:07:39.281486
1504	104	34	358212114	6	264	1	238.49	2020-12-25 10:07:39.281486
1505	104	65	241144408	8	252	1	239.09	2020-12-25 10:07:39.281486
1506	237	2	16015656	0	307	1	242.72	2020-12-25 10:07:39.281486
1507	33	21	409960	1	258	1	242.79	2020-12-25 10:07:39.281486
1508	623	2	282169851	5	283	1	243.65	2020-12-25 10:07:39.281486
1509	104	16	85495902	8	471	1	244.02	2020-12-25 10:07:39.281486
1510	1	46	255503693	6	60	1	244.69	2020-12-25 10:07:39.281486
1511	104	18	431014199	6	193	1	247.08	2020-12-25 10:07:39.281486
1512	237	26	22728113	7	151	1	247.16	2020-12-25 10:07:39.281486
1513	104	94	290489730	3	293	1	247.89	2020-12-25 10:07:39.281486
1514	247	29	15769960	4	118	1	248.17	2020-12-25 10:07:39.281486
1515	104	60	360009812	8	292	1	249.30	2020-12-25 10:07:39.281486
1516	104	51	390258408	6	32	1	251.41	2020-12-25 10:07:39.281486
1517	1	40	125219232	8	85	1	252.37	2020-12-25 10:07:39.281486
1518	247	25	340618593	1	247	1	255.16	2020-12-25 10:07:39.281486
1519	655	4	14118439	3	454	1	257.22	2020-12-25 10:07:39.281486
1520	104	81	14949625	3	493	1	257.24	2020-12-25 10:07:39.281486
1521	399	3	148171067	1	260	1	257.74	2020-12-25 10:07:39.281486
1522	1	21	260070721	1	135	1	257.81	2020-12-25 10:07:39.281486
1523	104	40	24048895	8	76	1	260.29	2020-12-25 10:07:39.281486
1524	237	28	211747031	3	123	1	261.43	2020-12-25 10:07:39.281486
1525	1	43	25081812	0	373	1	261.82	2020-12-25 10:07:39.281486
1526	623	3	249749655	5	35	1	261.92	2020-12-25 10:07:39.281486
1527	237	25	255674929	0	237	1	262.70	2020-12-25 10:07:39.281486
1528	104	54	418125983	2	362	1	263.05	2020-12-25 10:07:39.281486
1529	104	59	348334224	2	234	1	263.66	2020-12-25 10:07:39.281486
1530	1	6	193291495	2	282	1	264.88	2020-12-25 10:07:39.281486
1531	104	33	329711671	1	339	1	265.99	2020-12-25 10:07:39.281486
1532	104	43	339550311	0	280	1	266.94	2020-12-25 10:07:39.281486
1533	1	35	106124891	2	150	1	268.00	2020-12-25 10:07:39.281486
1534	104	52	371571641	5	273	1	268.16	2020-12-25 10:07:39.281486
1535	104	72	237416846	0	285	1	268.18	2020-12-25 10:07:39.281486
1536	104	80	342928300	2	97	1	268.63	2020-12-25 10:07:39.281486
1537	33	9	52668425	5	98	1	268.91	2020-12-25 10:07:39.281486
1538	237	16	87859333	3	337	1	270.19	2020-12-25 10:07:39.281486
1539	33	1	394141331	1	164	2	0.46	2020-12-25 10:07:39.281486
1540	623	4	203580474	6	306	2	0.57	2020-12-25 10:07:39.281486
1541	237	28	211747031	3	123	2	1.00	2020-12-25 10:07:39.281486
1542	104	30	163904238	3	361	2	2.22	2020-12-25 10:07:39.281486
1543	33	5	229504949	1	133	2	7.81	2020-12-25 10:07:39.281486
1544	104	28	107717060	1	40	2	12.22	2020-12-25 10:07:39.281486
1545	104	77	315515906	2	312	2	13.12	2020-12-25 10:07:39.281486
1546	104	11	362325544	4	135	2	13.34	2020-12-25 10:07:39.281486
1547	104	102	60756551	5	195	2	16.09	2020-12-25 10:07:39.281486
1548	104	11	242717839	5	37	2	16.69	2020-12-25 10:07:39.281486
1549	237	5	986103	7	460	2	17.58	2020-12-25 10:07:39.281486
1550	477	14	389148864	1	244	2	21.87	2020-12-25 10:07:39.281486
1551	104	89	392611601	1	407	2	26.04	2020-12-25 10:07:39.281486
1552	247	9	109042865	5	122	2	30.08	2020-12-25 10:07:39.281486
1553	104	90	187035200	8	472	2	31.90	2020-12-25 10:07:39.281486
1554	237	15	341282703	8	484	2	33.91	2020-12-25 10:07:39.281486
1555	104	76	177198655	5	228	2	34.04	2020-12-25 10:07:39.281486
1556	104	15	227768696	8	341	2	34.20	2020-12-25 10:07:39.281486
1557	33	4	323404707	5	155	2	34.37	2020-12-25 10:07:39.281486
1558	104	52	156922631	8	179	2	36.21	2020-12-25 10:07:39.281486
1559	33	29	105294373	2	350	2	36.39	2020-12-25 10:07:39.281486
1560	247	8	240285900	7	310	2	38.33	2020-12-25 10:07:39.281486
1561	247	7	15822670	1	104	2	40.44	2020-12-25 10:07:39.281486
1562	33	25	42648609	2	169	2	43.37	2020-12-25 10:07:39.281486
1563	1	42	271203609	8	394	2	44.47	2020-12-25 10:07:39.281486
1564	247	4	276108961	3	137	2	45.27	2020-12-25 10:07:39.281486
1565	237	19	138328967	0	489	2	45.56	2020-12-25 10:07:39.281486
1566	237	22	229671622	6	271	2	46.91	2020-12-25 10:07:39.281486
1567	477	7	364294952	0	248	2	47.17	2020-12-25 10:07:39.281486
1568	104	65	241144408	8	252	2	47.21	2020-12-25 10:07:39.281486
1569	1	5	15140549	8	331	2	47.38	2020-12-25 10:07:39.281486
1570	104	95	292608330	5	476	2	47.58	2020-12-25 10:07:39.281486
1571	104	68	81705121	3	81	2	47.95	2020-12-25 10:07:39.281486
1572	1	20	158562267	0	136	2	49.08	2020-12-25 10:07:39.281486
1573	104	72	237416846	0	285	2	50.13	2020-12-25 10:07:39.281486
1574	1	23	431262421	3	143	2	51.54	2020-12-25 10:07:39.281486
1575	104	39	5446986	4	102	2	52.28	2020-12-25 10:07:39.281486
1576	33	6	369692311	6	303	2	53.37	2020-12-25 10:07:39.281486
1577	1	7	168215886	1	156	2	57.09	2020-12-25 10:07:39.281486
1578	104	34	167691573	0	253	2	64.30	2020-12-25 10:07:39.281486
1579	655	2	288432203	8	304	2	64.51	2020-12-25 10:07:39.281486
1580	104	39	58862980	2	114	2	64.69	2020-12-25 10:07:39.281486
1581	104	60	363715579	2	332	2	65.65	2020-12-25 10:07:39.281486
1582	477	10	301678419	2	75	2	65.78	2020-12-25 10:07:39.281486
1583	104	93	26894291	6	410	2	65.95	2020-12-25 10:07:39.281486
1584	104	40	273600731	3	50	2	66.30	2020-12-25 10:07:39.281486
1585	1	49	364941217	4	139	2	66.43	2020-12-25 10:07:39.281486
1586	237	24	304560641	2	24	2	68.14	2020-12-25 10:07:39.281486
1587	1	44	77072861	2	184	2	70.59	2020-12-25 10:07:39.281486
1588	655	4	292888275	0	49	2	70.83	2020-12-25 10:07:39.281486
1589	237	7	82065030	7	406	2	71.70	2020-12-25 10:07:39.281486
1590	247	35	357719152	2	45	2	72.12	2020-12-25 10:07:39.281486
1591	1	30	403521640	1	108	2	74.10	2020-12-25 10:07:39.281486
1592	104	20	336215247	8	51	2	74.20	2020-12-25 10:07:39.281486
1593	104	64	21568237	3	39	2	76.16	2020-12-25 10:07:39.281486
1594	104	50	44895790	7	383	2	77.10	2020-12-25 10:07:39.281486
1595	399	4	89746065	5	12	2	78.48	2020-12-25 10:07:39.281486
1596	655	6	423138683	5	96	2	78.74	2020-12-25 10:07:39.281486
1597	247	29	15769960	4	118	2	80.36	2020-12-25 10:07:39.281486
1598	33	27	59226760	2	8	2	80.42	2020-12-25 10:07:39.281486
1599	623	3	428795214	8	323	2	81.00	2020-12-25 10:07:39.281486
1600	623	3	334786253	4	1	2	81.68	2020-12-25 10:07:39.281486
1601	1	39	299247041	8	299	2	82.43	2020-12-25 10:07:39.281486
1602	477	16	106523513	8	463	2	83.99	2020-12-25 10:07:39.281486
1603	1	42	224479925	1	216	2	85.58	2020-12-25 10:07:39.281486
1604	104	74	196779169	8	81	2	86.20	2020-12-25 10:07:39.281486
1605	104	18	105980628	7	496	2	86.98	2020-12-25 10:07:39.281486
1606	1	45	224478822	2	148	2	87.17	2020-12-25 10:07:39.281486
1607	655	4	311520744	1	409	2	91.19	2020-12-25 10:07:39.281486
1608	104	58	226031949	6	261	2	91.23	2020-12-25 10:07:39.281486
1609	104	98	332447931	6	246	2	97.24	2020-12-25 10:07:39.281486
1610	1	35	284810999	8	144	2	97.53	2020-12-25 10:07:39.281486
1611	104	32	256686740	6	188	2	97.64	2020-12-25 10:07:39.281486
1612	247	24	386436835	3	239	2	99.57	2020-12-25 10:07:39.281486
1613	237	8	329523173	7	153	2	99.92	2020-12-25 10:07:39.281486
1614	399	22	307348526	2	374	2	104.13	2020-12-25 10:07:39.281486
1615	477	16	265011678	0	15	2	104.18	2020-12-25 10:07:39.281486
1616	237	19	184481231	5	392	2	104.25	2020-12-25 10:07:39.281486
1617	247	14	314216724	3	17	2	104.71	2020-12-25 10:07:39.281486
1618	237	11	152000542	8	89	2	105.75	2020-12-25 10:07:39.281486
1619	1	47	402884846	7	286	2	108.93	2020-12-25 10:07:39.281486
1620	33	24	142177674	8	308	2	111.63	2020-12-25 10:07:39.281486
1621	247	13	400129089	6	54	2	117.25	2020-12-25 10:07:39.281486
1622	399	3	78052423	7	428	2	118.13	2020-12-25 10:07:39.281486
1623	1	12	343925259	8	56	2	118.27	2020-12-25 10:07:39.281486
1624	1	43	312081481	6	400	2	118.57	2020-12-25 10:07:39.281486
1625	104	85	216061885	6	52	2	119.93	2020-12-25 10:07:39.281486
1626	104	9	219971673	3	64	2	120.32	2020-12-25 10:07:39.281486
1627	104	94	119535816	0	319	2	124.01	2020-12-25 10:07:39.281486
1628	247	2	305145937	8	369	2	125.58	2020-12-25 10:07:39.281486
1629	477	8	71822855	0	15	2	128.18	2020-12-25 10:07:39.281486
1630	477	10	397364750	0	265	2	128.75	2020-12-25 10:07:39.281486
1631	104	33	392493434	6	117	2	131.84	2020-12-25 10:07:39.281486
1632	247	21	414322296	5	346	2	132.59	2020-12-25 10:07:39.281486
1633	104	23	227669380	8	473	2	138.80	2020-12-25 10:07:39.281486
1634	104	59	385733919	6	134	2	148.54	2020-12-25 10:07:39.281486
1635	1	9	59256727	5	339	2	149.91	2020-12-25 10:07:39.281486
1636	104	26	209234587	8	455	2	150.53	2020-12-25 10:07:39.281486
1637	237	7	269069867	2	218	2	151.18	2020-12-25 10:07:39.281486
1638	104	38	137080671	2	299	2	151.28	2020-12-25 10:07:39.281486
1639	104	46	81820336	2	107	2	152.18	2020-12-25 10:07:39.281486
1640	33	16	348964389	5	70	2	158.57	2020-12-25 10:07:39.281486
1641	104	52	81050224	0	105	2	161.41	2020-12-25 10:07:39.281486
1642	247	34	270864881	8	282	2	161.62	2020-12-25 10:07:39.281486
1643	104	96	138946166	1	423	2	163.77	2020-12-25 10:07:39.281486
1644	104	71	215743932	0	450	2	167.23	2020-12-25 10:07:39.281486
1645	1	36	170063359	2	70	2	168.20	2020-12-25 10:07:39.281486
1646	1	41	110763269	6	55	2	169.82	2020-12-25 10:07:39.281486
1647	104	88	92658814	4	315	2	170.06	2020-12-25 10:07:39.281486
1648	104	21	229048319	3	333	2	170.27	2020-12-25 10:07:39.281486
1649	655	3	310867983	7	110	2	175.09	2020-12-25 10:07:39.281486
1650	477	7	23691884	8	445	2	177.29	2020-12-25 10:07:39.281486
1651	1	19	78358192	0	491	2	178.48	2020-12-25 10:07:39.281486
1652	399	3	148171067	1	260	2	180.21	2020-12-25 10:07:39.281486
1653	399	11	336371340	0	298	2	182.72	2020-12-25 10:07:39.281486
1654	104	2	19174386	8	395	2	194.07	2020-12-25 10:07:39.281486
1655	104	61	291023771	6	433	2	194.17	2020-12-25 10:07:39.281486
1656	104	2	10676972	4	302	2	194.95	2020-12-25 10:07:39.281486
1657	104	71	250891	7	196	2	196.50	2020-12-25 10:07:39.281486
1658	104	89	148739669	5	185	2	197.27	2020-12-25 10:07:39.281486
1659	237	24	309944323	0	174	2	198.08	2020-12-25 10:07:39.281486
1660	1	45	373891103	1	351	2	198.86	2020-12-25 10:07:39.281486
1661	104	66	357559117	0	100	2	199.52	2020-12-25 10:07:39.281486
1662	104	74	377416799	7	172	2	199.79	2020-12-25 10:07:39.281486
1663	247	26	327147720	5	67	2	200.57	2020-12-25 10:07:39.281486
1664	237	22	392353471	2	297	2	201.27	2020-12-25 10:07:39.281486
1665	399	5	330794984	6	421	2	202.49	2020-12-25 10:07:39.281486
1666	1	46	255503693	6	60	2	202.97	2020-12-25 10:07:39.281486
1667	1	50	267909423	3	382	2	202.97	2020-12-25 10:07:39.281486
1668	1	3	198474553	7	376	2	204.07	2020-12-25 10:07:39.281486
1669	33	13	391415384	0	352	2	204.72	2020-12-25 10:07:39.281486
1670	399	8	112819583	7	124	2	207.96	2020-12-25 10:07:39.281486
1671	104	92	89644267	0	7	2	209.13	2020-12-25 10:07:39.281486
1672	1	46	193473237	0	324	2	211.45	2020-12-25 10:07:39.281486
1673	104	39	339694786	1	384	2	225.48	2020-12-25 10:07:39.281486
1674	104	90	296604792	5	465	2	225.83	2020-12-25 10:07:39.281486
1675	237	2	16015656	0	307	2	225.89	2020-12-25 10:07:39.281486
1676	104	12	255958283	5	485	2	227.51	2020-12-25 10:07:39.281486
1677	1	28	284779153	0	215	2	228.68	2020-12-25 10:07:39.281486
1678	247	12	278633277	7	177	2	237.19	2020-12-25 10:07:39.281486
1679	1	31	162401264	7	147	2	237.21	2020-12-25 10:07:39.281486
1680	237	29	408009128	0	184	2	237.34	2020-12-25 10:07:39.281486
1681	247	27	373415894	7	186	2	238.91	2020-12-25 10:07:39.281486
1682	104	32	289928323	8	223	2	241.62	2020-12-25 10:07:39.281486
1683	33	26	412461021	7	481	2	248.09	2020-12-25 10:07:39.281486
1684	399	6	74138712	7	175	2	250.06	2020-12-25 10:07:39.281486
1685	1	22	212379546	3	427	2	253.15	2020-12-25 10:07:39.281486
1686	655	4	14118439	3	454	2	257.94	2020-12-25 10:07:39.281486
1687	247	22	261110475	7	62	2	258.17	2020-12-25 10:07:39.281486
1688	104	12	224859865	0	122	2	264.78	2020-12-25 10:07:39.281486
1689	104	102	394713802	7	254	2	266.28	2020-12-25 10:07:39.281486
1690	104	32	408421578	4	482	2	267.01	2020-12-25 10:07:39.281486
1691	104	10	174663174	0	168	2	269.54	2020-12-25 10:07:39.281486
1692	104	83	96295332	5	115	2	270.04	2020-12-25 10:07:39.281486
1693	247	22	321020135	5	326	2	270.48	2020-12-25 10:07:39.281486
1694	247	32	161547674	0	342	2	270.78	2020-12-25 10:07:39.281486
1695	33	24	323969502	4	479	2	271.75	2020-12-25 10:07:39.281486
1696	104	49	246690806	8	359	2	272.12	2020-12-25 10:07:39.281486
1697	237	24	308764588	8	446	2	272.97	2020-12-25 10:07:39.281486
1698	33	22	431731035	2	84	2	291.75	2020-12-25 10:07:39.281486
1699	33	2	152303325	3	433	2	292.10	2020-12-25 10:07:39.281486
1700	104	42	72462928	6	486	2	292.10	2020-12-25 10:07:39.281486
1701	1	15	141758207	5	335	2	292.64	2020-12-25 10:07:39.281486
1702	477	12	143928549	0	431	2	293.14	2020-12-25 10:07:39.281486
1703	399	20	31767518	3	277	2	293.61	2020-12-25 10:07:39.281486
1704	1	48	88442466	4	92	2	294.02	2020-12-25 10:07:39.281486
1705	33	5	328901157	0	23	2	296.08	2020-12-25 10:07:39.281486
1706	33	6	181371673	7	187	2	298.20	2020-12-25 10:07:39.281486
1707	104	15	101854984	2	402	2	301.17	2020-12-25 10:07:39.281486
1708	104	94	290489730	3	293	2	301.41	2020-12-25 10:07:39.281486
1709	1	42	306928356	3	317	2	303.53	2020-12-25 10:07:39.281486
1710	104	14	205133509	6	271	2	307.94	2020-12-25 10:07:39.281486
1711	104	45	345163727	2	142	2	308.49	2020-12-25 10:07:39.281486
1712	237	8	119892528	3	449	2	310.60	2020-12-25 10:07:39.281486
1713	1	14	94265006	2	74	2	317.39	2020-12-25 10:07:39.281486
1714	104	83	78037356	2	278	2	317.99	2020-12-25 10:07:39.281486
1715	104	59	348334224	2	234	2	321.64	2020-12-25 10:07:39.281486
1716	104	55	161995280	8	472	2	323.73	2020-12-25 10:07:39.281486
1717	247	17	120831779	6	230	2	324.00	2020-12-25 10:07:39.281486
1718	33	26	253294089	0	129	2	329.85	2020-12-25 10:07:39.281486
1719	237	20	108994701	7	391	2	330.15	2020-12-25 10:07:39.281486
1720	237	2	304599744	5	25	2	330.30	2020-12-25 10:07:39.281486
1721	33	14	321871849	5	312	2	331.22	2020-12-25 10:07:39.281486
1722	623	5	252881626	2	233	2	331.75	2020-12-25 10:07:39.281486
1723	104	46	120862725	7	28	2	337.74	2020-12-25 10:07:39.281486
1724	104	61	70289877	3	415	2	337.77	2020-12-25 10:07:39.281486
1725	104	37	133297860	7	232	2	337.95	2020-12-25 10:07:39.281486
1726	477	7	147843646	4	413	2	340.00	2020-12-25 10:07:39.281486
1727	104	61	152281312	7	404	2	343.81	2020-12-25 10:07:39.281486
1728	104	96	346098925	3	157	2	345.62	2020-12-25 10:07:39.281486
1729	1	39	319852908	3	336	2	347.57	2020-12-25 10:07:39.281486
1730	104	8	173005519	6	442	2	348.40	2020-12-25 10:07:39.281486
1731	104	26	171859642	0	305	2	348.65	2020-12-25 10:07:39.281486
1732	104	18	26909131	2	5	2	355.29	2020-12-25 10:07:39.281486
1733	33	16	287612561	3	192	2	356.70	2020-12-25 10:07:39.281486
1734	655	4	174214808	0	224	2	357.81	2020-12-25 10:07:39.281486
1735	399	7	194158634	6	113	2	359.16	2020-12-25 10:07:39.281486
1736	655	1	212415609	0	291	2	359.73	2020-12-25 10:07:39.281486
1737	33	5	246783691	6	199	2	360.59	2020-12-25 10:07:39.281486
1738	399	5	109408088	5	231	2	364.00	2020-12-25 10:07:39.281486
1739	237	14	115584880	1	161	2	364.04	2020-12-25 10:07:39.281486
1740	399	19	366988259	2	57	2	365.17	2020-12-25 10:07:39.281486
1741	655	7	375479909	2	418	2	366.49	2020-12-25 10:07:39.281486
1742	1	45	222583938	1	220	2	367.06	2020-12-25 10:07:39.281486
1743	237	27	152607205	4	419	2	370.28	2020-12-25 10:07:39.281486
1744	1	8	295739455	5	444	2	370.38	2020-12-25 10:07:39.281486
1745	104	66	71561595	5	439	2	370.93	2020-12-25 10:07:39.281486
1746	237	8	291653525	8	13	2	372.27	2020-12-25 10:07:39.281486
1747	104	2	12457207	6	464	2	373.10	2020-12-25 10:07:39.281486
1748	1	43	19183183	7	83	2	374.34	2020-12-25 10:07:39.281486
1749	247	16	335655953	1	357	2	374.72	2020-12-25 10:07:39.281486
1750	237	20	311248511	4	321	2	375.86	2020-12-25 10:07:39.281486
1751	655	1	172434281	2	82	2	377.82	2020-12-25 10:07:39.281486
1752	33	1	103068840	0	14	2	379.55	2020-12-25 10:07:39.281486
1753	33	23	385646699	4	128	2	381.15	2020-12-25 10:07:39.281486
1754	1	23	22261025	8	412	2	387.44	2020-12-25 10:07:39.281486
1755	1	18	257406629	2	126	2	389.20	2020-12-25 10:07:39.281486
1756	1	32	146565516	7	225	2	391.49	2020-12-25 10:07:39.281486
1757	104	63	419927856	3	432	2	392.43	2020-12-25 10:07:39.281486
1758	1	18	281590938	4	441	2	393.09	2020-12-25 10:07:39.281486
1759	237	22	4845451	3	304	2	393.43	2020-12-25 10:07:39.281486
1760	399	16	357659616	8	2	2	394.09	2020-12-25 10:07:39.281486
1761	104	90	203988788	6	130	2	395.10	2020-12-25 10:07:39.281486
1762	33	18	16955469	7	259	2	395.90	2020-12-25 10:07:39.281486
1763	33	19	53306245	5	371	2	396.36	2020-12-25 10:07:39.281486
1764	104	59	297614839	1	26	2	399.72	2020-12-25 10:07:39.281486
1765	33	8	123157329	3	424	2	400.33	2020-12-25 10:07:39.281486
1766	104	46	214266971	7	209	2	406.13	2020-12-25 10:07:39.281486
1767	104	18	150555655	1	152	2	407.30	2020-12-25 10:07:39.281486
1768	247	28	278566345	2	29	2	408.57	2020-12-25 10:07:39.281486
1769	104	67	197457840	4	254	2	409.13	2020-12-25 10:07:39.281486
1770	399	1	139042757	5	242	2	409.25	2020-12-25 10:07:39.281486
1771	247	14	244883880	0	266	2	412.73	2020-12-25 10:07:39.281486
1772	655	1	433900313	3	176	2	416.25	2020-12-25 10:07:39.281486
1773	104	5	162814876	8	322	2	417.96	2020-12-25 10:07:39.281486
1774	477	13	137736540	3	99	2	419.53	2020-12-25 10:07:39.281486
1775	104	63	198413933	8	217	2	420.91	2020-12-25 10:07:39.281486
1776	477	8	145805591	2	397	2	421.69	2020-12-25 10:07:39.281486
1777	104	97	370200553	7	475	2	427.41	2020-12-25 10:07:39.281486
1778	1	2	187511463	1	300	2	427.93	2020-12-25 10:07:39.281486
1779	104	64	41274465	6	291	2	428.64	2020-12-25 10:07:39.281486
1780	399	21	238231361	4	279	2	428.67	2020-12-25 10:07:39.281486
1781	247	3	339616064	3	243	2	429.11	2020-12-25 10:07:39.281486
1782	33	9	233072312	0	93	2	429.23	2020-12-25 10:07:39.281486
1783	33	20	312103822	7	375	2	430.73	2020-12-25 10:07:39.281486
1784	104	96	392769798	8	72	2	433.80	2020-12-25 10:07:39.281486
1785	1	25	293238749	6	274	2	434.82	2020-12-25 10:07:39.281486
1786	104	58	378367445	2	309	2	436.46	2020-12-25 10:07:39.281486
1787	247	31	49466611	4	367	2	437.00	2020-12-25 10:07:39.281486
1788	33	21	212102682	8	414	2	438.54	2020-12-25 10:07:39.281486
1789	104	58	106703716	7	295	2	438.66	2020-12-25 10:07:39.281486
1790	104	96	140698307	8	107	2	439.59	2020-12-25 10:07:39.281486
1791	237	25	336251546	0	491	2	440.42	2020-12-25 10:07:39.281486
1792	399	3	171793285	4	434	2	441.16	2020-12-25 10:07:39.281486
1793	104	79	357292155	5	281	2	441.76	2020-12-25 10:07:39.281486
1794	399	16	217545867	5	196	2	443.20	2020-12-25 10:07:39.281486
1795	477	1	424527622	3	16	2	443.91	2020-12-25 10:07:39.281486
1796	104	16	85495902	8	471	2	451.13	2020-12-25 10:07:39.281486
1797	1	19	319089332	7	494	2	452.34	2020-12-25 10:07:39.281486
1798	477	5	178152679	3	459	2	460.81	2020-12-25 10:07:39.281486
1799	399	1	253070359	2	77	2	463.55	2020-12-25 10:07:39.281486
1800	247	1	430754320	4	44	2	463.85	2020-12-25 10:07:39.281486
1801	237	16	131349549	7	165	2	463.89	2020-12-25 10:07:39.281486
1802	477	13	213259093	0	116	2	468.23	2020-12-25 10:07:39.281486
1803	104	83	310014871	0	398	2	469.51	2020-12-25 10:07:39.281486
1804	1	24	147091146	5	349	2	469.68	2020-12-25 10:07:39.281486
1805	104	64	278129049	7	319	2	471.38	2020-12-25 10:07:39.281486
1806	247	35	359147377	3	34	2	473.72	2020-12-25 10:07:39.281486
1807	104	60	269892240	7	206	2	473.82	2020-12-25 10:07:39.281486
1808	247	28	212268745	2	141	2	476.10	2020-12-25 10:07:39.281486
1809	237	17	114157983	3	338	2	478.32	2020-12-25 10:07:39.281486
1810	104	8	114263257	8	275	2	480.54	2020-12-25 10:07:39.281486
1811	477	12	135889323	7	354	2	482.03	2020-12-25 10:07:39.281486
1812	1	44	309470210	6	10	2	483.00	2020-12-25 10:07:39.281486
1813	237	28	345939483	1	184	2	485.15	2020-12-25 10:07:39.281486
1814	104	59	384760621	4	347	2	486.29	2020-12-25 10:07:39.281486
1815	477	12	53696318	6	161	2	488.48	2020-12-25 10:07:39.281486
1816	1	27	153273940	8	365	2	491.90	2020-12-25 10:07:39.281486
1817	33	22	300804522	7	420	2	491.91	2020-12-25 10:07:39.281486
1818	104	23	139584117	0	31	2	492.16	2020-12-25 10:07:39.281486
1819	104	17	297509693	5	18	2	496.12	2020-12-25 10:07:39.281486
1820	104	82	111676611	2	389	2	496.90	2020-12-25 10:07:39.281486
1821	104	7	278629263	4	176	2	499.72	2020-12-25 10:07:39.281486
1822	1	22	427367751	7	492	2	501.45	2020-12-25 10:07:39.281486
1823	104	94	26116054	4	461	2	503.02	2020-12-25 10:07:39.281486
1824	1	21	358751672	7	181	2	503.18	2020-12-25 10:07:39.281486
1825	104	77	384674782	6	344	2	505.43	2020-12-25 10:07:39.281486
1826	33	10	256786009	3	43	2	505.59	2020-12-25 10:07:39.281486
1827	399	3	19522853	0	473	2	507.11	2020-12-25 10:07:39.281486
1828	1	43	51824800	2	364	2	510.07	2020-12-25 10:07:39.281486
1829	655	5	60980709	5	468	2	514.03	2020-12-25 10:07:39.281486
1830	477	1	157848874	4	462	2	514.38	2020-12-25 10:07:39.281486
1831	104	86	273638774	5	404	2	514.49	2020-12-25 10:07:39.281486
1832	237	14	352854329	3	73	2	517.15	2020-12-25 10:07:39.281486
1833	1	7	89940236	1	340	2	518.76	2020-12-25 10:07:39.281486
1834	104	44	329070445	1	62	2	518.79	2020-12-25 10:07:39.281486
1835	237	6	125418832	0	112	2	521.32	2020-12-25 10:07:39.281486
1836	104	52	371571641	5	273	2	523.55	2020-12-25 10:07:39.281486
1837	623	2	282169851	5	283	2	524.49	2020-12-25 10:07:39.281486
1838	237	21	246458063	1	213	2	525.58	2020-12-25 10:07:39.281486
1839	237	16	87859333	3	337	2	525.66	2020-12-25 10:07:39.281486
1840	247	20	433631717	7	457	2	526.97	2020-12-25 10:07:39.281486
1841	399	7	68350421	7	403	2	527.77	2020-12-25 10:07:39.281486
1842	1	32	293237279	2	357	2	529.85	2020-12-25 10:07:39.281486
1843	104	49	282599295	4	325	2	537.96	2020-12-25 10:07:39.281486
1844	104	34	401129052	2	440	2	539.13	2020-12-25 10:07:39.281486
1845	655	1	228315155	5	251	2	539.71	2020-12-25 10:07:39.281486
1846	237	26	22728113	7	151	2	540.33	2020-12-25 10:07:39.281486
1847	1	42	57155380	2	377	2	540.54	2020-12-25 10:07:39.281486
1848	1	43	25081812	0	373	2	540.74	2020-12-25 10:07:39.281486
1849	104	27	423757034	6	2	2	544.19	2020-12-25 10:07:39.281486
1850	1	29	262879112	2	78	2	545.03	2020-12-25 10:07:39.281486
1851	399	20	305117207	0	117	2	545.38	2020-12-25 10:07:39.281486
1852	247	27	332622562	7	388	2	546.00	2020-12-25 10:07:39.281486
1853	104	99	272266794	3	227	2	547.34	2020-12-25 10:07:39.281486
1854	1	45	81611528	0	385	2	550.16	2020-12-25 10:07:39.281486
1855	1	40	200322129	7	408	2	552.11	2020-12-25 10:07:39.281486
1856	33	12	403377721	3	368	2	552.50	2020-12-25 10:07:39.281486
1857	104	79	185944483	8	154	2	552.63	2020-12-25 10:07:39.281486
1858	477	13	263560669	1	250	2	552.99	2020-12-25 10:07:39.281486
1859	104	57	331149281	0	95	2	553.51	2020-12-25 10:07:39.281486
1860	247	6	162159371	8	64	2	555.34	2020-12-25 10:07:39.281486
1861	1	9	402464325	6	88	2	556.59	2020-12-25 10:07:39.281486
1862	104	7	103691016	8	290	2	556.82	2020-12-25 10:07:39.281486
1863	1	47	360538154	8	204	2	559.02	2020-12-25 10:07:39.281486
1864	104	67	258044064	4	212	2	559.19	2020-12-25 10:07:39.281486
1865	104	89	79061444	1	329	2	559.89	2020-12-25 10:07:39.281486
1866	104	29	151040077	3	211	2	562.18	2020-12-25 10:07:39.281486
1867	104	5	2681146	7	19	2	563.28	2020-12-25 10:07:39.281486
1868	104	33	329711671	1	339	2	568.17	2020-12-25 10:07:39.281486
1869	1	47	352794091	5	430	2	568.44	2020-12-25 10:07:39.281486
1870	104	93	276689922	1	127	2	571.37	2020-12-25 10:07:39.281486
1871	104	57	423488548	1	443	2	572.43	2020-12-25 10:07:39.281486
1872	33	18	432446013	5	263	2	574.89	2020-12-25 10:07:39.281486
1873	104	19	175233843	8	286	2	575.52	2020-12-25 10:07:39.281486
1874	104	53	137709482	5	207	2	575.82	2020-12-25 10:07:39.281486
1875	399	1	378889628	6	366	2	575.98	2020-12-25 10:07:39.281486
1876	247	4	92481500	3	91	2	577.97	2020-12-25 10:07:39.281486
1877	104	47	14065564	1	269	2	579.37	2020-12-25 10:07:39.281486
1878	1	38	14429544	3	22	2	580.98	2020-12-25 10:07:39.281486
1879	1	16	400575456	1	483	2	581.43	2020-12-25 10:07:39.281486
1880	237	25	255674929	0	237	2	583.57	2020-12-25 10:07:39.281486
1881	1	35	281833930	4	251	2	589.50	2020-12-25 10:07:39.281486
1882	104	3	239890161	3	194	2	590.86	2020-12-25 10:07:39.281486
1883	1	13	363352649	6	58	2	595.40	2020-12-25 10:07:39.281486
1884	247	22	307438756	1	66	2	599.96	2020-12-25 10:07:39.281486
1885	1	36	1943738	8	79	2	603.73	2020-12-25 10:07:39.281486
1886	247	13	32823517	1	313	2	604.26	2020-12-25 10:07:39.281486
1887	104	66	13854824	5	229	2	609.29	2020-12-25 10:07:39.281486
1888	104	51	159959225	1	446	2	610.07	2020-12-25 10:07:39.281486
1889	399	19	25574239	0	480	2	612.86	2020-12-25 10:07:39.281486
1890	104	15	25338387	5	497	2	613.76	2020-12-25 10:07:39.281486
1891	247	16	308257129	6	120	2	615.70	2020-12-25 10:07:39.281486
1892	104	57	64421435	4	311	2	615.82	2020-12-25 10:07:39.281486
1893	104	75	167859094	0	67	2	620.70	2020-12-25 10:07:39.281486
1894	1	19	288218636	5	205	2	621.15	2020-12-25 10:07:39.281486
1895	247	31	146281797	0	489	2	622.74	2020-12-25 10:07:39.281486
1896	1	32	109393292	2	149	2	625.46	2020-12-25 10:07:39.281486
1897	237	1	282639475	4	171	2	625.93	2020-12-25 10:07:39.281486
1898	104	31	176000826	7	109	2	627.87	2020-12-25 10:07:39.281486
1899	247	26	256236972	0	173	2	629.85	2020-12-25 10:07:39.281486
1900	33	20	424879800	6	167	2	632.95	2020-12-25 10:07:39.281486
1901	33	26	15325457	2	435	2	634.60	2020-12-25 10:07:39.281486
1902	399	8	343680986	0	101	2	635.38	2020-12-25 10:07:39.281486
1903	104	72	96562416	8	484	2	641.04	2020-12-25 10:07:39.281486
1904	104	80	342928300	2	97	2	641.28	2020-12-25 10:07:39.281486
1905	1	29	353286653	8	360	2	641.81	2020-12-25 10:07:39.281486
1906	399	18	57900118	8	190	2	643.58	2020-12-25 10:07:39.281486
1907	104	18	431014199	6	193	2	645.20	2020-12-25 10:07:39.281486
1908	247	25	340618593	1	247	2	645.23	2020-12-25 10:07:39.281486
1909	33	15	295186051	0	77	2	645.84	2020-12-25 10:07:39.281486
1910	33	16	374955132	8	121	2	646.84	2020-12-25 10:07:39.281486
1911	104	12	203989772	8	65	2	647.94	2020-12-25 10:07:39.281486
1912	104	71	332346818	0	3	2	650.42	2020-12-25 10:07:39.281486
1913	1	48	320009446	0	452	2	650.86	2020-12-25 10:07:39.281486
1914	477	6	264454988	2	241	2	652.80	2020-12-25 10:07:39.281486
1915	1	37	431398026	8	451	2	652.81	2020-12-25 10:07:39.281486
1916	104	57	383463676	0	59	2	656.09	2020-12-25 10:07:39.281486
1917	247	25	404307387	8	145	2	657.13	2020-12-25 10:07:39.281486
1918	477	2	396397360	6	69	2	660.10	2020-12-25 10:07:39.281486
1919	104	82	198969482	2	488	2	660.75	2020-12-25 10:07:39.281486
1920	1	42	385435512	4	378	2	661.73	2020-12-25 10:07:39.281486
1921	1	31	1745250	4	200	2	663.30	2020-12-25 10:07:39.281486
1922	399	22	199169029	0	201	2	663.51	2020-12-25 10:07:39.281486
1923	104	28	367385521	2	267	2	664.51	2020-12-25 10:07:39.281486
1924	247	20	346855259	7	31	2	668.75	2020-12-25 10:07:39.281486
1925	104	24	44294555	7	495	2	669.99	2020-12-25 10:07:39.281486
1926	247	16	347866165	6	380	2	673.14	2020-12-25 10:07:39.281486
1927	247	22	278600126	8	386	2	673.27	2020-12-25 10:07:39.281486
1928	237	6	68545428	5	20	2	674.71	2020-12-25 10:07:39.281486
1929	399	3	308188397	7	21	2	675.46	2020-12-25 10:07:39.281486
1930	1	20	133151725	5	330	2	676.18	2020-12-25 10:07:39.281486
1931	247	25	59227932	5	387	2	677.55	2020-12-25 10:07:39.281486
1932	1	21	260070721	1	135	2	680.69	2020-12-25 10:07:39.281486
1933	237	19	14767465	2	284	2	681.81	2020-12-25 10:07:39.281486
1934	104	72	31879157	7	213	2	682.78	2020-12-25 10:07:39.281486
1935	655	4	267269132	5	327	2	684.65	2020-12-25 10:07:39.281486
1936	33	20	334808963	7	343	2	684.74	2020-12-25 10:07:39.281486
1937	247	25	219131727	3	453	2	687.28	2020-12-25 10:07:39.281486
1938	104	34	358212114	6	264	2	692.75	2020-12-25 10:07:39.281486
1939	104	25	345398841	1	393	2	695.62	2020-12-25 10:07:39.281486
1940	104	28	364721267	5	56	2	697.06	2020-12-25 10:07:39.281486
1941	237	8	29358466	0	180	2	697.18	2020-12-25 10:07:39.281486
1942	247	27	117059620	3	438	2	697.57	2020-12-25 10:07:39.281486
1943	399	8	12481557	1	41	2	704.78	2020-12-25 10:07:39.281486
1944	104	57	618414	1	325	2	708.71	2020-12-25 10:07:39.281486
1945	104	45	262817224	4	255	2	709.88	2020-12-25 10:07:39.281486
1946	399	10	98305027	8	288	2	713.36	2020-12-25 10:07:39.281486
1947	1	35	99457920	7	47	2	715.86	2020-12-25 10:07:39.281486
1948	104	102	118676303	3	270	2	717.41	2020-12-25 10:07:39.281486
1949	104	40	24048895	8	76	2	717.64	2020-12-25 10:07:39.281486
1950	104	47	132822257	7	458	2	720.35	2020-12-25 10:07:39.281486
1951	247	17	284146067	6	36	2	724.62	2020-12-25 10:07:39.281486
1952	33	29	342936889	2	499	2	726.26	2020-12-25 10:07:39.281486
1953	247	28	280523875	6	390	2	727.64	2020-12-25 10:07:39.281486
1954	104	77	222531385	7	53	2	728.78	2020-12-25 10:07:39.281486
1955	104	44	16293719	0	401	2	729.95	2020-12-25 10:07:39.281486
1956	33	9	52668425	5	98	2	730.48	2020-12-25 10:07:39.281486
1957	104	40	19477901	5	467	2	734.68	2020-12-25 10:07:39.281486
1958	1	40	125219232	8	85	2	735.01	2020-12-25 10:07:39.281486
1959	33	19	60336965	5	116	2	736.25	2020-12-25 10:07:39.281486
1960	104	94	94715990	6	411	2	742.85	2020-12-25 10:07:39.281486
1961	1	18	146124300	0	287	2	742.94	2020-12-25 10:07:39.281486
1962	399	1	127838726	4	323	2	743.45	2020-12-25 10:07:39.281486
1963	247	2	201484438	0	32	2	743.51	2020-12-25 10:07:39.281486
1964	33	25	262245541	4	111	2	743.80	2020-12-25 10:07:39.281486
1965	237	1	233342431	4	295	2	744.20	2020-12-25 10:07:39.281486
1966	104	40	296326411	6	170	2	747.90	2020-12-25 10:07:39.281486
1967	104	73	239350397	1	469	2	748.43	2020-12-25 10:07:39.281486
1968	1	43	141446647	6	447	2	748.88	2020-12-25 10:07:39.281486
1969	33	13	53087598	4	238	2	750.58	2020-12-25 10:07:39.281486
1970	104	85	368241711	8	140	2	751.62	2020-12-25 10:07:39.281486
1971	104	98	42191114	8	258	2	751.80	2020-12-25 10:07:39.281486
1972	477	11	373602010	6	236	2	753.43	2020-12-25 10:07:39.281486
1973	104	80	181763720	5	241	2	760.17	2020-12-25 10:07:39.281486
1974	237	14	364578650	6	138	2	763.12	2020-12-25 10:07:39.281486
1975	104	42	116265008	4	381	2	763.36	2020-12-25 10:07:39.281486
1976	104	54	418125983	2	362	2	770.89	2020-12-25 10:07:39.281486
1977	33	25	178985163	4	466	2	777.35	2020-12-25 10:07:39.281486
1978	104	50	9758400	2	162	2	784.65	2020-12-25 10:07:39.281486
1979	237	8	179093455	3	249	2	786.70	2020-12-25 10:07:39.281486
1980	33	15	269295123	4	405	2	788.29	2020-12-25 10:07:39.281486
1981	104	31	208066282	8	314	2	789.70	2020-12-25 10:07:39.281486
1982	247	20	245051338	3	6	2	791.05	2020-12-25 10:07:39.281486
1983	1	5	371047745	5	379	2	798.39	2020-12-25 10:07:39.281486
1984	399	22	76253486	6	390	2	800.72	2020-12-25 10:07:39.281486
1985	399	11	383975196	8	345	2	802.02	2020-12-25 10:07:39.281486
1986	1	20	271352669	7	429	2	802.76	2020-12-25 10:07:39.281486
1987	104	78	37430685	3	41	2	804.94	2020-12-25 10:07:39.281486
1988	104	60	360009812	8	292	2	805.85	2020-12-25 10:07:39.281486
1989	1	6	193291495	2	282	2	806.75	2020-12-25 10:07:39.281486
1990	104	75	217989140	8	4	2	814.03	2020-12-25 10:07:39.281486
1991	104	4	348850672	0	48	2	814.98	2020-12-25 10:07:39.281486
1992	247	14	225836084	3	474	2	815.71	2020-12-25 10:07:39.281486
1993	1	41	288165031	8	166	2	815.80	2020-12-25 10:07:39.281486
1994	399	3	402204855	1	203	2	815.81	2020-12-25 10:07:39.281486
1995	33	4	413602655	4	272	2	817.76	2020-12-25 10:07:39.281486
1996	399	12	188542592	6	425	2	818.11	2020-12-25 10:07:39.281486
1997	1	4	414448303	0	328	2	820.76	2020-12-25 10:07:39.281486
1998	247	29	174308602	8	360	2	821.30	2020-12-25 10:07:39.281486
1999	33	11	291972848	4	226	2	822.66	2020-12-25 10:07:39.281486
2000	477	13	45021305	5	353	2	826.05	2020-12-25 10:07:39.281486
2001	1	2	409112000	2	289	2	827.00	2020-12-25 10:07:39.281486
2002	247	3	435450952	5	90	2	829.09	2020-12-25 10:07:39.281486
2003	104	74	95028093	8	219	2	835.21	2020-12-25 10:07:39.281486
2004	33	29	267312285	4	205	2	837.37	2020-12-25 10:07:39.281486
2005	237	3	215637901	0	262	2	843.78	2020-12-25 10:07:39.281486
2006	1	36	393292023	4	456	2	844.38	2020-12-25 10:07:39.281486
2007	247	29	366490642	2	500	2	844.89	2020-12-25 10:07:39.281486
2008	1	10	11718435	5	182	2	845.42	2020-12-25 10:07:39.281486
2009	104	70	182514182	1	243	2	845.59	2020-12-25 10:07:39.281486
2010	104	92	221373266	8	30	2	846.53	2020-12-25 10:07:39.281486
2011	104	8	310329511	7	94	2	848.57	2020-12-25 10:07:39.281486
2012	399	19	343019537	2	42	2	852.45	2020-12-25 10:07:39.281486
2013	104	66	161410091	6	256	2	855.62	2020-12-25 10:07:39.281486
2014	104	73	372106632	3	422	2	855.98	2020-12-25 10:07:39.281486
2015	104	7	57689792	4	396	2	856.49	2020-12-25 10:07:39.281486
2016	1	26	268004601	2	373	2	858.30	2020-12-25 10:07:39.281486
2017	104	93	257282600	5	134	2	859.65	2020-12-25 10:07:39.281486
2018	477	12	188340066	0	283	2	859.85	2020-12-25 10:07:39.281486
\.


--
-- Data for Name: conta_corrente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conta_corrente (banco_numero, agencia_numero, numero, digito, cliente_numero, ativo, data_criacao) FROM stdin;
1	2	187511463	1	300	t	2020-12-25 10:07:39.281486
1	2	400962468	2	348	t	2020-12-25 10:07:39.281486
1	2	409112000	2	289	t	2020-12-25 10:07:39.281486
1	3	198474553	7	376	t	2020-12-25 10:07:39.281486
1	4	414448303	0	328	t	2020-12-25 10:07:39.281486
1	4	11857381	6	240	t	2020-12-25 10:07:39.281486
1	5	371047745	5	379	t	2020-12-25 10:07:39.281486
1	5	225616342	3	119	t	2020-12-25 10:07:39.281486
1	5	15140549	8	331	t	2020-12-25 10:07:39.281486
1	6	193291495	2	282	t	2020-12-25 10:07:39.281486
1	7	89940236	1	340	t	2020-12-25 10:07:39.281486
1	7	168215886	1	156	t	2020-12-25 10:07:39.281486
1	8	295739455	5	444	t	2020-12-25 10:07:39.281486
1	9	402464325	6	88	t	2020-12-25 10:07:39.281486
1	9	59256727	5	339	t	2020-12-25 10:07:39.281486
1	10	11718435	5	182	t	2020-12-25 10:07:39.281486
1	12	343925259	8	56	t	2020-12-25 10:07:39.281486
1	13	363352649	6	58	t	2020-12-25 10:07:39.281486
1	14	94265006	2	74	t	2020-12-25 10:07:39.281486
1	15	261507272	1	68	t	2020-12-25 10:07:39.281486
1	15	141758207	5	335	t	2020-12-25 10:07:39.281486
1	16	400575456	1	483	t	2020-12-25 10:07:39.281486
1	17	127918587	3	9	t	2020-12-25 10:07:39.281486
1	18	257406629	2	126	t	2020-12-25 10:07:39.281486
1	18	146124300	0	287	t	2020-12-25 10:07:39.281486
1	18	281590938	4	441	t	2020-12-25 10:07:39.281486
1	19	78358192	0	491	t	2020-12-25 10:07:39.281486
1	19	319089332	7	494	t	2020-12-25 10:07:39.281486
1	19	288218636	5	205	t	2020-12-25 10:07:39.281486
1	20	271352669	7	429	t	2020-12-25 10:07:39.281486
1	20	133151725	5	330	t	2020-12-25 10:07:39.281486
1	20	158562267	0	136	t	2020-12-25 10:07:39.281486
1	21	260070721	1	135	t	2020-12-25 10:07:39.281486
1	21	358751672	7	181	t	2020-12-25 10:07:39.281486
1	22	212379546	3	427	t	2020-12-25 10:07:39.281486
1	22	427367751	7	492	t	2020-12-25 10:07:39.281486
1	23	22261025	8	412	t	2020-12-25 10:07:39.281486
1	23	431262421	3	143	t	2020-12-25 10:07:39.281486
1	24	147091146	5	349	t	2020-12-25 10:07:39.281486
1	25	293238749	6	274	t	2020-12-25 10:07:39.281486
1	26	268004601	2	373	t	2020-12-25 10:07:39.281486
1	26	93598696	7	399	t	2020-12-25 10:07:39.281486
1	27	153273940	8	365	t	2020-12-25 10:07:39.281486
1	28	284779153	0	215	t	2020-12-25 10:07:39.281486
1	29	262879112	2	78	t	2020-12-25 10:07:39.281486
1	29	353286653	8	360	t	2020-12-25 10:07:39.281486
1	30	403521640	1	108	t	2020-12-25 10:07:39.281486
1	31	1745250	4	200	t	2020-12-25 10:07:39.281486
1	31	162401264	7	147	t	2020-12-25 10:07:39.281486
1	32	146565516	7	225	t	2020-12-25 10:07:39.281486
1	32	109393292	2	149	t	2020-12-25 10:07:39.281486
1	32	293237279	2	357	t	2020-12-25 10:07:39.281486
1	34	94832614	5	244	t	2020-12-25 10:07:39.281486
1	35	281833930	4	251	t	2020-12-25 10:07:39.281486
1	35	106124891	2	150	t	2020-12-25 10:07:39.281486
1	35	99457920	7	47	t	2020-12-25 10:07:39.281486
1	35	278539794	3	416	t	2020-12-25 10:07:39.281486
1	35	284810999	8	144	t	2020-12-25 10:07:39.281486
1	36	170063359	2	70	t	2020-12-25 10:07:39.281486
1	36	1943738	8	79	t	2020-12-25 10:07:39.281486
1	36	254359402	7	326	t	2020-12-25 10:07:39.281486
1	36	393292023	4	456	t	2020-12-25 10:07:39.281486
1	37	431398026	8	451	t	2020-12-25 10:07:39.281486
1	38	14429544	3	22	t	2020-12-25 10:07:39.281486
1	39	319852908	3	336	t	2020-12-25 10:07:39.281486
1	39	97217528	8	436	t	2020-12-25 10:07:39.281486
1	39	299247041	8	299	t	2020-12-25 10:07:39.281486
1	40	125219232	8	85	t	2020-12-25 10:07:39.281486
1	40	243591934	8	257	t	2020-12-25 10:07:39.281486
1	40	200322129	7	408	t	2020-12-25 10:07:39.281486
1	41	110763269	6	55	t	2020-12-25 10:07:39.281486
1	41	288165031	8	166	t	2020-12-25 10:07:39.281486
1	42	57155380	2	377	t	2020-12-25 10:07:39.281486
1	42	385435512	4	378	t	2020-12-25 10:07:39.281486
1	42	271203609	8	394	t	2020-12-25 10:07:39.281486
1	42	224479925	1	216	t	2020-12-25 10:07:39.281486
1	42	306928356	3	317	t	2020-12-25 10:07:39.281486
1	43	312081481	6	400	t	2020-12-25 10:07:39.281486
1	43	141446647	6	447	t	2020-12-25 10:07:39.281486
1	43	25081812	0	373	t	2020-12-25 10:07:39.281486
1	43	51824800	2	364	t	2020-12-25 10:07:39.281486
1	43	19183183	7	83	t	2020-12-25 10:07:39.281486
1	44	77072861	2	184	t	2020-12-25 10:07:39.281486
1	44	309470210	6	10	t	2020-12-25 10:07:39.281486
1	44	115774292	1	294	t	2020-12-25 10:07:39.281486
1	44	234700334	4	320	t	2020-12-25 10:07:39.281486
1	45	373891103	1	351	t	2020-12-25 10:07:39.281486
1	45	180159338	8	437	t	2020-12-25 10:07:39.281486
1	45	224478822	2	148	t	2020-12-25 10:07:39.281486
1	45	222583938	1	220	t	2020-12-25 10:07:39.281486
1	45	81611528	0	385	t	2020-12-25 10:07:39.281486
1	46	149882870	8	33	t	2020-12-25 10:07:39.281486
1	46	193473237	0	324	t	2020-12-25 10:07:39.281486
1	46	255503693	6	60	t	2020-12-25 10:07:39.281486
1	47	352794091	5	430	t	2020-12-25 10:07:39.281486
1	47	360538154	8	204	t	2020-12-25 10:07:39.281486
1	47	402884846	7	286	t	2020-12-25 10:07:39.281486
1	48	320009446	0	452	t	2020-12-25 10:07:39.281486
1	48	88442466	4	92	t	2020-12-25 10:07:39.281486
1	49	364941217	4	139	t	2020-12-25 10:07:39.281486
1	50	267909423	3	382	t	2020-12-25 10:07:39.281486
247	1	430754320	4	44	t	2020-12-25 10:07:39.281486
247	1	251144344	3	131	t	2020-12-25 10:07:39.281486
247	2	201484438	0	32	t	2020-12-25 10:07:39.281486
247	2	305145937	8	369	t	2020-12-25 10:07:39.281486
247	2	99943025	7	88	t	2020-12-25 10:07:39.281486
247	3	435450952	5	90	t	2020-12-25 10:07:39.281486
247	3	339616064	3	243	t	2020-12-25 10:07:39.281486
247	4	276108961	3	137	t	2020-12-25 10:07:39.281486
247	4	92481500	3	91	t	2020-12-25 10:07:39.281486
247	5	4342689	0	498	t	2020-12-25 10:07:39.281486
247	6	162159371	8	64	t	2020-12-25 10:07:39.281486
247	7	397059706	0	11	t	2020-12-25 10:07:39.281486
247	7	15822670	1	104	t	2020-12-25 10:07:39.281486
247	8	240285900	7	310	t	2020-12-25 10:07:39.281486
247	9	254037645	1	158	t	2020-12-25 10:07:39.281486
247	9	109042865	5	122	t	2020-12-25 10:07:39.281486
247	12	278633277	7	177	t	2020-12-25 10:07:39.281486
247	12	424343051	0	280	t	2020-12-25 10:07:39.281486
247	13	400129089	6	54	t	2020-12-25 10:07:39.281486
247	13	32823517	1	313	t	2020-12-25 10:07:39.281486
247	14	244883880	0	266	t	2020-12-25 10:07:39.281486
247	14	314216724	3	17	t	2020-12-25 10:07:39.281486
247	14	225836084	3	474	t	2020-12-25 10:07:39.281486
247	16	308257129	6	120	t	2020-12-25 10:07:39.281486
247	16	347866165	6	380	t	2020-12-25 10:07:39.281486
247	16	335655953	1	357	t	2020-12-25 10:07:39.281486
247	17	284146067	6	36	t	2020-12-25 10:07:39.281486
247	17	120831779	6	230	t	2020-12-25 10:07:39.281486
247	20	346855259	7	31	t	2020-12-25 10:07:39.281486
247	20	245051338	3	6	t	2020-12-25 10:07:39.281486
247	20	433631717	7	457	t	2020-12-25 10:07:39.281486
247	21	414322296	5	346	t	2020-12-25 10:07:39.281486
247	22	278600126	8	386	t	2020-12-25 10:07:39.281486
247	22	321020135	5	326	t	2020-12-25 10:07:39.281486
247	22	261110475	7	62	t	2020-12-25 10:07:39.281486
247	22	307438756	1	66	t	2020-12-25 10:07:39.281486
247	24	386436835	3	239	t	2020-12-25 10:07:39.281486
247	25	219131727	3	453	t	2020-12-25 10:07:39.281486
247	25	340618593	1	247	t	2020-12-25 10:07:39.281486
247	25	59227932	5	387	t	2020-12-25 10:07:39.281486
247	25	404307387	8	145	t	2020-12-25 10:07:39.281486
247	26	327147720	5	67	t	2020-12-25 10:07:39.281486
247	26	256236972	0	173	t	2020-12-25 10:07:39.281486
247	27	117059620	3	438	t	2020-12-25 10:07:39.281486
247	27	373415894	7	186	t	2020-12-25 10:07:39.281486
247	27	332622562	7	388	t	2020-12-25 10:07:39.281486
247	28	280523875	6	390	t	2020-12-25 10:07:39.281486
247	28	212268745	2	141	t	2020-12-25 10:07:39.281486
247	28	278566345	2	29	t	2020-12-25 10:07:39.281486
247	29	366490642	2	500	t	2020-12-25 10:07:39.281486
247	29	15769960	4	118	t	2020-12-25 10:07:39.281486
247	29	174308602	8	360	t	2020-12-25 10:07:39.281486
247	30	424222306	8	208	t	2020-12-25 10:07:39.281486
247	31	143117142	6	245	t	2020-12-25 10:07:39.281486
247	31	49466611	4	367	t	2020-12-25 10:07:39.281486
247	31	146281797	0	489	t	2020-12-25 10:07:39.281486
247	32	161547674	0	342	t	2020-12-25 10:07:39.281486
247	34	270864881	8	282	t	2020-12-25 10:07:39.281486
247	34	50046444	8	198	t	2020-12-25 10:07:39.281486
247	34	149514305	8	86	t	2020-12-25 10:07:39.281486
247	35	314354173	0	160	t	2020-12-25 10:07:39.281486
247	35	359147377	3	34	t	2020-12-25 10:07:39.281486
247	35	357719152	2	45	t	2020-12-25 10:07:39.281486
237	1	282639475	4	171	t	2020-12-25 10:07:39.281486
237	1	233342431	4	295	t	2020-12-25 10:07:39.281486
237	2	304599744	5	25	t	2020-12-25 10:07:39.281486
237	2	16015656	0	307	t	2020-12-25 10:07:39.281486
237	3	215637901	0	262	t	2020-12-25 10:07:39.281486
237	5	986103	7	460	t	2020-12-25 10:07:39.281486
237	5	333716289	1	426	t	2020-12-25 10:07:39.281486
237	6	125418832	0	112	t	2020-12-25 10:07:39.281486
237	6	68545428	5	20	t	2020-12-25 10:07:39.281486
237	7	82065030	7	406	t	2020-12-25 10:07:39.281486
237	7	269069867	2	218	t	2020-12-25 10:07:39.281486
237	8	291653525	8	13	t	2020-12-25 10:07:39.281486
237	8	119892528	3	449	t	2020-12-25 10:07:39.281486
237	8	29358466	0	180	t	2020-12-25 10:07:39.281486
237	8	329523173	7	153	t	2020-12-25 10:07:39.281486
237	8	179093455	3	249	t	2020-12-25 10:07:39.281486
237	11	152000542	8	89	t	2020-12-25 10:07:39.281486
237	12	389930193	0	210	t	2020-12-25 10:07:39.281486
237	13	225866991	8	470	t	2020-12-25 10:07:39.281486
237	13	64146061	0	63	t	2020-12-25 10:07:39.281486
237	14	410502527	1	132	t	2020-12-25 10:07:39.281486
237	14	364578650	6	138	t	2020-12-25 10:07:39.281486
237	14	115584880	1	161	t	2020-12-25 10:07:39.281486
237	14	352854329	3	73	t	2020-12-25 10:07:39.281486
237	15	341282703	8	484	t	2020-12-25 10:07:39.281486
237	16	87859333	3	337	t	2020-12-25 10:07:39.281486
237	16	131349549	7	165	t	2020-12-25 10:07:39.281486
237	17	157574169	5	127	t	2020-12-25 10:07:39.281486
237	17	114157983	3	338	t	2020-12-25 10:07:39.281486
237	19	294600697	0	268	t	2020-12-25 10:07:39.281486
237	19	138328967	0	489	t	2020-12-25 10:07:39.281486
237	19	184481231	5	392	t	2020-12-25 10:07:39.281486
237	19	14767465	2	284	t	2020-12-25 10:07:39.281486
237	20	311248511	4	321	t	2020-12-25 10:07:39.281486
237	20	108994701	7	391	t	2020-12-25 10:07:39.281486
237	21	246458063	1	213	t	2020-12-25 10:07:39.281486
237	22	4845451	3	304	t	2020-12-25 10:07:39.281486
237	22	392353471	2	297	t	2020-12-25 10:07:39.281486
237	22	229671622	6	271	t	2020-12-25 10:07:39.281486
237	24	304560641	2	24	t	2020-12-25 10:07:39.281486
237	24	308764588	8	446	t	2020-12-25 10:07:39.281486
237	24	309944323	0	174	t	2020-12-25 10:07:39.281486
237	25	336251546	0	491	t	2020-12-25 10:07:39.281486
237	25	255674929	0	237	t	2020-12-25 10:07:39.281486
237	26	218769841	2	80	t	2020-12-25 10:07:39.281486
237	26	22728113	7	151	t	2020-12-25 10:07:39.281486
237	27	152607205	4	419	t	2020-12-25 10:07:39.281486
237	28	211747031	3	123	t	2020-12-25 10:07:39.281486
237	28	345939483	1	184	t	2020-12-25 10:07:39.281486
237	29	408009128	0	184	t	2020-12-25 10:07:39.281486
33	1	27027541	4	221	t	2020-12-25 10:07:39.281486
33	1	103068840	0	14	t	2020-12-25 10:07:39.281486
33	1	394141331	1	164	t	2020-12-25 10:07:39.281486
33	2	152303325	3	433	t	2020-12-25 10:07:39.281486
33	2	369267539	0	46	t	2020-12-25 10:07:39.281486
33	4	323404707	5	155	t	2020-12-25 10:07:39.281486
33	4	413602655	4	272	t	2020-12-25 10:07:39.281486
33	5	246783691	6	199	t	2020-12-25 10:07:39.281486
33	5	229504949	1	133	t	2020-12-25 10:07:39.281486
33	5	328901157	0	23	t	2020-12-25 10:07:39.281486
33	6	181371673	7	187	t	2020-12-25 10:07:39.281486
33	6	369692311	6	303	t	2020-12-25 10:07:39.281486
33	8	123157329	3	424	t	2020-12-25 10:07:39.281486
33	8	65672262	0	122	t	2020-12-25 10:07:39.281486
33	9	233072312	0	93	t	2020-12-25 10:07:39.281486
33	9	52668425	5	98	t	2020-12-25 10:07:39.281486
33	10	256786009	3	43	t	2020-12-25 10:07:39.281486
33	11	291972848	4	226	t	2020-12-25 10:07:39.281486
33	11	215478290	0	334	t	2020-12-25 10:07:39.281486
33	12	403377721	3	368	t	2020-12-25 10:07:39.281486
33	13	29777566	6	109	t	2020-12-25 10:07:39.281486
33	13	391415384	0	352	t	2020-12-25 10:07:39.281486
33	13	53087598	4	238	t	2020-12-25 10:07:39.281486
33	14	321871849	5	312	t	2020-12-25 10:07:39.281486
33	15	269295123	4	405	t	2020-12-25 10:07:39.281486
33	15	295186051	0	77	t	2020-12-25 10:07:39.281486
33	15	131039705	4	214	t	2020-12-25 10:07:39.281486
33	16	348964389	5	70	t	2020-12-25 10:07:39.281486
33	16	374955132	8	121	t	2020-12-25 10:07:39.281486
33	16	287612561	3	192	t	2020-12-25 10:07:39.281486
33	18	16955469	7	259	t	2020-12-25 10:07:39.281486
33	18	432446013	5	263	t	2020-12-25 10:07:39.281486
33	19	60336965	5	116	t	2020-12-25 10:07:39.281486
33	19	53306245	5	371	t	2020-12-25 10:07:39.281486
33	19	297332461	0	409	t	2020-12-25 10:07:39.281486
33	20	424879800	6	167	t	2020-12-25 10:07:39.281486
33	20	312103822	7	375	t	2020-12-25 10:07:39.281486
33	20	334808963	7	343	t	2020-12-25 10:07:39.281486
33	20	147450401	4	189	t	2020-12-25 10:07:39.281486
33	21	212102682	8	414	t	2020-12-25 10:07:39.281486
33	21	409960	1	258	t	2020-12-25 10:07:39.281486
33	22	431731035	2	84	t	2020-12-25 10:07:39.281486
33	22	300804522	7	420	t	2020-12-25 10:07:39.281486
33	23	385646699	4	128	t	2020-12-25 10:07:39.281486
33	24	323969502	4	479	t	2020-12-25 10:07:39.281486
33	24	412424527	7	87	t	2020-12-25 10:07:39.281486
33	24	142177674	8	308	t	2020-12-25 10:07:39.281486
33	25	178985163	4	466	t	2020-12-25 10:07:39.281486
33	25	262245541	4	111	t	2020-12-25 10:07:39.281486
33	25	42648609	2	169	t	2020-12-25 10:07:39.281486
33	26	253294089	0	129	t	2020-12-25 10:07:39.281486
33	26	15325457	2	435	t	2020-12-25 10:07:39.281486
33	26	412461021	7	481	t	2020-12-25 10:07:39.281486
33	27	59226760	2	8	t	2020-12-25 10:07:39.281486
33	29	135452660	5	159	t	2020-12-25 10:07:39.281486
33	29	105294373	2	350	t	2020-12-25 10:07:39.281486
33	29	342936889	2	499	t	2020-12-25 10:07:39.281486
33	29	267312285	4	205	t	2020-12-25 10:07:39.281486
104	2	10676972	4	302	t	2020-12-25 10:07:39.281486
104	2	12457207	6	464	t	2020-12-25 10:07:39.281486
104	2	19174386	8	395	t	2020-12-25 10:07:39.281486
104	3	239890161	3	194	t	2020-12-25 10:07:39.281486
104	3	398389701	8	106	t	2020-12-25 10:07:39.281486
104	4	363866700	4	87	t	2020-12-25 10:07:39.281486
104	4	215485447	8	218	t	2020-12-25 10:07:39.281486
104	4	348850672	0	48	t	2020-12-25 10:07:39.281486
104	5	2681146	7	19	t	2020-12-25 10:07:39.281486
104	5	162814876	8	322	t	2020-12-25 10:07:39.281486
104	7	278629263	4	176	t	2020-12-25 10:07:39.281486
104	7	103691016	8	290	t	2020-12-25 10:07:39.281486
104	7	57689792	4	396	t	2020-12-25 10:07:39.281486
104	8	114263257	8	275	t	2020-12-25 10:07:39.281486
104	8	310329511	7	94	t	2020-12-25 10:07:39.281486
104	8	173005519	6	442	t	2020-12-25 10:07:39.281486
104	9	163171955	3	103	t	2020-12-25 10:07:39.281486
104	9	219971673	3	64	t	2020-12-25 10:07:39.281486
104	10	174663174	0	168	t	2020-12-25 10:07:39.281486
104	10	343698402	2	450	t	2020-12-25 10:07:39.281486
104	11	7374585	5	358	t	2020-12-25 10:07:39.281486
104	11	362325544	4	135	t	2020-12-25 10:07:39.281486
104	11	242717839	5	37	t	2020-12-25 10:07:39.281486
104	12	255958283	5	485	t	2020-12-25 10:07:39.281486
104	12	203989772	8	65	t	2020-12-25 10:07:39.281486
104	12	224859865	0	122	t	2020-12-25 10:07:39.281486
104	14	205133509	6	271	t	2020-12-25 10:07:39.281486
104	15	25338387	5	497	t	2020-12-25 10:07:39.281486
104	15	101854984	2	402	t	2020-12-25 10:07:39.281486
104	15	227768696	8	341	t	2020-12-25 10:07:39.281486
104	16	85495902	8	471	t	2020-12-25 10:07:39.281486
104	17	297509693	5	18	t	2020-12-25 10:07:39.281486
104	18	150555655	1	152	t	2020-12-25 10:07:39.281486
104	18	431014199	6	193	t	2020-12-25 10:07:39.281486
104	18	105980628	7	496	t	2020-12-25 10:07:39.281486
104	18	26909131	2	5	t	2020-12-25 10:07:39.281486
104	19	175233843	8	286	t	2020-12-25 10:07:39.281486
104	20	336215247	8	51	t	2020-12-25 10:07:39.281486
104	21	229048319	3	333	t	2020-12-25 10:07:39.281486
104	23	227669380	8	473	t	2020-12-25 10:07:39.281486
104	23	139584117	0	31	t	2020-12-25 10:07:39.281486
104	24	44294555	7	495	t	2020-12-25 10:07:39.281486
104	25	345398841	1	393	t	2020-12-25 10:07:39.281486
104	26	171859642	0	305	t	2020-12-25 10:07:39.281486
104	26	209234587	8	455	t	2020-12-25 10:07:39.281486
104	27	423757034	6	2	t	2020-12-25 10:07:39.281486
104	28	364721267	5	56	t	2020-12-25 10:07:39.281486
104	28	107717060	1	40	t	2020-12-25 10:07:39.281486
104	28	367385521	2	267	t	2020-12-25 10:07:39.281486
104	28	404814467	0	408	t	2020-12-25 10:07:39.281486
104	29	6399999	8	477	t	2020-12-25 10:07:39.281486
104	29	151040077	3	211	t	2020-12-25 10:07:39.281486
104	30	385276988	1	355	t	2020-12-25 10:07:39.281486
104	30	163904238	3	361	t	2020-12-25 10:07:39.281486
104	31	208066282	8	314	t	2020-12-25 10:07:39.281486
104	31	176000826	7	109	t	2020-12-25 10:07:39.281486
104	32	408421578	4	482	t	2020-12-25 10:07:39.281486
104	32	256686740	6	188	t	2020-12-25 10:07:39.281486
104	32	289928323	8	223	t	2020-12-25 10:07:39.281486
104	33	329711671	1	339	t	2020-12-25 10:07:39.281486
104	33	392493434	6	117	t	2020-12-25 10:07:39.281486
104	34	358212114	6	264	t	2020-12-25 10:07:39.281486
104	34	167691573	0	253	t	2020-12-25 10:07:39.281486
104	34	401129052	2	440	t	2020-12-25 10:07:39.281486
104	37	133297860	7	232	t	2020-12-25 10:07:39.281486
104	38	137080671	2	299	t	2020-12-25 10:07:39.281486
104	38	366304544	5	222	t	2020-12-25 10:07:39.281486
104	39	321331703	6	163	t	2020-12-25 10:07:39.281486
104	39	339694786	1	384	t	2020-12-25 10:07:39.281486
104	39	58862980	2	114	t	2020-12-25 10:07:39.281486
104	39	5446986	4	102	t	2020-12-25 10:07:39.281486
104	40	24048895	8	76	t	2020-12-25 10:07:39.281486
104	40	19477901	5	467	t	2020-12-25 10:07:39.281486
104	40	296326411	6	170	t	2020-12-25 10:07:39.281486
104	40	273600731	3	50	t	2020-12-25 10:07:39.281486
104	41	372887850	4	463	t	2020-12-25 10:07:39.281486
104	42	72462928	6	486	t	2020-12-25 10:07:39.281486
104	42	116265008	4	381	t	2020-12-25 10:07:39.281486
104	42	325666566	1	71	t	2020-12-25 10:07:39.281486
104	43	339550311	0	280	t	2020-12-25 10:07:39.281486
104	44	16293719	0	401	t	2020-12-25 10:07:39.281486
104	44	162980999	7	197	t	2020-12-25 10:07:39.281486
104	44	329070445	1	62	t	2020-12-25 10:07:39.281486
104	45	262817224	4	255	t	2020-12-25 10:07:39.281486
104	45	98186070	6	356	t	2020-12-25 10:07:39.281486
104	45	345163727	2	142	t	2020-12-25 10:07:39.281486
104	46	120862725	7	28	t	2020-12-25 10:07:39.281486
104	46	81820336	2	107	t	2020-12-25 10:07:39.281486
104	46	214266971	7	209	t	2020-12-25 10:07:39.281486
104	47	14065564	1	269	t	2020-12-25 10:07:39.281486
104	47	132822257	7	458	t	2020-12-25 10:07:39.281486
104	49	282599295	4	325	t	2020-12-25 10:07:39.281486
104	49	246690806	8	359	t	2020-12-25 10:07:39.281486
104	50	9758400	2	162	t	2020-12-25 10:07:39.281486
104	50	44895790	7	383	t	2020-12-25 10:07:39.281486
104	51	159959225	1	446	t	2020-12-25 10:07:39.281486
104	51	390258408	6	32	t	2020-12-25 10:07:39.281486
104	51	8106488	5	396	t	2020-12-25 10:07:39.281486
104	52	371571641	5	273	t	2020-12-25 10:07:39.281486
104	52	81050224	0	105	t	2020-12-25 10:07:39.281486
104	52	156922631	8	179	t	2020-12-25 10:07:39.281486
104	53	137709482	5	207	t	2020-12-25 10:07:39.281486
104	53	359745287	4	448	t	2020-12-25 10:07:39.281486
104	54	418125983	2	362	t	2020-12-25 10:07:39.281486
104	55	161995280	8	472	t	2020-12-25 10:07:39.281486
104	57	190517389	6	33	t	2020-12-25 10:07:39.281486
104	57	383463676	0	59	t	2020-12-25 10:07:39.281486
104	57	64421435	4	311	t	2020-12-25 10:07:39.281486
104	57	618414	1	325	t	2020-12-25 10:07:39.281486
104	57	331149281	0	95	t	2020-12-25 10:07:39.281486
104	57	423488548	1	443	t	2020-12-25 10:07:39.281486
104	58	106703716	7	295	t	2020-12-25 10:07:39.281486
104	58	378367445	2	309	t	2020-12-25 10:07:39.281486
104	58	226031949	6	261	t	2020-12-25 10:07:39.281486
104	59	385733919	6	134	t	2020-12-25 10:07:39.281486
104	59	348334224	2	234	t	2020-12-25 10:07:39.281486
104	59	297614839	1	26	t	2020-12-25 10:07:39.281486
104	59	384760621	4	347	t	2020-12-25 10:07:39.281486
104	60	269892240	7	206	t	2020-12-25 10:07:39.281486
104	60	360009812	8	292	t	2020-12-25 10:07:39.281486
104	60	363715579	2	332	t	2020-12-25 10:07:39.281486
104	61	291023771	6	433	t	2020-12-25 10:07:39.281486
104	61	152281312	7	404	t	2020-12-25 10:07:39.281486
104	61	70289877	3	415	t	2020-12-25 10:07:39.281486
104	62	429625044	8	202	t	2020-12-25 10:07:39.281486
104	63	198413933	8	217	t	2020-12-25 10:07:39.281486
104	63	21185091	6	301	t	2020-12-25 10:07:39.281486
104	63	359816688	8	417	t	2020-12-25 10:07:39.281486
104	63	419927856	3	432	t	2020-12-25 10:07:39.281486
104	64	278129049	7	319	t	2020-12-25 10:07:39.281486
104	64	21568237	3	39	t	2020-12-25 10:07:39.281486
104	64	41274465	6	291	t	2020-12-25 10:07:39.281486
104	65	241144408	8	252	t	2020-12-25 10:07:39.281486
104	66	105180630	1	372	t	2020-12-25 10:07:39.281486
104	66	357559117	0	100	t	2020-12-25 10:07:39.281486
104	66	71561595	5	439	t	2020-12-25 10:07:39.281486
104	66	144355070	7	38	t	2020-12-25 10:07:39.281486
104	66	161410091	6	256	t	2020-12-25 10:07:39.281486
104	66	282349288	4	125	t	2020-12-25 10:07:39.281486
104	66	13854824	5	229	t	2020-12-25 10:07:39.281486
104	67	197457840	4	254	t	2020-12-25 10:07:39.281486
104	67	258044064	4	212	t	2020-12-25 10:07:39.281486
104	68	81705121	3	81	t	2020-12-25 10:07:39.281486
104	70	182514182	1	243	t	2020-12-25 10:07:39.281486
104	71	332346818	0	3	t	2020-12-25 10:07:39.281486
104	71	250891	7	196	t	2020-12-25 10:07:39.281486
104	71	215743932	0	450	t	2020-12-25 10:07:39.281486
104	72	237416846	0	285	t	2020-12-25 10:07:39.281486
104	72	31879157	7	213	t	2020-12-25 10:07:39.281486
104	72	96562416	8	484	t	2020-12-25 10:07:39.281486
104	73	372106632	3	422	t	2020-12-25 10:07:39.281486
104	73	239350397	1	469	t	2020-12-25 10:07:39.281486
104	74	95028093	8	219	t	2020-12-25 10:07:39.281486
104	74	377416799	7	172	t	2020-12-25 10:07:39.281486
104	74	196779169	8	81	t	2020-12-25 10:07:39.281486
104	75	217989140	8	4	t	2020-12-25 10:07:39.281486
104	75	167859094	0	67	t	2020-12-25 10:07:39.281486
104	76	177198655	5	228	t	2020-12-25 10:07:39.281486
104	77	222531385	7	53	t	2020-12-25 10:07:39.281486
104	77	315515906	2	312	t	2020-12-25 10:07:39.281486
104	77	384674782	6	344	t	2020-12-25 10:07:39.281486
104	78	37430685	3	41	t	2020-12-25 10:07:39.281486
104	79	357292155	5	281	t	2020-12-25 10:07:39.281486
104	79	185944483	8	154	t	2020-12-25 10:07:39.281486
104	80	181763720	5	241	t	2020-12-25 10:07:39.281486
104	80	342928300	2	97	t	2020-12-25 10:07:39.281486
104	81	14949625	3	493	t	2020-12-25 10:07:39.281486
104	82	198969482	2	488	t	2020-12-25 10:07:39.281486
104	82	111676611	2	389	t	2020-12-25 10:07:39.281486
104	83	51673812	6	395	t	2020-12-25 10:07:39.281486
104	83	96295332	5	115	t	2020-12-25 10:07:39.281486
104	83	267011504	5	235	t	2020-12-25 10:07:39.281486
104	83	310014871	0	398	t	2020-12-25 10:07:39.281486
104	83	78037356	2	278	t	2020-12-25 10:07:39.281486
104	85	368241711	8	140	t	2020-12-25 10:07:39.281486
104	85	216061885	6	52	t	2020-12-25 10:07:39.281486
104	86	273638774	5	404	t	2020-12-25 10:07:39.281486
104	88	46291348	4	296	t	2020-12-25 10:07:39.281486
104	88	92658814	4	315	t	2020-12-25 10:07:39.281486
104	89	148739669	5	185	t	2020-12-25 10:07:39.281486
104	89	79061444	1	329	t	2020-12-25 10:07:39.281486
104	89	392611601	1	407	t	2020-12-25 10:07:39.281486
104	89	202584093	3	363	t	2020-12-25 10:07:39.281486
104	90	203988788	6	130	t	2020-12-25 10:07:39.281486
104	90	296604792	5	465	t	2020-12-25 10:07:39.281486
104	90	187035200	8	472	t	2020-12-25 10:07:39.281486
104	92	89644267	0	7	t	2020-12-25 10:07:39.281486
104	92	221373266	8	30	t	2020-12-25 10:07:39.281486
104	93	26894291	6	410	t	2020-12-25 10:07:39.281486
104	93	60842821	8	210	t	2020-12-25 10:07:39.281486
104	93	257282600	5	134	t	2020-12-25 10:07:39.281486
104	93	276689922	1	127	t	2020-12-25 10:07:39.281486
104	94	94715990	6	411	t	2020-12-25 10:07:39.281486
104	94	290489730	3	293	t	2020-12-25 10:07:39.281486
104	94	119535816	0	319	t	2020-12-25 10:07:39.281486
104	94	26116054	4	461	t	2020-12-25 10:07:39.281486
104	95	59534795	8	51	t	2020-12-25 10:07:39.281486
104	95	292608330	5	476	t	2020-12-25 10:07:39.281486
104	96	138946166	1	423	t	2020-12-25 10:07:39.281486
104	96	140698307	8	107	t	2020-12-25 10:07:39.281486
104	96	316578434	6	490	t	2020-12-25 10:07:39.281486
104	96	392769798	8	72	t	2020-12-25 10:07:39.281486
104	96	346098925	3	157	t	2020-12-25 10:07:39.281486
104	97	370200553	7	475	t	2020-12-25 10:07:39.281486
104	98	42191114	8	258	t	2020-12-25 10:07:39.281486
104	98	332447931	6	246	t	2020-12-25 10:07:39.281486
104	99	272266794	3	227	t	2020-12-25 10:07:39.281486
104	102	394713802	7	254	t	2020-12-25 10:07:39.281486
104	102	60756551	5	195	t	2020-12-25 10:07:39.281486
104	102	118676303	3	270	t	2020-12-25 10:07:39.281486
399	1	253070359	2	77	t	2020-12-25 10:07:39.281486
399	1	378889628	6	366	t	2020-12-25 10:07:39.281486
399	1	127838726	4	323	t	2020-12-25 10:07:39.281486
399	1	139042757	5	242	t	2020-12-25 10:07:39.281486
399	2	296732505	5	61	t	2020-12-25 10:07:39.281486
399	2	266654565	3	199	t	2020-12-25 10:07:39.281486
399	3	171793285	4	434	t	2020-12-25 10:07:39.281486
399	3	148171067	1	260	t	2020-12-25 10:07:39.281486
399	3	402204855	1	203	t	2020-12-25 10:07:39.281486
399	3	19522853	0	473	t	2020-12-25 10:07:39.281486
399	3	78052423	7	428	t	2020-12-25 10:07:39.281486
399	3	308188397	7	21	t	2020-12-25 10:07:39.281486
399	4	89746065	5	12	t	2020-12-25 10:07:39.281486
399	4	281620715	3	146	t	2020-12-25 10:07:39.281486
399	4	81061872	8	318	t	2020-12-25 10:07:39.281486
399	5	330794984	6	421	t	2020-12-25 10:07:39.281486
399	5	109408088	5	231	t	2020-12-25 10:07:39.281486
399	6	211056099	4	487	t	2020-12-25 10:07:39.281486
399	6	74138712	7	175	t	2020-12-25 10:07:39.281486
399	7	68350421	7	403	t	2020-12-25 10:07:39.281486
399	7	194158634	6	113	t	2020-12-25 10:07:39.281486
399	8	112819583	7	124	t	2020-12-25 10:07:39.281486
399	8	123066776	5	183	t	2020-12-25 10:07:39.281486
399	8	12481557	1	41	t	2020-12-25 10:07:39.281486
399	8	343680986	0	101	t	2020-12-25 10:07:39.281486
399	10	98305027	8	288	t	2020-12-25 10:07:39.281486
399	11	383975196	8	345	t	2020-12-25 10:07:39.281486
399	11	336371340	0	298	t	2020-12-25 10:07:39.281486
399	12	238033050	3	370	t	2020-12-25 10:07:39.281486
399	12	188542592	6	425	t	2020-12-25 10:07:39.281486
399	15	146926500	1	191	t	2020-12-25 10:07:39.281486
399	16	217545867	5	196	t	2020-12-25 10:07:39.281486
399	16	357659616	8	2	t	2020-12-25 10:07:39.281486
399	18	57900118	8	190	t	2020-12-25 10:07:39.281486
399	19	343019537	2	42	t	2020-12-25 10:07:39.281486
399	19	366988259	2	57	t	2020-12-25 10:07:39.281486
399	19	25574239	0	480	t	2020-12-25 10:07:39.281486
399	20	31767518	3	277	t	2020-12-25 10:07:39.281486
399	20	305117207	0	117	t	2020-12-25 10:07:39.281486
399	21	238231361	4	279	t	2020-12-25 10:07:39.281486
399	22	76253486	6	390	t	2020-12-25 10:07:39.281486
399	22	199169029	0	201	t	2020-12-25 10:07:39.281486
399	22	307348526	2	374	t	2020-12-25 10:07:39.281486
399	22	62587370	2	27	t	2020-12-25 10:07:39.281486
623	2	282169851	5	283	t	2020-12-25 10:07:39.281486
623	3	428795214	8	323	t	2020-12-25 10:07:39.281486
623	3	334786253	4	1	t	2020-12-25 10:07:39.281486
623	3	249749655	5	35	t	2020-12-25 10:07:39.281486
623	4	203580474	6	306	t	2020-12-25 10:07:39.281486
623	5	252881626	2	233	t	2020-12-25 10:07:39.281486
655	1	433900313	3	176	t	2020-12-25 10:07:39.281486
655	1	212415609	0	291	t	2020-12-25 10:07:39.281486
655	1	228315155	5	251	t	2020-12-25 10:07:39.281486
655	1	172434281	2	82	t	2020-12-25 10:07:39.281486
655	2	288432203	8	304	t	2020-12-25 10:07:39.281486
655	3	310867983	7	110	t	2020-12-25 10:07:39.281486
655	4	311520744	1	409	t	2020-12-25 10:07:39.281486
655	4	389233085	3	276	t	2020-12-25 10:07:39.281486
655	4	174214808	0	224	t	2020-12-25 10:07:39.281486
655	4	292888275	0	49	t	2020-12-25 10:07:39.281486
655	4	267269132	5	327	t	2020-12-25 10:07:39.281486
655	4	14118439	3	454	t	2020-12-25 10:07:39.281486
655	5	60980709	5	468	t	2020-12-25 10:07:39.281486
655	6	423138683	5	96	t	2020-12-25 10:07:39.281486
655	6	135836582	4	316	t	2020-12-25 10:07:39.281486
655	7	375479909	2	418	t	2020-12-25 10:07:39.281486
477	1	424527622	3	16	t	2020-12-25 10:07:39.281486
477	1	157848874	4	462	t	2020-12-25 10:07:39.281486
477	2	396397360	6	69	t	2020-12-25 10:07:39.281486
477	2	314912566	5	178	t	2020-12-25 10:07:39.281486
477	4	305267511	3	478	t	2020-12-25 10:07:39.281486
477	5	178152679	3	459	t	2020-12-25 10:07:39.281486
477	6	264454988	2	241	t	2020-12-25 10:07:39.281486
477	7	364294952	0	248	t	2020-12-25 10:07:39.281486
477	7	147843646	4	413	t	2020-12-25 10:07:39.281486
477	7	23691884	8	445	t	2020-12-25 10:07:39.281486
477	8	71822855	0	15	t	2020-12-25 10:07:39.281486
477	8	145805591	2	397	t	2020-12-25 10:07:39.281486
477	10	301678419	2	75	t	2020-12-25 10:07:39.281486
477	10	397364750	0	265	t	2020-12-25 10:07:39.281486
477	11	373602010	6	236	t	2020-12-25 10:07:39.281486
477	12	135889323	7	354	t	2020-12-25 10:07:39.281486
477	12	53696318	6	161	t	2020-12-25 10:07:39.281486
477	12	143928549	0	431	t	2020-12-25 10:07:39.281486
477	12	188340066	0	283	t	2020-12-25 10:07:39.281486
477	13	263560669	1	250	t	2020-12-25 10:07:39.281486
477	13	213259093	0	116	t	2020-12-25 10:07:39.281486
477	13	239033258	0	329	t	2020-12-25 10:07:39.281486
477	13	137736540	3	99	t	2020-12-25 10:07:39.281486
477	13	45021305	5	353	t	2020-12-25 10:07:39.281486
477	14	389148864	1	244	t	2020-12-25 10:07:39.281486
477	16	265011678	0	15	t	2020-12-25 10:07:39.281486
477	16	106523513	8	463	t	2020-12-25 10:07:39.281486
\.


--
-- Data for Name: tipo_transacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_transacao (id, nome, ativo, data_criacao) FROM stdin;
1	Débito	t	2020-12-25 10:07:39.281486
2	Crédito	t	2020-12-25 10:07:39.281486
3	Transferência	t	2020-12-25 10:07:39.281486
4	Empréstimo	t	2020-12-25 10:07:39.281486
\.


--
-- Name: cliente_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_numero_seq', 500, true);


--
-- Name: cliente_transacoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_transacoes_id_seq', 2018, true);


--
-- Name: tipo_transacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_transacao_id_seq', 4, true);


--
-- Name: agencia agencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencia
    ADD CONSTRAINT agencia_pkey PRIMARY KEY (banco_numero, numero);


--
-- Name: banco banco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banco
    ADD CONSTRAINT banco_pkey PRIMARY KEY (numero);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (numero);


--
-- Name: cliente_transacoes cliente_transacoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_transacoes
    ADD CONSTRAINT cliente_transacoes_pkey PRIMARY KEY (id);


--
-- Name: conta_corrente conta_corrente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta_corrente
    ADD CONSTRAINT conta_corrente_pkey PRIMARY KEY (banco_numero, agencia_numero, numero, digito, cliente_numero);


--
-- Name: tipo_transacao tipo_transacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_transacao
    ADD CONSTRAINT tipo_transacao_pkey PRIMARY KEY (id);


--
-- Name: agencia agencia_banco_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencia
    ADD CONSTRAINT agencia_banco_numero_fkey FOREIGN KEY (banco_numero) REFERENCES public.banco(numero);


--
-- Name: cliente_transacoes cliente_transacoes_banco_numero_agencia_numero_conta_corre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente_transacoes
    ADD CONSTRAINT cliente_transacoes_banco_numero_agencia_numero_conta_corre_fkey FOREIGN KEY (banco_numero, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero) REFERENCES public.conta_corrente(banco_numero, agencia_numero, numero, digito, cliente_numero);


--
-- Name: conta_corrente conta_corrente_banco_numero_agencia_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta_corrente
    ADD CONSTRAINT conta_corrente_banco_numero_agencia_numero_fkey FOREIGN KEY (banco_numero, agencia_numero) REFERENCES public.agencia(banco_numero, numero);


--
-- Name: conta_corrente conta_corrente_cliente_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta_corrente
    ADD CONSTRAINT conta_corrente_cliente_numero_fkey FOREIGN KEY (cliente_numero) REFERENCES public.cliente(numero);


--
-- PostgreSQL database dump complete
--

