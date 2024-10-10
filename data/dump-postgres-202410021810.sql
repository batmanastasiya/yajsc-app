PGDMP  /    
            	    |           postgres    17.0 (Debian 17.0-1.pgdg120+1)    17.0 (Homebrew)     F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            I           1262    5    postgres    DATABASE     s   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                     postgres    false            J           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3401                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            K           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16414    homeworks_status    TABLE       CREATE TABLE public.homeworks_status (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    unit_0 integer DEFAULT 0 NOT NULL,
    unit_1 integer DEFAULT 0 NOT NULL,
    unit_2 integer DEFAULT 0 NOT NULL,
    unit_3 integer DEFAULT 0 NOT NULL,
    unit_4 integer DEFAULT 0 NOT NULL,
    unit_5 integer DEFAULT 0 NOT NULL,
    unit_6 integer DEFAULT 0 NOT NULL,
    unit_7 integer DEFAULT 0 NOT NULL,
    unit_8 integer DEFAULT 0 NOT NULL,
    unit_9 integer DEFAULT 0 NOT NULL,
    unit_10 integer DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.homeworks_status;
       public         heap r       postgres    false    4            �            1259    16407 	   repo_link    TABLE     �   CREATE TABLE public.repo_link (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    link character varying NOT NULL,
    comment character varying
);
    DROP TABLE public.repo_link;
       public         heap r       postgres    false    4            �            1259    16400    roles    TABLE     f   CREATE TABLE public.roles (
    id character varying NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.roles;
       public         heap r       postgres    false    4            �            1259    16430    thread    TABLE     Z   CREATE TABLE public.thread (
    id uuid NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.thread;
       public         heap r       postgres    false    4            �            1259    16393    users    TABLE     (  CREATE TABLE public.users (
    id uuid NOT NULL,
    username character varying NOT NULL,
    role_id uuid NOT NULL,
    firstname character varying,
    lastname character varying,
    phone character varying,
    email character varying,
    telegram character varying,
    curator_id uuid
);
    DROP TABLE public.users;
       public         heap r       postgres    false    4            B          0    16414    homeworks_status 
   TABLE DATA           �   COPY public.homeworks_status (id, user_id, unit_0, unit_1, unit_2, unit_3, unit_4, unit_5, unit_6, unit_7, unit_8, unit_9, unit_10) FROM stdin;
    public               postgres    false    220          A          0    16407 	   repo_link 
   TABLE DATA           ?   COPY public.repo_link (id, user_id, link, comment) FROM stdin;
    public               postgres    false    219           @          0    16400    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public               postgres    false    218   =       C          0    16430    thread 
   TABLE DATA           *   COPY public.thread (id, name) FROM stdin;
    public               postgres    false    221   �       ?          0    16393    users 
   TABLE DATA           o   COPY public.users (id, username, role_id, firstname, lastname, phone, email, telegram, curator_id) FROM stdin;
    public               postgres    false    217   �       �           2606    16429 $   homeworks_status homeworks_status_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.homeworks_status
    ADD CONSTRAINT homeworks_status_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.homeworks_status DROP CONSTRAINT homeworks_status_pk;
       public                 postgres    false    220            �           2606    16413    repo_link repo_link_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.repo_link
    ADD CONSTRAINT repo_link_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.repo_link DROP CONSTRAINT repo_link_pk;
       public                 postgres    false    219            �           2606    16406    roles roles_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pk;
       public                 postgres    false    218            �           2606    16436    thread thread_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.thread
    ADD CONSTRAINT thread_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.thread DROP CONSTRAINT thread_pk;
       public                 postgres    false    221            �           2606    16399    users users_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pk;
       public                 postgres    false    217            B      x������ � �      A      x������ � �      @   r   x��1�0 �9���`0��I�6�{�4f�����$P� �9X�bn���*�����fL�D��X�a������]��X7�l���$��`�,���m���屗R~L%]      C      x������ � �      ?   [   x�M�1�0 ���F
��	_���&:h����s�E�E��F�E/Ј�<�͂��y\�U� �,M��6m<�:��>q�u���s� ���     