PGDMP     4    /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            ;           1259    245080    membergroup    TABLE     �  CREATE TABLE public.membergroup (
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
    member_group_id bigint NOT NULL,
    "group" character varying DEFAULT ''::character varying NOT NULL,
    member_group_name character varying DEFAULT ''::character varying NOT NULL,
    list_rights jsonb DEFAULT '[]'::jsonb,
    from_time bigint DEFAULT '0'::bigint NOT NULL,
    to_time bigint DEFAULT '0'::bigint NOT NULL,
    list_access_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL
);
    DROP TABLE public.membergroup;
       public         heap    postgres    false            c           2606    246678 *   membergroup PK_e8b6941fa52ebe5f7befdefbdf6 
   CONSTRAINT     w   ALTER TABLE ONLY public.membergroup
    ADD CONSTRAINT "PK_e8b6941fa52ebe5f7befdefbdf6" PRIMARY KEY (member_group_id);
 V   ALTER TABLE ONLY public.membergroup DROP CONSTRAINT "PK_e8b6941fa52ebe5f7befdefbdf6";
       public            postgres    false    315            e           2606    246884 *   membergroup UQ_e8b6941fa52ebe5f7befdefbdf6 
   CONSTRAINT     r   ALTER TABLE ONLY public.membergroup
    ADD CONSTRAINT "UQ_e8b6941fa52ebe5f7befdefbdf6" UNIQUE (member_group_id);
 V   ALTER TABLE ONLY public.membergroup DROP CONSTRAINT "UQ_e8b6941fa52ebe5f7befdefbdf6";
       public            postgres    false    315           