PGDMP     
    -            
    |            investment_prod %   12.20 (Ubuntu 12.20-0ubuntu0.20.04.1) %   12.20 (Ubuntu 12.20-0ubuntu0.20.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17192    investment_prod    DATABASE     y   CREATE DATABASE investment_prod WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE investment_prod;
                postgres    false            �           0    0    DATABASE investment_prod    ACL     2   GRANT ALL ON DATABASE investment_prod TO db_user;
                   postgres    false    3306            �            1259    17193    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         heap    db_user    false            �            1259    17199 !   active_storage_attachments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public          db_user    false    202            �           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
          public          db_user    false    203            �            1259    17201    active_storage_blobs    TABLE     m  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public         heap    db_user    false            �            1259    17207    active_storage_blobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public          db_user    false    204            �           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
          public          db_user    false    205            �            1259    17209    active_storage_variant_records    TABLE     �   CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);
 2   DROP TABLE public.active_storage_variant_records;
       public         heap    db_user    false            �            1259    17215 %   active_storage_variant_records_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.active_storage_variant_records_id_seq;
       public          db_user    false    206            �           0    0 %   active_storage_variant_records_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;
          public          db_user    false    207            �            1259    17217    activity_streams    TABLE     �  CREATE TABLE public.activity_streams (
    id bigint NOT NULL,
    table_id integer,
    user_id integer,
    table_name character varying,
    ip_address character varying,
    browser_name character varying,
    action_name character varying,
    action_date date,
    action_datetime timestamp(6) without time zone,
    slug character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 $   DROP TABLE public.activity_streams;
       public         heap    db_user    false            �            1259    17223    activity_streams_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activity_streams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.activity_streams_id_seq;
       public          db_user    false    208            �           0    0    activity_streams_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.activity_streams_id_seq OWNED BY public.activity_streams.id;
          public          db_user    false    209            �            1259    17225    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    db_user    false            �            1259    17231    bank_accounts    TABLE     Z  CREATE TABLE public.bank_accounts (
    id bigint NOT NULL,
    account_name character varying,
    account_number character varying,
    bank_name character varying,
    iban character varying,
    is_active boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 !   DROP TABLE public.bank_accounts;
       public         heap    db_user    false            �            1259    17238    bank_accounts_id_seq    SEQUENCE     }   CREATE SEQUENCE public.bank_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.bank_accounts_id_seq;
       public          db_user    false    211            �           0    0    bank_accounts_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.bank_accounts_id_seq OWNED BY public.bank_accounts.id;
          public          db_user    false    212            �            1259    17240    deposits    TABLE       CREATE TABLE public.deposits (
    id bigint NOT NULL,
    user_id integer,
    amount numeric(15,2) NOT NULL,
    processed_at timestamp(6) without time zone,
    status character varying,
    investment_plan_id integer,
    trading_plan_id integer,
    staking_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    attachment_file_name character varying,
    attachment_content_type character varying,
    attachment_file_size integer,
    attachment_updated_at timestamp(6) without time zone,
    wallet_address character varying,
    calculated_profit numeric(15,2) DEFAULT 0.0,
    profit_eligible boolean DEFAULT false,
    previous_amount numeric(15,2) DEFAULT 0.0,
    previous_status character varying
);
    DROP TABLE public.deposits;
       public         heap    db_user    false            �            1259    17246    deposits_id_seq    SEQUENCE     x   CREATE SEQUENCE public.deposits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.deposits_id_seq;
       public          db_user    false    213            �           0    0    deposits_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.deposits_id_seq OWNED BY public.deposits.id;
          public          db_user    false    214            �            1259    17248    investment_plans    TABLE     �  CREATE TABLE public.investment_plans (
    id bigint NOT NULL,
    name character varying,
    description text,
    price character varying,
    slug character varying DEFAULT ''::character varying,
    is_active boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    duration_in_days integer,
    profit_percentage numeric(5,2) DEFAULT 0.0,
    commission_rate double precision
);
 $   DROP TABLE public.investment_plans;
       public         heap    db_user    false            �            1259    17257    investment_plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.investment_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.investment_plans_id_seq;
       public          db_user    false    215            �           0    0    investment_plans_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.investment_plans_id_seq OWNED BY public.investment_plans.id;
          public          db_user    false    216            �            1259    17259    login_histories    TABLE     0  CREATE TABLE public.login_histories (
    id bigint NOT NULL,
    user_id integer,
    ip_address character varying,
    browser_name character varying,
    is_active boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 #   DROP TABLE public.login_histories;
       public         heap    db_user    false            �            1259    17266    login_histories_id_seq    SEQUENCE        CREATE SEQUENCE public.login_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.login_histories_id_seq;
       public          db_user    false    217            �           0    0    login_histories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.login_histories_id_seq OWNED BY public.login_histories.id;
          public          db_user    false    218            �            1259    17268    menus    TABLE     z  CREATE TABLE public.menus (
    id bigint NOT NULL,
    name character varying,
    is_active boolean DEFAULT false,
    slug character varying DEFAULT ''::character varying,
    menu_type character varying DEFAULT ''::character varying,
    main_menu_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.menus;
       public         heap    db_user    false            �            1259    17277    menus_id_seq    SEQUENCE     u   CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public          db_user    false    219            �           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
          public          db_user    false    220            �            1259    17279    packages    TABLE       CREATE TABLE public.packages (
    id bigint NOT NULL,
    name character varying,
    description text,
    price character varying,
    status character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.packages;
       public         heap    db_user    false            �            1259    17285    packages_id_seq    SEQUENCE     x   CREATE SEQUENCE public.packages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.packages_id_seq;
       public          db_user    false    221            �           0    0    packages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.packages_id_seq OWNED BY public.packages.id;
          public          db_user    false    222            �            1259    17287    permissions    TABLE     �  CREATE TABLE public.permissions (
    id bigint NOT NULL,
    is_index boolean DEFAULT false,
    is_create boolean DEFAULT false,
    is_view boolean DEFAULT false,
    is_edit boolean DEFAULT false,
    is_delete boolean DEFAULT false,
    menu_id integer,
    role_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.permissions;
       public         heap    db_user    false            �            1259    17295    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          db_user    false    223            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          db_user    false    224            �            1259    17297    plan_durations    TABLE     b  CREATE TABLE public.plan_durations (
    id bigint NOT NULL,
    plan_id integer,
    plan_type character varying,
    duration_in_days integer,
    slug character varying DEFAULT ''::character varying,
    is_active boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.plan_durations;
       public         heap    db_user    false            �            1259    17305    plan_durations_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.plan_durations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.plan_durations_id_seq;
       public          db_user    false    225            �           0    0    plan_durations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.plan_durations_id_seq OWNED BY public.plan_durations.id;
          public          db_user    false    226            �            1259    17307    plan_transactions    TABLE     2  CREATE TABLE public.plan_transactions (
    id bigint NOT NULL,
    user_id bigint,
    package_id bigint,
    attachment_file_name character varying,
    attachment_content_type character varying,
    attachment_file_size integer,
    attachment_updated_at timestamp(6) without time zone,
    transaction_date timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    status character varying DEFAULT 'pending'::character varying,
    deposit_amount character varying
);
 %   DROP TABLE public.plan_transactions;
       public         heap    db_user    false            �            1259    17314    plan_transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.plan_transactions_id_seq;
       public          db_user    false    227            �           0    0    plan_transactions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.plan_transactions_id_seq OWNED BY public.plan_transactions.id;
          public          db_user    false    228            �            1259    17316    profits    TABLE     4  CREATE TABLE public.profits (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    purchase_id bigint NOT NULL,
    amount numeric(15,2) DEFAULT 0.0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    profit_loss_type character varying
);
    DROP TABLE public.profits;
       public         heap    db_user    false            �            1259    17320    profits_id_seq    SEQUENCE     w   CREATE SEQUENCE public.profits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.profits_id_seq;
       public          db_user    false    229            �           0    0    profits_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.profits_id_seq OWNED BY public.profits.id;
          public          db_user    false    230            �            1259    17322 	   purchases    TABLE     �  CREATE TABLE public.purchases (
    id bigint NOT NULL,
    deposit_amount double precision,
    status character varying,
    approved boolean DEFAULT false,
    attachment_file_name character varying,
    attachment_content_type character varying,
    attachment_file_size integer,
    attachment_updated_at timestamp(6) without time zone,
    user_id bigint,
    investment_plan_id bigint,
    trading_plan_id bigint,
    staking_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    manual_payment boolean DEFAULT false,
    duration_in_days double precision,
    wallet_address character varying,
    approve_at timestamp(6) without time zone
);
    DROP TABLE public.purchases;
       public         heap    db_user    false            �            1259    17330    purchases_id_seq    SEQUENCE     y   CREATE SEQUENCE public.purchases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.purchases_id_seq;
       public          db_user    false    231            �           0    0    purchases_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.purchases_id_seq OWNED BY public.purchases.id;
          public          db_user    false    232            �            1259    17332    ranks    TABLE     *  CREATE TABLE public.ranks (
    id bigint NOT NULL,
    name character varying NOT NULL,
    minimum_deposit numeric(15,2) DEFAULT 0.0,
    profit_percentage numeric(5,2) DEFAULT 0.0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.ranks;
       public         heap    db_user    false            �            1259    17340    ranks_id_seq    SEQUENCE     u   CREATE SEQUENCE public.ranks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.ranks_id_seq;
       public          db_user    false    233            �           0    0    ranks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.ranks_id_seq OWNED BY public.ranks.id;
          public          db_user    false    234            �            1259    17342    referral_commissions    TABLE     -  CREATE TABLE public.referral_commissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    purchase_id bigint,
    amount numeric(15,2) DEFAULT 0.0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    referral_user_id bigint
);
 (   DROP TABLE public.referral_commissions;
       public         heap    db_user    false            �            1259    17346    referral_commissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.referral_commissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.referral_commissions_id_seq;
       public          db_user    false    235            �           0    0    referral_commissions_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.referral_commissions_id_seq OWNED BY public.referral_commissions.id;
          public          db_user    false    236            �            1259    17348    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    is_active boolean DEFAULT false,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    db_user    false            �            1259    17355    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          db_user    false    237            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          db_user    false    238            �            1259    17357    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    db_user    false            �            1259    17363    stakings    TABLE     �  CREATE TABLE public.stakings (
    id bigint NOT NULL,
    name character varying,
    description text,
    price character varying,
    slug character varying DEFAULT ''::character varying,
    is_active boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    duration_in_days integer,
    profit_percentage numeric(5,2) DEFAULT 0.0,
    commission_rate double precision
);
    DROP TABLE public.stakings;
       public         heap    db_user    false            �            1259    17372    stakings_id_seq    SEQUENCE     x   CREATE SEQUENCE public.stakings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.stakings_id_seq;
       public          db_user    false    240            �           0    0    stakings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.stakings_id_seq OWNED BY public.stakings.id;
          public          db_user    false    241            �            1259    17610    team_leaders    TABLE       CREATE TABLE public.team_leaders (
    id bigint NOT NULL,
    member_name character varying,
    country character varying,
    date date,
    investment_amount numeric,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
     DROP TABLE public.team_leaders;
       public         heap    db_user    false            �            1259    17608    team_leaders_id_seq    SEQUENCE     |   CREATE SEQUENCE public.team_leaders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.team_leaders_id_seq;
       public          db_user    false    251            �           0    0    team_leaders_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.team_leaders_id_seq OWNED BY public.team_leaders.id;
          public          db_user    false    250            �            1259    17374    trading_plans    TABLE     �  CREATE TABLE public.trading_plans (
    id bigint NOT NULL,
    name character varying,
    description text,
    price character varying,
    slug character varying DEFAULT ''::character varying,
    is_active boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    duration_in_days integer,
    profit_percentage numeric(5,2) DEFAULT 0.0,
    deduction_fee integer,
    commission_rate double precision
);
 !   DROP TABLE public.trading_plans;
       public         heap    db_user    false            �            1259    17383    trading_plans_id_seq    SEQUENCE     }   CREATE SEQUENCE public.trading_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.trading_plans_id_seq;
       public          db_user    false    242                        0    0    trading_plans_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.trading_plans_id_seq OWNED BY public.trading_plans.id;
          public          db_user    false    243            �            1259    17385    transaction_histories    TABLE     B  CREATE TABLE public.transaction_histories (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    amount numeric(15,2) NOT NULL,
    transaction_type character varying NOT NULL,
    transaction_date timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    plan_type character varying,
    plan_id integer,
    status character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    purchase_id bigint,
    withdrawal_id integer,
    referral_commission_id integer,
    deposit_id integer
);
 )   DROP TABLE public.transaction_histories;
       public         heap    db_user    false            �            1259    17392    transaction_histories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.transaction_histories_id_seq;
       public          db_user    false    244                       0    0    transaction_histories_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.transaction_histories_id_seq OWNED BY public.transaction_histories.id;
          public          db_user    false    245            �            1259    17394    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    mobile character varying,
    cnic character varying,
    address character varying,
    password_digest character varying,
    full_name character varying DEFAULT 'System User'::character varying,
    user_type character varying DEFAULT 'Employee'::character varying,
    is_active boolean DEFAULT false,
    is_logged_in boolean DEFAULT false,
    role_id integer,
    otp character varying,
    authentication_token character varying,
    avatar_file_name character varying,
    avatar_file_size integer,
    avatar_content_type character varying,
    avatar_updated_at timestamp(6) without time zone,
    target boolean DEFAULT false,
    otp_expires_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    referral_id character varying,
    user_name character varying,
    referred_by integer,
    mobile_with_country_code character varying,
    country character varying,
    rank character varying DEFAULT 'NO RANK!'::character varying,
    rank_id bigint,
    total_profit numeric(15,2) DEFAULT 0.0,
    last_profit_calculation date,
    new_rank_assigned boolean
);
    DROP TABLE public.users;
       public         heap    db_user    false            �            1259    17407    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          db_user    false    246                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          db_user    false    247            �            1259    17409    withdrawals    TABLE       CREATE TABLE public.withdrawals (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    amount numeric(15,2) NOT NULL,
    withdrawal_type character varying NOT NULL,
    status character varying DEFAULT 'pending'::character varying,
    processed_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    investment_plan_id integer,
    trading_plan_id integer,
    staking_id integer,
    wallet_address character varying
);
    DROP TABLE public.withdrawals;
       public         heap    db_user    false            �            1259    17416    withdrawals_id_seq    SEQUENCE     {   CREATE SEQUENCE public.withdrawals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.withdrawals_id_seq;
       public          db_user    false    248                       0    0    withdrawals_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.withdrawals_id_seq OWNED BY public.withdrawals.id;
          public          db_user    false    249            �           2604    17418    active_storage_attachments id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    203    202            �           2604    17419    active_storage_blobs id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    205    204            �           2604    17420 !   active_storage_variant_records id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);
 P   ALTER TABLE public.active_storage_variant_records ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    207    206            �           2604    17421    activity_streams id    DEFAULT     z   ALTER TABLE ONLY public.activity_streams ALTER COLUMN id SET DEFAULT nextval('public.activity_streams_id_seq'::regclass);
 B   ALTER TABLE public.activity_streams ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    209    208            �           2604    17422    bank_accounts id    DEFAULT     t   ALTER TABLE ONLY public.bank_accounts ALTER COLUMN id SET DEFAULT nextval('public.bank_accounts_id_seq'::regclass);
 ?   ALTER TABLE public.bank_accounts ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    212    211            �           2604    17423    deposits id    DEFAULT     j   ALTER TABLE ONLY public.deposits ALTER COLUMN id SET DEFAULT nextval('public.deposits_id_seq'::regclass);
 :   ALTER TABLE public.deposits ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    214    213            �           2604    17424    investment_plans id    DEFAULT     z   ALTER TABLE ONLY public.investment_plans ALTER COLUMN id SET DEFAULT nextval('public.investment_plans_id_seq'::regclass);
 B   ALTER TABLE public.investment_plans ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    216    215            �           2604    17425    login_histories id    DEFAULT     x   ALTER TABLE ONLY public.login_histories ALTER COLUMN id SET DEFAULT nextval('public.login_histories_id_seq'::regclass);
 A   ALTER TABLE public.login_histories ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    218    217            �           2604    17426    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    220    219            �           2604    17427    packages id    DEFAULT     j   ALTER TABLE ONLY public.packages ALTER COLUMN id SET DEFAULT nextval('public.packages_id_seq'::regclass);
 :   ALTER TABLE public.packages ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    222    221            �           2604    17428    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    224    223            �           2604    17429    plan_durations id    DEFAULT     v   ALTER TABLE ONLY public.plan_durations ALTER COLUMN id SET DEFAULT nextval('public.plan_durations_id_seq'::regclass);
 @   ALTER TABLE public.plan_durations ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    226    225            �           2604    17430    plan_transactions id    DEFAULT     |   ALTER TABLE ONLY public.plan_transactions ALTER COLUMN id SET DEFAULT nextval('public.plan_transactions_id_seq'::regclass);
 C   ALTER TABLE public.plan_transactions ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    228    227            �           2604    17431 
   profits id    DEFAULT     h   ALTER TABLE ONLY public.profits ALTER COLUMN id SET DEFAULT nextval('public.profits_id_seq'::regclass);
 9   ALTER TABLE public.profits ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    230    229            �           2604    17432    purchases id    DEFAULT     l   ALTER TABLE ONLY public.purchases ALTER COLUMN id SET DEFAULT nextval('public.purchases_id_seq'::regclass);
 ;   ALTER TABLE public.purchases ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    232    231            �           2604    17433    ranks id    DEFAULT     d   ALTER TABLE ONLY public.ranks ALTER COLUMN id SET DEFAULT nextval('public.ranks_id_seq'::regclass);
 7   ALTER TABLE public.ranks ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    234    233            �           2604    17434    referral_commissions id    DEFAULT     �   ALTER TABLE ONLY public.referral_commissions ALTER COLUMN id SET DEFAULT nextval('public.referral_commissions_id_seq'::regclass);
 F   ALTER TABLE public.referral_commissions ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    236    235            �           2604    17435    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    238    237            �           2604    17436    stakings id    DEFAULT     j   ALTER TABLE ONLY public.stakings ALTER COLUMN id SET DEFAULT nextval('public.stakings_id_seq'::regclass);
 :   ALTER TABLE public.stakings ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    241    240            �           2604    17613    team_leaders id    DEFAULT     r   ALTER TABLE ONLY public.team_leaders ALTER COLUMN id SET DEFAULT nextval('public.team_leaders_id_seq'::regclass);
 >   ALTER TABLE public.team_leaders ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    250    251    251            �           2604    17437    trading_plans id    DEFAULT     t   ALTER TABLE ONLY public.trading_plans ALTER COLUMN id SET DEFAULT nextval('public.trading_plans_id_seq'::regclass);
 ?   ALTER TABLE public.trading_plans ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    243    242            �           2604    17438    transaction_histories id    DEFAULT     �   ALTER TABLE ONLY public.transaction_histories ALTER COLUMN id SET DEFAULT nextval('public.transaction_histories_id_seq'::regclass);
 G   ALTER TABLE public.transaction_histories ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    245    244            �           2604    17439    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    247    246            �           2604    17440    withdrawals id    DEFAULT     p   ALTER TABLE ONLY public.withdrawals ALTER COLUMN id SET DEFAULT nextval('public.withdrawals_id_seq'::regclass);
 =   ALTER TABLE public.withdrawals ALTER COLUMN id DROP DEFAULT;
       public          db_user    false    249    248            �          0    17193    active_storage_attachments 
   TABLE DATA           k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public          db_user    false    202   s"      �          0    17201    active_storage_blobs 
   TABLE DATA           �   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
    public          db_user    false    204   �"      �          0    17209    active_storage_variant_records 
   TABLE DATA           W   COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
    public          db_user    false    206   �"      �          0    17217    activity_streams 
   TABLE DATA           �   COPY public.activity_streams (id, table_id, user_id, table_name, ip_address, browser_name, action_name, action_date, action_datetime, slug, created_at, updated_at) FROM stdin;
    public          db_user    false    208   �"      �          0    17225    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          db_user    false    210   ��      �          0    17231    bank_accounts 
   TABLE DATA           }   COPY public.bank_accounts (id, account_name, account_number, bank_name, iban, is_active, created_at, updated_at) FROM stdin;
    public          db_user    false    211   �      �          0    17240    deposits 
   TABLE DATA           H  COPY public.deposits (id, user_id, amount, processed_at, status, investment_plan_id, trading_plan_id, staking_id, created_at, updated_at, attachment_file_name, attachment_content_type, attachment_file_size, attachment_updated_at, wallet_address, calculated_profit, profit_eligible, previous_amount, previous_status) FROM stdin;
    public          db_user    false    213   ��      �          0    17248    investment_plans 
   TABLE DATA           �   COPY public.investment_plans (id, name, description, price, slug, is_active, created_at, updated_at, duration_in_days, profit_percentage, commission_rate) FROM stdin;
    public          db_user    false    215   ³      �          0    17259    login_histories 
   TABLE DATA           s   COPY public.login_histories (id, user_id, ip_address, browser_name, is_active, created_at, updated_at) FROM stdin;
    public          db_user    false    217   ��      �          0    17268    menus 
   TABLE DATA           k   COPY public.menus (id, name, is_active, slug, menu_type, main_menu_id, created_at, updated_at) FROM stdin;
    public          db_user    false    219   ��      �          0    17279    packages 
   TABLE DATA           `   COPY public.packages (id, name, description, price, status, created_at, updated_at) FROM stdin;
    public          db_user    false    221   ��      �          0    17287    permissions 
   TABLE DATA           �   COPY public.permissions (id, is_index, is_create, is_view, is_edit, is_delete, menu_id, role_id, created_at, updated_at) FROM stdin;
    public          db_user    false    223   ��      �          0    17297    plan_durations 
   TABLE DATA           {   COPY public.plan_durations (id, plan_id, plan_type, duration_in_days, slug, is_active, created_at, updated_at) FROM stdin;
    public          db_user    false    225   r�      �          0    17307    plan_transactions 
   TABLE DATA           �   COPY public.plan_transactions (id, user_id, package_id, attachment_file_name, attachment_content_type, attachment_file_size, attachment_updated_at, transaction_date, created_at, updated_at, status, deposit_amount) FROM stdin;
    public          db_user    false    227   u�      �          0    17316    profits 
   TABLE DATA           m   COPY public.profits (id, user_id, purchase_id, amount, created_at, updated_at, profit_loss_type) FROM stdin;
    public          db_user    false    229   ��      �          0    17322 	   purchases 
   TABLE DATA           5  COPY public.purchases (id, deposit_amount, status, approved, attachment_file_name, attachment_content_type, attachment_file_size, attachment_updated_at, user_id, investment_plan_id, trading_plan_id, staking_id, created_at, updated_at, manual_payment, duration_in_days, wallet_address, approve_at) FROM stdin;
    public          db_user    false    231   ��      �          0    17332    ranks 
   TABLE DATA           e   COPY public.ranks (id, name, minimum_deposit, profit_percentage, created_at, updated_at) FROM stdin;
    public          db_user    false    233   v�      �          0    17342    referral_commissions 
   TABLE DATA           z   COPY public.referral_commissions (id, user_id, purchase_id, amount, created_at, updated_at, referral_user_id) FROM stdin;
    public          db_user    false    235   ;�      �          0    17348    roles 
   TABLE DATA           L   COPY public.roles (id, is_active, name, created_at, updated_at) FROM stdin;
    public          db_user    false    237   �      �          0    17357    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          db_user    false    239   m�      �          0    17363    stakings 
   TABLE DATA           �   COPY public.stakings (id, name, description, price, slug, is_active, created_at, updated_at, duration_in_days, profit_percentage, commission_rate) FROM stdin;
    public          db_user    false    240   s�      �          0    17610    team_leaders 
   TABLE DATA           q   COPY public.team_leaders (id, member_name, country, date, investment_amount, created_at, updated_at) FROM stdin;
    public          db_user    false    251   ��      �          0    17374    trading_plans 
   TABLE DATA           �   COPY public.trading_plans (id, name, description, price, slug, is_active, created_at, updated_at, duration_in_days, profit_percentage, deduction_fee, commission_rate) FROM stdin;
    public          db_user    false    242   )�      �          0    17385    transaction_histories 
   TABLE DATA           �   COPY public.transaction_histories (id, user_id, amount, transaction_type, transaction_date, plan_type, plan_id, status, created_at, updated_at, purchase_id, withdrawal_id, referral_commission_id, deposit_id) FROM stdin;
    public          db_user    false    244   ��      �          0    17394    users 
   TABLE DATA           �  COPY public.users (id, email, mobile, cnic, address, password_digest, full_name, user_type, is_active, is_logged_in, role_id, otp, authentication_token, avatar_file_name, avatar_file_size, avatar_content_type, avatar_updated_at, target, otp_expires_at, created_at, updated_at, referral_id, user_name, referred_by, mobile_with_country_code, country, rank, rank_id, total_profit, last_profit_calculation, new_rank_assigned) FROM stdin;
    public          db_user    false    246   W�      �          0    17409    withdrawals 
   TABLE DATA           �   COPY public.withdrawals (id, user_id, amount, withdrawal_type, status, processed_at, created_at, updated_at, investment_plan_id, trading_plan_id, staking_id, wallet_address) FROM stdin;
    public          db_user    false    248                    0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);
          public          db_user    false    203                       0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);
          public          db_user    false    205                       0    0 %   active_storage_variant_records_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);
          public          db_user    false    207                       0    0    activity_streams_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.activity_streams_id_seq', 1713, true);
          public          db_user    false    209                       0    0    bank_accounts_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.bank_accounts_id_seq', 1, true);
          public          db_user    false    212            	           0    0    deposits_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.deposits_id_seq', 135, true);
          public          db_user    false    214            
           0    0    investment_plans_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.investment_plans_id_seq', 3, true);
          public          db_user    false    216                       0    0    login_histories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.login_histories_id_seq', 354, true);
          public          db_user    false    218                       0    0    menus_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.menus_id_seq', 19, true);
          public          db_user    false    220                       0    0    packages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.packages_id_seq', 1, false);
          public          db_user    false    222                       0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 38, true);
          public          db_user    false    224                       0    0    plan_durations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.plan_durations_id_seq', 9, true);
          public          db_user    false    226                       0    0    plan_transactions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.plan_transactions_id_seq', 1, false);
          public          db_user    false    228                       0    0    profits_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.profits_id_seq', 123, true);
          public          db_user    false    230                       0    0    purchases_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.purchases_id_seq', 144, true);
          public          db_user    false    232                       0    0    ranks_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.ranks_id_seq', 5, true);
          public          db_user    false    234                       0    0    referral_commissions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.referral_commissions_id_seq', 102, true);
          public          db_user    false    236                       0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          db_user    false    238                       0    0    stakings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.stakings_id_seq', 2, true);
          public          db_user    false    241                       0    0    team_leaders_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.team_leaders_id_seq', 1, true);
          public          db_user    false    250                       0    0    trading_plans_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.trading_plans_id_seq', 2, true);
          public          db_user    false    243                       0    0    transaction_histories_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.transaction_histories_id_seq', 358, true);
          public          db_user    false    245                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 42, true);
          public          db_user    false    247                       0    0    withdrawals_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.withdrawals_id_seq', 59, true);
          public          db_user    false    249            �           2606    17442 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public            db_user    false    202            �           2606    17444 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public            db_user    false    204            �           2606    17446 B   active_storage_variant_records active_storage_variant_records_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT active_storage_variant_records_pkey;
       public            db_user    false    206            �           2606    17448 &   activity_streams activity_streams_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.activity_streams
    ADD CONSTRAINT activity_streams_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.activity_streams DROP CONSTRAINT activity_streams_pkey;
       public            db_user    false    208            �           2606    17450 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            db_user    false    210            �           2606    17452     bank_accounts bank_accounts_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.bank_accounts DROP CONSTRAINT bank_accounts_pkey;
       public            db_user    false    211            �           2606    17454    deposits deposits_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.deposits
    ADD CONSTRAINT deposits_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.deposits DROP CONSTRAINT deposits_pkey;
       public            db_user    false    213            �           2606    17456 &   investment_plans investment_plans_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.investment_plans
    ADD CONSTRAINT investment_plans_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.investment_plans DROP CONSTRAINT investment_plans_pkey;
       public            db_user    false    215            �           2606    17458 $   login_histories login_histories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.login_histories
    ADD CONSTRAINT login_histories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.login_histories DROP CONSTRAINT login_histories_pkey;
       public            db_user    false    217            �           2606    17460    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public            db_user    false    219            �           2606    17462    packages packages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.packages DROP CONSTRAINT packages_pkey;
       public            db_user    false    221            �           2606    17464    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            db_user    false    223            �           2606    17466 "   plan_durations plan_durations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.plan_durations
    ADD CONSTRAINT plan_durations_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.plan_durations DROP CONSTRAINT plan_durations_pkey;
       public            db_user    false    225            �           2606    17468 (   plan_transactions plan_transactions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.plan_transactions
    ADD CONSTRAINT plan_transactions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.plan_transactions DROP CONSTRAINT plan_transactions_pkey;
       public            db_user    false    227                       2606    17470    profits profits_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.profits
    ADD CONSTRAINT profits_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.profits DROP CONSTRAINT profits_pkey;
       public            db_user    false    229                       2606    17472    purchases purchases_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.purchases DROP CONSTRAINT purchases_pkey;
       public            db_user    false    231            
           2606    17474    ranks ranks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.ranks
    ADD CONSTRAINT ranks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.ranks DROP CONSTRAINT ranks_pkey;
       public            db_user    false    233                       2606    17476 .   referral_commissions referral_commissions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.referral_commissions
    ADD CONSTRAINT referral_commissions_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.referral_commissions DROP CONSTRAINT referral_commissions_pkey;
       public            db_user    false    235                       2606    17478    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            db_user    false    237                       2606    17480 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            db_user    false    239                       2606    17482    stakings stakings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stakings
    ADD CONSTRAINT stakings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.stakings DROP CONSTRAINT stakings_pkey;
       public            db_user    false    240            #           2606    17618    team_leaders team_leaders_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.team_leaders
    ADD CONSTRAINT team_leaders_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.team_leaders DROP CONSTRAINT team_leaders_pkey;
       public            db_user    false    251                       2606    17484     trading_plans trading_plans_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.trading_plans
    ADD CONSTRAINT trading_plans_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.trading_plans DROP CONSTRAINT trading_plans_pkey;
       public            db_user    false    242                       2606    17486 0   transaction_histories transaction_histories_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.transaction_histories
    ADD CONSTRAINT transaction_histories_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.transaction_histories DROP CONSTRAINT transaction_histories_pkey;
       public            db_user    false    244                       2606    17488    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            db_user    false    246            !           2606    17490    withdrawals withdrawals_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.withdrawals
    ADD CONSTRAINT withdrawals_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.withdrawals DROP CONSTRAINT withdrawals_pkey;
       public            db_user    false    248            �           1259    17491 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public            db_user    false    202            �           1259    17492 +   index_active_storage_attachments_uniqueness    INDEX     �   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public            db_user    false    202    202    202    202            �           1259    17493 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public            db_user    false    204            �           1259    17494 /   index_active_storage_variant_records_uniqueness    INDEX     �   CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);
 C   DROP INDEX public.index_active_storage_variant_records_uniqueness;
       public            db_user    false    206    206            �           1259    17495    index_permissions_on_is_create    INDEX     [   CREATE INDEX index_permissions_on_is_create ON public.permissions USING btree (is_create);
 2   DROP INDEX public.index_permissions_on_is_create;
       public            db_user    false    223            �           1259    17496    index_permissions_on_is_delete    INDEX     [   CREATE INDEX index_permissions_on_is_delete ON public.permissions USING btree (is_delete);
 2   DROP INDEX public.index_permissions_on_is_delete;
       public            db_user    false    223            �           1259    17497    index_permissions_on_is_edit    INDEX     W   CREATE INDEX index_permissions_on_is_edit ON public.permissions USING btree (is_edit);
 0   DROP INDEX public.index_permissions_on_is_edit;
       public            db_user    false    223            �           1259    17498    index_permissions_on_is_index    INDEX     Y   CREATE INDEX index_permissions_on_is_index ON public.permissions USING btree (is_index);
 1   DROP INDEX public.index_permissions_on_is_index;
       public            db_user    false    223            �           1259    17499    index_permissions_on_is_view    INDEX     W   CREATE INDEX index_permissions_on_is_view ON public.permissions USING btree (is_view);
 0   DROP INDEX public.index_permissions_on_is_view;
       public            db_user    false    223            �           1259    17500    index_permissions_on_menu_id    INDEX     W   CREATE INDEX index_permissions_on_menu_id ON public.permissions USING btree (menu_id);
 0   DROP INDEX public.index_permissions_on_menu_id;
       public            db_user    false    223            �           1259    17501 %   index_plan_transactions_on_package_id    INDEX     i   CREATE INDEX index_plan_transactions_on_package_id ON public.plan_transactions USING btree (package_id);
 9   DROP INDEX public.index_plan_transactions_on_package_id;
       public            db_user    false    227            �           1259    17502 "   index_plan_transactions_on_user_id    INDEX     c   CREATE INDEX index_plan_transactions_on_user_id ON public.plan_transactions USING btree (user_id);
 6   DROP INDEX public.index_plan_transactions_on_user_id;
       public            db_user    false    227            �           1259    17503    index_profits_on_purchase_id    INDEX     W   CREATE INDEX index_profits_on_purchase_id ON public.profits USING btree (purchase_id);
 0   DROP INDEX public.index_profits_on_purchase_id;
       public            db_user    false    229                        1259    17504    index_profits_on_user_id    INDEX     O   CREATE INDEX index_profits_on_user_id ON public.profits USING btree (user_id);
 ,   DROP INDEX public.index_profits_on_user_id;
       public            db_user    false    229                       1259    17505 %   index_purchases_on_investment_plan_id    INDEX     i   CREATE INDEX index_purchases_on_investment_plan_id ON public.purchases USING btree (investment_plan_id);
 9   DROP INDEX public.index_purchases_on_investment_plan_id;
       public            db_user    false    231                       1259    17506    index_purchases_on_staking_id    INDEX     Y   CREATE INDEX index_purchases_on_staking_id ON public.purchases USING btree (staking_id);
 1   DROP INDEX public.index_purchases_on_staking_id;
       public            db_user    false    231                       1259    17507 "   index_purchases_on_trading_plan_id    INDEX     c   CREATE INDEX index_purchases_on_trading_plan_id ON public.purchases USING btree (trading_plan_id);
 6   DROP INDEX public.index_purchases_on_trading_plan_id;
       public            db_user    false    231                       1259    17508    index_purchases_on_user_id    INDEX     S   CREATE INDEX index_purchases_on_user_id ON public.purchases USING btree (user_id);
 .   DROP INDEX public.index_purchases_on_user_id;
       public            db_user    false    231                       1259    17509 )   index_referral_commissions_on_purchase_id    INDEX     q   CREATE INDEX index_referral_commissions_on_purchase_id ON public.referral_commissions USING btree (purchase_id);
 =   DROP INDEX public.index_referral_commissions_on_purchase_id;
       public            db_user    false    235                       1259    17510 .   index_referral_commissions_on_referral_user_id    INDEX     {   CREATE INDEX index_referral_commissions_on_referral_user_id ON public.referral_commissions USING btree (referral_user_id);
 B   DROP INDEX public.index_referral_commissions_on_referral_user_id;
       public            db_user    false    235                       1259    17511 %   index_referral_commissions_on_user_id    INDEX     i   CREATE INDEX index_referral_commissions_on_user_id ON public.referral_commissions USING btree (user_id);
 9   DROP INDEX public.index_referral_commissions_on_user_id;
       public            db_user    false    235                       1259    17512 *   index_transaction_histories_on_purchase_id    INDEX     s   CREATE INDEX index_transaction_histories_on_purchase_id ON public.transaction_histories USING btree (purchase_id);
 >   DROP INDEX public.index_transaction_histories_on_purchase_id;
       public            db_user    false    244                       1259    17513 &   index_transaction_histories_on_user_id    INDEX     k   CREATE INDEX index_transaction_histories_on_user_id ON public.transaction_histories USING btree (user_id);
 :   DROP INDEX public.index_transaction_histories_on_user_id;
       public            db_user    false    244                       1259    17514    index_users_on_rank_id    INDEX     K   CREATE INDEX index_users_on_rank_id ON public.users USING btree (rank_id);
 *   DROP INDEX public.index_users_on_rank_id;
       public            db_user    false    246                       1259    17515    index_withdrawals_on_user_id    INDEX     W   CREATE INDEX index_withdrawals_on_user_id ON public.withdrawals USING btree (user_id);
 0   DROP INDEX public.index_withdrawals_on_user_id;
       public            db_user    false    248            &           2606    17516 %   plan_transactions fk_rails_0d31308f9f    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_transactions
    ADD CONSTRAINT fk_rails_0d31308f9f FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.plan_transactions DROP CONSTRAINT fk_rails_0d31308f9f;
       public          db_user    false    246    3102    227            .           2606    17521 (   referral_commissions fk_rails_103d4851f2    FK CONSTRAINT     �   ALTER TABLE ONLY public.referral_commissions
    ADD CONSTRAINT fk_rails_103d4851f2 FOREIGN KEY (user_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.referral_commissions DROP CONSTRAINT fk_rails_103d4851f2;
       public          db_user    false    235    246    3102            *           2606    17526    purchases fk_rails_2888c5cba9    FK CONSTRAINT     |   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT fk_rails_2888c5cba9 FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.purchases DROP CONSTRAINT fk_rails_2888c5cba9;
       public          db_user    false    246    3102    231            /           2606    17531 (   referral_commissions fk_rails_3a125c9701    FK CONSTRAINT     �   ALTER TABLE ONLY public.referral_commissions
    ADD CONSTRAINT fk_rails_3a125c9701 FOREIGN KEY (referral_user_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.referral_commissions DROP CONSTRAINT fk_rails_3a125c9701;
       public          db_user    false    246    3102    235            1           2606    17536 )   transaction_histories fk_rails_488f01c4e6    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction_histories
    ADD CONSTRAINT fk_rails_488f01c4e6 FOREIGN KEY (user_id) REFERENCES public.users(id);
 S   ALTER TABLE ONLY public.transaction_histories DROP CONSTRAINT fk_rails_488f01c4e6;
       public          db_user    false    246    3102    244            0           2606    17541 (   referral_commissions fk_rails_5bed769fce    FK CONSTRAINT     �   ALTER TABLE ONLY public.referral_commissions
    ADD CONSTRAINT fk_rails_5bed769fce FOREIGN KEY (purchase_id) REFERENCES public.purchases(id);
 R   ALTER TABLE ONLY public.referral_commissions DROP CONSTRAINT fk_rails_5bed769fce;
       public          db_user    false    231    3080    235            (           2606    17546    profits fk_rails_642195ec32    FK CONSTRAINT     z   ALTER TABLE ONLY public.profits
    ADD CONSTRAINT fk_rails_642195ec32 FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.profits DROP CONSTRAINT fk_rails_642195ec32;
       public          db_user    false    246    3102    229            3           2606    17551    users fk_rails_6650d73a65    FK CONSTRAINT     x   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_6650d73a65 FOREIGN KEY (rank_id) REFERENCES public.ranks(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_6650d73a65;
       public          db_user    false    233    3082    246            +           2606    17556    purchases fk_rails_72974eec7f    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT fk_rails_72974eec7f FOREIGN KEY (staking_id) REFERENCES public.stakings(id);
 G   ALTER TABLE ONLY public.purchases DROP CONSTRAINT fk_rails_72974eec7f;
       public          db_user    false    240    3093    231            4           2606    17561    withdrawals fk_rails_75e44d8e7b    FK CONSTRAINT     ~   ALTER TABLE ONLY public.withdrawals
    ADD CONSTRAINT fk_rails_75e44d8e7b FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.withdrawals DROP CONSTRAINT fk_rails_75e44d8e7b;
       public          db_user    false    3102    246    248            ,           2606    17566    purchases fk_rails_85f673e1ac    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT fk_rails_85f673e1ac FOREIGN KEY (trading_plan_id) REFERENCES public.trading_plans(id);
 G   ALTER TABLE ONLY public.purchases DROP CONSTRAINT fk_rails_85f673e1ac;
       public          db_user    false    242    3095    231            %           2606    17571 2   active_storage_variant_records fk_rails_993965df05    FK CONSTRAINT     �   ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 \   ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT fk_rails_993965df05;
       public          db_user    false    204    206    3036            )           2606    17576    profits fk_rails_9e12909d74    FK CONSTRAINT     �   ALTER TABLE ONLY public.profits
    ADD CONSTRAINT fk_rails_9e12909d74 FOREIGN KEY (purchase_id) REFERENCES public.purchases(id);
 E   ALTER TABLE ONLY public.profits DROP CONSTRAINT fk_rails_9e12909d74;
       public          db_user    false    231    3080    229            $           2606    17581 .   active_storage_attachments fk_rails_c3b3935057    FK CONSTRAINT     �   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public          db_user    false    204    3036    202            '           2606    17586 %   plan_transactions fk_rails_c6347a9b64    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_transactions
    ADD CONSTRAINT fk_rails_c6347a9b64 FOREIGN KEY (package_id) REFERENCES public.packages(id);
 O   ALTER TABLE ONLY public.plan_transactions DROP CONSTRAINT fk_rails_c6347a9b64;
       public          db_user    false    221    3056    227            2           2606    17591 )   transaction_histories fk_rails_cc680cc115    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction_histories
    ADD CONSTRAINT fk_rails_cc680cc115 FOREIGN KEY (purchase_id) REFERENCES public.purchases(id);
 S   ALTER TABLE ONLY public.transaction_histories DROP CONSTRAINT fk_rails_cc680cc115;
       public          db_user    false    231    3080    244            -           2606    17596    purchases fk_rails_d958a3d624    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT fk_rails_d958a3d624 FOREIGN KEY (investment_plan_id) REFERENCES public.investment_plans(id);
 G   ALTER TABLE ONLY public.purchases DROP CONSTRAINT fk_rails_d958a3d624;
       public          db_user    false    215    3050    231            �      x������ � �      �      x������ � �      �      x������ � �      �      x�ܽ[�%�q��<�+�q;��-qi���l��d�%�7ǐl�$gxf�����j��Bf�t�r70!:��/���J*qK�7������ߛ7�y�������������ݯ�����������ݗ?���ÿ?|�ϏO_��ʅ�������������o�����o���������?|alR��w���|��q�#o�~���_~���xR_����������o�����������������߼������omh��;��-�;���z|��(�ڦt��F�������_w�w~����y��ݿ���ñe|�g�C�IT`��}����o�{xiE�;��ׇ�?~������m�mVں��Z|i�/����y��p�%5�ǏO�>��p�����ݟ؃8�x����WPمh� -0]��W�6IA0�`	���{�EW�|c
h���˯�����߿{������6���w���x�7�8�-��L�AK�W䞛�2 6���Iŝ�7b'^��&E�G�E���{�c6'ց�h1f��ę{�DK*eg���!��i�o���Ҏ�w>�Qn�0\�C�w�h1�e^����Z�`5�>�h�N~җ-䗖����,�_�b&K����=a����$�E�	s����Y:e�c=�,&���)e�E���E�Is�Q�\�Y��\�b��~���Z��������:��T�����(tBW�X3��^��
6����������)o�asr-Z���r���^�U')��X?W��~';,@Ŝ���ڢ�N�#�w��Z��9`�w�;C�D�X|[���B?א��:'E��[ �����Ef��`���M�k&��c��d�y�޹HJ�(��� -N�`��A�C��ڼOg����{-�O��_�~h�E��3}v���tP>�`���hqn�.��kAUh~�9@��*�*�RJ*P9��,�x{�y�*b #����J�_����ǭ�/�>���8��Sž��h�����㇇?����~ʧ��;�[�sDP��h������^�k1󃐭��^��Ɵ;CK/�J�
�1�9��气f�B
����-n�|�=3��e�KL�F���K�����"V�0V���ś7��-���Ow���[�*�v5>������qT4���ޢŏ��x�I*��h��Mz�h��w~����û�����XB*�'ڐ�2!��R
k5����-~�Y�"l�I�X�4}Ȃ�-�L�_��c�����
��	�=@����[��V��}E�O�	�	T�@�hBNh�y���!�� �ZFw�t[��T��a9�d�5�n�f�xM?I�&���ĳ�-0�|�EX�w�r9x�~7h��+��ܪ	(�x�n���y��/	JKv���v���-Z ��WK����7��>7�.�^9�.H���ߢ�_��x�Q�z��Q����y�5��{z�-��%ם�R΅�ΨE�����)��З��Z�@����X�P����C�-AϜS�?.J9E4��I-Z�T�.�r��
��h	�%QG�bzQ�ʐ�e�-a�E�b.P>E�i��%L�T9q�b��j$�ZL� �/��D@eM��ZB���;�b��v��U7���&����Jy��5^�%L�b��/�/'Í��_^h��_����l{
�ב}v���y�e��(
�l��?R��O7T�
�Nڳ��-q����ďi�[�r?h�k�t[�+�/-�����a�u��H�h�~Zw�ﭘ ��M�-��h�0���I0
P�}�[��0��t�)V�BH��C�-q��
����@��zQ��8��*���Z��4$��<]��8���b)���{�i����}qݽ�;l*z����Z���]�P�B�.�C�-������PɛX��$W�j_�}]v�'�~+<����`q1� ����lђ&�׊��H�;���hI�k��ŧ ����kZ����{qޤ e��l�m���u�Q�X���s?@KJ3�9�T�Ax���<��t`?V��֢�-y�4/���)@y���mђ'N����i��G��{��l_9�Y���m]��9G�^\�.@i��fC�-y޹��.Ǟm����Z�~�N���/Z�@�˺[�٢%�,nݙ�*���
{��0t�jAa��-�[��
�a#�Ƥ
�ѡ�[�!K��n�)���^,U�t��h_ђ�ڐ��MV	��h�yΗZ���jT!�@Wm��g�Ҫ���Täx��By3i̅I��U>I��P{։�"/�z�
���o�������g�F�@�|W5a�P�����^ޒ�A���a]\�Pʗ���'^7���qO�H���_>�0g�ɗ�Y���~E�=�[��J��
���z��6�Ӝ1�&���S�@?��E��_�e�6��P=�;e2�ׯ`1ke���-g2�̚$I����as�Ĳ�����5���V4�r�l��l����g&��T�#U�\
�+ �E�YӰ��K�^�=�5�_/-��
TL����,tϼ��a�y��ԫ V'�^���<��W-�5�x��8N�9"�sT �׳�ϹZ�ڳ.uyy�� !Gͺ����g��x�4U� $����c�?��:49�����[��3dV6�$��k�k�-BM����a�0]��y;��J�@e���m��gH���^r��{֊��~��&: ����ֺ/\�E�=��ʪ)N�.�?[�!(�n�ƕ�[�j�I1�ä���uT/�Rp�]�jj�����%}���T����'Z��y�VLbU �|����/h1�ҿh� ������y��;yTʲ7���Qp�
��?� �l��"j��{��jʁ%�-��5gݭ�K/a1!W�0Q2]u�-By�x+cy ^�s���[�`�=�y9�d�S���E(?��߫��ׂY)Y��B��9X*O�sET"-u{F��Ŭ��/�rC �`�b[�?�1_.�߂T6`L/�"��o�X�����R�j�lj���X4�0����]`|�PӽF��s/k˥R�旵�3)D����gM�=��j*~����"��o�~��e�[T���OPz�E�O�f������5{�����
&�wۏv�P~�jd���%�z+��P���m]�-T�͘׻���_��ۏ���\]�4�*Q���w�d10�mDWM9��7x��v�D�P�i_/��J���������g��nh�)O� ����z�ˉ��rp�B�� ����P�j��V��R�v�����5�E��Q��P'��u���K���R��hÚ����L$�a�
�����m�T���꫖�*�	n���L�"�8���P�
&�A�I��P�b��Gڳ���!&�>�h1k}�����t����>9=��t!}���P�W�¿�l+�w��0�ϟ��t���H�D��˳��g��_���ޫ�_�m�2;���@^�xM����WJ����Ė~ҝ(�FHy)���3�~u��\� ��pZ� �(/���3�|����o�I��^���������)Ց���Y���h�!T~���)���fR�4/5��.f��e� ?��R��n�b�L����ʈ��}v�[�:��8�U���0iP�hk��{���?T4AY�
�5�_؆���k���^,!`��5kn��z��s�?�}����_��P���On�?v�o�)�A��b��z����u���;�E�i�c��	���I�	UA
��>�j�O�P�)'�BT.h���	�d�q������B�)� ݤ@.������l	�X�u�r
�^�YBՠ�$���u]b�^����?8Cvp����>ZL���ȫ��e������l����HSZ���J4�@n�g��E�I��+�Ѯ歼A��*g~�KG9�N#],�&2[��EQ����z��L�z����E�A�>�N}�wZ�釆(L�}7�"����Ī-,FV7����	Z��i�-}�������,�n�_a%A�}�*��@?�j�b�    �'#q��f�@k�������'#I��lEM�H�C�B����޾��n��t$* �|���g%o*B���|�W���ǟ�hJ�.!n����|���\#�`K�^i6�}��a��J{ů*I�-��Ps�鬢)��]]�W��]a�p�Ps��,G�ͤY�T�
��B�W)'�3GE܉Sҩ"�[��+Z0GF���ݣ<%�*Q!�e�s�P}�\*�5�XZ��AԼ Ԝ"���m�@�d�h^j�3yu�6��p��pA*�r�1j��3yu�6��0�.De���Śq�jO�;����^���k6Fj�Ou.�*�x�]��;P;���h�[�)�औ� L����A����\|�@�U���EU��>ӗ���E U����+n�b_���_�;4���P�t�� �����T{y�� �5v�� ���_p��l��TN �{�P}���c�)� �1���"4��T����Ru1�X�X'�"Ԍo�{�C����Ǉ�s���x0"U�B�6�S�-B��\D堢fԙ�X�5���S��\� ړ���E�uz�Ɏj�h1���ݬ�پn�O���b,E�j�����-�p����e
P����}��Ⓧ(��N�Q�E���A�y�9m�jZa#WPNpu)�����$m!�Սr��/��Z���!n��)��^�E�E�p�!�K���g���u<[�ص0��g�����1-����Zh;�(ꧢ�w� �h���E�>���F=R�E��:_��Ƨ�b�<;�=�2�Ր�
�@[1�!��ag����l��YE���B�./���t�����p�P{�;��j��>Y,���Q��b\U@a�j>������W���՛U=�и���������wO�~�������V���~���RPҋ|A�>�
�F�`�b�3�)�9d�P}�$��[�*�g*P��t�� T�93�j��*P!��;b��VqZ��i�蕶]�E�>�h�K9<�vn�_�D��sէ�^̽�P��#�� Tg�剨�=Z��Jͩ�p�;Ia<f�w>o�"�M�ݗ}�P}��x�;�|�
��B��>�|�P}�g���oe��yC�[�Qo�O���rC3��Rr�BT�.s�P}����J����dݦ4C�>eO%Li�X�z!�ec�,~����O�Ci�BJ��^!*��1�P�L��Ci�<�'CJ�]� �h)'�^U~];������q�� ����b	A�8� | ��ݓ���!�d�By?��#i'ZO��	(���B��C�����ל��t�m���%�~S����-��j^�^0�ѫ�q4��� 4�6�dܟ�jy�.:w��8�SQ��{[���1I���Ŧ�+�
�l�E�R���Y�f�͌K�:_�]����	B��"T���d�{W-��7&
�������i�7��2��#V��4��B֩��sR4/5g]�rÎ��E�rv�k�B�T��h��κ ��s�jǹ�g[j�R��b��'˴�׋ou*E�Yn�"4�!Ӳ���\]0k��lg�;��<�%����P@��x[��#���4���ώv��#Ԝ,��_�����6DЏ�[�ƃ{荝�5�V�b�>]n�b��[c�����gI��
F��c[��0��}�.YE������IMVr��b���zI�Ps��)��� �#��+B�4逞4�^]�UƤ�o[��i�I�����P`�ιA��zVu�3�/@��9���-B�Yg�HCn��8_�������~���;v*G��+B���/�k�]��S6Z��D��x���S}�M�����u�Pf���&i�[�=[PijN��^�%��M�-�P3N;GIե�b�âl�'b�g�P~���8�{O�V)7E'����#֍�4�VM@il���A�33L^�O���~E#Ϭ��#ގ(h�t��뉹�>AI;��<@ �����hj��̸3�\���*ˈ��S$IqgZ� :��2�����?�����c�v��q�u�w��@?�K���aŽ�e+_O��v�.@i���Eh<x�4�X|���X�ԏZ�8;�j�	G���2~�P}�����r*e���-T.n.c�3*@��Y�>A�6Z�/�2���[��3d[�w���R|ߢ�����'�yF�iL��K� ԜaJ�~��\����}x��q~�d��rCPr�ʲ����] ]�	lo�Ps��R���M�(����Z��a����?6'�"Ԝ-/�[�,@��RbiB���;��޷�:�~����������mJ{C��������Qz�/�'����U��l�#�q��8Lg��oP��1nO6%E�^�B9Q����� 4�mJ*�������B�٦���˓p�q���odq�����Տ�~�z���ßq��"S��dF�?��?<���_�(��Pqm-��*.�| �BOuE����g9���yy(@@E��j!zW�j�������BL���?;>tm:~2}z��Žo(ZjMl�H�:�5����2֣�.�sz-B�O&D��&	Н��-��hq�������
PFӁ��j���?_�'-D���L*`���hq��I�녏]$u���93βm�-B�O��|�s#qo͈�2�x'��'��^�9ʛP���f9v����N��p�A�7�
P$�n^v���3>���U5�7��?+�|�H[�j�\�z�W��뉥{L��l�b [�������щ݊� Sc�,d7��c~���Зԟ�P�!��5�>���Q�_�W�gBc�"����K��?�ʘ���sAU:��~ğ��܍��G��	ДH�V�����'�VxQ���(�ғ� -��cЮ�m���'e2�J]j���K����M�+���]�B���Kj���A�n�y�Pm�Ɂ����H@V��� Tsr���KP/�m\4�d���TM��0(p�/�E�����ɩ;�) �m��-�X&�T�B��K|�2и���y_=��!&��?���}v�R��p��wB�OV���O�?��9���x5s!���Y�� t�|��
tϴq��P�J��2�l�ՠ���7�ϝas��B�hY������/�^S����I�����_�yWC}�)Hi:��l�����"*�su	��n ���Z�Jz�emv,kjNy�F1��u*Տ8fk�Ј����[<AL{
P� �~J�E�9�fX��A��k*�MdTq-.�W�{���å�-�Dq>���7�Oq�K<&D���U�?�}�#J.<�"Ԝjl1v����´�g��i�)�U������z�`_����g���<__ fb������e��8�X�r2[@jjNze8�˅#L�6��~�"�����U[�˼d�T�� ��Tem��T��T�Y" ��ǹ���\Idy.� �r0��cZ\��z�@�-I���l.�E�>������ �uB�8�-K<���\1|.�{Gy�s���ud�[�P}֊e���/Z�Ю;ɷ�������/Ks(���9|`�y���r�fC���3���V���b$[��#�����̥���hf~#(>N�Jܙ�ju&^��L̼E�>�E-�&��\={�,K�P�M�n��ut%W��(��}�E�>�MI���b��քnc����U�����ٮ�oj���j
���b�ś D�P�/�h�ҚTu�l��nCᆠd�ARު+P8��]��-B��ƒfO��
0b�e��6h�擻CФ��b4P�c�h�5�ɟ�=b&�r�0b���l�	��a�O��Ҳ��B�b�ݝ���AXݥ��X���n��E(?S�2v���X�JF��m���������^~���ae�oa�s�x�'Bc%*Zk! T����8i��!���]>@h��ɗ7������o������?�����t���P�Û�oY+'�B�	�� �����X5j��|b�u��xµ�*;9��kW	��~�ѢŻ�|��Q�B�]Z�Dy�}ww�P�M��{    ���2���-Z�Z�lJ� L`7fmw�~�P~���iA�J(�L߼o`�R���r���_5k7�C+�����WK{�RE�� �V�"*ĵ�8�C��lj��׉m�,����Z����!���3U"#gy[U�@QGč�x?eq�U]H��_PY;��l���{^���.@�`b��f�P���]k攠;��EM���b>?�ve�+I�u�Ho-� �h�����V�賩�/W=H�u!�dH��Z��0�w�M40�b��[	��5m��z�1���y�}Im�y���%�nG�-��h�W�T��8J
y-ycm{�C���Q?uO�vr�	)�6�E0���L���z�Q�z���X�)p���a��Q��蜎uB
2thCP|�彳1w�v�s��mo6�0���L�����{��~��ڳJ���v6�|��"���}��{���T�鳶oB
�ns��'Y��-[��Y�3z3$c����~2�W�������Ik�B��C���!�[?/rT��� �[oz�1�����&��.HQ^n�ĵE����
9�g�U��Ks��[��0g�F��a'����j�P݌��υ��rȉ(�!��J��ێ���x'm��v)!;s��{�ɷ!Gw��)y�]%��"�>A�ϘK��*�UTr��t�Ps5x�*D��ݷw_~����IՈ]�Oe]�(1�j֠��#np�E帒�}<@��߮$�{ݯZV%��А/}�4�������ǏO�>�֦+f_�;�n����N��L�A�?���l,Żjep]�E�_�R�� /-����uf��/b^���� ��)+������=���n�;oB
Ǒ����v��'~�Z+�6��{��<�(�ש�3Q9Y9�$����0��'9!��SŮE��3KR���̠���<U\��/IA�^�FP|�г��p��"�aV�*�:���h�v��h�t�:���Z�4�S!G'�(�J�/�n��~P^<c�aק�^���ȿ^����{��F�v�i~�`u1�~A��'(�m8�� �����bi��W������v�p!纺�`	� ->~Ǹd,�U-P1�~�j����;~.��?�t�����nsh�!���q�X�8iQ�L�Ϻ"4|�������e���sQq�r-u�W�е>��-�'�9�Ũ�}� ���-[��3dO���ت���Z���'0��<��@9m-�vo���r��������� ���[B�� 
P�ݧLA�穊������k���@dkۑu�<s9�k�=���w��"R.�i;`��N>���a{w��5�Y��r�;��� GN�r����T����̯h�s��wC��P��s:��Q��^k� D*R6Y�B�A6�=?�U�H{?��ۜ�B�<���x{q�.TD7Gh�YʶJ�솟�_T���6�G�EW����U%+��n^�+B��sQ��[@EK�u����h�s��T�䍰1*P K�W��z=�uV���׿�M��?��HsyP�6���0OA9Y^�>B��6����N}�����HLG��+B�A�P�}�̺���(��@�B�AR�S���;�&�b�N�n�A�a��T��PR���Oƹ�ԴE����>o
�8 �����ǻE�=����n��Ro)Xgrߵ��'<9������_V�������8�g�n�"P��.&�OP|��o'cn�MAU�[�$/��W��L��8��z�+�ԝ����E�=���\r��a�e�2
Q�-� 2�ރdnϟBG�t<��r�T�`u>@�=��7ɝտ��%A�E�z��.�2�|����Մ��N�_��,�a�{�]giS�E�D��<�B�Έ
⎥i9����Ķ�'8#*h{^��"��M�kFB�Ir4��*��A����CH���'�eEG��lT{,�|��r���8_��YeR
YR���nu�>Ѱ�� v��U.�-d�zO���6�nA9ބT�.X�ݠ��W���υ�CG?���M�'(>N9��1w;[Y
R	G��� 3jg�]�<�t��wh�3ICx��7f�{�8!�6f �g:�\ȳ0�t�8��&�~�V�P}�T�d��ޗ���6��h?C�>Æ5I��k��Eec�ۍ�� sig�m����ک�(���okz��z*�d��^�(O1>H���slW��~ԽQ�f龱��Y=r�w�*�:�>wk�B�q�}*�n��+Ļ\g��<�Z��3�v.�T�F9e�9����,����<�X�"&�]?Fk�2�v6�;�[!�*� ����]p�3�Nڄ\�
���ޭE-���O��C^�2څ���-B�y��I��FƫaR�x�P>L��Qx ��n72^,1S�Qk�?o-Z��L}v2�5LY�4�E(����U�R�/ÿ�-B�<w�^��j��á
��m�������C��q�o�ϙۡ�ޱ������g��P�t���SǿuB�s���l�MH��Y��� ��5�{#�BT�&x��5��\UE	a��ŏ�+؃k��7�g\U���o���_�-XI{%h=ᚪ��N�]
�{���7�g��Cî	������b�'���Q���"�9
D���}E��S�t�E�N�Z���!��p=զ���oBti�wl~�A�=eΖ֍<�D��6����3�(z����B6T~v���k���EwJ�R��hYɓ���k�h������,�_�Ϲ��vgM� �j| T�1{!9W-D��|���Z��f/t���jCA��b?"m�q�5E�K������Bu3����S�TV]J=2��Ynj����T�����B�&���N�)K�P}�i�s-{�h��D�K�Z��3�j��A�����:������u���yAJgc�f�����Y�ۿ
�����M�E�>c���3D�T����T�!v{���ؼ������u�W���M�W��ی�8B��TJ��D�����'Ьq�@�&�h�,mG�͚G=�Q�������Ç�կ ���7���SI�8__�0�:Y�v��{���T��UY�7!E��nzϱ�'���⫟���`����}�b���p���-�x����~���wG���k�T�צ'1X�Z���9@�<ޝ;�,�W���1�#�L�E{����j�M��n:��e]=�Ȓ�K.�Z �3����*ζ����/1�t�F}E�>���?FU�J#�Do��ރ�]g�m]�!ƻ er�п�-Bo����7��F�z��+E��r�3�-Bs?����{���U�F�0��� ��8�������9*d������Ǚ;��V��NH��!��7��|u.�i�Q�CND��y��{���3�v � W���i�j��8�,N��_������l�p�h	Z}�W.��k*�����"46�]K)i:q�U��.��r�PӾ1�����ǧ�������W�2U���8�*�n��ԧf-Z�Z��VQ!��K�.���~MK�dI�T4��o Ǿ[S�u{�N��|���q��6Uѿ;�u�L��z��B�8_��^�S�t2�_��q���S�ɘ�JI�O����tưgTR"˺�-�L�Wy��	жV�I��'\�$�(�㇂�}���̈�<��޳��`o��T7�g[��ڼ`�U�e!��>YB�W"����)]�<���V��5?�����������饻��~F�f�3D˯�g(�:Sחo:�8Vā풺�����$�A������4�Y�h���?�"��n�P%?��P��!���s��S΃�{C�c�!/������[�;�n������БJ��-g��̽�d�~�ԕ7& p�P}����~7�Uso�!{8@�����{���Ç����U���9����-Bo?���v������A�x�����Ͻ�P�m�#���& �'I;�ԭ����~ƪ������.XE�T��ڵ	1'�\���r�"T�q��.���Ў�h�/y��0G	~ɜ_�u��<X�Y{o�f(����z��/w�X�C8@K�����7    -H%�)�������~8k�#�05�C~#h=��Z�旪\�lP�;�X���Sέwv��Տ��c��}����l6;u`g��~�����s���E�Dqi�M��N<�Z�ރ̰��w����u9��� �d��\���w:T��KZ�"��P����>]�&f1�-��%LRz_2On���W�6�~کE�^w�}�������wO�~��3�������Ϛl��0i�� e# �Rm���*�H�>�hzn����yE��&�t��p�'T�R�l����3H:�$I
rֹ��5���h��N�]��>�n�Ϙ����t�Ͱ��Y�nzO��y-\�S�
R����'�JL��?o�+����M���Z�P��!�O�ۉ'�BE
�@�%�~�����᏿|���?-�B��ծV#�΋M����Y�<�n�E�B�v&�����Q�yK���Н�ݢ�~'��A��&��.~����E(?�tٙ�p5��G�<~����y�Fv��U�:e�A:@�=H���x�{m�x*3V�tҡ;(�E�=H�v"�E\�Xb%�Gk|>@�=�\��x�nr���������8K�gC.Jb%*B_gC��ߋV%�	�j
��q������]ՅmxU0�;�Kh���H�wOo�}|����^��3Ɩ�֒1����� �q��~���7�W�J�׿��6�{Y� m��v�����=t|^r�|�Y��AM�O�@�dmO�F��mj����̇�v=��w�HE������"T�1Cq�]�Da�}����'LČ�ـ+RtfM�E�=i"f�|��E1�nqg������)��έ �*9d����f�������5�A_;m6j䲛����Ϙ�yݶ��R�/�yK���c�^�追,_����ԂG�����ZԈRn�;@M����h�6�����^�tG�>B�0�K-�c�)�P����FD(?�u��<�m���at�!]nʧ7n��)u�č��ptW�͒�J�Ѻ,r�@�7�E^�~5k�׾!KHz���w�m؉����)�B�'���BVo�\�;�-ti�ع̎�3;��(��g��_j�ar�����vUh��U��s�ZbP~*�C����}v���Z�ޣ�~�ޞ6���H��Y�o�_����G���[�H���K���9�y"��]l�L���|�P}�C��ӛ���}Z�n�(D������]! j����xU��&��a-!�iA������Lr���֘��ɻ�R	/��h���v��WCW���QU�}��sl[ۑ�l�o�� &���-��X������	!���f�Ƿ�ۍ7_���e��r�y6I^��(�\�(>�L�Eq
��6��v�P>M0Җ��	��[P����7��+c{�r'V��C�)J��D=��v�����#������Ӧ�1�3oj�5m������Z�Ȯ�'�è�(O@i@�p�P~�$�r��Y�rښ�'b-BMxcҫ]�A��Տ�>�r��+1v�1-i��h�0�H�/M?w�"TsDVοV|Cs?~nj|{�����Tr��+^"�f�-b�\��uq�t0>��H�������x�V2`�I�-q�Dc�C'P^;kY����>�3G` ��>�jO�uᯗ����:�ٯ�qͺ诼|_Z����k���	5��q6f�QnZ����F�����n�,�-Bkx_�zM��������N��
�6m#M�A�2�^��W5L3��~�:�;�5�	(����Z��i��N']v�;!�i6�ݢ�������5ߩ��c�-���o�����9&	��"|f���	몆/�߱.���Ǧ�x���-����\��Oj!���[��~ڹC����\��[�D��0�|�r�<�a}}�P~�EO�v�����~�E(?a^�JvɺY���X��iJg/N���gӿ�A�	�8;��
P9'��N�EKtzNk��&� �$�B�	37:�&�otm�1�X�Ehm���W�
P��*��'L����v*���������+Y�K(��/��@˂�E���.Ђ���R@9қ�{� |
0a���2aUì�z����:�Sa��ދ�g(�&��F�̘���9��̻��-B�4o����6����{#�_��s����ވ�}J{lӽ|���gܸV+��4� ^�~��E�=a"Gb�^@���`_�B3t��;���Ի�N�����}��"|fu�z'�?����/��<�k�㺂�b��b�U� �ޢ�*VM󽞝�6�~]�Eh�������l6B����\�D����.��rfsn-B�4�qW���U*���f���o����k?������C�(va�Am�i��z��'*�V4.��h��x��m��a�U�V��,;k�P��i�o- {e!�7�ҵ(�+I�o��7%�6�e_�Q&�&�<&�������1ގםjܨ67���ڣ����B\:( ?őO)��ìvfSPrf�]Z��qƈ�nFǔX� Ԯ[�^I�`���a>��/����۫E���e�n��c��-1L9�wN����1�M34�ͬ}\�K�	(��f��Z��S&oq/K/nF'�n{��+KF�q�<����'�E����Tq�Q�o�O�������fX���EK�2Q;o�p���R�?ڙ��B�i38��(6t�g�=��7է��������<�s�-Zh7�|ڠw���n�uCPzƔ��ai�d�Cߗ�h�QO�vU�����f��7��8c��,G��%�*ʵ�gL�����-@9o\�6���u�-�%�J�[���-��m�x�k��-Ygٺo�P{�L�^3w�1ȬXf�P{�LM*l~�A�5����3fjRI��͙�{���dk�T�[�����UdjOx�@��~U3Jg��8_��ܧG�:���T��lΡ!� &ܸV�尓Y���Z��S�knoLB@���h��_jO<��&��)���s�B�}ʌ�H�!'��+-�"Ԟ2c�{��/�l0+cg�[��a��w��|Ҽ^j��~ʤ��:�n`A�� ԞrzvNE���u��v����cuR[/g璱�g�Zb�qi�N�n�Y��o�g]E���xcZ���}���S�n�7P�n��ݧE�=�\�~䝈�ut�I������`g��fQK�֯h��=�LA��6��k�}}EhfۈM�_^+!���lئ�-1Ov���D���lW��x����S�� ���|j�A���]�}`b�&������hђ�d��N�Q+���4��';`����!*�!�7�Ahl�k��^�[�
P�k^d�E��&�r1��\��1��j��w�V0�����m�B�׮w��(��&��E�拲�_W-������H��x�� �\�j��h���	GT{��P�5r�t�P{��$�ש9��љ�GkВ̼~��|�g*&0|�A(_��F����c&N���%�Տ�k3+��"T�c\���k|��y1����B%�F��%�[��n�g��i����`��[��~��~*ഛ2�/D鐭̯�a�S17TDR��)�"���j��� ����7�U�P	��)��w����ư�k��*R.���������Ww��J�&v�-B�<����G\�Q/H%�l�%ߢ%Y=Fk?r�G����JT6��oZ�1�OE;��K�6!L�19���0�\���%���Z��0�-t��(�'�.g�"e\6]��-Bu?Fk?y=wg48|�C����W"Tgi3Ja�a�xo�Mo�x�\�Hi��-��z�a����w��_��������q��Q�v7�T���͉H�P=���φC�rUJ��B~E���>oG���xR)h'Z���4�s!wt.R9�0YioDf��4ӎ���jX��`�q,�B�qr�SM�nk�i�T p�^��� �o�ڻ�$.r��=cO�z�������U�wA*Z�����Ǚ};r�pr�Q{�vq�!T'�;uaJ�ꇹ�������Ý    �����{P�jh��������:�ݨ�Q֙�>k-B�AҸs!�tE�r"���~���$?�ܩx:J%Ǜ�0���-B�qVOυ<Н{bȉ�hLlk.2��sfpt!�ލ:��6VA�g�l�=[9���-�:'��4��YC=��z?���	���P}�i��!�k�9�_��Ek�B���}&�>R�l1�)�B`/y��{��S�˼+�7�s�)A��[����!��ě�y�Ļ �#�ЏN[��㬞�9Ƚz!*F��� -	�����1��WC�Үe���8��<D�Gj�"�K�w�P}��o����{�D*��y�ɷ3���@q�1VD�L7&�"�'s;n��b�Qٛd�+B�q�ߞuw���tD�H��6��B�A��!��Iy�K*G�=@�=H�v&�V�+J<��H�z�3�v*�d!m��~Y�P$$I��JkGQ?u��g'������-)2�v.�~��Q98�� -T�i�3��im�<���!��[��{���S!�Y��JT����-��y��G�܂l��f���hq ���|z"�U\��W�D;Y=��ރL���7�f��PΥ�z��vz*�T�_ZM��e=������Y;=u/fp�"�K��O��Uwi\��R�s�P}�������+R�E��+ZR�/����b��*�����������vuK��_���;ng\;��Sfp�]���~I������3fphn�%%�+����L% T�/�:h��W9"��� ��tj��R�w�WOj��nzO��wi�@��N��Md!o�^��W���n+Z���Kp��x���L;G	��FT?���};o�Ϸ���y!4��;@KJ�dmg��<ˌr��NH��>�-B�A���NT��	�*�K\����Ҽ!]�(zQTe���C�=N�vZ]�o\�hkW6���l��I�F{v����j1;'�_�^fw��s9Qח�.#���1n��v��տmv;��S2|�]
hIi��o�|_��j��3�KܶhIS\� h��r�
T����g�{T��˝]ݬJ��DR���/�+���~�B�vEU�����z~U���`]`1n�B�K^�Tp���1ov�Y�.�A���-�좲F+��m��p���-�3T7����=��!Ԇy������e���M�e��O��흠����ŕ��T�i�x�;M@��0� mg�J�*tT'_�Z��lAG��5��J+�VؽW����cIJ����,R�ũr_��\ԯ�g���ވ��2���[��v���UUC�ǔ2K���%jB��U�H�������3h4z�ıWJ�~_G���g<zP��M�������-4^��KF狤E!_	U�5���A�M�����{���r|R�E(?���j-��U9��:��q-B�q���j�d!gn�(��<���h�q��ӱ���RmBʚ캑�-ٌ���j�aG�W�0G󱟂h��sd�\k� ���r]8��P�!Tg��ɨ[qϢ�H���ЏSZ�=J)�����c�P�r6����a�92|��[i��F5(���}�"�d�♆^oz�4"t'	;���$��BN����T�օ~��E�>ΎœQ�e�+�Š�<�E�>ȑ�!��V��Q[���oG\b��"|���-B�S��]J٫����
wh�v�Ե���r�Hiks�էۺXťuU���ۻn]a��{�����}�
�:���?@K辌s!��ء���v�P}��/����vB*��K~#(>�q�s�8<�D�zQ��� ��n|�i������\�γp7��9-|.�Q�׫_R�f�_����+��\��Y�|P?X�%o�O�R^ťjVU�6g�<omВ�l�NH;����nSL�{�%o�B��Gi��B�w�u"��h�I�-B�	'�����U?��[�Z���ͻUi��q��ѝ�9�����l�n�m��qY((+�c�}��"��qޭ�K���~�|�B]�'�w�氓��lJ����E�>ݼ�*.�
�a�3���Z��λ9����]�J!�ا�-Zh{�(M�T���Z�B���o�ޢ%{=��e�l|ST@�{ ���fFm�s�6eu2�i7h�Kl'�TVZ�&��w:3�-Tn{B�,�Ї
��ذ�E�=�i��Z��
(�Sf��-Bm�Qۋf�*����-te��@�%m*����[���̴�I[<�lg��T�&���-y�k1N�,�wI��
�(���Wiz2�v*ޗ˭�x�+��!�z�h�0��ِ{y����������83m'��7-H��ԯ�Y&=r�(_�Kʆ��_z2�v*�;7��\��$��U[�z��Fz.�q�c'Bu&�e�[�P�<��ڋ�������S�o��"��N*蘣�}A�=i��*���P�'6��"����K����2�9��6����B���'I��2���϶h�aƹ6O��Emtˋfm�FPzƙ6дS]�.@y����-tpa�n�D�OY�ku��[��3�'^�ũ���L�r�"4�q��P�*PtƆm�hj��<z꬝ޝ|�z����n�E�>�ζS9:��}���3���Z�ރ������7;�7R>X�Y�� �g[۹�����+�5�l�E�?��s���΍���x���h�q�鶓�]����y��,�ww�hɣ܁q��K׽�r��`r�6~���k;o�և�]ּ��h�w�A�=��r!i�DQ�`�:�����`V{��#�"8ϖJ[��3.���8/@�l��Z��.�8���mu*H�c�w���I�ξ��^s�qſ�I��ޓn�;;��RU�Z0�3�� �M�
��ɲ�-B�)'��v,G'�as/Z���R}e�@%�]fk�P{�-^� o�)�R��N#����w�b�p�@�5��"Ԟ2o��Em*r�˿G�I3����R4_?h�O������g�6d�o:�"�dwי�FtR�X) w��{�L������J0�	� -9�8�D��묲�҅e��I:@�>ߌS7���P��`R7��E�{��T�w�&�rq�v�w�����3N�}'�e�=�R`oy�P}�^'�.��*R\��-o��W�����K�Y��� ��g�m��[^��׹�[���l�?r�#Yy!t�"tI���Y/<uw���"��*u;��ٟ.�N��P�0��K�,F��j`�r5��+^Od�����8[��<�C�P���퓷���U0P=�T$)����i-"�A��z�݌bЉ(�Ț>�i�R㔸wk�m&^H����"�A��SŖ�:*�-��93������8�o�N�.�A'B�7}���������4�.�P�ǂ�}��"�������o_Z����jZa�$T�h���X�H3�di�WUđH��W�Q��@J�~��������Vo���jK��C��v�^6����!���P՗5���[D��:����P]5�Ƥ!���a/7r�GeZ�����mtv/m!������j��}�|�\���N�JD9�=N[D�N;�tow܉���αW�A�>缓�;w ������'7B�3N;��<Q��/-�E(n'�z�ݥ֭�٤����E$>������BT�G�"r�/��t�N��
���.�D��,>���m�;��"�r�ݎ�-"��f�,-��71�J���"�2�f���h�W�ԑ�J���
 �#�`�y�EP�]�t��m�B0Dⓤp��a��.�}���Yg���H�z�V� !���m���}�$N2g�
W��\2��ge�g���{C�{#^~�M0� ��$I�$ϾkWA�xyc]߽����X?d�ROB�KA���C�>���d�t"*�ګ"�A��gG��{mv�t�He�os>@K)`:Jk~Ы�c�hA�������}�%ēqn���U����-"�v�K��4��3�`u���[��7Hw�U;B�D�E�A$>]W�y�����1%8@(�g��L��M�	�ڕ����do�Ϙřr��
Q6h��"�	��U�OI]A�h��    >"�鲸j�+�\�HpN
����Y\���RـBį���M������9!ϻ!'���ٸD�a�S1��1'��M&�D�Sfp��K�	9\4V� �0��A*T�
R�Z��x�E$>cg턓"^���d�s��8L��9'��/v)�u�}�[D�3���̥5�j�������x�H|�#���S�i9�\��Ѯ��[D�3�n.�3Q<�D��֦>wk�O���?Z��sH��ZD�ӭ�Vs~�bY��z���l먦ބ��TƄ���ZD�3fnt�B�x!�kgS��[D�fn^�$R��N��/�z�H|���ǽ\�������Ä���9��f'9��x�H|ҹ7���k!Yl�)o��9�F;{At8Ųu�����9�}{!�N��]{CH{��6��OCE�o�n�H|�쭜��%�],�����ħ���;a�qBTk��x�H|�]pU�K��B%T�3��n"�	w���u�[���ԩwo�ORM�gX�����8"�'h>I�}I<�G�N['�_��7W̍�ąJ��M}��"�np����/HE����s��T��Ύ�P��1g�ǵ���8�)�{q�s�Hi�\��5��g��HA�������~E$��Mp���wO?n�/�>���`��SU��tX�?��?<���_�(�'��������X�����-m�ݽ�I�0����Z	��Q:�m�"�	f�zo��|�����F;�D�3̸��tl�͸�B�vA���B��$k��(��T֣�؆J+�c�7��Ϻ�#�!�5s�ڲ�Z�]	�Uf��1D�����I�g�(TY-�P����	y�W���*{ې�wU+R>h�`�-&]����������	�]W�x&���tU�>"[xE�S��҅�7�<
���"�0M�t)2�c[��`Yho�\����7t݀��m.�a�L/N�?n��rTf��܀�1Zg��Y:b'��ݐ��Y��	���-�[0�@R&eu�[q��o>�����_����2��o����C�H�������O߿}��Y�s�9�;�K�g�Jވ��Aj�S3DO�|VO�a���F�nto� �����S��Ѯ<�CMc�1ƿ?����}�����q(| �/���Omdq��o?|��_�;y�Y8�nGeϢ���V�	=�&E{��p���?o���7B[ps�ߖ��/�|����~�D����~܀2>�b�3�7n�g��y��pG	��?����e��<z.��x���I�Bֳ���K���
+}و{kR���3��G�
A(1s#�b��ޛѳH�U�(G8��>V�RL�����Ϯ/)��XX_�L<Rj�2�̧?�����d7�r:ݹ�����@>=\ퟆ��Џ�n@���-��=a�p֧�y����=Y�3+��!�J:��`w�� ��CJ���pY�O�S�i�28�}_�"z�Y����8���e��) z&aؼ�h����'f3CtC*i�B>@�,b;#����gN��k%�I���x��n=�4�9�F�4�xC
\��=��#��G���@9�k/�4/z,���zD�����ml��1���N�`�WJ�F�1*Cdk��+C3~,�p_��|W�����!"�f�'m�P����ވ]z������'����;7�B
 ��J�V\����3�F�K69�hE�s�p�c�f�nDa����!za����۵�m��+Ӟ;�	�ƙ#�ī߈��rp� �3H�=��<MxB��R���ՠ�3ֶ_��_��ߏs#J�h={�����]/�8�9����oZ��NQ�3+�G`�{�5��֍(O���g`���,\|#ʹ��L~��w��.�D�:z#��&�e�[D���u����7B�ۻ�{B��&�qmw�������Њ�w����Ҙl%*P�����"�S���+Qц��?�"�M'r��H*�t�kT�2����G�BR��IYׯ�݀�9��Z��N8��=�w��h�n�Ѵ`�Bl��|�d[?���y/.�C�Bp$��D�g&��ʲ�"��A�YW���a��Z�
�6����zȌ����6�g"ߺv���w?�D�D�3{%GG��^�@9�����[͠^B��?<��_=������ǻ߮��~�����I�6���|[D�a���{�,�� �[=��o�{x	7�{��ׇ�?~������NGy�f��T�g�4kZ���.�/��y���������^���4���~�P)k�v{E$�������R=�&�fE����������_=�Ԡb� �����Yٚ)�
�L[
|
��B4�4�������nS��!�thz:"iP�۰�A�Y������_�lA�3J@�ٲi�� �34��]�7���>�OK��7L24sZ�us#��sr}_�"�=����>��?1�B���!U:N�G}Q����(��f�-"�<�0�_j����J{	�jE(̈́�k����L����(�|���"z"5{≔�O��9��b"-_� �f�= ��oh<������oߝؓ����V�B�9�DO��D��g7�����t�� ���!t:N|C���h�"{�מ�(���l��mhهy�#?�s*h��t������¿���t�I�\�F0�sٰΠA�HҼ"��p7�#7��"{̕��¿4�3g8�'��z�k�(�Lt�#i>���m���� 
PVgk���Ed_�ǿ{���/���=�x�z֣ ��Dz���3� ѣ������ŏ6�j�V����T�t������h�rڼnT����f����v� �l���M�p����Ϧ�d�j&5t٦�� �À�P1��X������Om)����wn;4�z4�3j'�u#|�Qxi��F�7b�����vR���n#�~|S�;R�[� z4i�W��h������B��"z4u��wOo���՟Jy{���mr��PqI��)@9(��>�8{��>�� �i�g��i=Sޛў���������Q�=K�v�W� �M�� z.�sk+��b��1ߞz�=��=o�T�(�,�����g��Z��h��A@i�f/M��a�g񥡫�w�C#�.��A|6Y+�/�
tKD2}��"z���{�Q6w���!>��|�)�5�>mm=��k?���PX���tt) z�s��D�Q#=t����� |&��_~����ǧ�������x$��tW�s������5)�Ù�1�-cC<�g�U!���(��X�D�`���ݷc��/y���q��7��"yw�t?��3��Wa_���Y�Qn�O�
O�M�=�#�T�޳��EdӖdO��d�(�fs^-Z�]?����t�Jz�`�\-��?����Ի ��h����3I�M�Zڋ}*��U�}DO㳘�q�Y�~"t?�"|Y.�6s\��8�����E�0�g9<�[������@�}��"z6��b��C�jlhaZ~��p�E���c�AXxz�,�GDbނ��i�{-�0��͊����g1�R�Tx�f�9���у�Ս� �%�ˣ��"]~�ѣpVZ=�u�$��GqE�(�g�&䙊��� =�����u�'q�]�<����*�ւT����!�T>�D�6����(���s���X��$�$��p�%�z�=��3s�a��B�%Ml9�E�l>�D���m
R����"z�E"�Rr�Q ڂ��h=_6��� ֌��t���~���o.���Zqkm*�(�\DO�HHIJ�V[ �ְ�-�A�إN�Td�]��:����]�1l�R�>N���(�Y�p���ٟ�@�e�M]r�E�.G�FyG�ŵ�����]'�+¤�[ۿ-�Gb��͢>�YTQ�,����"zf��l�>�Le����9_�
!{�ߔ�#���i�j'��q!ʺЭ9o=7�n��R�P9�[�6����(�O����1�˻4?:хJ�7x܈
�|���k���ݝݎ$7������^`���ɹz�X�f�����T3(��jH����/�#ܜf�̨Rf8����J?    �t�hN��p�}ao��T,%��C���'�)���&���
]oDek��^Ԧ;���m#Nx�m��ך~�bj�ol\�������9���]I��T�lh"���a�S���f�ʳz�	�};�E���y� �А�.�bPU��>�?���F�^i#��lߵ)�!v��kǷ���
W�lD���N��p�� ��1�-��7�!�\��(�!��[N`�-�7�#�8��4�n`)� ��0EL�܇�`�B�Num�����L}ˣ��P6&'����"`[;
o�)����(��v��O�
��z�A|O ��>�Y���P6�R�ڌIJo#9�P�)lШ��m����A-)����x�� �}>ـ*5ʎ� A�}�9v���9܈J���q��	ߘ�H�X��[+��]���z��q�P v#��Rxo'r�=��ԺEΓ\�
��Ȧ]� w����R��BTH�.��NR��N!�mm}L�ta�AP��ys��,��cЂ���2�{[� �j�e�;2!U��&��?^X�^H�%L2}IԚI�Z��k�Ė�%-�']��i�ZcĄŅ�.ez\�!�uӼ�V��nC*��<��A�_����x��K(�/�R�I�K�����@]ՙ���"�[n8yy���M�2�Pϫ�l�dE��Q� 5��%}�}�h������ Ȼ[�����K��Bա⥖� H-�V(F�}�}����5��&���9�([G�/T)�<\~�6����~���������ht,5��~�OHLeWע���Z{����/ {pS���A�,)%<w�B!�R_>-�� ��$r��D��e.A�z��T�C�Q���pr��� �� u�TR}p7lX�T�9E4�����s7�o���I���uO-챸�p�ט@�_�G� �)�
���a#Uh�'�֯�QC;�� A�4)��:�r��kL��0APk�x[��sM#�ԀA��A��@�i�Ԥ�.+Q)-��!�T�U�i�Y��YP%]���Ӧ�ڣZ!�_����"�Ί o�tQ{h��tъT�u�R��6]�<���[��.��M�.j-�}+R��Э��R'I-.E~+��3� ��+�j�iF�Q��P:j�����H-�mĄ�¬��s����	��QG�iQ5'w)�=��9F�s�i�)_��I��v��.T�W*+Q:���[� u��Q{h+~�^�*&8/�֊ u�����q԰6�\�v��K�Α02��)+��l�n|EP;C¨=�V^�rΥ�ǃA�)#��y2�x�!e}]Q�EUj�$i�<���5�R�r��^�^�����kWJR�� PEgm$���Pz3���Gk�6�me�vp$���zm����-Q)�`7K��y��.˝�C�~�i5����
�Qb�`�j�=�::yis�J�R�/�R�y�,V������C)��4EK����(�rq}��R�H(Շ� �!J	}���m���&R����ɉ�V�b�a}�F���-w�\p[�*mD9DB��+�T3Ek}�U���&և	�T;K�[�m+Q5��&��v�<n^O@*F#��A�y&<�`�Q(x�m_�#H�"��,�+��ڐ��x��"H�&�T��Cq#*����#��%τ[�9ĆZ_�}�H�Αg�S��FT���5B t�,���0ڴ*�5*by���爛p���kD��A�N7�<(�"�.��*E�ZG邟7
��7鵃^�\��ck����U�m]9��ޕA�c�>ʹh�3��7حH����Αf�O=��шr9	ͺȌS��<'�6\���f߯(�!�܆��"��~��/BCʻ�B�#��@�"�:��>�,�Ҋ�jq:}���ד��I$HX�vu���QP՛��4�iiy�\iy�
y'䊔K�`��3{wp�秋�P�{���oÚ� v��T	8s�`�{��〸1�A��X�I[�V���^�>A,�S�	�o[ *]Ά�����<'����<̄�2��	��:��;&0!N=2.��˦��6����8�岍J�,��R�����"�g�^8s�iSݙ�=�e�u���+Pɤ�dŎT�V?�T�M�v0U6�b�9�A����
��8r{�0�YbQ����(�v�A�Eԇ�)�ү!(��V��p�f6�d�8@�@�X�� ����)��Z���.w{6�^,a�?}��_������/y����!b*���2�{#�ϻ�1b�ݺmk��6v�`�6�պ�v> 8��K4#�.�Ԧ�p���s�%_��u����Ҵ+R����A������,�J�G:%���q��CU�i���8`��:��� A���ϒ�GP�ć�������_��%�ϯ����>,Pz�E��1T�Œ��8�Z��@��G�ra���`¶d.��ܩǫ�w�e3��N
h:�r?��9�#,#r�!���{Q��\�v̗1d.�Kjdo��h.�@�#�w׼�"Ȼ�w�I��p�P��'��� ]#��"(�d��6�s�#>i�畠���|c���wu��?g1$|�j��^˝u#�JT2���a��A��=��SJ��n��P�%7&pc���/����珿|9M&e{���8Y^@]���:G�c9�q�� �:��qm�=�#�����?m�l��cWB�t��K> ����4G�~�d�2�&����0a��i��N��9SԒn��;��=@�"��@^Vx@���� R���$oXB,ɏ�=S@UB�+�Ku�yAu_�7�oD�-Ix]����^Xp"?��ok���X���0zE��̾�]$�q) J�Y���#ذ6>���q1�y�^�,����}�W#�C�02�S:�b�!�`���]�t�:6��9@�d���ņA׈*�>�#0���~�5*��0w\�H�W�'��@�T�f�����Ĝ��o4��E�����X�(}{� Xd��T7�~�N�Y�}M�'����X�J9�\\y��hU�}�zd��c�Apd	C���(���89P'L5��h]����&;9��������qĝ�~����F��+�+�'��*�ε�';�#���A
(�<�u����Jz�~2H5�1�(M=WG�#��0
Q�b?�l=��K\y�0v�i��/QO��:���m�?V3R`r!p��B�4Z� ԕ�)�����xqI;P#�#��j"��W,~�G���TB0�6Ap�?�|��}J�'!�:~F�6!�<X���QU*���:� 8rI����U T,�� �`!lsD�*Mv����'��Gsd��P&h�>rEp�<JF:���W�,��	�㊪Y?�&������l�
�m�%��+sv���=�`��,!^�G��Upm��7�Q.��W���I������������#^��:lu����s-A�$<P����Mp�8�w�N��QF�# T	:%��+���v��H1Do@���� ��I��k,6]c�j����JL(����j2ⷩ�1&�>ڢ�Q�C�p)�jsԥ,(��tzϪv��I���(E��>���(]�JۯU)�8���U�kw�S�
T���r������X@+�g*2;����J�)�}��!��0u�X<��"Ŝ��{�Du�$�0B�@El��}�`ъv�Áq��$�*�~�'����Ϭ:��� X�����O4��%���3���ԙO T������ZOm@�
]@}��w� ��)#�$�3%�����T��عg�8�( �)9�N���D��(2���#�i�L8�7�)��th�,�"X&�ұƋ�b=6�q�A��[(�o@�T��=@p =�<Q�V�� U'��VT��<{��w��L����;�S��ֲ"�T&�x��F?�,m~0K4�[ub�A�d���}«Xc���	�`�LwqZ1[ɀV��6s4�<I�;��� �Ԁ�:����?�^�`��@�h_J�P��
�<�A�!��@�1{C��.�d:x�"8    �f!F\>4��f���
��:���Bc*�B`������#�Ȓl��LIQ5�N�y���AT,�h��+�f�Q1���V�����+���ܩ�����a�>T��5T8�!8 �T�J˘&�"�+R	E��E0ğې6mV*�����%(�!�܆����vѬ�zȊ�K%w�`H&�����Qi��
���p��@���Z딩���'�07f�'��7`%�A_��}{���ԯ����leܥ�l@emRW0p���lW�����ݑ�����\��9t�V��*s��?��B6� ��<&�o֊��0�&�m���,)�"N��u�`���CHgP/2�s%��<c���+��y�3?{��-�O<v�g�p+Pښ�f�A_@w~#��Ex>k���Y��ဣ�Z�8��E��.;T�#蓂+e�Dp�4b�_��n�7&��c#��)����IH8�K���֩;��#��_�U�~��9~��#6m۪�sH���U�^�U�M���d˭ێ^���g}� �5�����A�͚ŖA���!��eC�U� �n�~yKt��m^_�WTV@2O�6�eC��,� ���__��s�ǖ�� �&�kZ� 5L3ߔ�0�o���d��q���`׬8 ��76h��~|EЛ�����÷����]8T��u�,4����������O�J�._�
�)Q��>���hH�T��P��ޠOޠN؉rQ�ra�rB �L ��`C5��Hr/z�<n}t/���m���{����׋ɲT
ڦ~��Lx��!v`�j��b�z�����_쒮4r�r���t_��N*x�r���� 9��19�Gσ�`c��X:�"(|�;M����E�+�Y߂��̲~�fp#����:Z&��*7�7�tۀ��(�Ҳ�X\�0F�;Q�d��`Ծ�.�jx�� E��y���f��m�����=�\���9�^��_n] �b�/��#Ƚo�t[��G�� ��ưъ ��(�*��Kr����x���9��
�[�})��4M2�>��S�He���'�����%<���k@Uu�v� ���n��ٵ!rHIj��z��'�]���(]a��(�\s���:�>(��}�@��yVsx�4X�5�4
{��s��؝�E�t�"��v�A��%��`C*ԵZ&�+�܉�#<�6��	!�ߣ(���~��}�I�}ہmsd;�(��yv.���B��,>�~�J�N�w��gغ5�1Q��^� w��Kx����r��m�������^�OF�"P���F+����g�m墬+PI�R��DZ�{+��zU�+6��^�Vt�)���HE����Q���M�%:@�V��Kt� ЯM���А�����B�-]ojtl�7!�;S����Ű�Cz��w�*�w4�r�|7?E�;Qu�-5�1*����3�ó��H�c�vV�wA�W06�s��G�c�r�)�Cf[(���>y�
�/"|��}á�����Ɏ��@����.|E�k�<��:(�᠄?�48AP�f�)�p�OC���Х������`�ޮ��H6��� ȝf���"���k��`� w�]��э�����Qz�zO��>�t��
p�(X6��y��E>�U,�J���x��-�n�"V1��(Y�������1���i5a<���ֲ�)A�;�)����!��b�a%((�\{�x� �$wߠ��H��+�>7�Wɂ�X���!"6�nzNӞ��jp1D�͕ �':*�pq4
^yb���A�Dёף�����bf�`)��4�lS�|�~m���ŀ�z�������G�F�v�}�"ȝfx}�����+ٰ�?EU��h�oǑ���]Y��NA�n�	j�}�!f����Jr,����G2ĎV����}��j�"�.p5bҽ�mtl�'Ep�?R��SiD�߳}���0w��?�9����������eL&.���^1����RC��]B�b�"�j<.$�������1�"kq� iǙYa�������+�{�}݉U3��`�>�q��^��6�2����r�%K&�L����O�Bz�>~R*���M>J�v(�.�X�`����u(�M�T���'��/�E�ΖM��"��ͽ��_�]!�=����ɿ|����~���U�s�K/�	�<�
� 5�|�`�#����[���ǟ>����?��������~���~����_���������_��ˌQh�+��t�f�Eh+�S��/��#�2g}Wӓ�Vy+QQ�����G�[�ߨ�����y������T:��
�	�w[��*��U-�b\�ҡ��T�y����k��nC�y۟(�#vS	���H0V	E���N�`��ʲ���=����^ۦ$��,rAPۼ�&*���~D����ߧ߾�^Қ��}���	(mr�}XHt�?JZTʭY�X[|���#���ڿ�'��ڿ���8�6������ ��u~=�_Q�yyx!�����7U�^ފ�zB_�_�u�w�W�iY A�	;�N�0�|�uKi=�K#��(S\��52�����)�<ײUbq��C��961���N��u���-A���*�������T��^���Wrm@�d5��AiX�D���㓸��8n#��!�C��8.C�gid�/툜���6��4͛ˮ�� �/t���F��Kzo@%kv5����uo*x]�����O�"�=���:w�PśT�TDP�d��Gô�O��3�f�7��`� ��{���3�OZ�ϙP��;��S�S���Qy�y���|� ��J�SI��R��R|r� A*ٰo��EE_��^bS�����_?��������!6�b��������o��B��ֵr��_&m7�hz>�!��/�~_K�]3_o@e�uf������u�Ë��t�S��/'�Ί }	�N�.4�xyt� q���g��}Io�S���~�\ǲ3X@�F�~-����Qg��X�_?���38��xa'��^���/1�N@�/)�h_C�렿�����&D���P�8���'��������%�r*A��A��W;��d*%W��A����'��R�P�J�� ��0kH�S�/�u ��}	����˧�?}���|����?����}X�~�%���gE�c�?���.�9������ϟ~�������I��v�(����`ì1�Ө(ho�|��7 �eҡ�	�$m@S�Q�N+ߟpM|tN��!V��.�������y��b��V^��G�A�6u{�6u��$~0�t��$W���<WO ��S�Q�2�q-��k��X�}��\G�&�lʕ:/޽m�b%}��ܲV�m�e�T.C��;���ro9q!��77R;���B� �d�^S���;A�g��7�r��	�{EP���5�>3K��������xEP��؎Gc��U����:�zS��Z�fZC�5�~E���ٍTVe#5��:��"&u7f;N����P�b#�蜵?@Տ܎�՟8������x�5oⴵ��K9 b�m�ˇ��򭼐��PL�%�VC��si�����P��M	+PI����Oc��M���_�{�*��Ƥ��ڐ�ޕ~� v��;Ds@�M%��T Cp �t�Z0�ݸ��Kf�Dt��8 ���_�C?�Plpc*��0I,I��	����,���52�����d*��/���
�qJp.��\��(o�.� UJ��Lin�)i63�)k��� �3{��}���tYـF��N;*.Z�/@���>-�!�޵sx�p`<S�gg�E�<S^���Ѓl=�!~�!̓W���1�`@�w�ıa���T���~L��YO-Ҝ�g��T���~����ٻ;���S�l���G��i����]�;�`@y�բͻ�<�nV�,t�轉ZO�'ؾ��%�m�c�*��6In@���r�Ҏ�%��Ϡ��s���kO�l �X�D������o�������<��f��Z�l���P}�C�������\��A�& �	  zC��	k#*���K+�a]d��[Z?cY/[�w^[~!*�P��Y��v�F�wu�c4��~�ˡ�ג��K�|���Rl�� ����	�x�IQɑ~g��ɸ�)�T�	�x�ػdE�� ���N�WT���R>��V���Jb�nIĉ�݆tp-EѬwK̃���Q�.%��a`��K�q1�W� ����p���'J�����ڼ��G��OQ�@��ʃ��7�hW�����;+��$���_p �K�e�P��`�+@l�o�1�y��%�~��g��Ӷ h
Ü��g�s/
;�K .k�1 x!�ޛҋ�#{р
���}�@�x� ��D+��`�(�V�7<���k.<ۉ4ӗ�#��Jє?�J4���^����ګ��2�͐#xa�����N�ltI����:�]Ó�&�T�56�b6�jh�`�{(;X�f#*�b��_�`�;2� �v�`'�#��l�A���Qj(��	j����!�i~���ܜ��l^�v��2���n8�����I�2)c{����ε������O��n/���B� GzLЬ��'��ݏ�YҒ�.w�O���H]z�L���uz��$�(w%*���3O/���[��q!ʦ��;@Վ��w��F�����8����z�]k~��bI���*1��-fB��yG���p�#!J[K��r?ܩ#��H��ù�]�EJR��`?v~�S�����#Br6�~p�~ o���]y6q�[2�,��P.�d����� �X���X*�Q��nc)AJgg]?`P?���}�"*m�:�#E0 On@_h� �R��(��낧��"@��-���P��[�Ā��$l��v���Z�T��}mEp���#
+3F �CA�o���߮D@��OlN ��a��)��?р(c��� � �gq�	�� �*˸}UVTCec|9@�#L�!2����t��.J�#���Ur���i�\�'4�Iϑ��9�Is��	a������#y��Wh%@!�^��Y��u�<��:���֑uʅ���j`�v���~�[e&]FT1��E@kur�G0��ΦdUpr�`�y��a���FT�f���!��"��ɳ]�Y�N����@��DO �C�iO8�#iO�T\�u�|��ݟ�u8 �Y�<nH٘�e���7���Շ��)!8�fC8@����<��aM&��'ۯ�6��.>���"hO����.�V��n4T_���[+����8��r��w+��c#5rnwI�|(��`\�b�}�ۈr%��>��S�����x\�&�Tո��Z|0�ǚ�,2���n��{?vH��U
ܰ�v�o�U����F�/>'s���2��n��v����u���:*Hz�]���۱K�ɽ�!e�݊[Hz��6��(v��P����f��i�-L���D�����N��	��q��'T�9& {�ϼ� ���c>E���y�ۺF��ّݔ؋BP�#�������g��
6`1$��T���~�.�t���x�r�`�|��!��'E�wVC�#���Q2��#�s Bro�wAμI��S�r �|̎)'�}�����ׂ������5�`q���*�ӰJ���9@0 L����/�5�z.FBP߹S(_��ϟ��z��A+܈-5�A~���4|���� (�����K?ڬ�L�N��N�Rؼz�wLB0����v�4y.xs�N#��<��n��]�j8	6�Y;�u��.x��=FPn߅S(������?����ߡ(�4���Q�� ��c��r�훼���� A�?uj�(�D��VYĬ��w٤�u�� ��pj?�����qM�=@�#N�;Gr�u%�w@iW�c� ��<�"��n�'�)kB�}���<�>�H��t٧���ԇ����k�Ѷ8������z�C���;Zw���c8@pd�S�b�����!�3	5 �_0��w�c?IR��،:�(c�fQE0����������$��Q&YM3���0sR�9�=�;��M���"OV-3���nD���
Ζd�H������l����C /�s��=ܭ`o�̾������&�B���x� ��S�{���|�Նj�}��IZ�1��?/��[�eŞm6ڈJ.�}g���
����K�wH霊I�I=�ה{�In5o;ٮ�^�+�Z��>M�G{�%i�;x�J'k��J��;��M�֬7y�H�Bh��Y�Cb�Q�G�Y�%j�Y����s��I��8�CP��鳖ouܐ
�;/t�+��<Q�BLx!�Si���!�-���]pm��;ų������Y�6x1޿�M֥��A�>e���Q>D���a��|��oL� �!�-]7v��)�����Z7G�5x�xng#��؍J;���������F      �   R   x�%�1�  ����@Z��-n��`1}���^���aW���9��X}�K���5$�ȚX)G��"ȞH9+c�EJ%�# |�:	      �   {   x�%ɱ
�0 ����	w���d�.m�\B��d
ſ���n��2�QO�8]�� B^5<{?�����ZKn׭�/<r�e��x��`!�,E+��k�ΉWb���_IL,��.��;c���]      �     x��Y�n7}^E~ �\x�}l�&�CP��[�@���@|�l7��W�ے\��d���g8w
�:�����[��� ���s&2������������������y�}�4�ϥ�'׻`D<��z�'��{x����˧+qRN�O�~޽|��m~n~�h��)� !N!md(�~۽�<�����O���ͷ�/O�:XDDq>Pw{{���*�O�����רp���d�*D�'�ux���=��!�H���nw�͏�׏��w��w�^grl�8���%���xQ�z0�(��:�x�[��8��sb�v�
���Á�>܌8٩ovb����*L���=��@�!�*:=mCN"��hMR�go��S(�ypT#v�t��佅�$I����rP�W>����׿������>O�#E�	�������+S�K�h�����Y��\�5IB�s4�Z�\�)�K��r�)(����,���R������R���Z�Ѥ$`+,�7g����"egIE`��6Z&+�(�"�h������j�?X�VK;�3k��b�W���u�Z�"\#2��
LNK-*~�+\b*d�Y2�2��3e����ׄJ��eV�J�����Ҏ1�
J,���@8!��'h�7����x�p<��V�Lu��2U��o�@m���{��B�9f���S��[0^� �t��3�8�鎀aE+�G�
������w�w�*IA[��*��	kg:����Nj�kG���O���5\���E�[r��l~��"��?�hݺy��R���b�fIi����5!xf��v�BcJ"�ԭ���0�bg��MR� ��bE9NG�X��� =�Yqc��+Y�'�vT=��NiQ�,t�t�������B�\��a��`�j]W�����WHX#*����3�*���u�����D]�(us���:m"`1NKM�@ŒB�
S�S�)[�����sN�#�T��,ʴ�r"�-�b"d11�������E����$�A��eJL�ʉ�elO�!!�;9���d�3����9P@�˸��8�q@���=�A, L���(R�ٗC�v �y�==%j����f�� �R(��\klǑ�H.��#�M#	s�����B�	N2f#��p�T��YË��ñg��`2nSJ�R��a�u��:�f��>|��c�:*��7��Nn�O��w/���(I2d\�὚�3��t���H��Y@��$�o���0�Y�C]�9�FD��<��r쯦xA��� 5�i����E�S;-�*��iw�Z����(�#,qף�K嘒O�d	9]�
prץWn���W�wڀ�c�j�a̽�Ӎ��&J�\�nrL�9�t�[DK�����H1]m���J�7�![;�z#DiM�?�Y��&O�ZN4픎F㞃�����������J s�O�R�gM
RQ<�b��v�᧝2���b��;ˊY��:V�����@�mVZ,�Y�X��5VZ�w�U ��"�geq�ω'V>]���e��o��)��z)gP�i5@�[�Z_�������mP      �   �   x�]��j�0���S�j$�Nl��P�a�]��[Ö4�4o?�ݠ+�"~�OҐc������@!1;�;i�9��j&knSd	�kU]{gAs	0U����OH]���,����6&�4���������[������G��iqH��q�ް_�q��O���e�r1�v�1osL1_�a�ה�M�=��&|�q�v�9zt����SZ��;g����`Dy��9�R�u~SUU� �8X�      �      x��}M�eGrݺﯨ��\f|�Gq%���K��j�&����>'�{��G5g�_�+FW�S��q""#"�|x}�����}����}ky���.���?|��?�����Y�W/�o���W�������/��j��o~�_����^����_����׿~���������_}!����^�������>�~��?hQ�u���R�U��l��}/����j��K��<��^K��jSQ=��k�aVl��(e���jU�$Q-�ƐY|*H,��:�Y�gQ{������%��RV�RF��\W�^[�\��d��ڎ��ؓ�&�eqեMD	(�+^��8ID^�����*mڊ�Ģ�^W/���D���W	5�>U�48���]�ʴ�3^M��"2&�4�u49��T�ɪ�4]d�Y߰�Z�?O�g��dH�?��&�캴��f���vm���>�f��e/�pN��Y^h3k�ƵE��N���[��E����4���4�	,586`��񫈦��Z������k�)&g��;�:�Sa:�����ԫ�emt:��������7|aX�һ�E�YMh�1�{���r5��n8?�9�N,�?F?��&��B�cx����?�O����8����ŏ��W�/��M�"/����퟾H�Ɋ�ר�h^�������L?H����P��cugE'Zqbi���b�8Et����Gz�y��-�5�Y������H�։E'�G�,M5�
�A-w0&X]�r̻���"���������Ŧy��2���Vp��"u[+H'�&ȴ�<BM`��UX�Q!/����ʒS��bg"K]�D�8f��"g(kXq�g�_Df:���G�k�����u8�=T �&�D(Q�~���W��:`��υ�����8�����h�N[���Oȋ���(:�aa�D�p#}��au�.'���ZTpe���{a�JD��J�R�M�,����`�J��q�4j`Q��&�M2<NJ��WE��
W4ӹ0�0k�-ڕ+��#��A�f�6,���:F�8�q��ĶUӨ}�iҝ�a7��q��}'��>|�i�~�������HQ3����4?n�R�_hվ,�`�V�ŧ��K�M�ʇx"cv0a4}`oN�7,�����Y�Ph�ab�|Z�{�B�������f��4��cql@���$���0���/>3L��-tԡ��3��^m��M2X����U�'0�L��e�V�a�h�
���9�߼c���Ѯ"X~��G.��[X�zt�=��d)�ɀ6��lw,��Fqb!��W5D�����BA�LQ�}����W~�<���B�p��#�?c�=|�%f�Pb������MŶ�ڠ͙,�XL�^����X(26��J[b=�t���q�n�ZKLc�;D��#���;��f��Bw,`DW�&��.uݱ���t�g�P]�bѥNc�;c�y��`�jx�uݱ������虜i���,uZ��&�5+o�4޷8�j����n���,��G bk8B�X�+k1���]�V/����X聥�%,��M�5���X�LJ,� �AyC�p҅EQu&%�Q�EQ)Rc�!mh_�LJ(b�HS���j�hjsIX"V�v���)^cis9�Xb�fc_�sq7x��KA���.�M?�2�p��i��������T������\
�v�����i^��VU}i�J4X��q��D.<�,,F���R�0����t�P��R�ͥ �����D�U����؝K�KA��WA�+g�Β�X��a����F�c�^	�G^`�*�-}.y����PeH��I�u�s9�P����PRɬl�p�`κ��,��
��]�cE�A7�N��H聅��Q�,t�y[iؚ��q,l�	�F9��$2~ƽ�.}	=��4�Y)g��C�\��Kob"L6����oy���?��"�˼��Z�&�L"�t�Y$�	�X+�.�ڴ�A��{�e�"��M��w�&�iO�}�e�"������"V&�h@9��PP
�Ѻ�ژ=����2fEB�����,9��tmm�e�J�mX�d�\��y��90����e�u&�,9)-�]`�H%��k��Y�CeZ<j�����_Ƭ^���F�"�o�R��e�$�K�7j�hӲ����b3I�&�oE3Ү"6u7�!��YՆ70Aｊ�]��!�
����9�@������_vg�4���;pΪ����tv�q�3�E�>�2�f����W��u1���D[��F�~>�6�=k��\oyG�E����o2�)}.a
�E��a��[#|P��C{"���`���[Գ7��\.���k?�贫��Rιd0j؝� i�Q�P�>�֊� C7#��3�j-�L*J0�"��O��u�O�D�X�Ε*z�it@j]+p���m`��ƽ`Jʯ�p�@XVX�ހsJbn��p�}D5+�+���������N����{�,q���(ɔ���V�j���N�(�j.F�4%,ڃ��s����O"���R�\$S���`� XJ?�2��KV���c�3wb��]�A��D0,��{,2�E���ŀyl�,���
�=�#��F{0t4�W���tMuN�#b�4�c��?��� OX���3"c���ᔼ�m��X�&:��`��{��O"�����8�������Og�S���:���``=%J�z��psy�FFw,F�]�I��F�4%0ڃ�`��ꌭ��q٧F��(��C��E5[۪)�:�rW���W�G\�Y�/U�,,2g��M�z��:�*ֽ��u�Ӽ��n 8��owoeX��M��=��F�njv9���a�9%K���䬌#����Z+��>%K�#�Jr�|�蟰�z�O)�ރA�>�l�{�DY�(e�O)�;���0�riI�w�ڜ3s� f�n�?�|K0+�8g��f	R���Kx�Z� �Ϥ#�W�,���i�G�&L�)pC|J���g�%�$¯ S0T[���)�{0�W��_E��A1pΌ�60�`|���%�X�0e3g�����#�egJ�'B��>18��a�O������M�V�'�FĒW.Zƣⓨ�hDDM��sbp����	_��a���^�t�}Z�n��<E��Id.�x�i�3��ƲÖ{��x��a=�oـ������r8��$ʦ�5܍�9�ܩΜǈ#}"w�&g!�㼅�3]� ��R�9ڵjOg>&��̦�^�"-�	��s�|���Y壜��$At�6�3`� ��5����
��T�L:��`���!ǰ��(ʔban)f��fd?���[�(]��IG�,�l�q�)5��.M�8��ɂ}�+��u�9��N�8z�aT/�Ϣ�������3is��H��r�rhy�9qN��m`X.	:��3�mب�3�(��	+r�S��ǒ*s�u&�}�z^vN�k���3�(��I�Z���M�GF�͙\�A�s=Q�l���s&L��k�:��,o�=���9�f��l|��E���cq/8�
d�(p��\*�|��#�l�e�p������R�tN���������ns�`�Ȇ�3�ǖ����%q��D���K1?K,�Zj�$�6��"�5 �8�N��*�e�KD���~!�pVV��W]xY3U��#p|����Gh"�2�3q� &���pwE<��r��(I�g���D�6x���RQ�mp['��{<�Kg�R��E	&b�K�^�B�^K����L�`d�"���6�`�2	�gR�f`sxtWo4�*;$�L*�� 2�r����ي�P�O�ͤ��B�.�N��,��+�&�s�.� g�q�:�y�0E��L*J00J-JՋ>�1���d�GA|ӳ:�h� �B�>���=��Q^�Y?�rN|i5��\To�@������6mC9�X�\.��3c�ПEy��E�y��lD0���ḝD��<�f�k�e#���y?�Q�Uώ2:S�c&��pl�i�� �hv�+�'/����hE�&gQβ����ҘFG0ue����(E�1,��ܘFG0l��?�2���W�H�i|� Coɺ �  $9�=��Ҟ/�N��;>i���܋B9C���*�y���4x!|�,��
�ZiΙ���DN{��{fƚ���ٴB�L��� NCT�"ua��Tu���D�}�]dM�T�~3qnUj|;6��!::pN+�~��kաvޞʎ��=]a�9��r��n{!'��v���sf0�0��j�M�,m^9 Y�L6�~���u��w�����;��v*F?�8,"�Up�e#F�c�~���$�#+�� ʹ\Ķ��v��gm�d���Ȣ2�� ������m"[{\$s�(r�p��<�J�#�|yќ)���L¶8d6��(Ye�8gFF��*Yi吟M�nC\�X烨�:�`�/�tC�jU{�L*J0���P���G6H8�2���?���&��U�|�F��}&=�I��<���6l�����|��?���o����˗���U�(�6`_�������������鋔���W�=o�,�W"�G^�P��Қ+\�[G���q�PN-���Y��F�؂�Dh,ͤ�@g��U�{�1|�>Ui�s��O�/�oS�"�s�Z�̬;����Z�.�r���?��������_��&�|���Ah�)�c���QYk%o�9/� �l{�^B���|�! �C�W���/_���?|���?����7?�o���ǯ��3�y]U�(���:�-MKݻMP^%�3��ۚ����{�[���Cc�+��?xS����Bxd%R�OcG�Z�[6�_�6���F��-�0M"�4��#T
"�:8[f�:�w���c��a��6��o���������9�}�&��2u���qV7�u��K��Չ
o���
��ooC�_xΦ	��(^���`J�3�̔����-y�P�ΐ�.����М��tu��!�*�x`��/5�l^�Em��_a��R���B�{².|𲤾���`���ޓM���'(�����=E���G�g�L�;�pP�7���p3;�fk�[�z� �IJ�k9ɒn��NS{.4(\;�߾��"Z8��2�Qdr<M=g8�ZJ���|pJ��j��#��ڪ�o��mX�0G��`�s����ʡ������vRe"�ߟb��2ڡH9�G�Y�+�����|/���30�n���7�I
��ӱA���u�V��s�&�pE��j�u!Vyo�ӗ�(��%�Q��l�4���'m�<'W�8L�< !!�g�Ԝ���2z?��M��ּ3������ZU�gR�M��F�}m����G�z?���j�{n^/�s��IGCc��A��pHr&�S���Ah%��$�I�l�{|��4�8��=�跉6��7��h�d��68���rr֎��BmK2�su&�3 ��~@����Б�$��p��"���b ����:	$F%O�8�'#f|J}XΝ��֟�����V�U��-�`91��Ȍ�m��hfa3�<�3���ވZ�2�Tk�n��̩OEƂ�5�9skv�#@�A�=5�۾�O��У͐̒�s.�
�O��n�gQ���˭K*�0;m}j�!r{��p�V��8�����r����i]���y17�lEk%��@~Vޔ�΢����L�������y�7�Y��ٖ:{.��ӘֶO����Ё��ˏxkԟ
�Ʋ�����[�pw�	���R@~��V�:΢�	6:���s) ?��Ϊ],����_'��\�>�9�;�L�â��p8۳9��UK���9 "��F�ڶ=��������e(��B�����X
�����Yԙ`��4�w?�Z�'@��Z�C��]���:0޼r��ӡ?% ��h��ࡵ�Β��ʋA���-K��w�;��� .A��Ϝ����<� ^�W�s�.om��z��\؝�Ȧ�V����z����������L�����݀�!�xb+e?�,3��U� ����D$��}dC�gw���kVs���->_8����Q�8���G$������mG�u��c���3�-�w�}�^���J��ڄ�R�ۀ�$�j�Jұ/8���W��h5��9����jc�k���b�ّ�������=2J�?���Իd�5��8�,�����9�:#�g��,���w�1I�-7�ۛu�|�\���V֖3�l������;��G)K���mg���z�D����!)^�b��d���S�O��y��{����} .FL�c��Ø��8��櫜V�7\��|�1��`��"d�$TrJ{�ڲ��z�l��7XtB��W���U��D_�ฏ^h?Ƴ�f��@�2�|,�}��}�R��6��W�2��s��օo�<[m����s�m�?���(4}��<ߚ�2������9��%�O��/��Wٯ"�'�؞O	ֶf�Q���V��=��
���7���V����h�f+�{�8+��ОN��#=��ZO��9yV�>}�u&̽�slf9���Q�j{>!�(g���z�����&������C�����H�W2������]��ʷ¡G4*�-����HNٷ�����\ �w ����_V���v��}���а�X��ou�8;�-�K4����sx�jk�=���D���V_[��zo���Cw�>7IM�&�U�/]J�)+�E��W���?"ZL�W���<��5zWQ�����4f��\vl�6O�&d�����4��c��֩���bK�@̫'�6�B���l�7�5�+c="}7^J���#��e �bڞa�����M��\�&���r�-7b�O�n�/îʫ�&4��R?��^�ӽ���l��!��ؖy��������"��@�����f*��O C2(������"��g}ggUɋ���=њ�<�E2�TXx+��6��ɩ�2�6�*���U�w�w�|q@ڮ��O�5��7!�w��`��*�0|�����������,@������y,���k>j���Z�>�P�Z�(m�k��h��f��;{��ˎH��?�w�X�s���G��A�:�浜/�x����͟<?���s��>��$���l��qG�l���=�,G���g��E�d��C^j�z_��5��D{VK�M��,��]��#d$��G����s0�8����/��IG[�o�Ut�ǁ�Lǹߊ���������k���{r�7��!�^vצ����X���0���;6g��rw�� ��e�0;��sv=�Ii��aܕg��7�ۉ�� l� ��ck����z���(�J�w��1�P|�φ0��Hý%vy7���#���^�nKxv�JƯl �Y{?~���i��vp&hA,�+�	0���ؿ�T����������&�GO�O��e@��p'>��D�j?ϛ�I�8;�J�g������p�a#���:;��ڋ0��S~�N�f��]=�2�Pe������	˜���xCTq�{���Ϝ{�уB�%d9�P�-`5��`��������}�'-H�`2�g�=���okx�S�.s���?�eY�?���      �     x���͎�0���S��<ߨ���
��zY	HK���İ���	��)Ҍ���=G��2ƪ�ӑH���U�ܗ��<'�9�n"t���Li��H�Ϯl{�q��qu&�ɲ
��HT�o)����;�HT�E�+{`;�@�\)���&�u�NU�[t�-þg�Khy=�-*�����5d�uO?�.�x.��L;Vf$j���Tv1Qbq�Wchy.4��|d��YuF���h�&��X#�׏
 xe�4�f$
�<���<_��T��� ��D��خ����0��:�o��Q���{����:2=��vC�sl��x��8�L��.'Q@�(�m{.ю��CX/�W���0#QP�K�_��z��t�d���pY�zZ� ��<KhDN���"�}�f;R���$C�TF�`ȯ*n7mxM�׫��o�ȋ�ɽHFh�2#Q���,f�6Ī�r3>N$�	�ө-3V;�2Gf����7W��U�� �z�i��H�,t�U�MO�7���W��ɀE�
��3��όR��r�w      �      x������ � �      �   �  x�}��m�0��a�@�E��=���KO6������|S������C�0�~b~�?���C�#�R��Gv�wh��"!3n$�F��H�o$��RR��Cn��6.��F2�<���\(cD�E�J,���2�G��K}L4e�J�P���8d�%_(D�������e�R(�@�0����B�0�����z�^����c�M?�sHϰMfK�"~�1�i�K��Z�U	?E�*����RS�+@� ����m(O	�Fw��v#͆�fZ��U��A|	�� ,Q�~�Pƚ7pO�rTI|�9$ 9M΍Kb�W�k5uք�'�;LN�s|c�5I�<'05L�B��i��*=憩��p��6�c���\6Bֹ����,_�jqƈR��3���7�~)o093�tz	�i��G��㭑Bd�7p�9�9��C)@�(s���/�!�/��F3�1�ƌ�"[B���/�	�Ot:-�~�6�U�Kbx�K*{���{���IJ��@���{~cz�T�eI�
r��g�G9���+��8o$�S���y:�5��*=����"��~;���i���jĘ7H����u�z9�]��!�_�>@�9�bcY��X�?���Y-� q��{�T|�p�{�U�� ����      �   �   x�}�KN1е}�\ ����sN	E"B0B0��L`A2c�.�\F:<���u���N����z��rJsۃ�,;X濾&���ԻV
s.Y/��q|:OϿ�H+Jjh�Ud�%H�� ۅ���/�b	�8t 5
u��Z�-���҂�_Tv��+���ճG�K;�*nYӤڲY\?r=��q�. U�;Q.ג�JV���Yk�:�����qtf���In��n4`to�?7G w�|���7(O��      �      x������ � �      �   �  x�}�K�1D��S�F�W"�9A�H���HI�x�ݲ��O�"Yr�1�FEe{gzg~c�=v��ʔ��F���%��y���21��R��#;�.���h�TEt�����o�6m Uh":}�dI�W�.*&�]8L�خ�X
������
$���tm�J�@��KQbyU��ihq5�I��a��Щ20p:��&޸�p	ml�ԝ��^�)�m�n�'�}8-6J�0��99��g=�Mt��#�0��^�����:1� �ݸ4����CQ���M�.9u7����#�$iu���ϟ�?H�$aͬd҅"�B�Q�ٱ���G��iH�b*��>�hZ����9I젽*��g�a�_@����U:fZ'�ڵTK&����=�rL5ͽ�g A�a�r
�=�L'Ȧ�k�P�ߔz6[Zo��)��A�WC4*��Fla	�"�Y�Ci�x�d	��*���=�(7�.k���K�p����12��B���[Y�O{*=:/f�	2?Mx$�`aE�O���.0
�0��ŜE��|�6)a�'z�)B�)�;�chx�V���  ��~�Q��g��� �DɅ&܀��� �/�k�9O� AXQ_(Bβ;���<�o� !�[��ݼ ��>��=�&��hc�������q$�zL R���'�w�I9,��|�������|�e��o�����i*x�g�	Ƈ�2g���;x��y����P�����n����E      �   �  x��X�R�8|6_�D�s�e�v!!{KmU��TQS0B����e��#۳A�R�Xn���15��fyrw�}��5˛����_�/��꧛�u��zjس�"��h�x����ol܈6��5T���"	��Sf�2ތGfB�2�YCC�^��p���/��>�P��)��jq��邃�2S#����!�a�JPOIp���U;f�4S�#�����duu�:mΞ�c�D�ONbT����VT�޶f��)��-�>ŇGo߼��l. 	�F;�Pt��K"�ԇ0�"_pIr*L�T������qK��רH�468�! ,!y�G,��xJ���$���L�&c�!� e�@!.�wI5�R����m�p[��[��H�p�k[נ��Gڽ �1�\�nO� ������, 7d��N&���.E���8/�]��`K��9��y��z�Hˮ��Cuڵ�ϼ�Ք��f'��S,�K��q�U�+����D�{#�S�Х"J4I�Ǩ���K�{Lɇ�[���80�m̠�?~s����������?~����z��|����o����������]ެ��]ެ�M5����>�/�'$O�!�76��$�C5eH5��t����g�g����\<S)���В��DS�c�Xq��A9&��]L�Q��5�0��q7G������a�Rf]��f閻�Ѵ]��%����#����)V�\Q�p� |Z���H��px��dϪF�Q�P-elDF���	��LIq��Z���B��f#�@��s���?����q)c��a�qA�L9X��ֶ��l�\c�b�v��E���fԫ��WP,'-r�����).��$�GFj f����~��*H��<?[�'�r����-�x
YJ1�R=�aխ�<��Y��*��Ȇ�_� b+	����Mu�YlՄ���M�T<���&_s��(�"���AQ)6�y���e��Nl6�6��xf&���U�3��<�H_���ew���Aڃ$����)s����3~&�0�m�Ŕ�X��`j��R�=I��rh"^0��h�ˉ|qɨ�/rD�pwb��
�с���1~������귽Ŗ/���;�'�l�j�jʬx� !����5�#�V�vO;��Ŋ���h���eus�W�¸[�b��L��Ͷ+<i�;�K�����K��S�0�� qG��3] �r�O�C�A��B	�Bݐ��
�T�R!t�$L��j����u��ͷ�<�6�Gf&�(*C�e�.u��������8:4H:��t�A��6����w)k�� �/�}����>�[E�m�R���p��Qj���^yn�,�U p��]��q��r2E�Tv\���k�m�&�ZO��!%�Rζ�!��B��y��S0X�ɚC=K�`!���&�Lh�Q	��?�Q����
�֡��7r2�(3?pt�T*YQI��;�r9BQ�>����� �<j�      �   �   x�}α�@��� ��핃�����	$�Q�^T����_˴��ó%<0��H�Q�Rfs��#sd#rB���W2̘�1EƖ����~#���$F��ô��)ƾ�������~��-�/�*��:����R���-�p�"�9�}W_ơ�h����҂��ȝ�s��5M(      �   �  x�}��q+!�g��4`��Q�鿎#�ė]�L?��gV�Q�B@,����Q�֑@]Ht�'D�� H�7�E�"��]W�?ݴKst�]$�h\�&Tא�# 7�w�=?�L��ava|��궋��k��j�n��Ywр��6�g���X�]4�:!��
2e����b�U�&Z}�MG
}�"�%vрbB���Ъ���$8��dԻ"8����D�ۚ������D�����ܳퟳ�zK�'��Jy7��2!����:�V��n�h@:!-7'�7wh�k�$C�SQʷ;c�) �6�`j�O/}~�@D�]�|���\�� g"���рڄڢϳ:o-͕o�ń��Ы�sÙ]��$C��ӹ��Wu��*ogc�M�V��j�uV��;���Ԫ�_+��y�z�����.�����8��)<v      �   W   x�3�,�tL����,.)J,�/�4202�5��52S00�2"#=c3C3S<R\F@s|Ss�RQ04�2��20�362�4��#����� 9�      �   �   x�U�K�� н3��!�K��4���~%[�
u,I��䣗?�>:䇶��T'�-�"e�_��*���!QtqM���陙�D�@o+q�R��j6zȩN���������F~k��i���8/$�g�M	�F��|+� <,�*��ƈ�LЋƓ���9�Ѹ"��n
��٘}`9��ur�Z����Cc����[��1o��g�̏p�8��r�m�k���;N�M.��Y�nv���y�7~���      �   Z   x�%�1
�0�z�
?`ؽ�p��6!��`��GA�n��i�q�����v�Y-��G+��T�8���/�3ȪX�Q�%�����Bxu,b      �   <   x�3��M-���4202�54�50�44 =$!C+c#+CK=cC<R\1z\\\ X�      �   v   x�e̻�0К���P%k�i����;ER�"�<���'�|��Bd��<�Ї�Q]�{����6��ZD'�B(p���(�i���.���5[,��M[�[\e���iJ��$`      �   �  x���Mo$7���_����Q$�ѷ��A��^,�������=ٿ��J]%�$U9�����E��Z�P�@MJ�~�|�<?����?�xxyy��x�J��;�[�3����H1��/?���O�^�v�@����܍sB�H�����۟�?�����yB�=�HP����C��g���N�����1)4���yAq�#f�#[R͞G ��qbt�xz�����?���������u;�ɲ����?���>����U
FRI�U ���~{y ����8mA�@�}'��v$U8pB���V�3�`��ƶ7�2��@���\td��Lz�h�b6cb�#	 s��1d	����!��Y�-F.P�A'�G�Z�I����̝E��9��RZ�p�JP$��C�Qct&&�yԪ�B��#&x�G��?~�py����Z�'ׁ��O�����Ά�3�H�2�<܄��L��V���ٱ����P��H0�;������m�#�*?����Z�tu�sޙ�,�@�'�o4�yj"˧��O���O�| P!-����J����������R����?/a�N�����d��"�$ �����Ҁi��j�6z$�y��'A�)uo��W�0�/��R"Ɍ�u�p����h�6�q{�S�0fC���zj
	��S����y$U&p�px��G�*��R�~�h}&������#�jɾ�\Y���;�?4�_(��`�?�fF�Iղ��A��~x�������?_�������|֒��}-�.����7�d RWRm�t|�;	5�4��I��ۍsr��9�[e���m��Y�#�M�d
�Ϧ�t������7&g�*��W4zM�^�Ov�����BJ)�N^Z_��LI��R#�}I���>�l{5��'b'�Џ��>yi~)���D�')��|�0�1DD���B�ww�dbK3�Q��0#��yR��Y���^
���!��P���3Z��X$�y�I�l��a���\"v�:�ZƋ�\�t����8������"vޚM�TH�%4xRB�b�O��������pS��,�lvX�5b�����u���+[ӳH�%Ғ+|�2�9Z�g��ti�ѣK(��'$կ���������jf�I�r��z���d�M%R7�%C�L=%�:o�x>
0��a-�I��*�7%�����ia�,IJ���0�����8���(M�2�=�`Ǽ�=�z>",RHK���K���,�df�T�#	t~bd�Ī͡Z�
��]�H��^+I�z���g��8�l���#tbv1�꼪�+	t�`}����2`$U�����0čYY���>�Û�p����?������,Uf�Fޗ�;����#�V���9��?�Tq�vi��2����������,ɹ��ͥ2�Hf�{��݂9�T n�:�57#�y*�J��3�0b��J�x��T�����Ui�ڑT^�ؘW�`2���e�Ж8D:�Iy=�*��]�{��M��0��yʦ;�����)�#�<M�xAzg��]i'���T!Pv�6`o���Y�fFveI庵�]i�� Rݥ��23G~3�T^iZ�]i�����g���fuaC�"�����A���\D3�����T^fژC����fK�C㑨w�Y���WC
I�,8s�?ʡi�$8����Es��KCKlF�d��-.fQ�S���c�#I������1�5���;Ӿ�-�Рv#����s#}�^e�r�8���Nl 1�b���U�T0��8b��R��4�h�BCkN/`~�|j��|Lj��ylH����J^Y�Q��,�)�J�wkTJߵ��%���י��(2�T��:�\^��6�y6f3/�TA؝+�4�	w$�v���W�L)���9Z��<�1�������-�����Pw�L�RzT�,f�5��J�y��7U��D��� ��#Y�"[W�T^����t�`ã$t�G��݆̈!�ʃS��E���m" ;�C2�0��<�����`�؞u�nP����B�$
)�D�R������Vct��d�`u]�`�><
�o�A|�wRCa�{,�݄G!]!B��q y� H�5��4,9��}���B,���1�{�D�K-׹~)̜|u�RH)D��}����!��W���Y��>��N�r#>--Ӄ~��h��!3�H��Z�H�h60M��o%�H�c�MFe�mf�JȖp/�͏m��@uu�V�FR�~Q6ݸ~wV�o���Ѐ���vJ���x�Gd��+�ތ@�&�h���]�乚���U� �3d�tқ�Qײ���U���?�Ó2#��M��MrG�'��m����3��%��RY,�����\�~��΍��!yB�/X�c�A2�WT�T�ST> �k��U8H�x��k�ӫ!��RHa��*zdCә�'
o����j��|ZH%��S�g���}:��5��=�di�*G*)+G�&�T�KX�`�����y�jh��p)$���l.�����)�f����A��"��L� ��"��UÇ@�8��~;���mu� ��S�� ��%�3k24J��;r	�� &��=�^^�v�{@UJ��p�*������i��!��ru�/$���G3:�Z�3s�F^Y�<1m��d����BJ�M�2��2��������L6�M2+$��4ӱ4���$�h,�3�G��g�pȢ$��T+$�$��G����Y�h}��R!4����*��)���'�Q]R�H8�p����x$�x$|���E��ūS�{�#�ozD�!f���^���<���֩u���S�]?��f�,R�W�\��!Flx��!b'+퓩+�BJ	JP|���Q�>�]�3�Tnx�ޚC\x�n,v"vR�5��"�zH��D����H�1X4.��XWD�T�"8w��#$���w<�Cl��U�z$̓��ľC
�Nכ�,w(f�,1��;<x���q X���/����Ր�]g!�"�-8�����\c�L+B�f���)�r�`���G�7��1n�����~�\�[>�4AFZ���8���������o��/߿|y��py|������fs�O�w*���v�h0V����R�6vnyД�hYa͊R����:<�$>I��5ve(�ɒo�P~�C���ʁ�����ì9�}9����c�*�A��v8f��pk����ӷ��¯���Rxrz$�wh�ޙ��[�7��v�
�1Lz�f�l�����B�Y+�TQĄK��l@ɸ�A���R�ͼ��z��tNR�D|=I�9��xoJ��ݠ�v��f��P~��1�Ja+I�]9�<o�#�*����86�"�����ZUv2�#�Z6��r�	�и?�q��y�I �Ty$�ӻ9Be�u(��p��i�k�v�M�r
)T*~��I��R����?�ּ�Sz[��z�
)��e����?8,V      �   �  x��YYo�J�}v��\�]��\e��̣�G}R�#c3���$�����k�HI���Uk����Jl�Cs��tB���P����A�?��=j�[��4f�bQ�˓Ds��V��R�p���=Nm��l$�vTTڣ��n륗��j����F�A�P<���:qK�7˵(�[d�~o.o/�� "�@{E�Dy
�C���%^ �#�'P��*\0ׄydV�F��J���`n���׍��(P* ����Pn|� ����9�f+͉�I�?�׺�F�jk��"��&�~#���#k;<�?�3@��/�o0 x��<�y�U�!�8k�f@؄<I��p}����m�LIB7�H�3;�rY��lrss�x�͕k|�%�\��)�v����ǦQm�{e$�>���uN��ks0�C�j����3)ғgyH��ė%"��UIH��+�n[��' �-����~���-pQ�M�PO���,O�%��X׾�����g+\�� �}�[dg�ͷ�O���:ڹ���۾6�>2*e�H�<~�	�_�p`3F8U�ǸE�}{��;j|ީ�2H�ay-�I�WU�1��wɹ��n��A@�W���ի������'����� ��B�DP@��(&qm��Q�WCRe\h@ѽ���dV"�&I��"4����땄��X���>L��sL����S���-���vA�ˬeι�+�-�!*�]9n�'��d�m�%z �j���@P�>H�xZ�J@�
�F�P���{$�� h�"ea}����!kjiF��g*�_�O��iv�6tY̍����u�3�^����I5���8�鮺z=<P˾"��)����aq[<�J�0/X����J��Hi@Z��P >�${���Ȏa��(f>_߳~@�22#�2�0��R�UĤ]�]��ͮ�OB��O�ռ#:��3ߴ��4�,����)Xf���=,�e����@qm���?I�;@�T	�@#_�<�*%c�x��ǆ���*�#FqJ,��>�ߐ�w~Hh���[`ʃ�z��������σ�]l��ue�kXz3�\�R-k^ت�cR(���޿G���Ý�40�8�Z2M)�LŊ.2�;0�S��W�n��2�ъ�!?O��X�����HVM�ܮ�5\�|�9ō�0� _�z�����Y0��9��s\�6��*9��H y
S}��KT��HP��!l��yZ*oz��"�[��n��P\���@6�$����ug�_���I�bX�Z7*�F�t՜�v��Q�*�r�u����Nsj�i�V����';���N�<e*ER�'�y��*ePH�Iq��c��<���'X��!�����*.zC��5f�Rk�S^wN����D�"�n�����⦦���mL�yr�!O���jW)W�>�z���-U��B���T2D#�}�.Xv��5�`&8$�S�ὅ�l����*28BO �c�-�m�� ���PW�jCw�﮷��n种[�js]�{�ּG}�74��y�򲻩�y���kBZl�r�Q)��-	���y�f���c� !��%��H�Ac��
�q�^v�j�*�N��s�q�F����Tw�n�E�H���r��{�}�e��Ư6�h�nb�����f�h��M1�}Z�-V���2mr �G����@zn��FL��"�:��������>�3�X�x�J�u���;��>����ส���q0���W�F�d��b�S�u���h��i|�J`Ľ��[�܀0Oq�����V$HD�SY�G=۔���y��>DC���Aj���h78��odY�b]�W����aR�<��	�x9����g�[�M��`��r�<�>���^׵^7j����j��7;gt�S������o<K�A�
GҋC �M��?v��~{}*�7Jx?��G<�&[VK�����j�S��k�P#̊��Y(��}����t�t/)����>�>A`�b�v<����<*�_'nu���ܵ<D*� }f�tc)*֤���gIQ ������^�f��Tz���C�%�ʟq��m�����I�:�f'Ғs�ǋsg�K�A��΢}Z��W�}��7Ws=�+{Xd��}���RPnG�������i��K�e~���?��>�a� ��TRC�H�z�Jz�:MtLӶ>�[l��W�E�e��s��G��k���l��\����Z��4��z-�r!���rw��Gm�:��DOTh/��4\5v����Ֆ���n����
f�|*�5��yb� �
�H?TZ҆|l����?7x��1��@m3�B'ny�ͱ\���[�L@J��箍�Y������:;���j��Qcs���a��� 
V�q ��w���c�/�]*ڶ�x�]��ק��t�A��Y}�c�^���V�+����4�R(����MӺ���H��:���>ZM��IX|�}�Ǭ�j��zҽ,��ь���g4��Zb"�Rc�����P֌
� �����8oII�(�X�>���"?(E���"��16�Yh�N�����[k�&A80�L���0+�E�K�a<^���\�<�>C�q���W:�_�9��a���]q 4���H�%A�jR:��a�z�]�+�#!���?V����� �Yx}-R{����w�QgX�an�Z���_N��e�7��İ4HAg�BT}�Č���v\;��E�u�{�ʺ�1����,U���>�%�c��!���u�cay���c�p���0�i�~�U�Ѻ���J�P�-����gPu�-�d:l�MPDk��Z�Pe�=6�a�aX��A�:lz�Q�b���8#���Hۄ&�f�c!-'T��
��]�-'9�(�~Q��f��
�Tno 8��5���)$��
�����G���`�4�^�Lo��<`�O'����r�6���f�q���l��+�Di��c@4�� I)An-�iLq��`Fݷݥ�$�/Ō>b g}��7�xs4��D���5���Z���f7jU+���.���v#�%�"�s0���|�}����o��פ�������n�x*����
�B�(%\���!�ݷ�S��㥘�?x�GmH�n(fYΆ� �S����qs%��λ�C��V�|���l�A�N녇�~�����sm���|;Cs��G���xP���%�m��E��8]br�W\�ڎ0����3�5��#T��n򒡙��8���.��^.9��^}�4�͊����`>�Q�6 �h�vbm^T,�q��4��`��a���k���(�j�����eB��S,�hD��3@)'�������:q��7�Zʬ�ǝ��e�-��hhJl��>
�Ӂ<w ���;m?ɩ�^g�r(��pU�V����
�gYE�+�H�3_���_��ѩ����:)�Im̆�:���P��� ����[�y@U��D�b��Le`��W�@��d�pY(��$$C���������      �   :  x����N1��ݧ�h�Og���('����&q�B�Ƿt�޾�_g~��9� n�m��z������[<Da�0C�C�$���d(<E=����鴟/��n����!iu�k7����lֻݺ��Ջ83z, c2�'c����q�0��&h�A�^-i})K���H+c1��MU+?�C�ֵ�KV��+FL<F��������x<6R�r$�im}�2@��G�8�bM�s%S��I����� M���U�e5��o���e�Ǥ�:Eev! �������s�#�A�����B�M	&Ϙ��C��M�|��c     