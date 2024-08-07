PGDMP      3                |           MST-2    16.3    16.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    19118    MST-2    DATABASE     i   CREATE DATABASE "MST-2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "MST-2";
                postgres    false            �            1259    19119    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            �            1259    19125    tires_table    TABLE       CREATE TABLE public.tires_table (
    tire_id integer NOT NULL,
    brand_name character varying(255) NOT NULL,
    price integer,
    size character varying(255) NOT NULL,
    tread_pattern character varying(255) NOT NULL,
    image character varying(255),
    stock integer
);
    DROP TABLE public.tires_table;
       public         heap    postgres    false            �            1259    19124    tires_table_tire_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tires_table_tire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tires_table_tire_id_seq;
       public          postgres    false    217                       0    0    tires_table_tire_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tires_table_tire_id_seq OWNED BY public.tires_table.tire_id;
          public          postgres    false    216            w           2604    19128    tires_table tire_id    DEFAULT     z   ALTER TABLE ONLY public.tires_table ALTER COLUMN tire_id SET DEFAULT nextval('public.tires_table_tire_id_seq'::regclass);
 B   ALTER TABLE public.tires_table ALTER COLUMN tire_id DROP DEFAULT;
       public          postgres    false    217    216    217                      0    19119    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    215   �                 0    19125    tires_table 
   TABLE DATA           d   COPY public.tires_table (tire_id, brand_name, price, size, tread_pattern, image, stock) FROM stdin;
    public          postgres    false    217                      0    0    tires_table_tire_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tires_table_tire_id_seq', 88, true);
          public          postgres    false    216            y           2606    19123     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    215            {           2606    19132    tires_table tires_table_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tires_table
    ADD CONSTRAINT tires_table_pkey PRIMARY KEY (tire_id);
 F   ALTER TABLE ONLY public.tires_table DROP CONSTRAINT tires_table_pkey;
       public            postgres    false    217               /   x�3202107462656��M.JM,I�-�,�I9�zY�\1z\\\ ��>         -   x��0�t��OQ�LM,���422�#�����T�X�W� 
�     