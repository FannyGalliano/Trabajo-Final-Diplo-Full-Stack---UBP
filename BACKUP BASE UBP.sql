PGDMP                      |            UBP    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    UBP    DATABASE     |   CREATE DATABASE "UBP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE "UBP";
                postgres    false            �            1259    16466    Libros    TABLE     �   CREATE TABLE public."Libros" (
    id integer NOT NULL,
    titulo character varying,
    descripcion character varying,
    id_usuario integer
);
    DROP TABLE public."Libros";
       public         heap    postgres    false            �            1259    16465    Libros_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libros_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Libros_id_seq";
       public          postgres    false    218            �           0    0    Libros_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Libros_id_seq" OWNED BY public."Libros".id;
          public          postgres    false    217            �            1259    16453    Usuarios    TABLE     �   CREATE TABLE public."Usuarios" (
    id integer NOT NULL,
    nombre character varying,
    email character varying,
    contrasena character varying
);
    DROP TABLE public."Usuarios";
       public         heap    postgres    false            �            1259    16452    Usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuarios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Usuarios_id_seq";
       public          postgres    false    216            �           0    0    Usuarios_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Usuarios_id_seq" OWNED BY public."Usuarios".id;
          public          postgres    false    215                        2604    16469 	   Libros id    DEFAULT     j   ALTER TABLE ONLY public."Libros" ALTER COLUMN id SET DEFAULT nextval('public."Libros_id_seq"'::regclass);
 :   ALTER TABLE public."Libros" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                       2604    16456    Usuarios id    DEFAULT     n   ALTER TABLE ONLY public."Usuarios" ALTER COLUMN id SET DEFAULT nextval('public."Usuarios_id_seq"'::regclass);
 <   ALTER TABLE public."Usuarios" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16466    Libros 
   TABLE DATA           G   COPY public."Libros" (id, titulo, descripcion, id_usuario) FROM stdin;
    public          postgres    false    218   �       �          0    16453    Usuarios 
   TABLE DATA           C   COPY public."Usuarios" (id, nombre, email, contrasena) FROM stdin;
    public          postgres    false    216   '       �           0    0    Libros_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Libros_id_seq"', 22, true);
          public          postgres    false    217            �           0    0    Usuarios_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Usuarios_id_seq"', 4, true);
          public          postgres    false    215            (           2606    16473    Libros Libros_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Libros_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Libros" DROP CONSTRAINT "Libros_pkey";
       public            postgres    false    218            "           2606    16460    Usuarios Usuarios_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       public            postgres    false    216            )           1259    16480    ix_Libros_descripcion    INDEX     S   CREATE INDEX "ix_Libros_descripcion" ON public."Libros" USING btree (descripcion);
 +   DROP INDEX public."ix_Libros_descripcion";
       public            postgres    false    218            *           1259    16479    ix_Libros_id    INDEX     A   CREATE INDEX "ix_Libros_id" ON public."Libros" USING btree (id);
 "   DROP INDEX public."ix_Libros_id";
       public            postgres    false    218            +           1259    16481    ix_Libros_titulo    INDEX     I   CREATE INDEX "ix_Libros_titulo" ON public."Libros" USING btree (titulo);
 &   DROP INDEX public."ix_Libros_titulo";
       public            postgres    false    218            #           1259    16464    ix_Usuarios_contrasena    INDEX     \   CREATE UNIQUE INDEX "ix_Usuarios_contrasena" ON public."Usuarios" USING btree (contrasena);
 ,   DROP INDEX public."ix_Usuarios_contrasena";
       public            postgres    false    216            $           1259    16461    ix_Usuarios_email    INDEX     R   CREATE UNIQUE INDEX "ix_Usuarios_email" ON public."Usuarios" USING btree (email);
 '   DROP INDEX public."ix_Usuarios_email";
       public            postgres    false    216            %           1259    16463    ix_Usuarios_id    INDEX     E   CREATE INDEX "ix_Usuarios_id" ON public."Usuarios" USING btree (id);
 $   DROP INDEX public."ix_Usuarios_id";
       public            postgres    false    216            &           1259    16462    ix_Usuarios_nombre    INDEX     T   CREATE UNIQUE INDEX "ix_Usuarios_nombre" ON public."Usuarios" USING btree (nombre);
 (   DROP INDEX public."ix_Usuarios_nombre";
       public            postgres    false    216            ,           2606    16474    Libros Libros_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros"
    ADD CONSTRAINT "Libros_id_usuario_fkey" FOREIGN KEY (id_usuario) REFERENCES public."Usuarios"(id);
 K   ALTER TABLE ONLY public."Libros" DROP CONSTRAINT "Libros_id_usuario_fkey";
       public          postgres    false    216    218    4642            �   L  x�m��N�@��ӧ�	k~�;�@BD	&����J�Lg�;Sx�.\�}1�P�v��9�9s�W���.����E�
�}��5���G4t�e����y�K�՚ݖ��\7�H�:P!#��5T�:hb�΃cX���?Y�Z*�6�Wo�Y��	0��~7�-q��
�-�$Dt��9y@c��Z7�1l��̢}�c->,�ED�bq��R+�5q��!���M.�$�jF��1^(;��5'�hi7ý.D<j�%�?�FK��Sκ
^�լ�α���qb�uդ�2�Z��=¶n�PR��P�K#o\f������I�� �'�      �   �   x�M�;�0k�>A�����
N@G��u"K�-�Rp{�nFo�@\w�ס ��� �iݰ���& @�ߢ��I2Ls��-k`�Z����3���^q�ޟꂭU�C,o]�v|��(�R0aԁ��	i6K���MR���6�     