PGDMP     #    .                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    244013    collection_orderpool    TABLE     �  CREATE TABLE public.collection_orderpool (
    portal_id bigint DEFAULT '0'::bigint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT ''::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    kind_ofcollection character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    collection_orderpool_id integer NOT NULL
);
 (   DROP TABLE public.collection_orderpool;
       public         heap    postgres    false            �            1259    244028 0   collection_orderpool_collection_orderpool_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_orderpool_collection_orderpool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.collection_orderpool_collection_orderpool_id_seq;
       public          postgres    false    238            �           0    0 0   collection_orderpool_collection_orderpool_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.collection_orderpool_collection_orderpool_id_seq OWNED BY public.collection_orderpool.collection_orderpool_id;
          public          postgres    false    239            \           2604    246386 ,   collection_orderpool collection_orderpool_id    DEFAULT     �   ALTER TABLE ONLY public.collection_orderpool ALTER COLUMN collection_orderpool_id SET DEFAULT nextval('public.collection_orderpool_collection_orderpool_id_seq'::regclass);
 [   ALTER TABLE public.collection_orderpool ALTER COLUMN collection_orderpool_id DROP DEFAULT;
       public          postgres    false    239    238            ^           2606    246584 3   collection_orderpool PK_6820d620745ef951b143e10164e 
   CONSTRAINT     �   ALTER TABLE ONLY public.collection_orderpool
    ADD CONSTRAINT "PK_6820d620745ef951b143e10164e" PRIMARY KEY (collection_orderpool_id);
 _   ALTER TABLE ONLY public.collection_orderpool DROP CONSTRAINT "PK_6820d620745ef951b143e10164e";
       public            postgres    false    238            `           2606    246794 3   collection_orderpool UQ_6820d620745ef951b143e10164e 
   CONSTRAINT     �   ALTER TABLE ONLY public.collection_orderpool
    ADD CONSTRAINT "UQ_6820d620745ef951b143e10164e" UNIQUE (collection_orderpool_id);
 _   ALTER TABLE ONLY public.collection_orderpool DROP CONSTRAINT "UQ_6820d620745ef951b143e10164e";
       public            postgres    false    238           