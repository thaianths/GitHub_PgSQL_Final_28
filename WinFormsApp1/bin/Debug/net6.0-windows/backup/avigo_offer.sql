PGDMP         0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243713    avigo_offer    TABLE       CREATE TABLE public.avigo_offer (
    avigo_offer_id character varying NOT NULL,
    driver_id character varying NOT NULL,
    driver_name character varying NOT NULL,
    driver_phone character varying NOT NULL,
    kind_of_vehicle integer NOT NULL,
    registration_number character varying NOT NULL,
    class_of_vehicle character varying NOT NULL,
    estimated_time_of_standby bigint DEFAULT '0'::bigint NOT NULL,
    addr_of_standby character varying NOT NULL,
    latitude_of_standby_addr real DEFAULT '0'::real NOT NULL,
    longitude_of_standby_addr real DEFAULT '0'::real NOT NULL,
    "timestamp" bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    offer_id bigint DEFAULT '0'::bigint NOT NULL,
    confirm_time bigint DEFAULT '0'::bigint NOT NULL,
    request_id bigint DEFAULT '0'::bigint NOT NULL,
    trip_id character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.avigo_offer;
       public         heap    postgres    false            �          0    243713    avigo_offer 
   TABLE DATA           O  COPY public.avigo_offer (avigo_offer_id, driver_id, driver_name, driver_phone, kind_of_vehicle, registration_number, class_of_vehicle, estimated_time_of_standby, addr_of_standby, latitude_of_standby_addr, longitude_of_standby_addr, "timestamp", status, created_at, modified_at, offer_id, confirm_time, request_id, trip_id) FROM stdin;
    public          postgres    false    215   ^       ^           2606    246502 *   avigo_offer PK_180617173c3109a375a6435a010 
   CONSTRAINT     v   ALTER TABLE ONLY public.avigo_offer
    ADD CONSTRAINT "PK_180617173c3109a375a6435a010" PRIMARY KEY (avigo_offer_id);
 V   ALTER TABLE ONLY public.avigo_offer DROP CONSTRAINT "PK_180617173c3109a375a6435a010";
       public            postgres    false    215            �      x������ � �     