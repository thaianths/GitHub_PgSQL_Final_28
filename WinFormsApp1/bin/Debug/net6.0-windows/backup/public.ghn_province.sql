PGDMP     %    /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            ,           1259    244946    ghn_province    TABLE     �   CREATE TABLE public.ghn_province (
    id bigint NOT NULL,
    "ProvinceID" bigint DEFAULT '0'::bigint NOT NULL,
    "ProvinceName" character varying DEFAULT ''::character varying NOT NULL,
    "NameExtension" text[] NOT NULL
);
     DROP TABLE public.ghn_province;
       public         heap    postgres    false            -           1259    244953    ghn_province_id_seq    SEQUENCE     |   CREATE SEQUENCE public.ghn_province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ghn_province_id_seq;
       public          postgres    false    300            �           0    0    ghn_province_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ghn_province_id_seq OWNED BY public.ghn_province.id;
          public          postgres    false    301            R           2604    246401    ghn_province id    DEFAULT     r   ALTER TABLE ONLY public.ghn_province ALTER COLUMN id SET DEFAULT nextval('public.ghn_province_id_seq'::regclass);
 >   ALTER TABLE public.ghn_province ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    300            V           2606    246566 +   ghn_province PK_5914fdbf05356ea5699104e99c8 
   CONSTRAINT     k   ALTER TABLE ONLY public.ghn_province
    ADD CONSTRAINT "PK_5914fdbf05356ea5699104e99c8" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.ghn_province DROP CONSTRAINT "PK_5914fdbf05356ea5699104e99c8";
       public            postgres    false    300            X           2606    246788 +   ghn_province UQ_64d58adf155bb8b814b8fa07aed 
   CONSTRAINT     p   ALTER TABLE ONLY public.ghn_province
    ADD CONSTRAINT "UQ_64d58adf155bb8b814b8fa07aed" UNIQUE ("ProvinceID");
 W   ALTER TABLE ONLY public.ghn_province DROP CONSTRAINT "UQ_64d58adf155bb8b814b8fa07aed";
       public            postgres    false    300           