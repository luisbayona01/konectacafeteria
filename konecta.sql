PGDMP          9    	            {            konecta    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    752278    konecta    DATABASE     c   CREATE DATABASE konecta WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE konecta;
                postgres    false            �            1259    752280 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    752279    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    210                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    209            �            1259    752287 	   productos    TABLE     w  CREATE TABLE public.productos (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    referencia character varying(255) NOT NULL,
    precio integer NOT NULL,
    peso integer NOT NULL,
    categoria character varying(255) NOT NULL,
    stock integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    752286    productos_id_seq    SEQUENCE     y   CREATE SEQUENCE public.productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    212                       0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    211            �            1259    752296    ventas    TABLE       CREATE TABLE public.ventas (
    id bigint NOT NULL,
    producto_id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario integer NOT NULL,
    total integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    752295    ventas_id_seq    SEQUENCE     v   CREATE SEQUENCE public.ventas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ventas_id_seq;
       public          postgres    false    214            	           0    0    ventas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;
          public          postgres    false    213            f           2604    752283    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            g           2604    752290    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            h           2604    752299 	   ventas id    DEFAULT     f   ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);
 8   ALTER TABLE public.ventas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �          0    752280 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    210   �       �          0    752287 	   productos 
   TABLE DATA           s   COPY public.productos (id, nombre, referencia, precio, peso, categoria, stock, created_at, updated_at) FROM stdin;
    public          postgres    false    212                     0    752296    ventas 
   TABLE DATA           k   COPY public.ventas (id, producto_id, cantidad, precio_unitario, total, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �       
           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 2, true);
          public          postgres    false    209                       0    0    productos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.productos_id_seq', 3, true);
          public          postgres    false    211                       0    0    ventas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.ventas_id_seq', 2, true);
          public          postgres    false    213            j           2606    752285    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    210            l           2606    752294    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    212            n           2606    752301    ventas ventas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    214            o           2606    752302 !   ventas ventas_producto_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_producto_id_foreign FOREIGN KEY (producto_id) REFERENCES public.productos(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_producto_id_foreign;
       public          postgres    false    214    3180    212            �   H   x�3�4202�7��74�724152�O.JM,I�/(�O)M.�/�/IL�I�4�2BWlbS\��W��P���� �      �   r   x�3�tNL;�R����(��8��58�����������Ԁ�)5)3%���ȏ�".#N�����ļN� �js���gPjA~qIj�ᵉ��0�Ɯ%�y%��!�x���qqq ȋ(          +   x�3�4�4�4450�41~@�e�i�i�i��c���� �j�     