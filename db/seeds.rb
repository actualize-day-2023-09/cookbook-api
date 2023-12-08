User.create!([
  { name: "amanda", email: "amanda@example.com", password: "password" },
  { name: "scout", email: "scout@example.com", password: "password" },
  { name: "luke", email: "luke@example.com", password: "password" },
])
Recipe.create!([
  { title: "Pizza", chef: "The Swedish Chef", ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", prep_time: 455, image_url: "https://www.twopeasandtheirpod.com/wp-content/uploads/2014/09/Caprese-Pizza-6.jpg", user_id: 2 },
  { title: "FOOD 2.0", chef: "kyle", ingredients: "snacks", directions: "lay out on table", prep_time: 12, image_url: "https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-03/plant-based-food-mc-220323-02-273c7b.jpg", user_id: 2 },
  { title: "Empty Sandwich!", chef: "Jay Wengrow", ingredients: "Three slices of bread", directions: "Place slices of bread next to each other.", prep_time: 72, image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", user_id: 2 },
  { title: "butter biscuits", chef: "paula deen", ingredients: "butter, biscuit", directions: "butter the biscuit", prep_time: 100, image_url: "test.jpg", user_id: 2 },
  { title: "butter biscuits", chef: "paula deen", ingredients: "butter, biscuit", directions: "butter the biscuit", prep_time: 100, image_url: "test.jpg", user_id: 2 },
  { title: "Licorice", chef: "Jean Claude Packsone", ingredients: "Licorice", directions: "Buy licorice from store.", prep_time: 120, image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", user_id: 3 },
  { title: "Corn on the cob", chef: "Cornelius Vanderbilt", ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", prep_time: 22, image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", user_id: 3 },
  { title: "corn dog", chef: "amanda!!! (NOT VAN)", ingredients: "corn, dogs", directions: "roll dogs in corn", prep_time: 17, image_url: "https://m.media-amazon.com/images/I/51fdZ1HA+KL._AC_SY300_SX300_.jpg", user_id: 3 },
  { title: "butter biscuits", chef: "paula deen", ingredients: "butter, biscuit", directions: "butter the biscuit", prep_time: 100, image_url: "test.jpg", user_id: 3 },
  { title: "butter biscuits", chef: "paula deen", ingredients: "butter, biscuit", directions: "butter the biscuit", prep_time: 100, image_url: "test.jpg", user_id: 1 },
  { title: "Sour patch kids", chef: "Van", ingredients: "sour, patches, children", directions: "mix?", prep_time: 12, image_url: "https://palmercandy.com/cdn/shop/files/sourpatchkidsbulk_2048x.jpg?v=1696433041", user_id: 1 },
  { title: "snickers", chef: "kyle", ingredients: "snickers bar", directions: "open wrapper", prep_time: 1, image_url: "https://backup.bulkfoods.com/607-large_default/snickers-miniature-bars.jpg", user_id: 3 },
  { title: "Raw Eggs", chef: "Laura Parsley", ingredients: "Chicken", directions: "Squeeze the chicken", prep_time: 1, image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", user_id: 1 },
  { title: "Mud Pie", chef: "Mark Richardson", ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", prep_time: 84, image_url: "https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2FEdit%2F2022-12-Mississippi-Mud-Pie%2FMississippi_Mud_Pie-4", user_id: 1 },
  { title: "FOOD", chef: "AMANDA", ingredients: "carbon molocules", directions: "attach molecues", prep_time: 1, image_url: "https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg", user_id: 1 },
  { title: "pepperoni rolls", chef: "van", ingredients: "rolls, pepperoni", directions: "roll rolls and pepperonis", prep_time: 45, image_url: "https://www.lifeloveandsugar.com/wp-content/uploads/2023/03/Pepperoni-Rolls5.jpg", user_id: 1 },
])
