--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12rc1

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

--
-- Name: Odev2-G191210302-BerkaySahin-22B; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Odev2-G191210302-BerkaySahin-22B" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';


ALTER DATABASE "Odev2-G191210302-BerkaySahin-22B" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Odev2-G191210302-BerkaySahin-22B'"

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
-- Name: Cevaplar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cevaplar" (
    "CevaplarID" bigint NOT NULL,
    "SorularID" bigint,
    "KullanicilarID" bigint NOT NULL,
    "YorumlarID" bigint,
    "Icerik" text NOT NULL
);


ALTER TABLE public."Cevaplar" OWNER TO postgres;

--
-- Name: Cevaplar_CevaplarID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cevaplar_CevaplarID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cevaplar_CevaplarID_seq" OWNER TO postgres;

--
-- Name: Cevaplar_CevaplarID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cevaplar_CevaplarID_seq" OWNED BY public."Cevaplar"."CevaplarID";


--
-- Name: Editor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Editor" (
    "EditorID" integer NOT NULL,
    "KullanicilarID" bigint NOT NULL
);


ALTER TABLE public."Editor" OWNER TO postgres;

--
-- Name: Editor_EditorID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Editor_EditorID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Editor_EditorID_seq" OWNER TO postgres;

--
-- Name: Editor_EditorID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Editor_EditorID_seq" OWNED BY public."Editor"."EditorID";


--
-- Name: Etiketler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Etiketler" (
    "EtiketlerID" integer NOT NULL,
    "EtiketlerAdi" text NOT NULL
);


ALTER TABLE public."Etiketler" OWNER TO postgres;

--
-- Name: Etiketler_EtiketlerID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Etiketler_EtiketlerID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Etiketler_EtiketlerID_seq" OWNER TO postgres;

--
-- Name: Etiketler_EtiketlerID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Etiketler_EtiketlerID_seq" OWNED BY public."Etiketler"."EtiketlerID";


--
-- Name: Favoriler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Favoriler" (
    "FavorilerID" bigint NOT NULL,
    "KullanicilarID" bigint NOT NULL,
    "SorularID" bigint NOT NULL
);


ALTER TABLE public."Favoriler" OWNER TO postgres;

--
-- Name: Favoriler_FavorilerID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Favoriler_FavorilerID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Favoriler_FavorilerID_seq" OWNER TO postgres;

--
-- Name: Favoriler_FavorilerID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Favoriler_FavorilerID_seq" OWNED BY public."Favoriler"."FavorilerID";


--
-- Name: GeriBildirimler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."GeriBildirimler" (
    "GeriBildirimlerID" bigint NOT NULL,
    "SorularID" bigint
);


ALTER TABLE public."GeriBildirimler" OWNER TO postgres;

--
-- Name: GeriBildirimler_GeriBildirimlerID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."GeriBildirimler_GeriBildirimlerID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."GeriBildirimler_GeriBildirimlerID_seq" OWNER TO postgres;

--
-- Name: GeriBildirimler_GeriBildirimlerID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."GeriBildirimler_GeriBildirimlerID_seq" OWNED BY public."GeriBildirimler"."GeriBildirimlerID";


--
-- Name: IletisimBilgileri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IletisimBilgileri" (
    "IletisimBilgileriID" bigint NOT NULL,
    "Email" text NOT NULL,
    "Adres" text NOT NULL,
    "KullanicilarID" bigint NOT NULL
);


ALTER TABLE public."IletisimBilgileri" OWNER TO postgres;

--
-- Name: IletisimBilgileri_IletisimBilgileriID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."IletisimBilgileri_IletisimBilgileriID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."IletisimBilgileri_IletisimBilgileriID_seq" OWNER TO postgres;

--
-- Name: IletisimBilgileri_IletisimBilgileriID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."IletisimBilgileri_IletisimBilgileriID_seq" OWNED BY public."IletisimBilgileri"."IletisimBilgileriID";


--
-- Name: KullaniciRozetleri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."KullaniciRozetleri" (
    "RozetlerID" bigint NOT NULL,
    "KullanicilarID" bigint NOT NULL,
    "RozetTurleriID" integer NOT NULL,
    "KazanimTarihi" date NOT NULL
);


ALTER TABLE public."KullaniciRozetleri" OWNER TO postgres;

--
-- Name: KullaniciRozetleri_RozetlerID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."KullaniciRozetleri_RozetlerID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."KullaniciRozetleri_RozetlerID_seq" OWNER TO postgres;

--
-- Name: KullaniciRozetleri_RozetlerID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."KullaniciRozetleri_RozetlerID_seq" OWNED BY public."KullaniciRozetleri"."RozetlerID";


--
-- Name: Kullanicilar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Kullanicilar" (
    "KullanicilarID" bigint NOT NULL,
    "KullaniciAdi" text NOT NULL,
    "Sifre" text NOT NULL,
    "Hakkinda" text NOT NULL,
    "OlumluOylar" integer NOT NULL,
    "OlumsuzOylar" integer NOT NULL,
    "Itıbar" integer NOT NULL,
    "KullaniciTuru" character(1) NOT NULL,
    "GoruntulenmeSayisi" bigint NOT NULL,
    "ProfilFotoURL" text NOT NULL,
    "KayitTarihi" date NOT NULL,
    "SonGirisTarihi" date NOT NULL
);


ALTER TABLE public."Kullanicilar" OWNER TO postgres;

--
-- Name: Kullanicilar_KullanicilarID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Kullanicilar_KullanicilarID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Kullanicilar_KullanicilarID_seq" OWNER TO postgres;

--
-- Name: Kullanicilar_KullanicilarID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Kullanicilar_KullanicilarID_seq" OWNED BY public."Kullanicilar"."KullanicilarID";


--
-- Name: NormalKullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NormalKullanici" (
    "NormalKullanicilarID" bigint NOT NULL,
    "KullanicilarID" bigint NOT NULL
);


ALTER TABLE public."NormalKullanici" OWNER TO postgres;

--
-- Name: NormalKullanici_NormalKullanicilarID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NormalKullanici_NormalKullanicilarID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NormalKullanici_NormalKullanicilarID_seq" OWNER TO postgres;

--
-- Name: NormalKullanici_NormalKullanicilarID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."NormalKullanici_NormalKullanicilarID_seq" OWNED BY public."NormalKullanici"."NormalKullanicilarID";


--
-- Name: Oylar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Oylar" (
    "OylarID" bigint NOT NULL,
    "SorularID" bigint,
    "KullanicilarID" bigint NOT NULL,
    "OyDegeri" integer NOT NULL,
    "CevaplarID" bigint,
    "OyTarihi" date NOT NULL
);


ALTER TABLE public."Oylar" OWNER TO postgres;

--
-- Name: Oylar_OylarID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Oylar_OylarID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Oylar_OylarID_seq" OWNER TO postgres;

--
-- Name: Oylar_OylarID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Oylar_OylarID_seq" OWNED BY public."Oylar"."OylarID";


--
-- Name: RozetTurleri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RozetTurleri" (
    "RozetAdi" text NOT NULL,
    "RozetTurleriID" integer NOT NULL
);


ALTER TABLE public."RozetTurleri" OWNER TO postgres;

--
-- Name: RozetTurleri_RozetTurleriID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RozetTurleri_RozetTurleriID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RozetTurleri_RozetTurleriID_seq" OWNER TO postgres;

--
-- Name: RozetTurleri_RozetTurleriID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RozetTurleri_RozetTurleriID_seq" OWNED BY public."RozetTurleri"."RozetTurleriID";


--
-- Name: SoruEtiketleri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SoruEtiketleri" (
    "EtiketlerID" bigint NOT NULL,
    "SorularID" bigint NOT NULL
);


ALTER TABLE public."SoruEtiketleri" OWNER TO postgres;

--
-- Name: Sorular; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sorular" (
    "SorularID" bigint NOT NULL,
    "KullanicilarID" bigint NOT NULL,
    "Baslik" text NOT NULL,
    "Icerik" text NOT NULL,
    "GoruntulenmeSayisi" bigint NOT NULL,
    "KabulEdilenCevapID" bigint,
    "DuzenleyenEditorID" bigint,
    "CevapSayisi" bigint NOT NULL,
    "Skor" integer NOT NULL,
    "FavoEklenmeSayisi" bigint NOT NULL,
    "KazanimTarihi" date NOT NULL,
    "OlusturmaTarihi" date NOT NULL,
    "SonDuzenlenmeTarihi" date NOT NULL
);


ALTER TABLE public."Sorular" OWNER TO postgres;

--
-- Name: Sorular_SorularID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Sorular_SorularID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Sorular_SorularID_seq" OWNER TO postgres;

--
-- Name: Sorular_SorularID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Sorular_SorularID_seq" OWNED BY public."Sorular"."SorularID";


--
-- Name: Yonetici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Yonetici" (
    "KullanicilarID" integer NOT NULL,
    "AdSoyad" text NOT NULL,
    "TelNo" text NOT NULL
);


ALTER TABLE public."Yonetici" OWNER TO postgres;

--
-- Name: Yonetici_YoneticiID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Yonetici_YoneticiID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Yonetici_YoneticiID_seq" OWNER TO postgres;

--
-- Name: Yonetici_YoneticiID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Yonetici_YoneticiID_seq" OWNED BY public."Yonetici"."KullanicilarID";


--
-- Name: Yorumlar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Yorumlar" (
    "YorumlarID" bigint NOT NULL,
    "SorularID" bigint NOT NULL,
    "Icerik" text NOT NULL,
    "KullanicilarID" bigint NOT NULL,
    "Skor" integer NOT NULL,
    "YorumTarihi" date NOT NULL
);


ALTER TABLE public."Yorumlar" OWNER TO postgres;

--
-- Name: Yorumlar_YorumlarID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Yorumlar_YorumlarID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Yorumlar_YorumlarID_seq" OWNER TO postgres;

--
-- Name: Yorumlar_YorumlarID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Yorumlar_YorumlarID_seq" OWNED BY public."Yorumlar"."YorumlarID";


--
-- Name: Cevaplar CevaplarID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevaplar" ALTER COLUMN "CevaplarID" SET DEFAULT nextval('public."Cevaplar_CevaplarID_seq"'::regclass);


--
-- Name: Editor EditorID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editor" ALTER COLUMN "EditorID" SET DEFAULT nextval('public."Editor_EditorID_seq"'::regclass);


--
-- Name: Etiketler EtiketlerID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Etiketler" ALTER COLUMN "EtiketlerID" SET DEFAULT nextval('public."Etiketler_EtiketlerID_seq"'::regclass);


--
-- Name: Favoriler FavorilerID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoriler" ALTER COLUMN "FavorilerID" SET DEFAULT nextval('public."Favoriler_FavorilerID_seq"'::regclass);


--
-- Name: GeriBildirimler GeriBildirimlerID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GeriBildirimler" ALTER COLUMN "GeriBildirimlerID" SET DEFAULT nextval('public."GeriBildirimler_GeriBildirimlerID_seq"'::regclass);


--
-- Name: IletisimBilgileri IletisimBilgileriID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IletisimBilgileri" ALTER COLUMN "IletisimBilgileriID" SET DEFAULT nextval('public."IletisimBilgileri_IletisimBilgileriID_seq"'::regclass);


--
-- Name: KullaniciRozetleri RozetlerID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozetleri" ALTER COLUMN "RozetlerID" SET DEFAULT nextval('public."KullaniciRozetleri_RozetlerID_seq"'::regclass);


--
-- Name: Kullanicilar KullanicilarID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanicilar" ALTER COLUMN "KullanicilarID" SET DEFAULT nextval('public."Kullanicilar_KullanicilarID_seq"'::regclass);


--
-- Name: NormalKullanici NormalKullanicilarID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NormalKullanici" ALTER COLUMN "NormalKullanicilarID" SET DEFAULT nextval('public."NormalKullanici_NormalKullanicilarID_seq"'::regclass);


--
-- Name: Oylar OylarID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylar" ALTER COLUMN "OylarID" SET DEFAULT nextval('public."Oylar_OylarID_seq"'::regclass);


--
-- Name: RozetTurleri RozetTurleriID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RozetTurleri" ALTER COLUMN "RozetTurleriID" SET DEFAULT nextval('public."RozetTurleri_RozetTurleriID_seq"'::regclass);


--
-- Name: Sorular SorularID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sorular" ALTER COLUMN "SorularID" SET DEFAULT nextval('public."Sorular_SorularID_seq"'::regclass);


--
-- Name: Yonetici KullanicilarID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yonetici" ALTER COLUMN "KullanicilarID" SET DEFAULT nextval('public."Yonetici_YoneticiID_seq"'::regclass);


--
-- Name: Yorumlar YorumlarID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorumlar" ALTER COLUMN "YorumlarID" SET DEFAULT nextval('public."Yorumlar_YorumlarID_seq"'::regclass);


--
-- Data for Name: Cevaplar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cevaplar" ("CevaplarID", "SorularID", "KullanicilarID", "YorumlarID", "Icerik") VALUES (10, 13, 5, 1, 'PostgreSQL');
INSERT INTO public."Cevaplar" ("CevaplarID", "SorularID", "KullanicilarID", "YorumlarID", "Icerik") VALUES (9, 12, 4, 5, 'Veritabanına sağ tıklayıp dump a ulaşabilirsin');
INSERT INTO public."Cevaplar" ("CevaplarID", "SorularID", "KullanicilarID", "YorumlarID", "Icerik") VALUES (11, 13, 3, 15, 'PostgreSQL''dir');


--
-- Data for Name: Editor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Editor" ("EditorID", "KullanicilarID") VALUES (1, 4);


--
-- Data for Name: Etiketler; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Etiketler" ("EtiketlerID", "EtiketlerAdi") VALUES (1, 'PostgreSQL');
INSERT INTO public."Etiketler" ("EtiketlerID", "EtiketlerAdi") VALUES (2, 'Dump');
INSERT INTO public."Etiketler" ("EtiketlerID", "EtiketlerAdi") VALUES (3, 'Veri Tabani');


--
-- Data for Name: Favoriler; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Favoriler" ("FavorilerID", "KullanicilarID", "SorularID") VALUES (3, 4, 14);
INSERT INTO public."Favoriler" ("FavorilerID", "KullanicilarID", "SorularID") VALUES (4, 5, 12);
INSERT INTO public."Favoriler" ("FavorilerID", "KullanicilarID", "SorularID") VALUES (2, 3, 13);


--
-- Data for Name: GeriBildirimler; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."GeriBildirimler" ("GeriBildirimlerID", "SorularID") VALUES (1, 12);
INSERT INTO public."GeriBildirimler" ("GeriBildirimlerID", "SorularID") VALUES (2, 13);
INSERT INTO public."GeriBildirimler" ("GeriBildirimlerID", "SorularID") VALUES (3, 14);


--
-- Data for Name: IletisimBilgileri; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."IletisimBilgileri" ("IletisimBilgileriID", "Email", "Adres", "KullanicilarID") VALUES (1, 'iletisim@berkaysahin.info', 'İstanbul', 3);
INSERT INTO public."IletisimBilgileri" ("IletisimBilgileriID", "Email", "Adres", "KullanicilarID") VALUES (2, 'cihan@mail.com', 'Sakarya', 4);
INSERT INTO public."IletisimBilgileri" ("IletisimBilgileriID", "Email", "Adres", "KullanicilarID") VALUES (3, 'ece@mail.com', 'Bursa', 5);


--
-- Data for Name: KullaniciRozetleri; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."KullaniciRozetleri" ("RozetlerID", "KullanicilarID", "RozetTurleriID", "KazanimTarihi") VALUES (1, 3, 1, '2019-05-24');
INSERT INTO public."KullaniciRozetleri" ("RozetlerID", "KullanicilarID", "RozetTurleriID", "KazanimTarihi") VALUES (2, 4, 2, '2019-06-01');
INSERT INTO public."KullaniciRozetleri" ("RozetlerID", "KullanicilarID", "RozetTurleriID", "KazanimTarihi") VALUES (3, 5, 3, '2019-06-02');


--
-- Data for Name: Kullanicilar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Kullanicilar" ("KullanicilarID", "KullaniciAdi", "Sifre", "Hakkinda", "OlumluOylar", "OlumsuzOylar", "Itıbar", "KullaniciTuru", "GoruntulenmeSayisi", "ProfilFotoURL", "KayitTarihi", "SonGirisTarihi") VALUES (3, 'BerkaySAU', 'by987', 'Bilg. Müh Öğrencisi', 58, 3, 99, 'E', 102, 'resimler/resim1.png', '2019-05-12', '2019-06-02');
INSERT INTO public."Kullanicilar" ("KullanicilarID", "KullaniciAdi", "Sifre", "Hakkinda", "OlumluOylar", "OlumsuzOylar", "Itıbar", "KullaniciTuru", "GoruntulenmeSayisi", "ProfilFotoURL", "KayitTarihi", "SonGirisTarihi") VALUES (4, 'CihanSAU', 'ch325', 'Metalurji Müh. Öğrencisi', 66, 21, 24, 'E', 74, 'resimler/resim2.png', '2019-05-24', '2019-07-10');
INSERT INTO public."Kullanicilar" ("KullanicilarID", "KullaniciAdi", "Sifre", "Hakkinda", "OlumluOylar", "OlumsuzOylar", "Itıbar", "KullaniciTuru", "GoruntulenmeSayisi", "ProfilFotoURL", "KayitTarihi", "SonGirisTarihi") VALUES (5, 'EceSAU', 'ec911', 'Makine Müh. Öğrencisi', 45, 6, 77, 'K', 92, 'resimler/resim3.png', '2019-04-22', '2019-06-15');


--
-- Data for Name: NormalKullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."NormalKullanici" ("NormalKullanicilarID", "KullanicilarID") VALUES (1, 5);


--
-- Data for Name: Oylar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Oylar" ("OylarID", "SorularID", "KullanicilarID", "OyDegeri", "CevaplarID", "OyTarihi") VALUES (1, NULL, 3, 5, 11, '2019-06-05');
INSERT INTO public."Oylar" ("OylarID", "SorularID", "KullanicilarID", "OyDegeri", "CevaplarID", "OyTarihi") VALUES (2, NULL, 4, 5, 12, '2019-06-05');
INSERT INTO public."Oylar" ("OylarID", "SorularID", "KullanicilarID", "OyDegeri", "CevaplarID", "OyTarihi") VALUES (3, NULL, 3, 5, 9, '2019-06-05');
INSERT INTO public."Oylar" ("OylarID", "SorularID", "KullanicilarID", "OyDegeri", "CevaplarID", "OyTarihi") VALUES (4, NULL, 5, 5, 10, '2019-06-05');


--
-- Data for Name: RozetTurleri; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."RozetTurleri" ("RozetAdi", "RozetTurleriID") VALUES ('Altın', 1);
INSERT INTO public."RozetTurleri" ("RozetAdi", "RozetTurleriID") VALUES ('Gümüş', 2);
INSERT INTO public."RozetTurleri" ("RozetAdi", "RozetTurleriID") VALUES ('Bronz', 3);


--
-- Data for Name: SoruEtiketleri; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."SoruEtiketleri" ("EtiketlerID", "SorularID") VALUES (2, 12);
INSERT INTO public."SoruEtiketleri" ("EtiketlerID", "SorularID") VALUES (1, 14);
INSERT INTO public."SoruEtiketleri" ("EtiketlerID", "SorularID") VALUES (3, 13);


--
-- Data for Name: Sorular; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Sorular" ("SorularID", "KullanicilarID", "Baslik", "Icerik", "GoruntulenmeSayisi", "KabulEdilenCevapID", "DuzenleyenEditorID", "CevapSayisi", "Skor", "FavoEklenmeSayisi", "KazanimTarihi", "OlusturmaTarihi", "SonDuzenlenmeTarihi") VALUES (12, 3, 'PostgreSQL', 'Veritabanı nasıl dump edilir?', 24, NULL, NULL, 1, 5, 1, '2019-06-03', '2019-06-01', '2019-06-02');
INSERT INTO public."Sorular" ("SorularID", "KullanicilarID", "Baslik", "Icerik", "GoruntulenmeSayisi", "KabulEdilenCevapID", "DuzenleyenEditorID", "CevapSayisi", "Skor", "FavoEklenmeSayisi", "KazanimTarihi", "OlusturmaTarihi", "SonDuzenlenmeTarihi") VALUES (13, 4, 'Sitenin Veritabanı Hakkında', 'Hangi vtys kullanılmıştır?', 12, NULL, NULL, 1, 10, 1, '2019-06-06', '2019-06-05', '2019-06-05');
INSERT INTO public."Sorular" ("SorularID", "KullanicilarID", "Baslik", "Icerik", "GoruntulenmeSayisi", "KabulEdilenCevapID", "DuzenleyenEditorID", "CevapSayisi", "Skor", "FavoEklenmeSayisi", "KazanimTarihi", "OlusturmaTarihi", "SonDuzenlenmeTarihi") VALUES (14, 5, 'PostgreSQL', 'Tablo nasıl oluşturulur?', 6, NULL, NULL, 1, 8, 1, '2019-06-10', '2019-06-08', '2019-06-09');


--
-- Data for Name: Yonetici; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Yonetici" ("KullanicilarID", "AdSoyad", "TelNo") VALUES (3, 'Berkay Şahin', '05555555555');


--
-- Data for Name: Yorumlar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Yorumlar" ("YorumlarID", "SorularID", "Icerik", "KullanicilarID", "Skor", "YorumTarihi") VALUES (15, 13, 'PostgreSQL''dir', 5, 10, '2019-06-05');


--
-- Name: Cevaplar_CevaplarID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cevaplar_CevaplarID_seq"', 11, true);


--
-- Name: Editor_EditorID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Editor_EditorID_seq"', 1, true);


--
-- Name: Etiketler_EtiketlerID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Etiketler_EtiketlerID_seq"', 3, true);


--
-- Name: Favoriler_FavorilerID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Favoriler_FavorilerID_seq"', 4, true);


--
-- Name: GeriBildirimler_GeriBildirimlerID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."GeriBildirimler_GeriBildirimlerID_seq"', 3, true);


--
-- Name: IletisimBilgileri_IletisimBilgileriID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."IletisimBilgileri_IletisimBilgileriID_seq"', 3, true);


--
-- Name: KullaniciRozetleri_RozetlerID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."KullaniciRozetleri_RozetlerID_seq"', 3, true);


--
-- Name: Kullanicilar_KullanicilarID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Kullanicilar_KullanicilarID_seq"', 5, true);


--
-- Name: NormalKullanici_NormalKullanicilarID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."NormalKullanici_NormalKullanicilarID_seq"', 1, true);


--
-- Name: Oylar_OylarID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Oylar_OylarID_seq"', 4, true);


--
-- Name: RozetTurleri_RozetTurleriID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RozetTurleri_RozetTurleriID_seq"', 3, true);


--
-- Name: Sorular_SorularID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sorular_SorularID_seq"', 14, true);


--
-- Name: Yonetici_YoneticiID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Yonetici_YoneticiID_seq"', 1, false);


--
-- Name: Yorumlar_YorumlarID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Yorumlar_YorumlarID_seq"', 15, true);


--
-- Name: Cevaplar Cevaplar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevaplar"
    ADD CONSTRAINT "Cevaplar_pkey" PRIMARY KEY ("CevaplarID");


--
-- Name: Editor Editor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editor"
    ADD CONSTRAINT "Editor_pkey" PRIMARY KEY ("EditorID", "KullanicilarID");


--
-- Name: Etiketler Etiketler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Etiketler"
    ADD CONSTRAINT "Etiketler_pkey" PRIMARY KEY ("EtiketlerID");


--
-- Name: Favoriler Favoriler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoriler"
    ADD CONSTRAINT "Favoriler_pkey" PRIMARY KEY ("FavorilerID");


--
-- Name: GeriBildirimler GeriBildirimler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GeriBildirimler"
    ADD CONSTRAINT "GeriBildirimler_pkey" PRIMARY KEY ("GeriBildirimlerID");


--
-- Name: IletisimBilgileri IletisimBilgileri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IletisimBilgileri"
    ADD CONSTRAINT "IletisimBilgileri_pkey" PRIMARY KEY ("IletisimBilgileriID");


--
-- Name: KullaniciRozetleri KullaniciRozetleri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozetleri"
    ADD CONSTRAINT "KullaniciRozetleri_pkey" PRIMARY KEY ("RozetlerID");


--
-- Name: NormalKullanici NormalKullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NormalKullanici"
    ADD CONSTRAINT "NormalKullanici_pkey" PRIMARY KEY ("NormalKullanicilarID", "KullanicilarID");


--
-- Name: RozetTurleri RozetTurleri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RozetTurleri"
    ADD CONSTRAINT "RozetTurleri_pkey" PRIMARY KEY ("RozetTurleriID");


--
-- Name: Yonetici Yonetici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yonetici"
    ADD CONSTRAINT "Yonetici_pkey" PRIMARY KEY ("KullanicilarID");


--
-- Name: Yorumlar Yorumlar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorumlar"
    ADD CONSTRAINT "Yorumlar_pkey" PRIMARY KEY ("YorumlarID");


--
-- Name: Cevaplar unique_Cevaplar_YorumlarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevaplar"
    ADD CONSTRAINT "unique_Cevaplar_YorumlarID" UNIQUE ("YorumlarID");


--
-- Name: Editor unique_Editor_EditorID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editor"
    ADD CONSTRAINT "unique_Editor_EditorID" UNIQUE ("EditorID");


--
-- Name: Editor unique_Editor_KullanicilarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editor"
    ADD CONSTRAINT "unique_Editor_KullanicilarID" UNIQUE ("KullanicilarID");


--
-- Name: GeriBildirimler unique_GeriBildirimler_SorularID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."GeriBildirimler"
    ADD CONSTRAINT "unique_GeriBildirimler_SorularID" UNIQUE ("SorularID");


--
-- Name: IletisimBilgileri unique_IletisimBilgileri_KullanicilarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IletisimBilgileri"
    ADD CONSTRAINT "unique_IletisimBilgileri_KullanicilarID" UNIQUE ("KullanicilarID");


--
-- Name: Kullanicilar unique_Kullanicilar_KullanicilarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Kullanicilar"
    ADD CONSTRAINT "unique_Kullanicilar_KullanicilarID" PRIMARY KEY ("KullanicilarID");


--
-- Name: NormalKullanici unique_NormalKullanici_KullanicilarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NormalKullanici"
    ADD CONSTRAINT "unique_NormalKullanici_KullanicilarID" UNIQUE ("KullanicilarID");


--
-- Name: NormalKullanici unique_NormalKullanici_NormalKullanicilarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NormalKullanici"
    ADD CONSTRAINT "unique_NormalKullanici_NormalKullanicilarID" UNIQUE ("NormalKullanicilarID");


--
-- Name: Oylar unique_Oylar_CevaplarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylar"
    ADD CONSTRAINT "unique_Oylar_CevaplarID" UNIQUE ("CevaplarID");


--
-- Name: Oylar unique_Oylar_OylarID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylar"
    ADD CONSTRAINT "unique_Oylar_OylarID" PRIMARY KEY ("OylarID");


--
-- Name: RozetTurleri unique_RozetTurleri_RozetTurleriID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RozetTurleri"
    ADD CONSTRAINT "unique_RozetTurleri_RozetTurleriID" UNIQUE ("RozetTurleriID");


--
-- Name: Sorular unique_Sorular_DuzenleyenEditorID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sorular"
    ADD CONSTRAINT "unique_Sorular_DuzenleyenEditorID" UNIQUE ("DuzenleyenEditorID");


--
-- Name: Sorular unique_Sorular_KabulEdilenCevapID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sorular"
    ADD CONSTRAINT "unique_Sorular_KabulEdilenCevapID" UNIQUE ("KabulEdilenCevapID");


--
-- Name: Sorular unique_Sorular_SorularID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sorular"
    ADD CONSTRAINT "unique_Sorular_SorularID" PRIMARY KEY ("SorularID");


--
-- Name: index_CevaplarID; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_CevaplarID" ON public."Cevaplar" USING btree ("CevaplarID");


--
-- Name: index_EtiketlerID; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_EtiketlerID" ON public."SoruEtiketleri" USING btree ("EtiketlerID");


--
-- Name: index_KullanicilarID; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KullanicilarID" ON public."KullaniciRozetleri" USING btree ("KullanicilarID");


--
-- Name: index_KullanicilarID1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KullanicilarID1" ON public."Favoriler" USING btree ("KullanicilarID");


--
-- Name: index_KullanicilarID2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KullanicilarID2" ON public."Cevaplar" USING btree ("KullanicilarID");


--
-- Name: index_KullanicilarID3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KullanicilarID3" ON public."Yorumlar" USING btree ("KullanicilarID");


--
-- Name: index_KullanicilarID4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KullanicilarID4" ON public."Oylar" USING btree ("KullanicilarID");


--
-- Name: index_KullanicilarID5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_KullanicilarID5" ON public."Sorular" USING btree ("KullanicilarID");


--
-- Name: index_RozetTurleriID; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_RozetTurleriID" ON public."KullaniciRozetleri" USING btree ("RozetTurleriID");


--
-- Name: index_RozetlerID; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_RozetlerID" ON public."KullaniciRozetleri" USING btree ("RozetlerID");


--
-- Name: index_SorularID; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_SorularID" ON public."SoruEtiketleri" USING btree ("SorularID");


--
-- Name: index_SorularID1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_SorularID1" ON public."Sorular" USING btree ("SorularID");


--
-- Name: index_SorularID2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_SorularID2" ON public."Favoriler" USING btree ("SorularID");


--
-- Name: index_SorularID3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_SorularID3" ON public."Oylar" USING btree ("SorularID");


--
-- Name: index_SorularID4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_SorularID4" ON public."Cevaplar" USING btree ("SorularID");


--
-- Name: index_SorularID5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_SorularID5" ON public."Yorumlar" USING btree ("SorularID");


--
-- Name: index_YorumlarID; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_YorumlarID" ON public."Yorumlar" USING btree ("YorumlarID");


--
-- Name: Editor EditorKalitim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Editor"
    ADD CONSTRAINT "EditorKalitim" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: NormalKullanici NormalKullaniciKalitim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NormalKullanici"
    ADD CONSTRAINT "NormalKullaniciKalitim" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Yonetici YoneticiKalitim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yonetici"
    ADD CONSTRAINT "YoneticiKalitim" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Yorumlar lnk_Cevaplar_Yorumlar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorumlar"
    ADD CONSTRAINT "lnk_Cevaplar_Yorumlar" FOREIGN KEY ("YorumlarID") REFERENCES public."Cevaplar"("YorumlarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruEtiketleri lnk_Etiketler_SoruEtiketleri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruEtiketleri"
    ADD CONSTRAINT "lnk_Etiketler_SoruEtiketleri" FOREIGN KEY ("EtiketlerID") REFERENCES public."Etiketler"("EtiketlerID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Sorular lnk_GeriBildirimler_Sorular; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sorular"
    ADD CONSTRAINT "lnk_GeriBildirimler_Sorular" FOREIGN KEY ("SorularID") REFERENCES public."GeriBildirimler"("SorularID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Cevaplar lnk_Kullanicilar_Cevaplar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevaplar"
    ADD CONSTRAINT "lnk_Kullanicilar_Cevaplar" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Favoriler lnk_Kullanicilar_Favoriler; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoriler"
    ADD CONSTRAINT "lnk_Kullanicilar_Favoriler" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IletisimBilgileri lnk_Kullanicilar_IletisimBilgileri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IletisimBilgileri"
    ADD CONSTRAINT "lnk_Kullanicilar_IletisimBilgileri" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KullaniciRozetleri lnk_Kullanicilar_KullaniciRozetleri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozetleri"
    ADD CONSTRAINT "lnk_Kullanicilar_KullaniciRozetleri" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Oylar lnk_Kullanicilar_Oylar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylar"
    ADD CONSTRAINT "lnk_Kullanicilar_Oylar" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Sorular lnk_Kullanicilar_Sorular; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sorular"
    ADD CONSTRAINT "lnk_Kullanicilar_Sorular" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Yorumlar lnk_Kullanicilar_Yorumlar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorumlar"
    ADD CONSTRAINT "lnk_Kullanicilar_Yorumlar" FOREIGN KEY ("KullanicilarID") REFERENCES public."Kullanicilar"("KullanicilarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Cevaplar lnk_Oylar_Cevaplar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevaplar"
    ADD CONSTRAINT "lnk_Oylar_Cevaplar" FOREIGN KEY ("CevaplarID") REFERENCES public."Oylar"("CevaplarID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: KullaniciRozetleri lnk_RozetTurleri_KullaniciRozetleri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."KullaniciRozetleri"
    ADD CONSTRAINT "lnk_RozetTurleri_KullaniciRozetleri" FOREIGN KEY ("RozetTurleriID") REFERENCES public."RozetTurleri"("RozetTurleriID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Cevaplar lnk_Sorular_Cevaplar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cevaplar"
    ADD CONSTRAINT "lnk_Sorular_Cevaplar" FOREIGN KEY ("SorularID") REFERENCES public."Sorular"("SorularID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Favoriler lnk_Sorular_Favoriler; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoriler"
    ADD CONSTRAINT "lnk_Sorular_Favoriler" FOREIGN KEY ("SorularID") REFERENCES public."Sorular"("SorularID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Oylar lnk_Sorular_Oylar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oylar"
    ADD CONSTRAINT "lnk_Sorular_Oylar" FOREIGN KEY ("SorularID") REFERENCES public."Sorular"("SorularID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SoruEtiketleri lnk_Sorular_SoruEtiketleri; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SoruEtiketleri"
    ADD CONSTRAINT "lnk_Sorular_SoruEtiketleri" FOREIGN KEY ("SorularID") REFERENCES public."Sorular"("SorularID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Yorumlar lnk_Sorular_Yorumlar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yorumlar"
    ADD CONSTRAINT "lnk_Sorular_Yorumlar" FOREIGN KEY ("SorularID") REFERENCES public."Sorular"("SorularID") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

