PGDMP                         x            sportsmanagement    10.13    10.13 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    33808    sportsmanagement    DATABASE     �   CREATE DATABASE sportsmanagement WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
     DROP DATABASE sportsmanagement;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    33840 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    33838    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    33850    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    33848    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    33832    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    33830    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    33858 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    33868    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    33866    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209    3            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    33856    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    33876    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    33874 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211    3            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    33936    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    33934    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    33822    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    33820    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199    3            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    33811    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    33809    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    34011    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    34024    teams_countries    TABLE     s   CREATE TABLE public.teams_countries (
    id integer NOT NULL,
    country_name character varying(100) NOT NULL
);
 #   DROP TABLE public.teams_countries;
       public         postgres    false    3            �            1259    34022    teams_countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.teams_countries_id_seq;
       public       postgres    false    3    216            �           0    0    teams_countries_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.teams_countries_id_seq OWNED BY public.teams_countries.id;
            public       postgres    false    215            �            1259    34032    teams_matches    TABLE     �   CREATE TABLE public.teams_matches (
    id integer NOT NULL,
    held_on date NOT NULL,
    is_played character varying(2) NOT NULL,
    team_a_name_id integer NOT NULL,
    team_b_name_id integer NOT NULL,
    winner_id integer
);
 !   DROP TABLE public.teams_matches;
       public         postgres    false    3            �            1259    34030    teams_matches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_matches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.teams_matches_id_seq;
       public       postgres    false    218    3            �           0    0    teams_matches_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.teams_matches_id_seq OWNED BY public.teams_matches.id;
            public       postgres    false    217            �            1259    34064    teams_matchpoints    TABLE     �   CREATE TABLE public.teams_matchpoints (
    id integer NOT NULL,
    point integer NOT NULL,
    match_id integer NOT NULL,
    team_id integer NOT NULL
);
 %   DROP TABLE public.teams_matchpoints;
       public         postgres    false    3            �            1259    34062    teams_matchpoints_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_matchpoints_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.teams_matchpoints_id_seq;
       public       postgres    false    226    3            �           0    0    teams_matchpoints_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.teams_matchpoints_id_seq OWNED BY public.teams_matchpoints.id;
            public       postgres    false    225            �            1259    34056    teams_player    TABLE     :  CREATE TABLE public.teams_player (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    jersey_number character varying(100) NOT NULL,
    country_id integer NOT NULL,
    team_id integer NOT NULL,
    photo character varying(255) NOT NULL
);
     DROP TABLE public.teams_player;
       public         postgres    false    3            �            1259    34054    teams_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.teams_player_id_seq;
       public       postgres    false    224    3            �           0    0    teams_player_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.teams_player_id_seq OWNED BY public.teams_player.id;
            public       postgres    false    223            �            1259    34048    teams_playerhistory    TABLE     �   CREATE TABLE public.teams_playerhistory (
    id integer NOT NULL,
    runs integer NOT NULL,
    fifty character varying(2) NOT NULL,
    hundreds character varying(2) NOT NULL,
    match_id integer NOT NULL,
    player_id integer NOT NULL
);
 '   DROP TABLE public.teams_playerhistory;
       public         postgres    false    3            �            1259    34046    teams_playerhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_playerhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.teams_playerhistory_id_seq;
       public       postgres    false    3    222            �           0    0    teams_playerhistory_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.teams_playerhistory_id_seq OWNED BY public.teams_playerhistory.id;
            public       postgres    false    221            �            1259    34040 
   teams_team    TABLE     �   CREATE TABLE public.teams_team (
    id integer NOT NULL,
    team_name character varying(100) NOT NULL,
    club_state character varying(200) NOT NULL,
    created_date date NOT NULL,
    logo character varying(255) NOT NULL
);
    DROP TABLE public.teams_team;
       public         postgres    false    3            �            1259    34038    teams_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.teams_team_id_seq;
       public       postgres    false    3    220            �           0    0    teams_team_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams_team.id;
            public       postgres    false    219            �
           2604    33843    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    33853    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    33835    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    33861    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    33871    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    33879    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    33939    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            �
           2604    33825    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    33814    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
           2604    34027    teams_countries id    DEFAULT     x   ALTER TABLE ONLY public.teams_countries ALTER COLUMN id SET DEFAULT nextval('public.teams_countries_id_seq'::regclass);
 A   ALTER TABLE public.teams_countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215    216            �
           2604    34035    teams_matches id    DEFAULT     t   ALTER TABLE ONLY public.teams_matches ALTER COLUMN id SET DEFAULT nextval('public.teams_matches_id_seq'::regclass);
 ?   ALTER TABLE public.teams_matches ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217    218            �
           2604    34067    teams_matchpoints id    DEFAULT     |   ALTER TABLE ONLY public.teams_matchpoints ALTER COLUMN id SET DEFAULT nextval('public.teams_matchpoints_id_seq'::regclass);
 C   ALTER TABLE public.teams_matchpoints ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            �
           2604    34059    teams_player id    DEFAULT     r   ALTER TABLE ONLY public.teams_player ALTER COLUMN id SET DEFAULT nextval('public.teams_player_id_seq'::regclass);
 >   ALTER TABLE public.teams_player ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224            �
           2604    34051    teams_playerhistory id    DEFAULT     �   ALTER TABLE ONLY public.teams_playerhistory ALTER COLUMN id SET DEFAULT nextval('public.teams_playerhistory_id_seq'::regclass);
 E   ALTER TABLE public.teams_playerhistory ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            �
           2604    34043    teams_team id    DEFAULT     n   ALTER TABLE ONLY public.teams_team ALTER COLUMN id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);
 <   ALTER TABLE public.teams_team ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220            �          0    33840 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   7�       �          0    33850    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   T�       �          0    33832    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   q�       �          0    33858 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   k�       �          0    33868    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   *�       �          0    33876    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   G�       �          0    33936    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   d�       �          0    33822    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   �       �          0    33811    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    34011    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   ��       �          0    34024    teams_countries 
   TABLE DATA               ;   COPY public.teams_countries (id, country_name) FROM stdin;
    public       postgres    false    216   ��       �          0    34032    teams_matches 
   TABLE DATA               j   COPY public.teams_matches (id, held_on, is_played, team_a_name_id, team_b_name_id, winner_id) FROM stdin;
    public       postgres    false    218   '�       �          0    34064    teams_matchpoints 
   TABLE DATA               I   COPY public.teams_matchpoints (id, point, match_id, team_id) FROM stdin;
    public       postgres    false    226   ��       �          0    34056    teams_player 
   TABLE DATA               l   COPY public.teams_player (id, first_name, last_name, jersey_number, country_id, team_id, photo) FROM stdin;
    public       postgres    false    224   K�       �          0    34048    teams_playerhistory 
   TABLE DATA               ]   COPY public.teams_playerhistory (id, runs, fifty, hundreds, match_id, player_id) FROM stdin;
    public       postgres    false    222   ��       �          0    34040 
   teams_team 
   TABLE DATA               S   COPY public.teams_team (id, team_name, club_state, created_date, logo) FROM stdin;
    public       postgres    false    220   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
            public       postgres    false    196            �           0    0    teams_countries_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.teams_countries_id_seq', 2, true);
            public       postgres    false    215            �           0    0    teams_matches_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.teams_matches_id_seq', 141, true);
            public       postgres    false    217            �           0    0    teams_matchpoints_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.teams_matchpoints_id_seq', 14, true);
            public       postgres    false    225            �           0    0    teams_player_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.teams_player_id_seq', 9, true);
            public       postgres    false    223            �           0    0    teams_playerhistory_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.teams_playerhistory_id_seq', 1, false);
            public       postgres    false    221            �           0    0    teams_team_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.teams_team_id_seq', 6, true);
            public       postgres    false    219            �
           2606    33995    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    33892 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    33855 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    33845    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    33883 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    33837 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �
           2606    33873 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            �
           2606    33907 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    33863    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �
           2606    33881 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211                       2606    33921 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �
           2606    33989     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207                       2606    33945 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    33829 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    33827 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    33819 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            	           2606    34018 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214                       2606    34029 $   teams_countries teams_countries_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.teams_countries
    ADD CONSTRAINT teams_countries_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.teams_countries DROP CONSTRAINT teams_countries_pkey;
       public         postgres    false    216                       2606    34037     teams_matches teams_matches_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.teams_matches
    ADD CONSTRAINT teams_matches_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.teams_matches DROP CONSTRAINT teams_matches_pkey;
       public         postgres    false    218                       2606    34069 (   teams_matchpoints teams_matchpoints_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.teams_matchpoints
    ADD CONSTRAINT teams_matchpoints_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.teams_matchpoints DROP CONSTRAINT teams_matchpoints_pkey;
       public         postgres    false    226                       2606    34061    teams_player teams_player_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.teams_player
    ADD CONSTRAINT teams_player_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.teams_player DROP CONSTRAINT teams_player_pkey;
       public         postgres    false    224                       2606    34053 ,   teams_playerhistory teams_playerhistory_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.teams_playerhistory
    ADD CONSTRAINT teams_playerhistory_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.teams_playerhistory DROP CONSTRAINT teams_playerhistory_pkey;
       public         postgres    false    222                       2606    34045    teams_team teams_team_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.teams_team
    ADD CONSTRAINT teams_team_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.teams_team DROP CONSTRAINT teams_team_pkey;
       public         postgres    false    220            �
           1259    33996    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    33903 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    33904 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    33889 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �
           1259    33919 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            �
           1259    33918 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            �
           1259    33933 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211                        1259    33932 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    33990     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207                       1259    33956 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213                       1259    33957 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                       1259    34020 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214            
           1259    34019 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214                       1259    34121 %   teams_matches_team_a_name_id_affbd2cc    INDEX     i   CREATE INDEX teams_matches_team_a_name_id_affbd2cc ON public.teams_matches USING btree (team_a_name_id);
 9   DROP INDEX public.teams_matches_team_a_name_id_affbd2cc;
       public         postgres    false    218                       1259    34122 %   teams_matches_team_b_name_id_ba8c5434    INDEX     i   CREATE INDEX teams_matches_team_b_name_id_ba8c5434 ON public.teams_matches USING btree (team_b_name_id);
 9   DROP INDEX public.teams_matches_team_b_name_id_ba8c5434;
       public         postgres    false    218                       1259    34123     teams_matches_winner_id_b60f13d7    INDEX     _   CREATE INDEX teams_matches_winner_id_b60f13d7 ON public.teams_matches USING btree (winner_id);
 4   DROP INDEX public.teams_matches_winner_id_b60f13d7;
       public         postgres    false    218                       1259    34119 #   teams_matchpoints_match_id_15fb9dae    INDEX     e   CREATE INDEX teams_matchpoints_match_id_15fb9dae ON public.teams_matchpoints USING btree (match_id);
 7   DROP INDEX public.teams_matchpoints_match_id_15fb9dae;
       public         postgres    false    226                       1259    34120 "   teams_matchpoints_team_id_91b94798    INDEX     c   CREATE INDEX teams_matchpoints_team_id_91b94798 ON public.teams_matchpoints USING btree (team_id);
 6   DROP INDEX public.teams_matchpoints_team_id_91b94798;
       public         postgres    false    226                       1259    34107     teams_player_country_id_e01ba9f5    INDEX     _   CREATE INDEX teams_player_country_id_e01ba9f5 ON public.teams_player USING btree (country_id);
 4   DROP INDEX public.teams_player_country_id_e01ba9f5;
       public         postgres    false    224                       1259    34108    teams_player_team_id_4ee5cf70    INDEX     Y   CREATE INDEX teams_player_team_id_4ee5cf70 ON public.teams_player USING btree (team_id);
 1   DROP INDEX public.teams_player_team_id_4ee5cf70;
       public         postgres    false    224                       1259    34095 %   teams_playerhistory_match_id_943afb88    INDEX     i   CREATE INDEX teams_playerhistory_match_id_943afb88 ON public.teams_playerhistory USING btree (match_id);
 9   DROP INDEX public.teams_playerhistory_match_id_943afb88;
       public         postgres    false    222                       1259    34096 &   teams_playerhistory_player_id_dba81f67    INDEX     k   CREATE INDEX teams_playerhistory_player_id_dba81f67 ON public.teams_playerhistory USING btree (player_id);
 :   DROP INDEX public.teams_playerhistory_player_id_dba81f67;
       public         postgres    false    222            "           2606    33898 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2790            !           2606    33893 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2795    205    203                        2606    33884 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2785    199    201            $           2606    33913 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2795    209    203            #           2606    33908 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    207    209    2803            &           2606    33927 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    2790    211            %           2606    33922 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2803    211    207            '           2606    33946 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    199    213    2785            (           2606    33951 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    207    2803    213            )           2606    34070 D   teams_matches teams_matches_team_a_name_id_affbd2cc_fk_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_matches
    ADD CONSTRAINT teams_matches_team_a_name_id_affbd2cc_fk_teams_team_id FOREIGN KEY (team_a_name_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.teams_matches DROP CONSTRAINT teams_matches_team_a_name_id_affbd2cc_fk_teams_team_id;
       public       postgres    false    218    2835    220            *           2606    34075 D   teams_matches teams_matches_team_b_name_id_ba8c5434_fk_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_matches
    ADD CONSTRAINT teams_matches_team_b_name_id_ba8c5434_fk_teams_team_id FOREIGN KEY (team_b_name_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.teams_matches DROP CONSTRAINT teams_matches_team_b_name_id_ba8c5434_fk_teams_team_id;
       public       postgres    false    2835    218    220            +           2606    34080 ?   teams_matches teams_matches_winner_id_b60f13d7_fk_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_matches
    ADD CONSTRAINT teams_matches_winner_id_b60f13d7_fk_teams_team_id FOREIGN KEY (winner_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.teams_matches DROP CONSTRAINT teams_matches_winner_id_b60f13d7_fk_teams_team_id;
       public       postgres    false    218    2835    220            0           2606    34109 I   teams_matchpoints teams_matchpoints_match_id_15fb9dae_fk_teams_matches_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_matchpoints
    ADD CONSTRAINT teams_matchpoints_match_id_15fb9dae_fk_teams_matches_id FOREIGN KEY (match_id) REFERENCES public.teams_matches(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.teams_matchpoints DROP CONSTRAINT teams_matchpoints_match_id_15fb9dae_fk_teams_matches_id;
       public       postgres    false    218    2830    226            1           2606    34114 E   teams_matchpoints teams_matchpoints_team_id_91b94798_fk_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_matchpoints
    ADD CONSTRAINT teams_matchpoints_team_id_91b94798_fk_teams_team_id FOREIGN KEY (team_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.teams_matchpoints DROP CONSTRAINT teams_matchpoints_team_id_91b94798_fk_teams_team_id;
       public       postgres    false    220    2835    226            .           2606    34097 C   teams_player teams_player_country_id_e01ba9f5_fk_teams_countries_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_player
    ADD CONSTRAINT teams_player_country_id_e01ba9f5_fk_teams_countries_id FOREIGN KEY (country_id) REFERENCES public.teams_countries(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.teams_player DROP CONSTRAINT teams_player_country_id_e01ba9f5_fk_teams_countries_id;
       public       postgres    false    224    216    2828            /           2606    34102 ;   teams_player teams_player_team_id_4ee5cf70_fk_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_player
    ADD CONSTRAINT teams_player_team_id_4ee5cf70_fk_teams_team_id FOREIGN KEY (team_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.teams_player DROP CONSTRAINT teams_player_team_id_4ee5cf70_fk_teams_team_id;
       public       postgres    false    220    224    2835            ,           2606    34085 J   teams_playerhistory teams_playerhistory_match_id_943afb88_fk_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_playerhistory
    ADD CONSTRAINT teams_playerhistory_match_id_943afb88_fk_teams_team_id FOREIGN KEY (match_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.teams_playerhistory DROP CONSTRAINT teams_playerhistory_match_id_943afb88_fk_teams_team_id;
       public       postgres    false    222    220    2835            -           2606    34090 K   teams_playerhistory teams_playerhistory_player_id_dba81f67_fk_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.teams_playerhistory
    ADD CONSTRAINT teams_playerhistory_player_id_dba81f67_fk_teams_team_id FOREIGN KEY (player_id) REFERENCES public.teams_team(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.teams_playerhistory DROP CONSTRAINT teams_playerhistory_player_id_dba81f67_fk_teams_team_id;
       public       postgres    false    222    2835    220            �      x������ � �      �      x������ � �      �   �  x�e�]��0F��U��Q�o�<�i�ڨEj�W��$����F����k����o��9�7n��X�׿~�K(�>���KV���m�%k���B��&��ny�:L�)Q��J9��`;�X�����$��2�gS� >�=I�}����iGH���Uv -h�J��-�F������.]�F�N ]���m�:nv���4n���gv�A*�
س�`R�Eze<�I�<�fF��bm�^]|�-
�
J5�̐g�Դ3Fz	��Z%�'��o�G1Oø��C-,�
�j�3���&>�IT�b�3�˓??��[�ǰn��9f�T�JE�p`Ϫ>��q8�gV�a9����|%f���;�[ͅ��P�z|�K���FO.�il�ʡe�&6a]�g�?+�`����D��˱��RM���w/0�mPsz6׿������
ξM�P��	r���˾����,)�_���n�ǄDH�#p�dDN�"py""�i��� ���ws      �   �   x�]̻�0 й|��\n)��Dt`p!�S^R��@0��&n�'�"c���Z"wt� �Q;oyŉ�&�}�5�,���gX�o0��p�A��Ԟ\Ҿ�A@؂�E����� ,�����Y�,:�B�2+�r���r9�U�dש|h>t_��m�̧�f`�ߦ]��iM4�      �      x������ � �      �      x������ � �      �   �   x�u�1�0 ��s��Ich���`;�XաJR��,}x�H%j��-kK�DTZ�Ni�
�����G�_Z�Ć��p�cWU������0���X�,�4����P�֍S�(�����+��mj�֜�Uj���W�h\�C퇿�IFQ�"=�      �   �   x�U��
�0���Ì���]Bg�@��9�헭t#}HF��+�D�L����W�)s�A5H�i#S��q�LU.��(�Z��̺7���?�����s��Lq�,/~�25i��Rۤ�
w�¹�?nؿn���TqJ      �      x���Kn�0D��)����:� a3��������2o��빺Xl�N}7�n�nC+ @�8E�T��ye�P��>re�/�5���uz�Ib�t�	���������|Q�U�\�_�m����#8��;>�b�5ł�+���:�b߹��_�齏'Jbg��"�R+N�s1K��v($�أbV\ z�-��#$�����̷�c9����'��mإF؅f�u2�)$7���q�������	݅~�G�h��� _pב>�����$uv�X8b˙?wS�0�\� ��(µ�rKi�8�U�4�٩���Ty�(���5������>F&���?��g?�i�W2��'׆q���6�m��B4�9=��`,(�a��췸��)$w��3a�]R�"q4��) tׁ�
nH��m�������V�4�v����O C+�,MG�� �ܨ\qV*��=@ äe9ƪ1,�?ެ������j
�},S�<���E&V��2��3ӿ�Ȳ�t�ɕ�%5�n�����נh-0�-�>���)�@      �      x������ � �      �      x�3���K�L�2�v����� -�       �   �   x�]��� г��yhC��5���[N���$�T�:6����]�8}���>�I�p��V��g:{>���i��tQ�䮌��n����x�p�.�5Y�c�g�M�B[�3W����-�A��3����G�Z�<�����<��)Q$睐��5���˵7����%`��ǃ�N�{�a�缵����x�R�x�^p      �   @   x��� !C�sR�E����X���O���wKOk>ɚA�Vջ�;)�:5=H$�G�0J      �   �   x�m̱�0����awVXY.zcѦmZ|{�����_�����1PxS@��8�yC_��㒽�S��t׳EK1��U��C�B���1��$��w������*�ӭ?�l������J��AJ�1SJ��\1      �      x������ � �      �   �   x��αN�0����y�;MPYiDUE]��d�q.��V���6�CF��ߧS�4-4��qF(d!r�PO0}�U~��XBM�جFO5��)\E!��_j$%�1��^��Ʋ�}��O�E���qv[�[����3C̑T���l��v���y�ps�䶻Mwir��N�RUe<���5��S���&n_���^��ȷ8��!~ ��jc     