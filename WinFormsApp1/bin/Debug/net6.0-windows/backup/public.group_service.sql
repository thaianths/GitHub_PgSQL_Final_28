PGDMP     +    /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            0           1259    244963    group_service    TABLE     �  CREATE TABLE public.group_service (
    group_service_id bigint NOT NULL,
    list_service character varying DEFAULT ''::character varying NOT NULL,
    portal_id bigint DEFAULT '0'::bigint NOT NULL,
    portal_code character varying DEFAULT ''::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    "from" bigint DEFAULT '0'::bigint NOT NULL,
    "to" bigint DEFAULT '0'::bigint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL
);
 !   DROP TABLE public.group_service;
       public         heap    postgres    false            ^           2606    246512 ,   group_service PK_1e64a5b74276aaf10ab817e8630 
   CONSTRAINT     z   ALTER TABLE ONLY public.group_service
    ADD CONSTRAINT "PK_1e64a5b74276aaf10ab817e8630" PRIMARY KEY (group_service_id);
 X   ALTER TABLE ONLY public.group_service DROP CONSTRAINT "PK_1e64a5b74276aaf10ab817e8630";
       public            postgres    false    304            `           2606    246774 ,   group_service UQ_5210a634ffec6c23d1b4c11dea8 
   CONSTRAINT     |   ALTER TABLE ONLY public.group_service
    ADD CONSTRAINT "UQ_5210a634ffec6c23d1b4c11dea8" UNIQUE (list_service, client_id);
 X   ALTER TABLE ONLY public.group_service DROP CONSTRAINT "UQ_5210a634ffec6c23d1b4c11dea8";
       public            postgres    false    304    304           