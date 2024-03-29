toc.dat                                                                                             0000600 0004000 0002000 00000006430 14356673372 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       6                     {            eshopdb    12.13    12.13                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16839    eshopdb    DATABASE     �   CREATE DATABASE eshopdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE eshopdb;
             
   eshopadmin    false                    0    0    DATABASE eshopdb    COMMENT     T   COMMENT ON DATABASE eshopdb IS 'Database for e-commerce portfolio project (eShop)';
                
   eshopadmin    false    2831         �            1259    16925    session    TABLE     �   CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.session;
       public         heap 
   eshopadmin    false         �            1259    16845    users    TABLE       CREATE TABLE public.users (
    password character varying(256) NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(128) NOT NULL,
    id uuid NOT NULL,
    cart json,
    likes json
);
    DROP TABLE public.users;
       public         heap 
   eshopadmin    false         	          0    16925    session 
   TABLE DATA           4   COPY public.session (sid, sess, expire) FROM stdin;
    public       
   eshopadmin    false    203       2825.dat           0    16845    users 
   TABLE DATA           [   COPY public.users (password, first_name, last_name, username, id, cart, likes) FROM stdin;
    public       
   eshopadmin    false    202       2824.dat �
           2606    16900    users email_unique 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT email_unique UNIQUE (username);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT email_unique;
       public         
   eshopadmin    false    202         �
           2606    16932    session session_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public         
   eshopadmin    false    203         �
           2606    16905    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         
   eshopadmin    false    202         �
           1259    16933    IDX_session_expire    INDEX     J   CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);
 (   DROP INDEX public."IDX_session_expire";
       public         
   eshopadmin    false    203                                                                                                                                                                                                                                                2825.dat                                                                                            0000600 0004000 0002000 00000000351 14356673372 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8HPEEly_ss6R1vZROFcdFvF8pXmAnYUY	{"cookie":{"originalMaxAge":2592000000,"expires":"2023-02-07T21:34:00.472Z","httpOnly":true,"path":"/"},"flash":{},"passport":{"user":"d2dd2b04-e484-4ad8-9e3c-23f8da9e822b"}}	2023-02-07 18:19:30
\.


                                                                                                                                                                                                                                                                                       2824.dat                                                                                            0000600 0004000 0002000 00000037442 14356673372 0014303 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5779fd949581f3ac6a7eb08356c348261b9f52260b0c6c4d4a71305434e94826e79a249b90159415a24d1b12841545f6761bc8e580b8ef9981ac5fc70416ac513c1a46263895184467fe9bf244748de4	Sam	Schiller	schiller.saroeum@gmail.com	50fb0fc3-b10c-436b-aa5f-335483397c60	{"1551069":{"sku":"1551069","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1551/1551069_sa.jpg","name":"Apple - USB Cable Adapter - White","price":21.99,"quantity":1,"itemTotal":"21.99"},"6167309":{"sku":"6167309","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6167/6167309_ra.jpg","name":"Beats by Dr. Dre - Beats Studio³ Wireless Noise Cancelling Headphones - Porcelain Rose","price":349.99,"quantity":2,"itemTotal":"699.98"},"6221036":{"sku":"6221036","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6221/6221036_ra.jpg","name":"HP - Pavilion Desktop - Intel Core i5 - 12GB Memory - 1TB Hard Drive + 128GB Solid State Drive - Natural Silver/Brushed Hairline Pattern","price":779.99,"quantity":1,"itemTotal":"779.99"},"6257894":{"sku":"6257894","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6257/6257894_sa.jpg","name":"Sharp - 32&quot; Class - LED - 720p - Smart - HDTV Roku TV","price":149.99,"quantity":1,"itemTotal":149.99},"6265511":{"sku":"6265511","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6265/6265511_sa.jpg","name":"LG - 49&quot; Class - LED - LK5700 Series - 1080p - Smart - HDTV","price":329.99,"quantity":1,"itemTotal":329.99}}	[{"sku":"5577837","name":"Beats by Dr. Dre - Powerbeats³ Wireless - White","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5577/5577837_ra.jpg","regularPrice":199.99,"customerReviewAverage":4.5,"customerReviewCount":24907,"liked":true,"index":0},{"sku":"6288362","name":"Google - Chromecast (Latest Model) Streaming Media Player - Charcoal","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6288/6288362_sa.jpg","regularPrice":35,"customerReviewAverage":4.7,"customerReviewCount":4043,"liked":true,"index":1},{"sku":"1551069","name":"Apple - USB Cable Adapter - White","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1551/1551069_sa.jpg","regularPrice":21.99,"customerReviewAverage":4.7,"customerReviewCount":2467,"liked":true,"index":3},{"sku":"2198013","name":"ZAGG - Screen Protector for Apple® iPod® touch 6th Generation - Clear","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/2198/2198013_ra.jpg","regularPrice":38.99,"customerReviewAverage":4.8,"customerReviewCount":524,"liked":true,"index":4},{"sku":"5008717","name":"Sony - Walkman NW-WS413 4GB* Wearable MP3 Player - Black","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5008/5008717_sa.jpg","regularPrice":99.99,"customerReviewAverage":4.4,"customerReviewCount":93,"liked":true,"index":5},{"sku":"4900950","name":"Apple - iPod touch® 32GB MP3 Player (7th Generation - Latest Model) - Space Gray","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4900/4900950_sa.jpg","regularPrice":199.99,"customerReviewAverage":4.6,"customerReviewCount":368,"liked":true,"index":8},{"sku":"6277347","name":"Blue Microphones - Yeticaster","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6277/6277347_sa.jpg","regularPrice":199.99,"customerReviewAverage":4.7,"customerReviewCount":197,"liked":true,"index":9},{"sku":"5963805","name":"Blue Microphones - Yeti USB Multi-Pattern Electret Condenser Microphone","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5963/5963805_sa.jpg","regularPrice":129.99,"customerReviewAverage":4.7,"customerReviewCount":1829,"liked":true,"index":10},{"sku":"6299667","name":"Blue Microphones - Blackout Yeti USB Microphone + $50 Ubisoft Discount Code","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6299/6299667_sa.jpg","regularPrice":139.99,"customerReviewAverage":4.4,"customerReviewCount":149,"liked":true,"index":11},{"sku":"4835397","name":"Dynex™ - Direct AC USB Charger - Black","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4835/4835397_sa.jpg","regularPrice":9.99,"customerReviewAverage":3.9,"customerReviewCount":25,"liked":true},{"sku":"5008721","name":"Sony - Walkman NW-E393 4GB* MP3 Player - Black","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5008/5008721_sa.jpg","regularPrice":64.99,"customerReviewAverage":4,"customerReviewCount":54,"liked":true},{"sku":"6167309","name":"Beats by Dr. Dre - Beats Studio³ Wireless Noise Cancelling Headphones - Porcelain Rose","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6167/6167309_ra.jpg","regularPrice":349.99,"customerReviewAverage":4.7,"customerReviewCount":6147,"liked":true},{"sku":"6265511","name":"LG - 49&quot; Class - LED - LK5700 Series - 1080p - Smart - HDTV","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6265/6265511_sa.jpg","regularPrice":329.99,"customerReviewAverage":4.6,"customerReviewCount":363,"liked":true}]
5aa6a6b6f187e8d5f97cc20e1dd582c42462db68524dea7fb594074269da4ecd90f95754caa78322c34fc9db5bff2ace900505749375520de586242c780b461107eb1b25b8e51c3105507d233c7fa0c3	Justin	Schiller	schiller.justin@gmail.com	7019fc18-8daf-443e-a17c-230bde6020f4	{"1004622":{"sku":"1004622","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1004/1004622_sa.jpg","name":"Sniper: Ghost Warrior Standard Edition - Xbox 360","price":19.99,"quantity":1,"itemTotal":19.99},"1301048":{"sku":"1301048","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1301/1301048_sa.jpg","name":"Mario Kart 8 Pack 1 + Pack 2 - Nintendo Wii U [Digital]","price":11.99,"quantity":2,"itemTotal":23.98},"1346014":{"sku":"1346014","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1346/1346014_sa.jpg","name":"Wolfenstein: The New Order Standard Edition - Xbox One","price":19.99,"quantity":1,"itemTotal":19.99},"1454123":{"sku":"1454123","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1454/1454123_sa.jpg","name":"Just Cause 3 Standard Edition - PlayStation 4","price":19.99,"quantity":2,"itemTotal":39.98},"3025647":{"sku":"3025647","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/3025/3025647_sa.jpg","name":"Directed Electronics - Micro Magnetic Switch - Black","price":10.99,"quantity":1,"itemTotal":10.99}}	[{"sku":"1094314","name":"DreamWorks 2-in-1 Party Pack with Shrek's Carnival Craze and Madagascar Kartz - Nintendo DS","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1094/1094314_sa.jpg","regularPrice":19.99,"customerReviewAverage":4.1,"customerReviewCount":8,"liked":true,"index":0},{"sku":"1367368","name":"Captain Toad: Treasure Tracker - Nintendo Wii U [Digital]","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1367/1367368_sa.jpg","regularPrice":39.99,"customerReviewAverage":4.7,"customerReviewCount":3,"liked":true,"index":1},{"sku":"1454123","name":"Just Cause 3 Standard Edition - PlayStation 4","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1454/1454123_sa.jpg","regularPrice":19.99,"customerReviewAverage":4.4,"customerReviewCount":979,"liked":true,"index":2}]
6ffc020dcb8f8264bed54044e9c44a7787f9b9e72df6b5c7f49b5259227a1a8936ffc22c0199cc26a08ba67a15618c8f558ffd4b2826f74666f45e13078c94bce59a92cf74bd6cefb804454e3eadba05	Jared	Schiller	schiller.jared@gmail.com	e42e4f7e-41f4-4b9a-9c7b-631b2076b8d2	{}	[]
65831c180f11cd702cd1c374e1d4ad1cb92029ec26067484ba010eb317dcc13044e828d8c7c9ca43d306797b931ace3211810d2ef3eef8ab91baacaa81ea6d459d15e5439515592598079684e9c2c8b6	Sam	Schiller	schiller.sam@gmail.com	0ec51e2d-a9ca-44a4-9740-e2123da4f75c	{}	[]
fc17b9215ec65ce7d58a24152358da3d19e3786d2c357181729a0e636393eff0f8c9b931f792b64890f4507e11508981b8f85cd48f0868eb32779d42407b98deafca7c52b6d7240a3013b0a9ae959da5	Ryan	Schiller	schiller.ryan@gmail.com	6e38878f-a5fa-4eaf-a1fd-5ffbb0cec7ae	{}	[]
42931fcb4034fe51e6ab1a9aed0c1a7638197227b0b9145144f089235582f89e380c92e111be8311b0a0b095abf2af3e4d32d43413fa4073a6b6b17a3a438b5180d79d6f542691fdf03455e3168f9d59	Sam	Iam	iamsam@gmail.com	31c1c13e-4165-41d2-b4d4-36634417fe3c	\N	\N
743cebcafd6fa4b865f17f030947664ea890d894bde0a05cef6416a9aa63c4a7681874d7760c9d7cbbb85481ec74dda226470ff086d6726e19581437d5307313f888c140a88ef25ad4ddfda5a6f0bfe7	Penelope	Schiller	schiller.penelope@gmail.com	e8663610-63e8-40ad-9865-ff77e389da0b	{"2198013":{"sku":"2198013","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/2198/2198013_ra.jpg","name":"ZAGG - Screen Protector for Apple® iPod® touch 6th Generation - Clear","price":38.99,"quantity":1,"itemTotal":38.99},"5091315":{"sku":"5091315","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5091/5091315_sa.jpg","name":"Canon - EOS Rebel T6 DSLR Two Lens Kit with EF-S 18-55mm IS II and EF 75-300mm III lens - Black","price":399.99,"quantity":2,"itemTotal":799.98},"6179727":{"sku":"6179727","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6179/6179727_sa.jpg","name":"Sony - 55&quot; Class - LED - X900F Series - 2160p - Smart - 4K Ultra HD TV with HDR","price":1049.99,"quantity":2,"itemTotal":2099.98},"6202105":{"sku":"6202105","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6202/6202105_sa.jpg","name":"Samsung - 32&quot; Class - LED - M4500 Series - 720p - Smart - HDTV","price":179.99,"quantity":3,"itemTotal":539.97},"6211009":{"sku":"6211009","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6211/6211009_sa.jpg","name":"Toshiba - 49&quot; Class - LED - 1080p - Smart - HDTV - Fire TV Edition","price":329.99,"quantity":1,"itemTotal":329.99},"6211105":{"sku":"6211105","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6211/6211105_sa.jpg","name":"LG - 55&quot; Class - LED - SK8000 Series - 2160p - Smart - 4K UHD TV with HDR","price":649.99,"quantity":2,"itemTotal":1299.98},"6293774":{"sku":"6293774","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6293/6293774_sa.jpg","name":"VIZIO - 24&quot; Class - LED - D-Series - 720p - Smart - HDTV","price":119.99,"quantity":1,"itemTotal":119.99}}	[{"sku":"5091315","name":"Canon - EOS Rebel T6 DSLR Two Lens Kit with EF-S 18-55mm IS II and EF 75-300mm III lens - Black","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5091/5091315_sa.jpg","regularPrice":399.99,"customerReviewAverage":4.8,"customerReviewCount":5305,"liked":true,"index":0},{"sku":"5228207","name":"SanDisk - Clip Jam 8GB* MP3 Player - Black","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5228/5228207_sa.jpg","regularPrice":34.99,"customerReviewAverage":4.3,"customerReviewCount":2268,"liked":true,"index":1},{"sku":"1551069","name":"Apple - USB Cable Adapter - White","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1551/1551069_sa.jpg","regularPrice":21.99,"customerReviewAverage":4.7,"customerReviewCount":2467,"liked":true,"index":2},{"sku":"6560122","name":"Griffin - Black Survivor Skin Protective Case for iPod touch (5th/6th gen.) - black","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6560/6560122_sa.jpg","regularPrice":19.99,"customerReviewAverage":4.6,"customerReviewCount":964,"liked":true,"index":3},{"sku":"2198013","name":"ZAGG - Screen Protector for Apple® iPod® touch 6th Generation - Clear","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/2198/2198013_ra.jpg","regularPrice":38.99,"customerReviewAverage":4.8,"customerReviewCount":524,"liked":true,"index":4},{"sku":"5707505","name":"Apple - iPod touch® 128 GB MP3 Player (6th Generation) - Pink","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5707/5707505_sa.jpg","regularPrice":299.99,"customerReviewAverage":4.7,"customerReviewCount":1551,"liked":true,"index":5}]
77f834eb529085bfc2a37409e24d3f230c353c5bfcd1fa1331e285540c212bf30709065f1c465f74b9ecab8acbdd6ded82ed2742ac65056f46b898cf93651916e3160c411525bb750f4f6020aef576af	test1	test1	test1@gmail.com	74dba6bd-a943-4817-b40f-302125bb0ca1	\N	\N
c5c2ea522d1e5fe3bac9c5ac1ac79250135d5514b2baeac6b120572a29355c542fc844ef029230531dfe5d8da71b9e2731999e62042311883171074528e98eb9c1d117dcd826f5be54cdc3e36ce1be22	Bob	Smith	smith.bob@gmail.com	2fc76937-301d-4cd0-a7ec-ab73c9fce309	{}	[]
08f05fd1602b4fda51929215d1b6a4e26a9410c235e50a8053da50dc57f7d8bd50282c60764bb7c8417717ee6926c382b7bd6e57a31b59ef7a8c1f43c1af9a90408f9d114bba7f9ffd5a2e25ab1dd6b0	test4	test4	test4@gmail.com	fd02a3d0-1fe3-4f71-8a4b-6cfcbdbfcd7f	{}	[]
004b115aeabacb5d4a7f9ea9ea2fe4f00b5622ee6d29fa1230fedf40308254cc7f807bd60a8a74472238bf019fb5049342fa4f80905067880aa7b7160f5bd3c04a778b0b305e81bf65fa2800e7e3527b	anime	anime	anime@gmail.com	11f5bddf-d379-460f-90c0-fef7bce507f1	{}	[]
25c8bbd1e695aa51584756722876eb9d204d0dd978a46f884618a429c0274c1bfe954382d6010abbdbe92296f6f748c5f12d9e7d88a6fb7fabceef43e0f4f91024e62e8bde0a272952b720580b36ec6f	test	test	test@test.com	9676aa32-ffdc-404a-9b11-eeb1a64c624c	{}	[]
932a839165f777eff8973020029d81ed785f66e5089e38dc30d8e83b69939f7d1717c4e31f388b2730d2d206f1871568d594bed6395025fbf5a9bfde4f837ed54e9a373dee519347b1371b709042a6ea	hello	there	there.hello@gmail.com	ef94fc27-4483-4d2e-b0b6-1bf2ff7992a9	{}	[]
5f11486cb0f8b4fc175c6ec6a00c6e18286f46873c4e2fc483a90eb10f1488258868c2d9c3309529dc413b0227f6c5447c35b47a3691a1d15add74e8b238c4598a6cc73233abffebbe25237b4d20b98f	Stephanie	Schiller	schiller.stephanie@gmail.com	3368690a-9434-4a9c-9c3b-3f916f460b8f	{"1004622":{"sku":"1004622","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1004/1004622_sa.jpg","name":"Sniper: Ghost Warrior Standard Edition - Xbox 360","price":19.99,"quantity":1,"itemTotal":19.99},"1139003":{"sku":"1139003","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1139/1139003_ra.jpg","name":"Kodak - PixPro SP360 HD Action Camera Aqua Sport Pack - Yellow","price":270.99,"quantity":2,"itemTotal":541.98},"1304783":{"sku":"1304783","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1304/1304783_sa.jpg","name":"The Original Mono Recordings [LP] - VINYL","price":199.99,"quantity":2,"itemTotal":399.98},"1420556":{"sku":"1420556","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1420/1420556_sa.jpg","name":"Barska - Standard Keypad Depository Safe - Black","price":306.99,"quantity":1,"itemTotal":306.99},"1655416":{"sku":"1655416","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1655/1655416_sa.jpg","name":"CORSAIR - Vengeance Pro Series 16GB (2PK x 8GB) 1.6 GHz DDR3 DIMM Desktop Memory Kit - Multi","price":99.99,"quantity":2,"itemTotal":199.98},"1997422":{"sku":"1997422","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1997/1997422_sa.jpg","name":"JVC - Gumy Plus Wired Earbud Headphones - Red","price":11.99,"quantity":1,"itemTotal":11.99},"4900946":{"sku":"4900946","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4900/4900946_sa.jpg","name":"Apple - iPod touch® 32GB MP3 Player (7th Generation - Latest Model) - Pink","price":199.99,"quantity":1,"itemTotal":199.99}}	[{"sku":"1304783","name":"The Original Mono Recordings [LP] - VINYL","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/1304/1304783_sa.jpg","regularPrice":199.99,"customerReviewAverage":5,"customerReviewCount":3,"liked":true,"index":0},{"sku":"4766300","name":"Samsung - Geek Squad Certified Refurbished ATIV Book 9 Spin 13.3&quot; Touch-Screen Laptop - Intel Core i7 - 8GB Memory - 256GB SSD - Pure Black","image":"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4766/4766300_sa.jpg","regularPrice":1199.99,"customerReviewAverage":3.8,"customerReviewCount":4,"liked":true,"index":2}]
02082551d1074e127ae3d51ae6e33c42722246eeddb91677559890589fc7d96a6f5b85a3e12798163af44bd1343ab8d4209969887a3e72a89b16d3a1fa1e08c335502e5dcb96e6a6d929838fb273e4b7	Billy	Boy	billy.boy@gmail.com	d2dd2b04-e484-4ad8-9e3c-23f8da9e822b	\N	\N
\.


                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000006426 14356673372 0015414 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.13
-- Dumped by pg_dump version 12.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE eshopdb;
--
-- Name: eshopdb; Type: DATABASE; Schema: -; Owner: eshopadmin
--

CREATE DATABASE eshopdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE eshopdb OWNER TO eshopadmin;

\connect eshopdb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE eshopdb; Type: COMMENT; Schema: -; Owner: eshopadmin
--

COMMENT ON DATABASE eshopdb IS 'Database for e-commerce portfolio project (eShop)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: session; Type: TABLE; Schema: public; Owner: eshopadmin
--

CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.session OWNER TO eshopadmin;

--
-- Name: users; Type: TABLE; Schema: public; Owner: eshopadmin
--

CREATE TABLE public.users (
    password character varying(256) NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(128) NOT NULL,
    id uuid NOT NULL,
    cart json,
    likes json
);


ALTER TABLE public.users OWNER TO eshopadmin;

--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: eshopadmin
--

COPY public.session (sid, sess, expire) FROM stdin;
\.
COPY public.session (sid, sess, expire) FROM '$$PATH$$/2825.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: eshopadmin
--

COPY public.users (password, first_name, last_name, username, id, cart, likes) FROM stdin;
\.
COPY public.users (password, first_name, last_name, username, id, cart, likes) FROM '$$PATH$$/2824.dat';

--
-- Name: users email_unique; Type: CONSTRAINT; Schema: public; Owner: eshopadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT email_unique UNIQUE (username);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: eshopadmin
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: eshopadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: IDX_session_expire; Type: INDEX; Schema: public; Owner: eshopadmin
--

CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          