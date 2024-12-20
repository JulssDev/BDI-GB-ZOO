PGDMP  '                
    |         	   zoologico    17.0    17.0 �    {           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            |           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            }           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            ~           1262    24578 	   zoologico    DATABASE        CREATE DATABASE zoologico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE zoologico;
                     adminzoo    false                        2615    24593    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     adminzoo    false                       0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                        adminzoo    false    5            �           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                        adminzoo    false    5            �            1259    24611    animales    TABLE     �   CREATE TABLE public.animales (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechanac date,
    idcuidador integer NOT NULL,
    idhabitat integer NOT NULL,
    idespecie integer NOT NULL
);
    DROP TABLE public.animales;
       public         heap r       adminzoo    false    5            �            1259    24607    animales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.animales_id_seq;
       public               adminzoo    false    221    5            �           0    0    animales_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.animales_id_seq OWNED BY public.animales.id;
          public               adminzoo    false    217            �            1259    24608    animales_idcuidador_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_idcuidador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.animales_idcuidador_seq;
       public               adminzoo    false    221    5            �           0    0    animales_idcuidador_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.animales_idcuidador_seq OWNED BY public.animales.idcuidador;
          public               adminzoo    false    218            �            1259    24610    animales_idespecie_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_idespecie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.animales_idespecie_seq;
       public               adminzoo    false    5    221            �           0    0    animales_idespecie_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.animales_idespecie_seq OWNED BY public.animales.idespecie;
          public               adminzoo    false    220            �            1259    24609    animales_idhabitat_seq    SEQUENCE     �   CREATE SEQUENCE public.animales_idhabitat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.animales_idhabitat_seq;
       public               adminzoo    false    5    221            �           0    0    animales_idhabitat_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.animales_idhabitat_seq OWNED BY public.animales.idhabitat;
          public               adminzoo    false    219            �            1259    24680    clima    TABLE     b   CREATE TABLE public.clima (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.clima;
       public         heap r       adminzoo    false    5            �            1259    24679    clima_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clima_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.clima_id_seq;
       public               adminzoo    false    5    242            �           0    0    clima_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.clima_id_seq OWNED BY public.clima.id;
          public               adminzoo    false    241            �            1259    24622    cuidador    TABLE     �   CREATE TABLE public.cuidador (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechacontratacion date NOT NULL,
    idespecialidad integer NOT NULL
);
    DROP TABLE public.cuidador;
       public         heap r       adminzoo    false    5            �            1259    24620    cuidador_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cuidador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cuidador_id_seq;
       public               adminzoo    false    224    5            �           0    0    cuidador_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cuidador_id_seq OWNED BY public.cuidador.id;
          public               adminzoo    false    222            �            1259    24621    cuidador_idespecialidad_seq    SEQUENCE     �   CREATE SEQUENCE public.cuidador_idespecialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.cuidador_idespecialidad_seq;
       public               adminzoo    false    224    5            �           0    0    cuidador_idespecialidad_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.cuidador_idespecialidad_seq OWNED BY public.cuidador.idespecialidad;
          public               adminzoo    false    223            �            1259    24630    especialidad    TABLE     i   CREATE TABLE public.especialidad (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
     DROP TABLE public.especialidad;
       public         heap r       adminzoo    false    5            �            1259    24629    especialidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.especialidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.especialidad_id_seq;
       public               adminzoo    false    226    5            �           0    0    especialidad_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.especialidad_id_seq OWNED BY public.especialidad.id;
          public               adminzoo    false    225            �            1259    24639    especie    TABLE     �   CREATE TABLE public.especie (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    idfamilia integer NOT NULL,
    idestadoconservacion integer NOT NULL
);
    DROP TABLE public.especie;
       public         heap r       adminzoo    false    5            �            1259    24636    especie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.especie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.especie_id_seq;
       public               adminzoo    false    230    5            �           0    0    especie_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.especie_id_seq OWNED BY public.especie.id;
          public               adminzoo    false    227            �            1259    24638     especie_idestadoconservacion_seq    SEQUENCE     �   CREATE SEQUENCE public.especie_idestadoconservacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.especie_idestadoconservacion_seq;
       public               adminzoo    false    230    5            �           0    0     especie_idestadoconservacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.especie_idestadoconservacion_seq OWNED BY public.especie.idestadoconservacion;
          public               adminzoo    false    229            �            1259    24637    especie_idfamilia_seq    SEQUENCE     �   CREATE SEQUENCE public.especie_idfamilia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.especie_idfamilia_seq;
       public               adminzoo    false    5    230            �           0    0    especie_idfamilia_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.especie_idfamilia_seq OWNED BY public.especie.idfamilia;
          public               adminzoo    false    228            �            1259    24655    estado_conservacion    TABLE     �   CREATE TABLE public.estado_conservacion (
    id integer NOT NULL,
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(50) NOT NULL
);
 '   DROP TABLE public.estado_conservacion;
       public         heap r       adminzoo    false    5            �            1259    24654    estado_conservacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_conservacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.estado_conservacion_id_seq;
       public               adminzoo    false    234    5            �           0    0    estado_conservacion_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.estado_conservacion_id_seq OWNED BY public.estado_conservacion.id;
          public               adminzoo    false    233            �            1259    24648    familia    TABLE     �   CREATE TABLE public.familia (
    id integer NOT NULL,
    nombrecientifico character varying(50) NOT NULL,
    nombrecomun character varying(50) NOT NULL
);
    DROP TABLE public.familia;
       public         heap r       adminzoo    false    5            �            1259    24647    familia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.familia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.familia_id_seq;
       public               adminzoo    false    232    5            �           0    0    familia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.familia_id_seq OWNED BY public.familia.id;
          public               adminzoo    false    231            �            1259    24664    habitat    TABLE     �   CREATE TABLE public.habitat (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    idubicacion integer NOT NULL,
    idclima integer NOT NULL
);
    DROP TABLE public.habitat;
       public         heap r       adminzoo    false    5            �            1259    24661    habitat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.habitat_id_seq;
       public               adminzoo    false    238    5            �           0    0    habitat_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.habitat_id_seq OWNED BY public.habitat.id;
          public               adminzoo    false    235            �            1259    24663    habitat_idclima_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_idclima_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.habitat_idclima_seq;
       public               adminzoo    false    5    238            �           0    0    habitat_idclima_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.habitat_idclima_seq OWNED BY public.habitat.idclima;
          public               adminzoo    false    237            �            1259    24662    habitat_idubicacion_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_idubicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.habitat_idubicacion_seq;
       public               adminzoo    false    238    5            �           0    0    habitat_idubicacion_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.habitat_idubicacion_seq OWNED BY public.habitat.idubicacion;
          public               adminzoo    false    236            �            1259    24696    habitat_visitantes    TABLE     �   CREATE TABLE public.habitat_visitantes (
    id integer NOT NULL,
    idhabitat integer NOT NULL,
    idvisitantes integer NOT NULL
);
 &   DROP TABLE public.habitat_visitantes;
       public         heap r       adminzoo    false    5            �            1259    24693    habitat_visitantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_visitantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.habitat_visitantes_id_seq;
       public               adminzoo    false    248    5            �           0    0    habitat_visitantes_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.habitat_visitantes_id_seq OWNED BY public.habitat_visitantes.id;
          public               adminzoo    false    245            �            1259    24694     habitat_visitantes_idhabitat_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_visitantes_idhabitat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.habitat_visitantes_idhabitat_seq;
       public               adminzoo    false    5    248            �           0    0     habitat_visitantes_idhabitat_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.habitat_visitantes_idhabitat_seq OWNED BY public.habitat_visitantes.idhabitat;
          public               adminzoo    false    246            �            1259    24695 #   habitat_visitantes_idvisitantes_seq    SEQUENCE     �   CREATE SEQUENCE public.habitat_visitantes_idvisitantes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.habitat_visitantes_idvisitantes_seq;
       public               adminzoo    false    248    5            �           0    0 #   habitat_visitantes_idvisitantes_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.habitat_visitantes_idvisitantes_seq OWNED BY public.habitat_visitantes.idvisitantes;
          public               adminzoo    false    247            �            1259    24673 	   ubicacion    TABLE     f   CREATE TABLE public.ubicacion (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.ubicacion;
       public         heap r       adminzoo    false    5            �            1259    24672    ubicacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ubicacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ubicacion_id_seq;
       public               adminzoo    false    5    240            �           0    0    ubicacion_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ubicacion_id_seq OWNED BY public.ubicacion.id;
          public               adminzoo    false    239            �            1259    24687 
   visitantes    TABLE     }   CREATE TABLE public.visitantes (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    fechavisita date
);
    DROP TABLE public.visitantes;
       public         heap r       adminzoo    false    5            �            1259    24686    visitantes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.visitantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.visitantes_id_seq;
       public               adminzoo    false    244    5            �           0    0    visitantes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.visitantes_id_seq OWNED BY public.visitantes.id;
          public               adminzoo    false    243            �           2604    24614    animales id    DEFAULT     j   ALTER TABLE ONLY public.animales ALTER COLUMN id SET DEFAULT nextval('public.animales_id_seq'::regclass);
 :   ALTER TABLE public.animales ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    217    221    221            �           2604    24615    animales idcuidador    DEFAULT     z   ALTER TABLE ONLY public.animales ALTER COLUMN idcuidador SET DEFAULT nextval('public.animales_idcuidador_seq'::regclass);
 B   ALTER TABLE public.animales ALTER COLUMN idcuidador DROP DEFAULT;
       public               adminzoo    false    218    221    221            �           2604    24616    animales idhabitat    DEFAULT     x   ALTER TABLE ONLY public.animales ALTER COLUMN idhabitat SET DEFAULT nextval('public.animales_idhabitat_seq'::regclass);
 A   ALTER TABLE public.animales ALTER COLUMN idhabitat DROP DEFAULT;
       public               adminzoo    false    221    219    221            �           2604    24617    animales idespecie    DEFAULT     x   ALTER TABLE ONLY public.animales ALTER COLUMN idespecie SET DEFAULT nextval('public.animales_idespecie_seq'::regclass);
 A   ALTER TABLE public.animales ALTER COLUMN idespecie DROP DEFAULT;
       public               adminzoo    false    220    221    221            �           2604    24683    clima id    DEFAULT     d   ALTER TABLE ONLY public.clima ALTER COLUMN id SET DEFAULT nextval('public.clima_id_seq'::regclass);
 7   ALTER TABLE public.clima ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    242    241    242            �           2604    24625    cuidador id    DEFAULT     j   ALTER TABLE ONLY public.cuidador ALTER COLUMN id SET DEFAULT nextval('public.cuidador_id_seq'::regclass);
 :   ALTER TABLE public.cuidador ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    222    224    224            �           2604    24626    cuidador idespecialidad    DEFAULT     �   ALTER TABLE ONLY public.cuidador ALTER COLUMN idespecialidad SET DEFAULT nextval('public.cuidador_idespecialidad_seq'::regclass);
 F   ALTER TABLE public.cuidador ALTER COLUMN idespecialidad DROP DEFAULT;
       public               adminzoo    false    223    224    224            �           2604    24633    especialidad id    DEFAULT     r   ALTER TABLE ONLY public.especialidad ALTER COLUMN id SET DEFAULT nextval('public.especialidad_id_seq'::regclass);
 >   ALTER TABLE public.especialidad ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    225    226    226            �           2604    24642 
   especie id    DEFAULT     h   ALTER TABLE ONLY public.especie ALTER COLUMN id SET DEFAULT nextval('public.especie_id_seq'::regclass);
 9   ALTER TABLE public.especie ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    227    230    230            �           2604    24643    especie idfamilia    DEFAULT     v   ALTER TABLE ONLY public.especie ALTER COLUMN idfamilia SET DEFAULT nextval('public.especie_idfamilia_seq'::regclass);
 @   ALTER TABLE public.especie ALTER COLUMN idfamilia DROP DEFAULT;
       public               adminzoo    false    228    230    230            �           2604    24644    especie idestadoconservacion    DEFAULT     �   ALTER TABLE ONLY public.especie ALTER COLUMN idestadoconservacion SET DEFAULT nextval('public.especie_idestadoconservacion_seq'::regclass);
 K   ALTER TABLE public.especie ALTER COLUMN idestadoconservacion DROP DEFAULT;
       public               adminzoo    false    230    229    230            �           2604    24658    estado_conservacion id    DEFAULT     �   ALTER TABLE ONLY public.estado_conservacion ALTER COLUMN id SET DEFAULT nextval('public.estado_conservacion_id_seq'::regclass);
 E   ALTER TABLE public.estado_conservacion ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    233    234    234            �           2604    24651 
   familia id    DEFAULT     h   ALTER TABLE ONLY public.familia ALTER COLUMN id SET DEFAULT nextval('public.familia_id_seq'::regclass);
 9   ALTER TABLE public.familia ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    231    232    232            �           2604    24667 
   habitat id    DEFAULT     h   ALTER TABLE ONLY public.habitat ALTER COLUMN id SET DEFAULT nextval('public.habitat_id_seq'::regclass);
 9   ALTER TABLE public.habitat ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    238    235    238            �           2604    24668    habitat idubicacion    DEFAULT     z   ALTER TABLE ONLY public.habitat ALTER COLUMN idubicacion SET DEFAULT nextval('public.habitat_idubicacion_seq'::regclass);
 B   ALTER TABLE public.habitat ALTER COLUMN idubicacion DROP DEFAULT;
       public               adminzoo    false    236    238    238            �           2604    24669    habitat idclima    DEFAULT     r   ALTER TABLE ONLY public.habitat ALTER COLUMN idclima SET DEFAULT nextval('public.habitat_idclima_seq'::regclass);
 >   ALTER TABLE public.habitat ALTER COLUMN idclima DROP DEFAULT;
       public               adminzoo    false    238    237    238            �           2604    24699    habitat_visitantes id    DEFAULT     ~   ALTER TABLE ONLY public.habitat_visitantes ALTER COLUMN id SET DEFAULT nextval('public.habitat_visitantes_id_seq'::regclass);
 D   ALTER TABLE public.habitat_visitantes ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    248    245    248            �           2604    24700    habitat_visitantes idhabitat    DEFAULT     �   ALTER TABLE ONLY public.habitat_visitantes ALTER COLUMN idhabitat SET DEFAULT nextval('public.habitat_visitantes_idhabitat_seq'::regclass);
 K   ALTER TABLE public.habitat_visitantes ALTER COLUMN idhabitat DROP DEFAULT;
       public               adminzoo    false    248    246    248            �           2604    24701    habitat_visitantes idvisitantes    DEFAULT     �   ALTER TABLE ONLY public.habitat_visitantes ALTER COLUMN idvisitantes SET DEFAULT nextval('public.habitat_visitantes_idvisitantes_seq'::regclass);
 N   ALTER TABLE public.habitat_visitantes ALTER COLUMN idvisitantes DROP DEFAULT;
       public               adminzoo    false    247    248    248            �           2604    24676    ubicacion id    DEFAULT     l   ALTER TABLE ONLY public.ubicacion ALTER COLUMN id SET DEFAULT nextval('public.ubicacion_id_seq'::regclass);
 ;   ALTER TABLE public.ubicacion ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    240    239    240            �           2604    24690    visitantes id    DEFAULT     n   ALTER TABLE ONLY public.visitantes ALTER COLUMN id SET DEFAULT nextval('public.visitantes_id_seq'::regclass);
 <   ALTER TABLE public.visitantes ALTER COLUMN id DROP DEFAULT;
       public               adminzoo    false    244    243    244            ]          0    24611    animales 
   TABLE DATA           Z   COPY public.animales (id, nombre, fechanac, idcuidador, idhabitat, idespecie) FROM stdin;
    public               adminzoo    false    221   ��       r          0    24680    clima 
   TABLE DATA           +   COPY public.clima (id, nombre) FROM stdin;
    public               adminzoo    false    242   u�       `          0    24622    cuidador 
   TABLE DATA           Q   COPY public.cuidador (id, nombre, fechacontratacion, idespecialidad) FROM stdin;
    public               adminzoo    false    224   �       b          0    24630    especialidad 
   TABLE DATA           2   COPY public.especialidad (id, nombre) FROM stdin;
    public               adminzoo    false    226   ��       f          0    24639    especie 
   TABLE DATA           N   COPY public.especie (id, nombre, idfamilia, idestadoconservacion) FROM stdin;
    public               adminzoo    false    230   ��       j          0    24655    estado_conservacion 
   TABLE DATA           N   COPY public.estado_conservacion (id, codigo, nombre, descripcion) FROM stdin;
    public               adminzoo    false    234   ��       h          0    24648    familia 
   TABLE DATA           D   COPY public.familia (id, nombrecientifico, nombrecomun) FROM stdin;
    public               adminzoo    false    232   �       n          0    24664    habitat 
   TABLE DATA           C   COPY public.habitat (id, nombre, idubicacion, idclima) FROM stdin;
    public               adminzoo    false    238   R�       x          0    24696    habitat_visitantes 
   TABLE DATA           I   COPY public.habitat_visitantes (id, idhabitat, idvisitantes) FROM stdin;
    public               adminzoo    false    248   �       p          0    24673 	   ubicacion 
   TABLE DATA           /   COPY public.ubicacion (id, nombre) FROM stdin;
    public               adminzoo    false    240   (�       t          0    24687 
   visitantes 
   TABLE DATA           =   COPY public.visitantes (id, nombre, fechavisita) FROM stdin;
    public               adminzoo    false    244   7�       �           0    0    animales_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.animales_id_seq', 94, true);
          public               adminzoo    false    217            �           0    0    animales_idcuidador_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.animales_idcuidador_seq', 1, false);
          public               adminzoo    false    218            �           0    0    animales_idespecie_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.animales_idespecie_seq', 1, false);
          public               adminzoo    false    220            �           0    0    animales_idhabitat_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.animales_idhabitat_seq', 1, false);
          public               adminzoo    false    219            �           0    0    clima_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.clima_id_seq', 15, true);
          public               adminzoo    false    241            �           0    0    cuidador_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cuidador_id_seq', 20, true);
          public               adminzoo    false    222            �           0    0    cuidador_idespecialidad_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cuidador_idespecialidad_seq', 1, false);
          public               adminzoo    false    223            �           0    0    especialidad_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.especialidad_id_seq', 15, true);
          public               adminzoo    false    225            �           0    0    especie_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.especie_id_seq', 63, true);
          public               adminzoo    false    227            �           0    0     especie_idestadoconservacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.especie_idestadoconservacion_seq', 1, false);
          public               adminzoo    false    229            �           0    0    especie_idfamilia_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.especie_idfamilia_seq', 1, false);
          public               adminzoo    false    228            �           0    0    estado_conservacion_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.estado_conservacion_id_seq', 9, true);
          public               adminzoo    false    233            �           0    0    familia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.familia_id_seq', 22, true);
          public               adminzoo    false    231            �           0    0    habitat_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.habitat_id_seq', 23, true);
          public               adminzoo    false    235            �           0    0    habitat_idclima_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.habitat_idclima_seq', 1, false);
          public               adminzoo    false    237            �           0    0    habitat_idubicacion_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.habitat_idubicacion_seq', 1, false);
          public               adminzoo    false    236            �           0    0    habitat_visitantes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.habitat_visitantes_id_seq', 800, true);
          public               adminzoo    false    245            �           0    0     habitat_visitantes_idhabitat_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.habitat_visitantes_idhabitat_seq', 1, false);
          public               adminzoo    false    246            �           0    0 #   habitat_visitantes_idvisitantes_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.habitat_visitantes_idvisitantes_seq', 1, false);
          public               adminzoo    false    247            �           0    0    ubicacion_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ubicacion_id_seq', 20, true);
          public               adminzoo    false    239            �           0    0    visitantes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.visitantes_id_seq', 300, true);
          public               adminzoo    false    243            �           2606    24619    animales animales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_pkey;
       public                 adminzoo    false    221            �           2606    24685    clima clima_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.clima
    ADD CONSTRAINT clima_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.clima DROP CONSTRAINT clima_pkey;
       public                 adminzoo    false    242            �           2606    24628    cuidador cuidador_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cuidador
    ADD CONSTRAINT cuidador_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cuidador DROP CONSTRAINT cuidador_pkey;
       public                 adminzoo    false    224            �           2606    24635    especialidad especialidad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT especialidad_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.especialidad DROP CONSTRAINT especialidad_pkey;
       public                 adminzoo    false    226            �           2606    24646    especie especie_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.especie DROP CONSTRAINT especie_pkey;
       public                 adminzoo    false    230            �           2606    24660 ,   estado_conservacion estado_conservacion_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.estado_conservacion
    ADD CONSTRAINT estado_conservacion_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.estado_conservacion DROP CONSTRAINT estado_conservacion_pkey;
       public                 adminzoo    false    234            �           2606    24653    familia familia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.familia
    ADD CONSTRAINT familia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.familia DROP CONSTRAINT familia_pkey;
       public                 adminzoo    false    232            �           2606    24671    habitat habitat_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.habitat DROP CONSTRAINT habitat_pkey;
       public                 adminzoo    false    238            �           2606    24703 *   habitat_visitantes habitat_visitantes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.habitat_visitantes DROP CONSTRAINT habitat_visitantes_pkey;
       public                 adminzoo    false    248            �           2606    24678    ubicacion ubicacion_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT ubicacion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT ubicacion_pkey;
       public                 adminzoo    false    240            �           2606    24692    visitantes visitantes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.visitantes
    ADD CONSTRAINT visitantes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.visitantes DROP CONSTRAINT visitantes_pkey;
       public                 adminzoo    false    244            �           2606    24704 !   animales animales_idcuidador_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_idcuidador_fkey FOREIGN KEY (idcuidador) REFERENCES public.cuidador(id);
 K   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_idcuidador_fkey;
       public               adminzoo    false    224    4779    221            �           2606    24714     animales animales_idespecie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_idespecie_fkey FOREIGN KEY (idespecie) REFERENCES public.especie(id);
 J   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_idespecie_fkey;
       public               adminzoo    false    4783    230    221            �           2606    24709     animales animales_idhabitat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_idhabitat_fkey FOREIGN KEY (idhabitat) REFERENCES public.habitat(id);
 J   ALTER TABLE ONLY public.animales DROP CONSTRAINT animales_idhabitat_fkey;
       public               adminzoo    false    238    4789    221            �           2606    24719 %   cuidador cuidador_idespecialidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuidador
    ADD CONSTRAINT cuidador_idespecialidad_fkey FOREIGN KEY (idespecialidad) REFERENCES public.especialidad(id);
 O   ALTER TABLE ONLY public.cuidador DROP CONSTRAINT cuidador_idespecialidad_fkey;
       public               adminzoo    false    224    226    4781            �           2606    24729 )   especie especie_idestadoconservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_idestadoconservacion_fkey FOREIGN KEY (idestadoconservacion) REFERENCES public.estado_conservacion(id);
 S   ALTER TABLE ONLY public.especie DROP CONSTRAINT especie_idestadoconservacion_fkey;
       public               adminzoo    false    4787    230    234            �           2606    24724    especie especie_idfamilia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.especie
    ADD CONSTRAINT especie_idfamilia_fkey FOREIGN KEY (idfamilia) REFERENCES public.familia(id);
 H   ALTER TABLE ONLY public.especie DROP CONSTRAINT especie_idfamilia_fkey;
       public               adminzoo    false    232    230    4785            �           2606    24739    habitat habitat_idclima_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_idclima_fkey FOREIGN KEY (idclima) REFERENCES public.clima(id);
 F   ALTER TABLE ONLY public.habitat DROP CONSTRAINT habitat_idclima_fkey;
       public               adminzoo    false    4793    242    238            �           2606    24734     habitat habitat_idubicacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_idubicacion_fkey FOREIGN KEY (idubicacion) REFERENCES public.ubicacion(id);
 J   ALTER TABLE ONLY public.habitat DROP CONSTRAINT habitat_idubicacion_fkey;
       public               adminzoo    false    4791    238    240            �           2606    24744 4   habitat_visitantes habitat_visitantes_idhabitat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idhabitat_fkey FOREIGN KEY (idhabitat) REFERENCES public.habitat(id);
 ^   ALTER TABLE ONLY public.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idhabitat_fkey;
       public               adminzoo    false    238    4789    248            �           2606    24749 7   habitat_visitantes habitat_visitantes_idvisitantes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.habitat_visitantes
    ADD CONSTRAINT habitat_visitantes_idvisitantes_fkey FOREIGN KEY (idvisitantes) REFERENCES public.visitantes(id);
 a   ALTER TABLE ONLY public.habitat_visitantes DROP CONSTRAINT habitat_visitantes_idvisitantes_fkey;
       public               adminzoo    false    248    4795    244            ]   �  x�}V�r�F=��"?�T��>��ةx�+R�+S��$��M��̔��z!�KN:<x ^S�s��1��7\5�eV὏�P0��1�<]N���6��h��ix"\�u#E$3�چ�;�6�7�b�YX��CW�,�K�<k��0�RI5\TVC<�ݑ0���fVcx/�e#t�B��z���a���Dq������s"�a@�� �}���ìص�0��.]�9L�k���vTO�(�d�t�8��p$>�)&,����ʸ�KSb-��q,]#e���\6���$qܗr�a�U��G��M�ZOr���a(c��tss�ė)���
����8���*!R�@�%�u�u�n(1�
&5���W$x�J$&5�e�Oe��F��8�^�?����j�nQ�u�.-hΉ��B��Ҭ͒��kO�46jQ���P,�2\��L[:�r�<L��U�>HK8i�q��$��OD%S
nCw
E�y�9�2�����f��EΑX��͔�|d<ǉ�)O�[9�!6ijT_/Ǹ4Q����{�N��U:�\N3��1a>��JEs��o��J3��|��}ҍJ�144ܘvLKT��g�L�J�e�3\��*��_B5�2�?
�봚i�Ǹ=t碐���kQ]^t��H6L���\�/��e�n는K�Qϴ��a�Q4���媂�3��0I�D_L��=�;�bi�HT�.�C�m��e
�D�	�TE���i��1�F�Kd���qf�3�X�?����&��[ҶW|<���A�n���UįJ�d������Z�r�k��Y�B�9����e��������L���.�[�q���<kӢ,Ŭ��K6ה��!̊Uvi�ٚ�U��!~�=��ےQ죅��KQj��93>Yg��J*I�qˬ��\^��v˫+�;D���[����-�&=�l+��\�z�-=3�f�R�E&�>����qqw.�d�Z�V��֎*"б��O �X؄+�s�e���Z^���>&q�����-i4*9Bt֗�!o�'y�%R��u����r���8�w���kbϜ�u�S5p��%1�(�m�"�%�&s?�j��r�����?a&�\pI����>���H�T��ǹ���;��+��̆y�ݴ��Ԓ^���-�W�&D3��Sj�y���W��]Y~y�	��k�����G/*��ό�Y�<      r   �   x�5�?�@���0���Hdpc���-)w~z�g�����t��,���,�XBO���x��&�d�+xj��G��D��oOХ!�KghU>*[��qθ=��L�<ҠkV����s	�����dUP�e�k��_�4%      `   �  x�=�;��0���)x��2�>�N{�4��% �%��m\��j���e(�Ұ!8��O��D�<�{��h�J
5�0p��I��ǟ�7Jg
0"�-���9~t�K�t�4B&r�ړ<�+��(m֐����<�[߼-3k�F�(aOS ��C���L�R!B)*8��ɶ���R�D��IA�ѾRZ�+ej��N����[���	c#�9:���o�
8o�2V��~l-ð�1��kd͚6�(�����m�'��y|RX)��<P�l�⽿,��Q���vtu6�����/�G<�߉������A�LXdc��=��=$:�bG�k��t����sQ%�ȥ<�74^~��=��O�8��-q);�1��Re��c�x��R�t����!�?��y      b   �   x�U��N�@����'@li�9Fi�*��,Y%6�n���x#���e3�	���'�9a�{�%�ʵ#��$��+~�1Ík&�vg)��k��j�!�,ݸ���ᷮaMY]��f�W�[��hO?uα;⎄�~A^�+�V���	��&���/��!#���JR�=�+���y�����-fB-�jvc�A�za�2`��U�q�R���8����W ��qv      f   �  x�mT;n�@����	�/����HlǈA����Xr�%i���K)�tiy��!IR�3o��f�Tï�J���t��c/��\�� �^#۰+�h��םr<J)m{u3��;K!eޒ6��vjV��:g�/�qB�]�%y��A@7Jn�<���pm'4�ϭ�o�4�Ѥ�5��xT\�1֕��#�4\��ե%"�S �ԋm�������oIW�s������I�BW-�h�-F��i]8m&1�+[�D.�"��8���v<�dJ(�6{]5\��4���u�w�k-�g���N�	�*�_������0�3$���7�s����S�iy�zx�t.\VG�n�o���1����f ���/X���PO�'��M�(�,�N�ǈ�o,���{�Yc��w=9'tg]ח�mII[6�kåmi�D���79w5����6��l�<XHT���BW��2��qS����,v�/�2�\�� ��yB��UCPf�+�08��ºJ��@�'t.�y�k ����t̕����+�h�S�rMj�<��N7�ea��b��X��F���`� ���
�l�����jtJ�l!	i����RĈ�z'6;��j4�����8�:9��LD�#��8\l����q��u�c�U�Kʭ���NPc,hy�/���3!�='г�[���]
�.N��k�"��.Ax�N^�
iú��l��۳WD[~��h�I~{�y��{      j   *  x�m�MN1���)r ��?,K;�j�
l��-�2�(Ɍ�^�#p1���Y�s��~�%P�C����-���ݡbi�)�����Y

e\�M�{�<�׃,"��SvY��b�`<�*ؖ<��X9��a��9R#vI�����+�k��#��)���s�W�w>Pą'����C֢mhɨ�Z�{1�P��[l(�^��Q�L�՞�؅�׊����"��Z<��a�����-��d̒��b}��)A-�w��Jbs\��ӵy��*���]16Rj&�N�u5��?T�IH��.�qn��a䥛      h   `  x�-PKN$1];�� ��/��#$`#6��t���I��s�Yp
.���"��l?�����Tc��V��P�9�M�ѐsX�9O4��Vl��w{���%��.�Afnl��H�K<�Q\�8aȵj�w�)�+xL�36ލ�5_�3���G�gѼ�0u�T�`���Ze���ԬK��m�?����t����3���葂D��%�{
��<N�����3�:s�Jj�]o>��J�p�T|Ï��ncm�}3;���/��a6���-*GI��
68�C;b�L�.��?��D{N�`7f��������im$��Y�������+=<e�][Aô�3��	��%�X��^<�R\}=q�}4ٻ�      n   �  x�M�An�0E��S��IY��m� H����У� E�$e�:=@E����S��n��������$�X%�5��;d�(Kw��Y�q�v8���2ɑ�uzOƪ-}��%פ9KL%�%�z����廓�D�@�%���D�^��c*��U�9�Xs�M�ԞEF�R��c���V��[�EJ��Si�F�=q�g��J�	#R)��c���#�t��<��+w�Xz^��1U��+�W��Pb˥x�9J�Jh[z�'`���n���|3����ڴ�eX�7��,�R�G��wtc�s�A�o|o߿�W�|��>M`�mp��"y�S���2x��г��kj����i�l�KD3u���>4vk�C�KJ��5m�/���
8���J�?�3�9      x   -  x�E��q�6���b2<���_G�[�wƞ1͛8�?����������k����m�����O>#���Q����պ������gͷ�G?��]��W�jK��j����՞�L[Cɉck��~N{�F;�w�G�s�:H���w���C[�W��;�6��~�6�j�o��Â�YWWMOnO�s��3��w�흺���\j�ޓ{w=sj�Эޙ�gi�����΋hzo�j\��w�Go�x���wYԳ�K׻���w�wW��]�Ph��%�͟}��4G�߾�Х�@��ݓ�y�ma��m�滃���Iii�6b_Ľ�E)�D{,��F�R�zcx����JQ��h��t��~�(�K��,�RV����}t�{�l޶�7;�҅�"�����B=޽����>l����Ѵ�ud��&/R���=�>��}�-s��z��ْƱ�����xV�ߴ2uף�������|o�khtt�����P]@#�����N�7x���MKW׼�k5�oȉ��I�zk<�EˢS��$,��b'����fr��jY�,�\S+zI_���19	�w�gi�����Î��T;��^L��2��tx����������8�(es��]��[��u��a�5�S����my�����;t踞�4�G�ʅ镁�Y���ō�_n���˓Y4$K|��a���&��q(��BCᗱIȥ�p�˧q���S���֮���<��!|[��X^_q�nV&�K;:s��ɚ�.��;�.�m���!��ћ� B�����~����+A��N��?w׼����Z�6�:��QWb�.i����a��r�S����J�8��r|���\��йm�B��������{�ٌqL�Ö�h����q0��; �H� x���V��PG�9a���UGg�r#6P���f����\HjZ�w=��9�E9�Zz$wm�8� /���֡�����'L@�����Pt��i�I1�C�^#p�� ��R:���Q������u��� (��#��a��4�OV��9v�d�g�:g�
V�0Jb�^�b�k���<�K�CU8��I�BD�'8��,p8g牋�\�$�QղN�vP�ꘆ���lXgL�ٕ�&$\a���IP��H���Xc�}-�E�ՋJ�l�B��Ew�Y `2�n���
�����A�o�~����ז�'�����k��%��f�Wnxчh�r%sY���e��.����k�K�w�29mV>�I���܊�^Qx�����!��I�DjG���x}F�Ag�NH���(�.3��
����hŊ�m
��wu�^�\�����(�|э��7
p$LzQ�|#e��:���ƞDy�_��+��3;�a"���6=(#�Τwm��cD,(��� 0?�4+�5����r����6�!�e�b$���.3�p��� 5�)}�߄ߡ�$s�ȭ����6,��b��i���C'�e�8��	�0ǝ�É�H�]�,�^<���8��)����S-D�
d@3�wА���q�9+l��&t�ӢY�3`��*M+8��3/Mc���D������"�X��c�b}'in1|�
��\�ǲ��MD�Y<?�;u%:��R0 mV�)B=��[���
�,�cLss�bb������D�����g�D�1ftj��QRў��3�ظ_��b��H!2�"�7ll(�8 ���P�W	�� `��i���*Zό���̬��V�sG�-��� �锏�#�3~�gn���c[�l �ʱ��la�qBxЊh���f�g�[���I���)Ľ)�=�h�D����a��R8`�0�U#}���G��܎��R�1��AN�-� 9�2�f��`�f~I�j����[��nj+�.cv��Nx��g��J�3}РE��V�g@�W/��ɦ�r�}ר����%���D��9�BZ�s�b��I�ᓔ�	 ǌ��Q�g)GeM�Z��DJ�� ;܂�[��@>-�Ύ�y�e���Y�t��$d�:Ff�V���Z&�ꚅ`�]e/̅@ת��ʊ�4�7(m9���`�3�s栯�	.��Qu���J��"��9�E�r(�n��Q,M���W�ScT�c��A���<8�Ѐڅl/�Բ�k#:�������V�b��T �����-� v�3�f�Z��QTH����ޕk\�l�W1�Y+�-� �X_2@��+x���;�U��!�b�瘋�����,SN*�#��[0���V�Xº�i����k�ͯ)�b�x�H�" ��w�F��n����\}�̪tc�iS�.���h��!��P��nN�(#���n�I��M��������f�"�j��(lmg$t۶�,FO�W��(@l.��V�ԧ@<�${�v������u4$�=�և���Tm@��%;{9}~7(���R�gU�h9�*�����ک(ʰ�S��=3��UdpP{���w�b���� 
ZE�8p�D��E9�Ώ�n� �?{W�A}��M�)r�]Q+�N�yX���o�������,Gd��vUnRw@7�i;zE0-	��箂 �xG僘JT�	Q�a�?݄'p�Q�FY2��Z��J�;�9�⃺F��в_�Oe�;�w@v��`-�F�k�f��U���#���Q�3���R�b^QN�wlc4�֢�*l�]��Ky>�q<@��oA���63l���fUP0� �L���ubK����.�h�Fb���Y�	�$�U�s�~��NƷI�P+ʯ�����CF�v��* 7$�������^��UUHaJ�i�v�_	X[W�$�7�B`<UGƕ\�a��b��M�IZҢ�!D ����'8!�Z��6�0���ÄC�U�g��I����pV�IH�X�|W��YЙL��Y2�Up��0���r|����7�UvN��UFә�� ˊ_�.V~��X6 +V��������]�=tb:y;Y��vI�؅��^�hE�pE���K�cۢe|_�V>\pC��'�x���%�z�P&�����?��3h�-�}�Sdj$��2�P5�hv-�I���+:&�Ϡ�LSTf֗ �Td�!S�*�MKC;�ԡ��A ŝ�3����V1h�v
�Y���>Ǟr+������m�V��F���_D*��tV��w� ~��ؙ鲀�![���T8Sg},���5�Jc�`���?��Yg0|�mtJw�I�E���W.}Ed,�]��&ݟ�ؤ @GT.����6��U��bR3Yp ��o�\z��Z�c�����s�)r{�T�.��5��sV���Oj��QGM)%'��gѿ�Ǩ��3�\p�Y�Y>���̛�����3��\@��d.�?�0��'�P�W\�l�� �]*G�:뫡�U��r���䶅q��}�L��ݥ��@/�.q��O�I_9��:����g4��" TU�+pǠ��Ψx�s�"��I��"��+�Ek=�г����M �,X��r�{s�Ú]<<�e4�-�����1k��Ȫ�C���%�pI������>��)�D.�5z������_1��l����s��:ذ
��<�)�� Ny���j������}&T�\e����}�����      p   �   x�E�Kn� @��)8A��I�$���������=VG"L
�j��3�bŶ����Fţ~r�
���"��	�GP�~���a�l�X`�l���iہΉEX�7,1Cۄl�k���Ւ~vm�6;��� �L�@����+ƨ���;��q��$�������) ��z��&m����D^�Jm�]���J}�J=a���$��ѵ�;��A���]f�T�OC�}@_S�w��gI1��9>�����
 ��z      t      x�M�[��8҆��Wp7W�a0�p�:���\�����Ƞ�5��Z�~��fJ��蘙!���'�N�ۨ/�����N�ze�4=�egYgѽ���ˮ�ɵ�JSKZ����tϣW�odr��x����3<�.�<z�R�]r!t�QX̲�YI����~+#���l-Vf�dE\D�q��"Ym�8(�rvF�x�Zc��C�3;ᚎ��g3�)�2���<�z'�Il��,����a����f#�6fAۦ��^��PF&��Ro�p�)�4���!YKqn/�[f�8͢����ɽ�l�i�=9[��<���}���PR7�H9���w�`to�l����"Z5��I�K�5�x-��"�ji�kC9�3�ל��2zR�`�\j-�ޗ)�2-�㼈���^?cO�U��Ni�)����U�Ǚ�+q�l=���Dr�cw����i��ъ_�憮=�@x2�΅���9HѰ�l�Y�ͧէ��	9y��Q ��Ȱ�8x�2�(z��.��W�̊�BKk`7}�n:&L�-����{���]��9z�KgT-�W��J�FQ��U�c���� g�.�2'��g�,P&w_�H���泳���i���>կ�z�Z�;΃x���(K�SϑU9��[񹵶	O���<zp��'`�N��)j�x��֝0�5�9�k��O�||gA��<*�q��x����A���F%7�3�@�ٌ�2�v�������V4�B��q�*z�_	~V���?�,�X>��!�Pv���n����y�����A�>���p���<n�'뜒�t���YcX���%Q�9�8'���Ʃt��$,��8�Pj�0&y��;LR���^8M���A�Υ|ݵb=ھ��yN�_q^F7J7P7I�_I1�g��u�kh�t�kd��E+�D��vtϜ<�H�s�ʐ�+�)qW�y
�"^@��Vm+�n�R�x�N�$
/$9;K9b^tN}�ǍS�v��߸�hq*�F�}��-�E!v�<�"2�T(^,J#z����e��$�\����H9_O�4U��L�8�M�ڍu���,��@BT'7b�N�2T�ыD^\�r�
��`	j �;/���,.�8�u[�>�^6G��T4h�<z�f5�ȓ�Uq��.�Jɳ���>�I���������.��2.�ѕF��Pu]��S��9��(qu�D�\���F�R �EE�����x����x9�.�k�lr��jY�2�}D�2���������IN
:�2��{�⓬�������b�^�DJ�r��������l E����s����"z�`BP��z-JYĳxYP9�84�6,W$�KT2�A�ȶS^̹&#Ȗeto��{D9���\Q$@���Q���� �׳��d�p�O��=B�f�+S�!r�-^��T���ҧ���aw��+P��-�r��c�~�7�?lλK��d3����,�p.я��' {��걘� �$.f�P������Y�T��nH.�Q�X*a�V���q��t�0e���d��F=�$��+*ep�Iޭ���9�*Eu E" �lP���ʢ7{����!��S�e�#՜R�|���>F���Vh���׫T�ZD�����}T{��+�Z����^�H)�k�2�֠D�(L�|�"Ļ��.h�g=��8�ŜX���Ky@���Q*g3h�nze�K�z"�[5Y)���r
6G �Ԏڃo:V�t����h۔���`7�Gk��5��3��Z�|�l�y�\l�`QT0'�r?ڰ�\Hg=�l�%/}Ө�lr���%������S� �����A�S�9N3Z��X�N~�J�4���R ��uLhO��Iq�iJr��^5ͩ�`�K���N~�(xCud*N��PH�d�=�BJ짂E�R�k��CoD�Ò����x/41��D�t��� -���� ������k7A�sf[�B���c	���Q���ݓ6��%	~�q����Ԛ��	�B'���ζ(�d���IT��Ȱ�܈��/A:�K1w� ��N9�<���� �ap�3<#�Kgw\JJU�����J����*�N1�Vk�	1�M�h�z��E��Z��l�F�k8�)�6���?����M"D�ۆP�|�D"��]7�F k�]���'���)(� ��Pʸ@��P����ˢ��j��1��,){�tP��>
g���c�e�h�x��nwz�w�ۀ�+��5�NXױ6����MM�ߥCeRcY��K4Z��Nh��8��B=��  ���>u�0���!y�M�����RV-D����*N�5��{��Z�	I9�^Mp�E���d��# ���:�OdΨ�����������.�z3��~�y�X���+T-�����ľ�"�� !�X �&�9	yrD�I���c��h� �D	���a
�Z��`������;ZEߍ��y��=C6����Rڄ����Z���}�DB&����؅z���x���Hم�%�ۂ��d��^Ny;�/������g�Q����� � ���n�s�Wٲ"��é�HA���@�&�����n(g�DX{��T��gߴ�/
�y{!5�2�hۃ�&P�ƜZ
4�-��V�j���Q��Gרf�g���L6)��DWC�߄2a�d�!��=��}����@�h��_��޹�)q�F2Nt�Β��(��S֓�
*��?�MH�t|�Nwc�M@߅�Y �
*����A=3S��tl����̶M�e��On����.����<Gi��]ȱZ|�5<�GC��op��.ؤ`� ��r#����;��
���~o�sw�;_���^�ПԖ�kЅ�t�����[��E��xl�tb�3%	�Rpk $Ñ�����w�o U9L}�8�GC�~8�b��_��B���3x�}-�u�/�c>>��rP:վP��+�d��oEC3����]
���]F謉��GK��7�M$ݤ$���&o�(����݇Ŋ�@"s)8�Cх6�WFl���Bw��<@�\��Kc����:���@u�n����������`�a��DP����ں�1T�aoP����ni��!�9�"��	5���OHOA�h�������,�fqF6���WrL2,��f��J:���yl����@�Ļl���������)�ۭ4��e��2��5����~�F�^�x�8 R��}�MM?�%A�`����4ѝ�d��;l��(���=��h@	T_�4�}��l<�����4�I��[�u�5E7D$��m��b����Gyz�n�r�Q�qO�F� v�4�mB�uNa^�)����xz�w��1W\�� %1Bl�����Նv�GiH��~#�+��zo�����5��rh� �?���;�z��%����;B�)�ɥ��kt/<��!?g!3��߂K����kD�FP���9?��� �:}#�4V�sk��+n!Ԃ�tq��e�*7:	��ZRp���(�(#4U�ڞ�� ���z�\㔆��!j�hX�&�S�QOć#Y^w����i������]�j�nƢj�Z��S�&ۀ�o����8����\���5͑���:z�P�.��K#M���vDʀ����5}kaȀ�4����0���G&����QHМ_����N���
�~%��Kь�J6����4��i�	��2�[z��J^�r�O��fs�oD��ԝ�Mv�������pA�g\}2�;�h��|�H���ɠ��+��� W�:�r�M�AJ2y��������y�=�$�k�����`�B`�:�N짰��Lt�_���"��}��9�N#Ke��K�����4����`dG���g �"�y�S|m��DOˀ�YN*�k��y$�n_Cz��D���K��<��jp[x�F�GU�3{����ow�F���� �gw.��nd_�nG�~�l$*"��HA�Z���Ə1=����F��ˣ����%}钇���yb�7F��UH�,���Qt�co�������w��e�x8
5�<�ijk^i�S�.�G�� ^  �L�H�y<u뾺���g��"�O�l��x�b��q���f��>%��y�C3�h���ߜ�L~�u-ݶo�X��+hJ���'{A��(�.�q��0�3�K��qK(5�d>8d@�s����]XZ�'�Ӈ�D���e �@�o�d�ʺ�c��b��9{i�t��	��8X�^y�PgI�y8��8~%ρů^@H)�����h�ZH��*YS��o.TV������(���/0�����c��9��!X�B'M��2��J�ѧ�q�γ:>������:��9g{I�)�[�� ��G�2E�4g���F�~�0�� �k��Zꉠ#JJC�h��*�W(�� �Y|~�WZ�����Y駠�Cn����7@�.��/Vu�8���"��� �V]'j��T'����%P��K��[r�	C� +���Sr�� u�N��H.� >�?Y�'��]�B]�Ut�Р�4]�/�q�>å��h�n��>��r�����a�j�yO�#ZC��xĊ	d�O٨�Oo]P����?��?nQ���Q�?���=O4�4Ȕ<V�P܄>��t���l̪9��J����#����8���+w     