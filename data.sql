--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: allergens; Type: TABLE DATA; Schema: public; Owner: openwaiterai
--

COPY public.allergens (id, name) FROM stdin;
161	Cereals containing gluten
162	Milk and dairy products (including lactose)
163	Egg products
164	Soybeans and products
165	Mustard and products
166	Sulfur dioxide and sulfites
167	Sesame seed products
168	None
169	None specified
170	Sesame seeds and products
171	Eggs and egg products
172	Tree nuts (hazelnuts)
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: openwaiterai
--

COPY public.categories (id, name, description) FROM stdin;
11	Chicken	Various chicken dishes.
12	Grilled Chicken	Delicious grilled chicken options.
13	Red Meats	A variety of red meat dishes.
14	Meatballs	Meatball specialties from the menu.
15	Salads	Fresh and healthy salads.
16	Kids Menu	Special dishes for kids.
17	Soups	A selection of warm and hearty soups.
18	Starters	Appetizers to begin your meal.
19	Desserts	Sweet treats to end your meal.
20	Drinks	Refreshing beverages.
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: openwaiterai
--

COPY public.ingredients (id, name) FROM stdin;
71	Chicken
72	Salsa sauce
73	California pepper
74	Mexican beans
75	Indian curry
76	Spicy sauce
77	Diced onions
78	Fresh cultivated mushrooms
79	Chicken breast pieces
80	Roasted eggplant
81	Strained yogurt
82	Pearl onions
83	Fresh mushrooms
84	California peppers
85	Specially marinated chicken
86	Assorted spices
87	Smoky barbecue sauce
88	Spices
89	Curry sauce
90	Margarita sauce
91	Fresh thyme from Mount Ida
92	Kashar cheese
93	Sweet chili peppers
94	Special hot sauce
95	Marinated chicken breast
96	Café de Paris sauce
97	Buffalo sauce
98	Peppers from various regions
99	Special spices
100	Extra hot sauce
101	Thyme sauce
102	Cream
103	Specially marinated chicken thigh pieces
104	Beğendi (eggplant purée)
105	Diced chicken
106	Roasted sweet peppers
107	Special marinade
108	Creamy mushroom sauce
109	Specially marinated chicken pieces
110	Cheddar cheese
111	Fresh rosemary
112	Special sauce
113	Pasta with special sauce
114	Fresh Mediterranean salad
115	Marinated chicken thigh pieces
116	Sriracha sauce (sun-dried red peppers, garlic)
117	Chicken pieces
118	Chef's secret sauce
119	Boneless chicken chop
120	Special Tavuk Dünyası sauces
121	Boneless chicken thigh fillet
122	Special thyme sauce
123	Boneless chicken thigh fillets
124	Extra spicy sauce
125	Various regional peppers
126	Marinated red meat
127	Red meat
128	Grilled meatballs
129	Creamy eggplant purée (beğendi)
130	Special blend of spices
131	Fresh greens
132	Honey mustard sauce
133	Grilled halloumi cheese
134	Falafel
135	Hummus
136	Mediterranean greens
137	Grated kashar cheese
138	Carrots
139	Corn kernels
140	Crispy chicken
141	Cherry tomatoes
142	Romaine lettuce
143	Special Caesar dressing
144	Crouton bread cubes
145	Parmesan cheese
146	Grilled chicken
147	Chef's special sautéed chicken pieces
148	Pasta
149	Carrot slices
150	Grilled chicken pieces
151	Fresh tomatoes
152	Red lentils
153	Chicken broth
154	Tender chicken pieces
155	Crispy Chicken Cubes
156	Cheese Sticks
157	Cheddar Potato Balls
158	Five-Spice Potatoes
159	Chickpeas
160	Herbs
161	Roasted eggplants
162	Potatoes
163	Special five-spice blend
164	Chicken breast
165	Breading mixture
166	Special dipping sauce
167	Special seasoning
168	Vegetable oil
169	Salt
170	Mozzarella cheese
171	Seasonings
172	Thinly rolled dough
173	Tahini
174	Olive oil
175	Lemon juice
176	Garlic
177	Mascarpone cheese
178	Espresso
179	Ladyfinger biscuits
180	Cocoa powder
181	Eggs
182	Sugar
183	Milk
184	Rice
185	Hazelnuts
186	Dark chocolate
187	Butter
188	Flour
189	Water
190	Strawberry syrup
191	Black mulberry syrup
192	Black mulberry juice
193	Fresh oranges
\.


--
-- Data for Name: menuitems; Type: TABLE DATA; Schema: public; Owner: openwaiterai
--

COPY public.menuitems (id, category_id, name, description) FROM stdin;
35	11	Salsa Mexicana	We skillfully combine the unique salsa sauce of Mexican cuisine with a variety of California peppers and special Mexican beans. We blended this carefully prepared recipe with our marinated chicken, creating an irresistible flavor.
50	11	Labiate	A special taste for real cheese lovers! Our specially marinated chicken pieces combined with cheddar cheese and fresh rosemary create an unforgettable flavor.
37	11	Alinazik Chicken	Alinazik, the symbol of Gaziantep cuisine named by Yavuz Sultan Selim, has arrived at Tavuk Dünyası. Roasted eggplants meet strained yogurt, and when combined with unique Chef's Pan chicken pieces, pearl onions, fresh mushrooms, and California peppers, a magnificent flavor emerges.
38	11	My Spicy	A special recipe for spice lovers! Our specially marinated chicken combined with the most beloved spices creates a legendary flavor feast.
39	11	Barbekus	Experience the taste of barbecue with our Barbeküs! Carefully selected chicken pieces are blended with spices and meet smoky barbecue sauce, perfected with the unique touch of California peppers.
40	11	Curry’ous Chicken	Experience the taste of real Indian curry at Tavuk Dünyası! In this journey, carefully selected fresh ingredients meet diced onions and fresh cultivated mushrooms, and our specially marinated chicken with curry sauce creates an unforgettable flavor on your palate.
41	11	Bi’ Margherita	We combined the famous thyme from Mount Ida with the unique margarita sauce of Italian cuisine, and when we added kashar cheese on top, we created a brand-new flavor that's sure to be irresistible!
42	11	Sweet Chilly of Mine	A delightful blend of sweet and spicy flavors! Tender chicken pieces are enriched with original sweet chili peppers and a special hot sauce, offering an unforgettable taste experience.
43	11	Cafe de Paris	We have reinterpreted the world's most beloved and widely used Café de Paris sauce with a blend of spices, creating a unique Tavuk Dünyası flavor.
44	11	The Fabulous Buffalo	Experience the legendary taste of our Efsane Buffalo! Tender chicken pieces are coated with our special buffalo sauce, offering a mildly spicy and tangy flavor that delights the palate.
45	11	The Dragon	Forget all the spicy flavors you've tasted so far! We boiled peppers from different regions and added special spices. You won't be able to resist our chicken blended with our extra hot sauce.
46	11	It's My Thyme	An award-winning special recipe with the delightful aroma of thyme! We combined the unique sauce prepared with thyme from Mount Ida with kashar cheese and cream to create an exquisite flavor.
47	11	Sultan's Delight Chicken	Beğendi loved our chicken, and Kendini Beğenmiş Tavuk became highly admired! Specially marinated chicken thigh pieces meet a masterfully prepared beğendi bed, creating an indescribable yet easily enjoyable flavor.
48	11	Roasted Dreams	An award-winning traditional flavor from Tavuk Dünyası! We combined roasted sweet peppers with diced chicken and, through a unique marination process, created tender, flavorful chicken with a roasted pepper taste.
49	11	Creamy Mushroom	A delightful combination for mushroom lovers! Tender chicken pieces are enriched with a creamy mushroom sauce, offering an unforgettable taste experience.
51	11	The Original	The Original redefines the taste of chicken with the perfect combination of carefully selected ingredients and delicious chicken marinated with special techniques, creating a flavour you will never forget.
52	11	Chicken with Sriracha Sauce	Tavuk Dünyası's secret recipe, this delicious feast is a culinary masterpiece. It perfectly harmonizes Sriracha sauce and meat. The recipe is a must-try for anyone who enjoys a good meal.
53	11	Chef's Pan	An award-winning unique recipe that offers a feast of flavors in every bite! Prepared with pearl onions, fresh mushrooms, California peppers, delicious chicken pieces, and the chef's secret sauce, this original flavor is highly acclaimed.
55	12	It's My Thyme Chicken Fillet	A chicken chop with the delightful aroma of thyme! We prepared our special thyme sauce with thyme grown at the foothills of Mount Ida, adding kashar cheese and cream, and paired it with boneless chicken thigh fillet.
56	12	The Dragon Chicken Fillet	For chop lovers: Fülfül Pirzola! Experience the unforgettable taste of boneless chicken thigh fillets marinated with extra spicy sauce enriched with various regional peppers and special spices.
57	13	Barbecus Fillet Strips	A barbecue-flavored delight! Our meats, marinated with a special blend of seven spices, are combined with our smoky barbecue sauce and enhanced with California peppers.
58	13	It’s My Thyme Fillet	A classic from Tavuk Dünyası: KekiklimEt! Experience the unforgettable taste of fresh thyme combined with exquisite meats in this thyme-sauced dish. For those who love the aroma of thyme and the flavor of red meat, Tavuk Dünyası offers this delightful thyme-infused meat dish. Enjoy the creamy mountain thyme meat prepared with care.
59	13	Creamy Mushroom Fillet Strips	A delightful combination of tender red meat with a creamy mushroom sauce, offering a rich and savory experience for mushroom lovers.
60	14	Sultan's Delight Meatballs	A delightful combination of grilled meatballs served on a bed of creamy eggplant purée, offering a rich and savory experience for meatball enthusiasts.
61	14	Grilled Meatballs	A barbecue-style meeting! We bring our specially crafted grilled meatballs to meatball lovers.
62	15	Grilled Halloumi Salad	Fresh greens tossed with our honey mustard sauce, topped with Cyprus's legendary grilled halloumi cheese.
63	15	Falafel Salad with Hummus	For those who can't resist the taste of falafel, a brand new flavor from Tavuk Dünyası! Fresh greens come together on a bed of falafel and hummus, resulting in a taste that will linger on your palate.
64	15	Crispy Chicken Salad	Freshness and crispiness together! We combined Mediterranean greens, grated kashar cheese, carrots, and corn kernels with our honey mustard sauce. Topped with our delicious crispy chicken and cherry tomatoes.
65	15	Chicken Caesar Salad	We did justice to Caesar! We combined fresh romaine lettuce with our special Caesar dressing, topped with crouton bread cubes, parmesan cheese, cherry tomatoes, and our delicious chicken.
70	17	Lentil Soup	A traditional Turkish delight. Our lentil soup is prepared with red lentils and special spices, offering a nutritious and flavorful start to your meal.
71	17	Chicken Broth Soup	A perfect start for those seeking a delicious beginning. Our chicken broth soup is prepared with tender chicken pieces and special spices, offering a delightful experience.
72	18	Mixed Appetizer Platter	A delightful assortment featuring Crispy Chicken Cubes, Cheese Sticks, Cheddar Potato Balls, and Five-Spice Potatoes.
73	18	Falafel	Tavuk Dünyası's version of the delicious chickpea meatball falafel!
74	18	Alinazik	A masterpiece made from roasted eggplant and strained yogurt, originally named by Sultan Selim.
75	18	Beğendi	A delightful blend of roasted eggplants and kashar cheese, offering a rich and satisfying taste experience.
76	18	Five-Spice Potatoes	Delicious potatoes seasoned with Tavuk Dünyası's special blend of five spices, offering a unique twist on classic fries.
77	18	Bi' Çıtır	Crispy chicken pieces served with a special dipping sauce, offering a delightful start to your meal.
78	18	Crispy Chicken Cubes	Marinated chicken prepared as crispy cubes, offering a delightful start to your meal.
79	18	Cheddar Potato Balls	Potatoes have fallen in love with cheddar cheese, resulting in a delightful appetizer.
80	18	Classic Fries	Thinly sliced, crispy classic fries, offering a timeless taste experience.
81	18	Cheese Sticks	Crispy on the outside, melted cheese on the inside; a delightful appetizer to start your meal.
82	18	Cheese Pastry	Crispy pastry rolls filled with generous amounts of kashar cheese, offering a homemade taste experience.
83	18	Humus	A master interpretation of traditional flavor!
84	19	Tiramisu	You will be craving more of our Tiramisu, crafted with a unique twist only at Tavuk Dünyası!
85	19	Baked Rice Pudding with Hazelnuts	A delightful baked rice pudding topped with crispy hazelnuts, offering a traditional taste with a modern twist.
86	19	Chocolate Soufflé	Experience an unforgettable dessert feast with our Chocolate Soufflé, crafted with special chocolate and a light texture that will become your favorite.
88	20	Strawberry Lemonade	The strawberry-infused version of refreshment! We recommend trying Tavuk Dünyası's special strawberry lemonade alongside your main courses.
89	20	Black Mulberry Lemonade	A refreshing blend of traditional lemonade infused with the rich flavor of black mulberries, offering a unique twist to a classic beverage.
90	20	Black Mulberry Juice	Experience the refreshing taste of organic black mulberry juice, bringing health benefits along with its unique flavor.
91	20	Lemonade	Refreshes and invigorates! Experience the fresh coolness of our specially prepared lemonade, made with carefully selected fruits.
92	20	Freshly Squeezed Orange Juice	Enjoy the freshness of our freshly squeezed orange juice alongside your meals and desserts.
36	11	Spicy Curry'ous Chicken	An exceptional flavor where you will experience the taste of curry with spice! Real Indian curry, spicy sauce, diced onions, and fresh cultivated mushrooms come together with our chicken in this special recipe.
54	12	Grilled and Thrilled Chicken Fillet	A Feast of Taste by Tavuk Dünyası: Grilled and Thrilled Chicken Fillet. Carefully selected boneless chicken fillet mixed with special sauces by Tavuk Dünyası... Cooked to perfection to take you on a journey full of rich flavours.Tavuk Dünyası's Grilled and Thrilled Chicken Fillet is a treat for both the eyes and the taste buds, thanks to its impressive presentation and nutritional value.Try our delicious grilled chicken fillet for a unique and flavourful meal.
66	15	Chef's Salad	Tavuk Dünyası’na özel eşsiz bir lezzet. Taptaze yeşillikleri ballı hardal sosumuzla harmanladık, üstüne özgün Şefin Tavası tavuk parçaları, arpacık soğan, taze mantar, Kaliforniya biberleri ve çeri domatesleri ekledik.
67	16	Meaty	Delicious meatballs served with pasta and carrot slices, offering a delightful meal experience for children.
68	16	Chicky	Specially prepared for children, 'Tavuklum' offers a delightful and nutritious meal experience with tender chicken pieces, pasta, and carrot slices.
69	17	Tomato Soup	A heartwarming and delicious start. Fresh tomatoes blended with melted kashar cheese, offering an unforgettable taste experience.
\.


--
-- Data for Name: menuitemallergens; Type: TABLE DATA; Schema: public; Owner: openwaiterai
--

COPY public.menuitemallergens (menu_item_id, allergen_id) FROM stdin;
35	161
35	162
35	163
35	164
35	165
35	166
36	161
36	162
36	163
36	164
36	165
36	166
37	161
37	162
37	163
37	164
37	165
37	166
38	161
38	162
38	163
38	164
38	165
38	166
39	161
39	162
39	163
39	164
39	165
39	166
40	161
40	162
40	163
40	164
40	165
40	166
41	161
41	162
41	163
41	164
41	165
41	166
42	161
42	162
42	163
42	164
42	165
42	166
43	161
43	162
43	163
43	164
43	165
43	166
44	161
44	162
44	163
44	164
44	165
44	166
45	161
45	162
45	163
45	164
45	165
45	166
46	161
46	162
46	163
46	164
46	165
46	166
47	161
47	162
47	163
47	164
47	165
47	166
48	161
48	162
48	163
48	164
48	165
48	166
49	161
49	162
49	163
49	164
49	165
49	166
50	161
50	162
50	163
50	164
50	165
50	166
51	161
51	162
51	163
51	164
51	165
51	166
52	161
52	162
52	163
52	164
52	165
52	166
53	161
53	162
53	163
53	164
53	165
53	166
54	161
54	162
54	163
54	164
54	165
54	166
55	161
55	162
55	163
55	164
55	165
55	166
56	161
56	162
56	163
56	164
56	165
56	166
57	161
57	162
57	163
57	164
57	165
57	166
58	161
58	162
58	163
58	164
58	165
58	166
59	161
59	162
59	163
59	164
59	165
59	166
60	161
60	162
60	163
60	164
60	165
60	166
61	161
61	162
61	163
61	164
61	165
61	166
62	162
62	165
63	161
63	167
63	164
63	166
64	161
64	162
64	165
64	163
64	164
64	166
65	161
65	162
65	163
65	164
65	165
65	166
66	161
66	162
66	163
66	164
66	165
66	166
67	161
67	163
67	164
67	162
67	165
67	166
68	161
68	163
68	164
68	162
68	165
68	166
69	162
70	168
71	168
72	161
72	162
72	163
72	164
72	165
72	166
73	169
74	162
75	162
76	169
77	161
77	163
77	164
77	162
77	165
77	166
78	161
78	163
78	164
78	162
78	165
78	166
79	162
80	169
81	162
81	161
81	163
82	162
82	161
83	170
84	171
84	162
84	161
85	162
85	172
86	171
86	162
86	161
88	169
89	169
90	169
91	169
92	169
\.


--
-- Data for Name: menuitemingredients; Type: TABLE DATA; Schema: public; Owner: openwaiterai
--

COPY public.menuitemingredients (menu_item_id, ingredient_id) FROM stdin;
35	71
35	72
35	73
35	74
36	71
36	75
36	76
36	77
36	78
37	79
37	80
37	81
37	82
37	83
37	84
38	85
38	86
39	71
39	87
39	84
39	88
40	71
40	89
40	77
40	78
41	71
41	90
41	91
41	92
42	71
42	93
42	94
43	95
43	96
43	88
44	71
44	97
45	71
45	98
45	99
45	100
46	95
46	101
46	92
46	102
47	103
47	104
48	105
48	106
48	107
49	71
49	108
50	109
50	110
50	111
51	85
51	112
51	113
51	114
52	115
52	116
53	82
53	83
53	84
53	117
53	118
54	119
54	120
55	121
55	122
55	92
55	102
56	123
56	124
56	125
56	99
57	126
57	87
57	84
58	127
58	122
58	92
58	102
59	127
59	108
60	128
60	129
61	128
61	130
62	131
62	132
62	133
63	131
63	134
63	135
64	136
64	137
64	138
64	139
64	132
64	140
64	141
65	142
65	143
65	144
65	145
65	141
65	146
66	131
66	132
66	147
66	82
66	83
66	84
66	141
67	128
67	148
67	149
68	150
68	148
68	149
69	151
69	92
70	152
70	99
71	153
71	154
71	99
72	155
72	156
72	157
72	158
73	159
73	160
73	88
74	80
74	81
75	161
75	92
76	162
76	163
77	164
77	165
77	166
78	95
78	165
78	167
79	162
79	110
80	162
80	168
80	169
81	170
81	165
81	171
82	172
82	92
83	159
83	173
83	174
83	175
83	176
83	169
84	177
84	178
84	179
84	180
84	181
84	182
85	183
85	184
85	182
85	185
86	186
86	187
86	182
86	181
86	188
88	189
88	175
88	190
88	182
89	189
89	175
89	191
89	182
90	192
90	189
90	182
91	189
91	175
91	182
92	193
\.


--
-- Data for Name: nutritionalvalues; Type: TABLE DATA; Schema: public; Owner: openwaiterai
--

COPY public.nutritionalvalues (id, menu_item_id, calories, protein, carbohydrates, fats, saturated_fats, sugar, salt, fiber) FROM stdin;
29	35	760.00	54.10	61.20	23.70	9.90	9.20	1.00	9.40
30	36	838.00	61.20	62.10	25.80	9.00	4.50	1.80	6.90
31	37	750.00	60.00	50.00	25.00	10.00	8.00	1.50	7.00
32	38	861.00	72.10	59.20	23.30	9.30	6.50	5.20	8.10
33	39	900.00	63.00	66.20	25.60	12.00	7.60	1.96	7.80
34	40	881.00	68.30	60.20	27.50	9.40	5.40	2.00	6.50
35	41	897.00	76.70	60.00	24.80	9.70	6.20	1.88	7.40
36	42	912.00	\N	\N	22.80	8.90	13.80	5.20	\N
37	43	954.00	70.40	60.70	31.30	12.20	6.00	2.04	7.20
38	44	897.00	58.30	64.00	25.90	11.70	13.60	1.84	7.40
39	45	937.00	69.60	58.90	32.70	10.10	5.70	4.80	7.70
40	46	970.00	12.01	30.39	12.57	\N	\N	\N	1.91
41	47	320.00	\N	\N	\N	\N	\N	\N	\N
42	48	874.00	69.70	55.80	27.60	10.20	3.30	2.08	9.40
43	49	925.00	69.00	57.70	30.80	\N	\N	\N	\N
44	50	1012.80	\N	\N	35.20	13.50	\N	\N	\N
45	51	\N	\N	\N	\N	\N	\N	\N	\N
46	52	\N	\N	\N	\N	\N	\N	\N	\N
47	53	813.00	56.50	60.00	23.30	10.80	5.60	2.16	9.00
48	54	935.00	68.80	53.70	32.60	13.50	4.90	1.12	5.30
49	55	1149.00	76.80	55.90	45.50	19.30	6.20	1.24	5.50
50	56	984.00	71.60	55.90	35.00	14.00	5.40	3.50	5.60
51	57	884.00	63.20	70.10	23.90	9.90	7.80	1.44	7.10
52	58	948.00	60.50	59.40	34.20	14.40	4.10	1.28	6.80
53	59	925.00	69.00	57.70	30.80	11.70	6.00	4.20	6.40
54	60	983.70	56.40	65.20	37.70	16.40	7.20	2.50	8.50
55	61	1003.00	32.50	74.50	37.90	22.30	4.90	1.48	6.90
56	62	90.00	2.10	3.87	5.22	1.47	0.85	0.23	1.00
57	63	187.00	5.68	14.45	10.86	2.61	0.65	0.59	4.20
58	64	450.00	25.00	35.00	22.00	5.00	8.00	1.50	5.00
59	65	137.85	10.50	7.20	5.31	0.90	2.10	1.20	2.50
60	66	113.00	8.91	3.13	5.35	1.56	0.00	0.32	1.30
61	67	808.00	25.20	66.90	28.60	16.90	4.30	1.20	6.40
62	68	698.00	45.70	55.00	21.40	8.20	4.00	1.28	6.20
63	69	42.00	1.00	3.73	1.78	0.33	0.73	0.29	0.50
64	70	79.00	5.69	11.19	0.61	0.15	0.56	0.19	1.30
65	71	51.00	8.85	0.60	1.06	0.45	0.00	0.33	0.00
66	72	321.00	6.81	26.62	12.66	6.64	2.54	0.37	1.70
67	73	262.00	8.25	19.81	15.30	2.26	1.91	1.37	6.13
68	74	332.24	16.71	9.03	25.43	\N	\N	0.42	4.49
69	75	332.24	16.71	9.03	25.43	\N	\N	0.42	4.49
70	76	283.00	3.23	31.19	9.77	4.77	2.44	0.31	2.30
71	77	383.00	19.43	20.36	13.56	10.86	0.51	0.74	1.20
72	78	326.00	20.37	14.73	13.77	6.23	0.79	0.52	1.40
73	79	269.00	3.29	25.19	10.41	5.73	1.90	0.36	1.20
74	80	379.00	4.76	37.87	15.18	7.51	0.00	0.45	2.00
75	81	449.00	13.49	21.93	20.51	11.36	4.25	0.54	1.90
76	82	192.00	10.00	24.30	1.50	4.10	1.10	0.44	0.00
77	83	119.00	7.95	0.60	9.41	1.40	0.00	0.51	0.00
78	84	748.10	3.70	36.00	13.00	8.40	33.40	1.30	1.10
79	85	285.00	3.15	32.76	3.37	1.84	23.52	0.06	0.00
80	86	604.00	6.30	41.70	23.40	11.80	23.90	0.04	0.00
81	88	198.00	0.39	53.63	0.14	0.00	41.54	0.00	0.00
82	89	242.00	0.30	60.03	0.09	0.00	51.37	0.00	0.00
83	90	63.00	0.02	15.62	0.00	0.00	15.62	0.00	0.00
84	91	41.00	0.08	10.20	0.00	0.00	10.20	0.00	0.00
85	92	60.00	0.40	14.64	0.17	0.00	8.00	0.00	0.10
\.


--
-- Name: allergens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openwaiterai
--

SELECT pg_catalog.setval('public.allergens_id_seq', 172, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openwaiterai
--

SELECT pg_catalog.setval('public.categories_id_seq', 20, true);


--
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openwaiterai
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 193, true);


--
-- Name: menuitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openwaiterai
--

SELECT pg_catalog.setval('public.menuitems_id_seq', 92, true);


--
-- Name: nutritionalvalues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openwaiterai
--

SELECT pg_catalog.setval('public.nutritionalvalues_id_seq', 85, true);


--
-- PostgreSQL database dump complete
--

