PGDMP     7    /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            =           1259    245140    mydepots    TABLE     x  CREATE TABLE public.mydepots (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    depot_id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    lat real DEFAULT '0'::real NOT NULL,
    lon real DEFAULT '0'::real NOT NULL,
    request_provider_id character varying DEFAULT ''::character varying NOT NULL,
    service_provider_id character varying DEFAULT ''::character varying NOT NULL,
    is_warehouse boolean DEFAULT false NOT NULL
);
    DROP TABLE public.mydepots;
       public         heap    postgres    false            f           2606    246644 '   mydepots PK_b79fe5cddf8d8980c43ec092976 
   CONSTRAINT     m   ALTER TABLE ONLY public.mydepots
    ADD CONSTRAINT "PK_b79fe5cddf8d8980c43ec092976" PRIMARY KEY (depot_id);
 S   ALTER TABLE ONLY public.mydepots DROP CONSTRAINT "PK_b79fe5cddf8d8980c43ec092976";
       public            postgres    false    317            h           2606    246858 '   mydepots UQ_b79fe5cddf8d8980c43ec092976 
   CONSTRAINT     h   ALTER TABLE ONLY public.mydepots
    ADD CONSTRAINT "UQ_b79fe5cddf8d8980c43ec092976" UNIQUE (depot_id);
 S   ALTER TABLE ONLY public.mydepots DROP CONSTRAINT "UQ_b79fe5cddf8d8980c43ec092976";
       public            postgres    false    317           