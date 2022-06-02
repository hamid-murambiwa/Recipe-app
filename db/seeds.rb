admin = User.create(name: 'Hamid', email: 'machipisajunior@gmail.com', password: '123456');

category1 = RecipeCatogory.create(
    name: "Breakfast",
    description: "Breakfast is the first meal of the day. It is usually eaten in the early part of the morning. Discover budget-friendly affordable breakfast recipes with storecupboard ingredients",
    image_url: "https://c4.wallpaperflare.com/wallpaper/668/319/828/food-breakfast-coffee-croissant-wallpaper-preview.jpg"
)

category2 = RecipeCatogory.create(
    name: "Lunch",
    description: "Lunch is the meal that you have in the middle of the day. Discover budget-friendly affordable lunch recipes with storecupboard ingredients",
    image_url: "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?cs=srgb&dl=pexels-chan-walrus-958545.jpg&fm=jpg"
)

category3 = RecipeCatogory.create(
    name: "Dinner",
    description: "Dinner is the main meal of the day, usually served in the early part of the evening. Discover budget-friendly affordable dinner recipes with storecupboard ingredients",
    image_url: "https://cdn.cnn.com/cnnnext/dam/assets/181116201733-01-thanksgiving-stock-dinner-full-169.jpg"
)

category4 = RecipeCatogory.create(
    name: "Snacks",
    description: "Snacks is are simple foods that are quick and easy to prepare and eat. Discover budget-friendly affordable snack recipes with storecupboard ingredients",
    image_url: "https://wallpaperaccess.com/full/1891212.jpg"
)

category5 = RecipeCatogory.create(
    name: "Desserts",
    description: "Dessert is something sweet, such as fruit or a pudding, that you eat at the end of a meal. Discover budget-friendly affordable dessert recipes with storecupboard ingredients",
    image_url: "https://static.onecms.io/wp-content/uploads/sites/24/2021/03/18/Brownie-Ice-Cream-Sandwiches.jpg"
)

category6 = RecipeCatogory.create(
    name: "Drinks",
    description: "From cocktails to punch for kids, find the perfect party drink.",
    image_url: "https://www.teahub.io/photos/full/171-1718856_food-cocktail-drinks-hd-wallpaper-soft-drinks-images.jpg"
)

category7 = RecipeCatogory.create(
    name: "Other",
    description: "These are recipes for special or social occasions. Discover budget-friendly affordable special recipes with storecupboard ingredients",
    image_url: "https://www.caldea.com/blog/wp-content/uploads/2018/03/tailandia-ingredientes.png"
)


recipe1 = Recipe.create(
    name: "Eggs Benedict",
    description: "Eggs Benedict is a dish of English origin that is traditionally served in the morning. It is a stew of eggs, bacon, and 
    other ingredients, often served with a side of vegetables.",
    prep_time: '10 mins',
    cook_time: 10,
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Bring a deep saucepan of water to the boil (at least 2 litres) and add 3 tbsp white wine vinegar. Lower the heat down to a gentle simmer.',
        'Break the eggs into four separate coffee cups or ramekins. Split the muffins, toast them for a few minutes either side and warm some plates.',
        'Melt the butter in a saucepan and skim any white solids from the surface. Keep the butter warm.',
        'Put the egg yolks, white wine or tarragon vinegar, a pinch of salt and a splash of ice-cold water in a metal or glass bowl that will fit over
        a small pan. Whisk for a few minutes, then put the bowl over a pan of barely simmering water and whisk continuously until pale and thick, about 3-5 mins.',
        "Remove from the heat and slowly whisk in the melted butter bit by bit until it’s all incorporated and you have a creamy hollandaise. (If it gets too thick, 
        add a splash of water.) Season with a squeeze of lemon juice and a little cayenne pepper. Keep warm until needed.",
        'Swirl the simmering vinegared water briskly to form a vortex and slide in an egg. It will curl round and set to a neat round shape. Cook for 2-3 mins, then
        remove with a slotted spoon.',
        'Repeat with the other eggs, one at a time, re-swirling the water as you slide in the eggs. Spread some sauce on each muffin, scrunch a slice of ham on top,
        then top with an egg. Spoon over the remaining hollandaise and serve at once.'
    ],
    img: 'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/01/Healthy-Eggs-Benedict-4.jpg'
)

food1 = Food.create(name: 'White wine vinegar', unit: ' tbsp', price: 0.5, user_id: 1);
recipe_food1 = RecipeFood.create(quantity: 3, food_id: 1, recipe_id: 1);

food2 = Food.create(name: 'Free-range eggs', unit: '', price: 1, user_id: 1);
recipe_food2 = RecipeFood.create(quantity: 4, food_id: 2, recipe_id: 1);

food3 = Food.create(name: 'Toasting muffins', unit: '', price: 10, user_id: 1);
recipe_food3 = RecipeFood.create(quantity: 2, food_id: 3, recipe_id: 1);

food4 = Food.create(name: 'Parma ham', unit: ' slice', price: 5, user_id: 1);
recipe_food4 = RecipeFood.create(quantity: 4, food_id: 4, recipe_id: 1);

food5 = Food.create(name: 'Butter', unit: '25 g', price: 5, user_id: 1);
recipe_food5 = RecipeFood.create(quantity: 1, food_id: 5, recipe_id: 1);

food6 = Food.create(name: 'Egg yolks', unit: '', price: 1, user_id: 1);
recipe_food6 = RecipeFood.create(quantity: 2, food_id: 6, recipe_id: 1);

recipe2 = Recipe.create(
    name: 'American pancakes',
    description: "Easy, American-style, fluffy pancakes are great for feeding a crowd at breakfast or brunch. Top with something sweet like fruit, jam or syrup, or rashers of crispy bacon.",
    prep_time: '25 mins',
    cook_time: '30 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Mix 200g self-raising flour, 1 ½ tsp baking powder, 1 tbsp golden caster sugar and a pinch of salt together in a large bowl.',
        'Create a well in the centre with the back of your spoon then add 3 large eggs, 25g melted butter and 200ml milk.',
        'Whisk together either with a balloon whisk or electric hand beaters until smooth then pour into a jug.',
        "Heat a small knob of butter and 1 tsp of oil in a large, non-stick frying pan over a medium heat. When the butter looks frothy, 
        pour in rounds of the batter, approximately 8cm wide. Make sure you don’t put the pancakes too close together as they will spread
        during cooking. Cook the pancakes on one side for about 1-2 mins or until lots of tiny bubbles start to appear and pop on the surface. 
        Flip the pancakes over and cook for a further minute on the other side. Repeat until all the batter is used up.",
        'Serve your pancakes stacked up on a plate with a drizzle of maple syrup and any of your favourite toppings.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/american-style-pancakes-87119e3.jpg?quality=90&webp=true&resize=440,400'
)

food7 = Food.create(name: 'Self-raising flour', unit: '00g', price: 4, user_id: 1);
recipe_food7 = RecipeFood.create(quantity: 2, food_id: 7, recipe_id: 2);

food8 = Food.create(name: 'Baking powder', unit: '½ tsp', price: 0.50, user_id: 1);
recipe_food8 = RecipeFood.create(quantity: 1, food_id: 8, recipe_id: 2);

food9 = Food.create(name: 'Large eggs', unit: '', price: 1, user_id: 1);
recipe_food9 = RecipeFood.create(quantity: 3, food_id: 9, recipe_id: 2);

food10 = Food.create(name: 'Melted butter, plus extra for cooking', unit: '25 g', price: 20, user_id: 1);
recipe_food10 = RecipeFood.create(quantity: 1, food_id: 10, recipe_id: 2);

food11 = Food.create(name: 'Milk', unit: '00ml', price: 5, user_id: 1);
recipe_food11 = RecipeFood.create(quantity: 2, food_id: 11, recipe_id: 2);

food12 = Food.create(name: 'Vegetable oil', unit: '50 ml', price: 7, user_id: 1);
recipe_food12 = RecipeFood.create(quantity: 2, food_id: 12, recipe_id: 2);

food13 = Food.create(name: 'Maple syrup', unit: '50 ml', price: 10, user_id: 1);
recipe_food13 = RecipeFood.create(quantity: 2, food_id: 13, recipe_id: 2);

recipe3 = Recipe.create(
    name: 'Smoky beans & baked eggs',
    description: 'Pack in the nutrients with smoky beans and baked eggs. Great for a veggie family lunch or supper, serve with flatbreads or toast for extra sustenance',
    prep_time: '10 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Heat the oil in a wide, shallow pan and cook the onion for 8-10 mins until softened. Add the pepper and cook for another 5 mins, stirring 
        regularly, until softened. Stir in the garlic, paprika and ketchup, then tip in the tomatoes, cover and leave to simmer gently for 10 mins. 
        Remove the lid and cook for a few more minutes to thicken, then add the beans. Can be cooled and frozen in portions at this stage.',
        'Use a spoon to make 4-6 spaces in the mixture for the eggs – you should be able to see some of the bottom of the pan. Crack the eggs one by 
        one into a cup or bowl and gently drop one into each hole. Cover the pan and reduce the heat to low. Cook for 3-5 mins until the egg whites are 
        cooked through but the yolks are still runny. Scatter over the coriander to serve.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/smoky-beans-baked-eggs-4a53fb1.jpg?quality=90&webp=true&resize=440,400'
)

food14 = Food.create(name: 'Oil', unit: ' tbsp', price: 0.25, user_id: 1);
recipe_food14 = RecipeFood.create(quantity: 2, food_id: 14, recipe_id: 3);

food15 = Food.create(name: 'Onion', unit: '', price: 5, user_id: 1);
recipe_food15 = RecipeFood.create(quantity: 1, food_id: 15, recipe_id: 3);

food16 = Food.create(name: 'Red pepper , sliced', unit: '', price: 5, user_id: 1);
recipe_food16 = RecipeFood.create(quantity: 1, food_id: 16, recipe_id: 3);

food17 = Food.create(name: 'Garlic cloves , crushed', unit: '', price: 10, user_id: 1);
recipe_food17 = RecipeFood.create(quantity: 3, food_id: 17, recipe_id: 3);

food18 = Food.create(name: 'Smoked paprika', unit: 'tsp', price: 1, user_id: 1);
recipe_food18 = RecipeFood.create(quantity: 2, food_id: 18, recipe_id: 3);

food19 = Food.create(name: 'Ketchup', unit: 'tbsp', price: 1, user_id: 1);
recipe_food19 = RecipeFood.create(quantity: 1, food_id: 19, recipe_id: 3);

food20 = Food.create(name: 'Can chopped tomatoes', unit: '00g', price: 7, user_id: 1);
recipe_food20 = RecipeFood.create(quantity: 4, food_id: 20, recipe_id: 3);

food21 = Food.create(name: 'Can black or pinto beans', unit: ' x 400g', price: 25, user_id: 1);
recipe_food21 = RecipeFood.create(quantity: 2, food_id: 21, recipe_id: 3);

food22 = Food.create(name: 'Large eggs', unit: '', price: 1, user_id: 1);
recipe_food22 = RecipeFood.create(quantity: 4, food_id: 22, recipe_id: 3);

food23 = Food.create(name: 'Handful of coriander ', unit: '', price: 10, user_id: 1);
recipe_food23 = RecipeFood.create(quantity: 1, food_id: 23, recipe_id: 3);

recipe4 = Recipe.create(
    name: 'Eggy cheese crumpets',
    description: 'Swap your regular toast or sandwiches at lunch or breakfast time for these delicious eggy cheese crumpets. Enjoy with cherry tomatoes and sliced avocado',
    prep_time: '5 mins',
    cook_time: '12 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Heat the grill. Beat the eggs and milk together in a wide dish. Submerge the crumpets in the egg mixture, turning them once, then set aside for a few minutes.',
        'Arrange the tomatoes cut-side up on a baking tray and grill for a few minutes, then cover the tray with foil to keep the tomatoes warm.',
        'Heat the oil in a frying pan and cook the crumpets for a few minutes on each side until the egg has set – you may have to do this in batches. 
        Transfer them to a baking tray as you go. Once all the crumpets are cooked, top with the cheese and grill for 1-2 mins until the cheese is bubbling 
        and golden. Serve with the tomatoes and avocado slices.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/eggy-cheese-crumpets-b4b6d4c.jpg?quality=90&webp=true&resize=440,400'
)

food24 = Food.create(name: 'Large eggs', unit: '', price: 1, user_id: 1);
recipe_food24 = RecipeFood.create(quantity: 3, food_id: 24, recipe_id: 4);

food25 = Food.create(name: 'Milk', unit: '00ml', price: 5, user_id: 1);
recipe_food25 = RecipeFood.create(quantity: 2, food_id: 25, recipe_id: 4);

food26 = Food.create(name: 'Crumpets', unit: '', price: 3, user_id: 1);
recipe_food26 = RecipeFood.create(quantity: 6, food_id: 26, recipe_id: 4);

food27 = Food.create(name: 'Cherry tomatoes , halved', unit: '50g', price: 7, user_id: 1);
recipe_food27 = RecipeFood.create(quantity: 2, food_id: 27, recipe_id: 4);

food28 = Food.create(name: 'Cheddar , grated', unit: '0g', price: 5, user_id: 1);
recipe_food28 = RecipeFood.create(quantity: 2, food_id: 28, recipe_id: 4);

food29 = Food.create(name: 'Small ripe avocados , sliced', unit: '', price: 5, user_id: 1);
recipe_food29 = RecipeFood.create(quantity: 2, food_id: 29, recipe_id: 4);

recipe5 = Recipe.create(
    name: 'Easy breakfast burritos',
    description: "Prep this hearty burrito brunch the day before for easy assembling in the morning. The recipe is just what you need after party excesses or on New Year’s Day",
    prep_time: '40 mins',
    cook_time: '45 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'To make the beans, heat the oil in a pan and fry the onion for 5 mins until soft. Add both types of beans, the passata, chipotle paste, vinegar and sugar and simmer for 
        15 mins until thick and saucy. Season. Add more chipotle paste, sugar or vinegar to taste – it should be a balance of sweet, spicy and tangy. To make the salsa, combine 
        all of the ingredients and season.',
        'Heat the oil in a large frying pan and fry the peppers and mushrooms for 10 mins until soft. Squeeze small chunks of sausagemeat from the sausage skins into the pan and 
        fry for 10 mins more until golden and cooked through.',
        'Warm the tortillas, then keep warm in a clean tea towel. Put the avocados, coriander, cheese and lime wedges (if using) in bowls.',
        'Just before serving, make the scrambled eggs. Heat the butter in a pan and add the cumin seeds. Sizzle for 1 min, then add the eggs, stirring slowly, until scrambled. 
        Season and tip into a warmed bowl. Serve everything in the middle of the table with chilli sauce, if using, and let everyone dig in.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/easy-breakfast-burritos-4ffc062.jpg?quality=90&webp=true&resize=440,400'
)

food30 = Food.create(name: 'Oil', unit: ' tbsp', price: 0.5, user_id: 1);
recipe_food30 = RecipeFood.create(quantity: 2, food_id: 30, recipe_id: 5);

food31 = Food.create(name: 'Red pepper , finely sliced', unit: '', price: 3, user_id: 1);
recipe_food31 = RecipeFood.create(quantity: 4, food_id: 31, recipe_id: 5);

food32 = Food.create(name: 'Chestnut mushrooms , sliced', unit: '50g', price: 10, user_id: 1);
recipe_food32 = RecipeFood.create(quantity: 2, food_id: 32, recipe_id: 5);

food33 = Food.create(name: 'Spicy or herby sausages', unit: '', price: 5, user_id: 1);
recipe_food33 = RecipeFood.create(quantity: 8, food_id: 33, recipe_id: 5);

food34 = Food.create(name: 'Red onion , finely chopped', unit: '', price: 5, user_id: 1);
recipe_food34 = RecipeFood.create(quantity: 2, food_id: 34, recipe_id: 5);

food35 = Food.create(name: 'Can pinto beans , drained and rinsed', unit: ' x 400g', price: 25, user_id: 1);
recipe_food35 = RecipeFood.create(quantity: 1, food_id: 35, recipe_id: 5);

food36 = Food.create(name: 'Can cannellini beans , drained and rinsed', unit: ' x 400g', price: 25, user_id: 1);
recipe_food36 = RecipeFood.create(quantity: 1, food_id: 36, recipe_id: 5);

food37 = Food.create(name: 'Passata', unit: ' 00ml', price: 9, user_id: 1);
recipe_food37 = RecipeFood.create(quantity: 4, food_id: 37, recipe_id: 5);

food38 = Food.create(name: 'Light brown soft sugar', unit: '-2 tbsp', price: 3, user_id: 1);
recipe_food38 = RecipeFood.create(quantity: 1, food_id: 38, recipe_id: 5);

food39 = Food.create(name: 'Vine tomatoes , finely chopped', unit: '', price: 5, user_id: 1);
recipe_food39 = RecipeFood.create(quantity: 4, food_id: 39, recipe_id: 5);

food40 = Food.create(name: 'Small bunch of coriander , finely chopped', unit: '', price: 10, user_id: 1);
recipe_food40 = RecipeFood.create(quantity: 1, food_id: 40, recipe_id: 5);

food41 = Food.create(name: 'Lime , juiced', unit: '', price: 10, user_id: 1);
recipe_food41 = RecipeFood.create(quantity: 1, food_id: 41, recipe_id: 5);

food42 = Food.create(name: 'Red chilli , deseeded and finely chopped', unit: '', price: 5, user_id: 1);
recipe_food42 = RecipeFood.create(quantity: 1, food_id: 42, recipe_id: 5);

food43 = Food.create(name: 'Butter', unit: '0g', price: 2, user_id: 1);
recipe_food43 = RecipeFood.create(quantity: 5, food_id: 43, recipe_id: 5);

food44 = Food.create(name: 'Cumin seeds', unit: ' tsp', price: 5, user_id: 1);
recipe_food44 = RecipeFood.create(quantity: 1, food_id: 44, recipe_id: 5);

food45 = Food.create(name: 'Large eggs , beaten', unit: ' tsp', price: 2, user_id: 1);
recipe_food45 = RecipeFood.create(quantity: 12, food_id: 45, recipe_id: 5);

food46 = Food.create(name: 'Tortilla wraps', unit: ' large or 16 small', price: 4, user_id: 1);
recipe_food46 = RecipeFood.create(quantity: 8, food_id: 46, recipe_id: 5);

food47 = Food.create(name: 'Avocados , stoned, peeled and chopped', unit: ' Large', price: 10, user_id: 1);
recipe_food47 = RecipeFood.create(quantity: 3, food_id: 47, recipe_id: 5);

food48 = Food.create(name: 'Cheddar , grated', unit: '0g', price: 3, user_id: 1);
recipe_food48 = RecipeFood.create(quantity: 5, food_id: 48, recipe_id: 5);

recipe6 = Recipe.create(
    name: 'Egg-in-the-hole smoked salmon & avocado toastie',
    description: "Make someone special a brunch to remember. Use a cutter of your choice to create a specially-shaped sandwich",
    prep_time: '10 mins',
    cook_time: '10 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Heat a large frying pan over a medium heat. Butter both sides of each slice of bread, then cut a large heart (or circle) out of the centre of one slice using a knife or 
        biscuit cutter. Place the slices of bread, including the cut-out piece, into the frying pan and cook for 2 mins until golden. While the bread is cooking, slice the avocado 
        and squeeze over the lemon juice. Toss the watercress in a little lemon juice, too.',
        "Flip the bread over, then crack the egg into the cut-out hole. After 1-2 mins, the whole slice of bread and cut-out piece should be golden brown on both sides. Transfer to 
        a plate (eat the cut-out as a chef’s perk, if you like!). Cover the pan with a lid, or some foil, and lower the heat. Continue cooking for a further 1-2 mins until the egg is 
        done to your liking.",
        'Warm the tortillas, then keep warm in a clean tea towel. Put the avocados, coriander, cheese and lime wedges (if using) in bowls.',
        'Top the toasted slice of bread with the avocado, smoked salmon and watercress, and season with a twist of pepper. Put the egg-in-the-hole slice on top and serve with an extra 
        wedge of lemon, if you like.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/toastie-0ae15f8.jpg?quality=90&webp=true&resize=440,400'
)

food49 = Food.create(name: 'Knob of butter', unit: '', price: 5, user_id: 1);
recipe_food49 = RecipeFood.create(quantity: 1, food_id: 49, recipe_id: 6);

food50 = Food.create(name: 'White bread', unit: ' slices', price: 1, user_id: 1);
recipe_food50 = RecipeFood.create(quantity: 2, food_id: 50, recipe_id: 6);

food51 = Food.create(name: 'Ripe avocado', unit: '', price: 5, user_id: 1);
recipe_food51 = RecipeFood.create(quantity: 1, food_id: 51, recipe_id: 6);

food52 = Food.create(name: 'Lemon , plus a wedge to serve', unit: '', price: 7, user_id: 1);
recipe_food52 = RecipeFood.create(quantity: 1, food_id: 52, recipe_id: 6);

food53 = Food.create(name: 'Large egg', unit: ' tsp', price: 2, user_id: 1);
recipe_food53 = RecipeFood.create(quantity: 1, food_id: 53, recipe_id: 6);

food54 = Food.create(name: 'Smoked salmon', unit: '', price: 15, user_id: 1);
recipe_food54 = RecipeFood.create(quantity: 2, food_id: 54, recipe_id: 6);


recipe7 = Recipe.create(
    name: 'Easy egg muffins',
    description: "Make these mini egg muffins for an easy breakfast or lunch with the kids. Add chopped ham, bacon or smoked salmon, if you fancy",
    prep_time: '15 mins',
    cook_time: '25 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Heat the oven to 200C/180C fan/gas 4. Brush half the oil in an 8-hole muffin tin. Heat the remaining oil in a frying pan and add the broccoli, pepper and spring onions. Fry for 
        5 mins. Set aside to cool. .',
        "Whisk the eggs with the milk, smoked paprika and half the cheese in a bowl. Add the cooked veg. Pour the egg mixture into the muffin holes and top each with the remaining cheese 
        and a few chives, if you like. Bake for 15-17 mins or until golden brown and cooked through. "
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/egg-muffins-5cf2ffe.jpg?quality=90&webp=true&resize=440,400'
)

food55 = Food.create(name: 'Oil', unit: ' tbsp', price: 0.25, user_id: 1);
recipe_food55 = RecipeFood.create(quantity: 1, food_id: 55, recipe_id: 7);

food56 = Food.create(name: 'Broccoli , finely chopped', unit: '50g', price: 10, user_id: 1);
recipe_food56 = RecipeFood.create(quantity: 1, food_id: 56, recipe_id: 7);

food57 = Food.create(name: 'Red pepper , finely chopped', unit: '', price: 5, user_id: 1);
recipe_food57 = RecipeFood.create(quantity: 1, food_id: 57, recipe_id: 7);

food58 = Food.create(name: 'Spring onions , sliced', unit: '', price: 5, user_id: 1);
recipe_food58 = RecipeFood.create(quantity: 2, food_id: 58, recipe_id: 7);

food59 = Food.create(name: 'Large egg', unit: '', price: 1, user_id: 1);
recipe_food59 = RecipeFood.create(quantity: 6, food_id: 59, recipe_id: 7);

food60 = Food.create(name: 'Milk', unit: ' tbsp', price: 0.25, user_id: 1);
recipe_food60 = RecipeFood.create(quantity: 1, food_id: 60, recipe_id: 7);

recipe_food000 = RecipeFood.create(quantity: 1, food_id: 18, recipe_id: 7);
recipe_food001 = RecipeFood.create(quantity: 5, food_id: 48, recipe_id: 7);

recipe8 = Recipe.create(
    name: 'Potato & spring onion breakfast pancakes',
    description: "This Irish-inspired breakfast, brunch or alternative side dish is based on 'boxty', or potato cakes",
    prep_time: '15 mins',
    cook_time: '30 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Put the potatoes in a large pan of salted water and boil until tender. Drain well, tip back into the pan, shake for 1 min over a gentle heat to dry them off, then mash and leave to cool.',
        'Put the cooled mash in a bowl with the flour and bicarb. Whisk 1 egg with the milk, season, tip into the bowl and whisk until smooth. Stir in the spring onions, reserving some to serve.',
        'In a non-stick frying pan, heat half the oil and butter until sizzling, then spoon in half the pancake batter to make 3 pancakes. Cook for 1 min or so on each side until browned and set 
        underneath, then flip and cook the other side. Keep warm in the oven while you make 3 more pancakes.',
        'Wipe out the pan, add the bacon and sizzle until almost crisp. Push to one side and crack in the 2 remaining eggs – with a splash more oil if needed. Fry to your liking, then serve with 
        the pancakes and bacon, sprinkled with the remaining spring onions.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/potato-spring-onion-breakfast-pancakes-6ad7292.jpg?quality=90&webp=true&resize=440,400'
)

food61 = Food.create(name: 'Floury potatoes (weighed after peeling), cut into large chunks', unit: '40g', price: 20, user_id: 1);
recipe_food61 = RecipeFood.create(quantity: 1, food_id: 61, recipe_id: 8);

food62 = Food.create(name: 'Self-raising flour', unit: '0g', price: 3, user_id: 1);
recipe_food62 = RecipeFood.create(quantity: 5, food_id: 62, recipe_id: 8);

food63 = Food.create(name: 'Bicarbonate of soda', unit: ' tsp', price: 2, user_id: 1);
recipe_food63 = RecipeFood.create(quantity: 1, food_id: 63, recipe_id: 8);

recipe_food003 = RecipeFood.create(quantity: 3, food_id: 59, recipe_id: 8);
recipe_food004 = RecipeFood.create(quantity: 5, food_id: 60, recipe_id: 8);
recipe_food005 = RecipeFood.create(quantity: 3, food_id: 58, recipe_id: 8);

food64 = Food.create(name: 'Sunflower oil , plus extra if needed', unit: ' tsp', price: 0.25, user_id: 1);
recipe_food64 = RecipeFood.create(quantity: 2, food_id: 64, recipe_id: 8);

recipe_food006 = RecipeFood.create(quantity: 1, food_id: 49, recipe_id: 8);

food65 = Food.create(name: 'Streaky bacon (smoked or unsmoked)', unit: ' rashers', price: 2, user_id: 1);
recipe_food65 = RecipeFood.create(quantity: 6, food_id: 65, recipe_id: 8);

recipe9 = Recipe.create(
    name: 'Brioche breakfast bake with crispy bacon',
    description: 'Indulge at brunch with this make-ahead breakfast dish, inspired by the classic combination of French toast, maple syrup and bacon',
    prep_time: '25 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'In a large bowl, whisk together the eggs, cream, milk, maple syrup, vanilla and a pinch of salt. Tip about two-thirds of the blueberries into a baking dish (about 20cm x 30cm) that is quite 
        deep. Dip each brioche piece into the egg mixture until well soaked, then arrange on top on the blueberries and pour any remaining egg mixture over the top. Scatter over the remaining blueberries. 
        Cover with cling film and chill for 1 hr, or overnight if serving it for breakfast.',
        'Heat oven to 180C/160C fan/gas 4. Uncover the dish and scatter over the pecans. Bake for 25 mins until the egg mixture is set and the blueberries are starting to burst. Meanwhile, line a baking tray 
        with foil and arrange the bacon on top. When the brioche bake is ready, remove from the oven and cover loosely with foil to keep warm. Heat the grill to high and cook the bacon for about 5 mins each 
        side until crispy.',
        'Dust the brioche bake with icing sugar and top with the crispy bacon. Serve with extra maple syrup for drizzling.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/brioche-breakfast-bake-with-crispy-bacon-7bf0b52.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food007 = RecipeFood.create(quantity: 3, food_id: 60, recipe_id: 9);

food66 = Food.create(name: 'Double cream', unit: '50ml', price: 30, user_id: 1);
recipe_food66 = RecipeFood.create(quantity: 1, food_id: 66, recipe_id: 9);

recipe_food008 = RecipeFood.create(quantity: 2, food_id: 25, recipe_id: 9);

food67 = Food.create(name: 'Maple syrup , plus extra to serve', unit: ' tbsp', price: 2, user_id: 1);
recipe_food67 = RecipeFood.create(quantity: 2, food_id: 67, recipe_id: 9);

food68 = Food.create(name: 'Vanilla extract', unit: ' tbsp', price: 4, user_id: 1);
recipe_food68 = RecipeFood.create(quantity: 2, food_id: 68, recipe_id: 9);

food69 = Food.create(name: 'Punnet blueberries', unit: '00g', price: 15, user_id: 1);
recipe_food69 = RecipeFood.create(quantity: 2, food_id: 69, recipe_id: 9);

food70 = Food.create(name: 'Brioche rolls, each one split in half (if your dish is shallow, cut in half again the other way to make shorter pieces)', unit: '', price: 5, user_id: 1);
recipe_food70 = RecipeFood.create(quantity: 8, food_id: 70, recipe_id: 9);

food71 = Food.create(name: 'Pecan halves', unit: '0g', price: 3, user_id: 1);
recipe_food71 = RecipeFood.create(quantity: 5, food_id: 71, recipe_id: 9);

recipe_food009 = RecipeFood.create(quantity: 8, food_id: 65, recipe_id: 9);

food72 = Food.create(name: 'Icing sugar , for dusting', unit: '', price: 5, user_id: 1);
recipe_food72 = RecipeFood.create(quantity: 1, food_id: 72, recipe_id: 9);

recipe10 = Recipe.create(
    name: 'Air fryer bacon',
    description: 'Cook bacon in an air fryer to achieve a crispy texture with less fat. The perfect bacon sandwich starts here',
    prep_time: '2 mins',
    cook_time: '4 mins - 10 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        "Lay the bacon in a single layer in the base of an air fryer – be sure the layers aren't overlapping. The size of the air fryer basket will determine how many rashers you can cook at one time.",
        'Set the air fryer to 200C and cook streaky bacon rashers for 6-10 mins – just-cooked bacon will take 6 mins, but crispier bacon will take 9-10 mins. Cook back bacon rashers for 4-8 mins, depending 
        on your preference. If you are cooking in batches, remember that the second batch will usually be quicker as the air fryer has heated up.',
        'Remove the bacon using tongs and put on kitchen paper to drain before serving.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2022/04/Air-Fryer-Bacon-cc2a084.jpg?quality=90&webp=true&resize=600,545'
)

recipe_food010 = RecipeFood.create(quantity: 6, food_id: 65, recipe_id: 10);

recipe11 = Recipe.create(
    name: "Bulgur & quinoa lunch bowls",
    description: "These meal prep grain bowls use one base and two deliciously different toppings. Choose from avocado, olives and rocket or chickpeas, beetroot and orange",
    prep_time: '5 mins',
    cook_time: '15 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Tip the onion and bulgur mix into a pan, pour over 600ml water and stir in the thyme and bouillon. Cook, covered, over a low heat for 15 mins, then leave to stand for 10 mins. All the liquid 
        should now be absorbed. When cool, remove the thyme and divide the bulgur between four bowls or plastic containers.',
        'For the avocado topping, toss all the ingredients together except for the rocket. Pile onto two portions of the bulgur and top with the rocket.',
        'For the beetroot topping, first pile the chickpeas on top, then toss the beetroot with the tomato, mint, cumin, a good pinch of cinnamon, the oil and vinegar. Toss well, add the orange, then 
        pile onto the remaining portions of bulghur, scatter with the pine nuts and sprinkle with extra cinnamon. Chill in the fridge until needed.',
    ],
    img: 'https://www.cleaneatingmag.com/wp-content/uploads/2022/04/CleanEating_CE102Spring2022_MixandMatch_Bulgur-Bowl_web.jpg?crop=16:9&width=1600'
)

recipe_food015 = RecipeFood.create(quantity: 1, food_id: 15, recipe_id: 11);

food73 = Food.create(name: 'Bulgur and quinoa (this comes ready mixed)', unit: '50g', price: 30, user_id: 1);
recipe_food73 = RecipeFood.create(quantity: 1, food_id: 68, recipe_id: 11);

food74 = Food.create(name: 'Thyme', unit: ' sprigs', price: 2, user_id: 1);
recipe_food74 = RecipeFood.create(quantity: 2, food_id: 74, recipe_id: 11);

food75 = Food.create(name: 'Vegetable bouillon powder', unit: ' tsp', price: 3, user_id: 1);
recipe_food75 = RecipeFood.create(quantity: 2, food_id: 75, recipe_id: 11);

recipe_food016 = RecipeFood.create(quantity: 1, food_id: 47, recipe_id: 11);

food76 = Food.create(name: 'Tomatoes , cut into wedges', unit: ' tsp', price: 5, user_id: 1);
recipe_food76 = RecipeFood.create(quantity: 2, food_id: 76, recipe_id: 11);

food77 = Food.create(name: 'Chopped basil', unit: ' tbsp', price: 4, user_id: 1);
recipe_food77 = RecipeFood.create(quantity: 4, food_id: 77, recipe_id: 11);

food78 = Food.create(name: 'Kalamata olives , halved', unit: '', price: 1, user_id: 1);
recipe_food78 = RecipeFood.create(quantity: 6, food_id: 78, recipe_id: 11);

food79 = Food.create(name: 'Extra virgin olive oil', unit: ' tsp', price: 1, user_id: 1);
recipe_food79 = RecipeFood.create(quantity: 4, food_id: 79, recipe_id: 11);

food80 = Food.create(name: 'Cider vinegar', unit: ' tsp', price: 1, user_id: 1);
recipe_food80 = RecipeFood.create(quantity: 4, food_id: 80, recipe_id: 11);

food81 = Food.create(name: 'Big handfuls of rocket', unit: '', price: 1, user_id: 1);
recipe_food81 = RecipeFood.create(quantity: 2, food_id: 81, recipe_id: 11);

food82 = Food.create(name: 'Can chickpeas , drained', unit: '10g', price: 8, user_id: 1);
recipe_food82 = RecipeFood.create(quantity: 2, food_id: 82, recipe_id: 11);

food83 = Food.create(name: 'Cooked beetroot , diced', unit: '60g', price: 25, user_id: 1);
recipe_food83 = RecipeFood.create(quantity: 1, food_id: 83, recipe_id: 11);

food84 = Food.create(name: 'Chopped mint', unit: ' tbsp', price: 4, user_id: 1);
recipe_food84 = RecipeFood.create(quantity: 2, food_id: 84, recipe_id: 11);

food85 = Food.create(name: 'Cumin seeds', unit: ' tsp', price: 4, user_id: 1);
recipe_food85 = RecipeFood.create(quantity: 1, food_id: 85, recipe_id: 11);

food86 = Food.create(name: 'Orange , cut into segments', unit: '', price: 5, user_id: 1);
recipe_food86 = RecipeFood.create(quantity: 1, food_id: 86, recipe_id: 11);

food87 = Food.create(name: 'Toasted pine nuts', unit: ' tbsp', price: 3, user_id: 1);
recipe_food87 = RecipeFood.create(quantity: 2, food_id: 87, recipe_id: 11);

recipe12 = Recipe.create(
    name: "Christmas lunch loaf",
    description: "Looking for an alternative to turkey at Christmas? This festive lunch loaf is packed with flavour, plus it's cheaper and easier to prep and serve",
    prep_time: '30 mins',
    cook_time: '1 hr and 40 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Fry the onions in the butter for 15-20 mins until golden and softened. Butter a 900g loaf tin and put in the fridge to chill.',
        'Heat oven to 200C/180C fan/gas 6. Combine all the ingredients in a large mixing bowl, and work everything together to form a large meatball. Remove the loaf tin from the fridge and transfer 
        the mixture to it – it will look like a lot, but should all fit if you pack it in. Use a spatula to shape the top, so that it resembles a loaf of bread.',
        'Cover with foil, then bake for 1 hr, or until the loaf reaches 70C on a meat thermometer. Heat grill to medium, then grill the loaf for 5-10 mins until golden on top. Leave to rest in the tin 
        for 20 mins, then carefully tip the loaf onto a carving board or platter. Serve in slices with the usual trimmings, gravy and bread sauce.',
    ],
    img: 'https://c0.wallpaperflare.com/preview/287/612/879/stollen-christmas-food-bread.jpg'
)

recipe_food017 = RecipeFood.create(quantity: 3, food_id: 15, recipe_id: 12);

recipe_food018 = RecipeFood.create(quantity: 1, food_id: 5, recipe_id: 12);

food88 = Food.create(name: 'Turkey mince', unit: '00g', price: 10, user_id: 1);
recipe_food88 = RecipeFood.create(quantity: 7, food_id: 88, recipe_id: 12);

food89 = Food.create(name: 'Pork mince', unit: '00g', price: 10, user_id: 1);
recipe_food89 = RecipeFood.create(quantity: 5, food_id: 89, recipe_id: 12);

food90 = Food.create(name: 'Smoked streaky bacon , finely chopped', unit: '50g', price: 17, user_id: 1);
recipe_food90 = RecipeFood.create(quantity: 2, food_id: 90, recipe_id: 12);

food91 = Food.create(name: 'Port', unit: '0ml', price: 1, user_id: 1);
recipe_food91 = RecipeFood.create(quantity: 7, food_id: 91, recipe_id: 12);

food92 = Food.create(name: 'Vacuum-packed chestnuts , roughly chopped', unit: '00g', price: 17, user_id: 1);
recipe_food92 = RecipeFood.create(quantity: 2, food_id: 92, recipe_id: 12);

food93 = Food.create(name: 'Dried cranberries', unit: '00g', price: 20, user_id: 1);
recipe_food93 = RecipeFood.create(quantity: 1, food_id: 93, recipe_id: 12);

food94 = Food.create(name: 'orange , zested', unit: '', price: 10, user_id: 1);
recipe_food94 = RecipeFood.create(quantity: 1, food_id: 94, recipe_id: 12);

recipe_food019 = RecipeFood.create(quantity: 2, food_id: 68, recipe_id: 12);

food95 = Food.create(name: 'Sage leaves , finely chopped', unit: '', price: 0.25, user_id: 1);
recipe_food95 = RecipeFood.create(quantity: 5, food_id: 95, recipe_id: 12);

recipe_food020 = RecipeFood.create(quantity: 2, food_id: 17, recipe_id: 12);

food96 = Food.create(name: 'Rye crackers (like Ryvita), whizzed to a crumb, or dried breadcrumbs', unit: '0g', price: 0.5, user_id: 1);
recipe_food96 = RecipeFood.create(quantity: 8, food_id: 96, recipe_id: 12);

food97 = Food.create(name: 'Trimmings, gravy and bread sauce, to serve', unit: '', price: 40, user_id: 1);
recipe_food97 = RecipeFood.create(quantity: 1, food_id: 97, recipe_id: 12);

recipe13 = Recipe.create(
    name: "Turkey & clementine lunch bowl",
    description: "Nuts, pulses and lean meat make this a protein-rich lunch that's perfect to promote recovery after exercise. It's also packed with vitamin C and folate",
    prep_time: '15 mins',
    cook_time: '15 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Tip the onion into a bowl and mix with the lemon juice. Put the turkey in a bowl and add half the oil, the lemon and clementine zest and the garlic then mix well.',
        'Tip the lentils into two bowls or lunchboxes and drizzle over the balsamic vinegar. Heat the remaining oil in a large non-stick wok, add the pepper, and stir-fry for 3 mins. Now add the turkey 
        and half the onion and continue frying until the turkey is cooked and the pepper is tender. Pile on top of the lentils then add the clementine flesh, remaining onion, mint and walnut pieces.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/turkey-clementine-lunch-bowl-440-400-5b6264d.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food021 = RecipeFood.create(quantity: 1, food_id: 34, recipe_id: 13);

food98 = Food.create(name: 'Lemon , zested and juiced', unit: '', price: 10, user_id: 1);
recipe_food98 = RecipeFood.create(quantity: 1, food_id: 98, recipe_id: 13);

food99 = Food.create(name: 'Diced turkey breast', unit: '00g', price: 15, user_id: 1);
recipe_food99 = RecipeFood.create(quantity: 3, food_id: 99, recipe_id: 13);

food100 = Food.create(name: 'Rapeseed oil', unit: ' tbsp', price: 5, user_id: 1);
recipe_food100 = RecipeFood.create(quantity: 2, food_id: 100, recipe_id: 13);

food101 = Food.create(name: 'Clementine , 1 zested and the flesh chopped', unit: '', price: 3, user_id: 1);
recipe_food101 = RecipeFood.create(quantity: 2, food_id: 101, recipe_id: 13);

recipe_food022 = RecipeFood.create(quantity: 2, food_id: 17, recipe_id: 13);

food102 = Food.create(name: 'Can green lentils , drained', unit: '00g', price: 5, user_id: 1);
recipe_food102 = RecipeFood.create(quantity: 4, food_id: 102, recipe_id: 13);

food103 = Food.create(name: 'Balsamic vinegar', unit: ' tbsp', price: 4, user_id: 1);
recipe_food103 = RecipeFood.create(quantity: 1, food_id: 103, recipe_id: 13);

recipe_food023 = RecipeFood.create(quantity: 1, food_id: 16, recipe_id: 13);

recipe_food0024 = RecipeFood.create(quantity: 1, food_id: 84, recipe_id: 13);

food104 = Food.create(name: 'Walnut halves , broken', unit: '', price: 3, user_id: 1);
recipe_food104 = RecipeFood.create(quantity: 4, food_id: 104, recipe_id: 13);

recipe14 = Recipe.create(
    name: "Smoked salmon, quinoa & dill lunch pot",
    description: "This easy packed lunch is as delicious as it is nutritious, with crunchy cucumber and radishes and a herby, creamy dressing",
    prep_time: '15 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'First, make the dressing. Mix the soured cream and lemon juice together in a bowl, then add most of the dill, reserving a quarter for serving.',
        'In another bowl, combine the quinoa with the cucumber and radishes, and stir through half the dressing. Season and top with the salmon and the rest of the dill.',
        'Put the other half of the dressing in a small pot and drizzle over the quinoa just before serving.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/smoked-salmon-quinoa-dill-lunch-pot-0393a04.jpg?quality=90&webp=true&resize=440,400'
)

food105 = Food.create(name: 'Half-fat soured cream', unit: ' tbsp', price: 1, user_id: 1);
recipe_food105 = RecipeFood.create(quantity: 2, food_id: 105, recipe_id: 14);

food106 = Food.create(name: 'Lemon juice', unit: ' tbsp', price: 1, user_id: 1);
recipe_food106 = RecipeFood.create(quantity: 2, food_id: 106, recipe_id: 14);

food107 = Food.create(name: 'Pack dill , finely chopped', unit: ' tbsp', price: 1, user_id: 1);
recipe_food107 = RecipeFood.create(quantity: 2, food_id: 107, recipe_id: 14);

food108 = Food.create(name: 'Pouch ready-to-eat quinoa (we used Merchant Gourmet)', unit: '50g', price: 20, user_id: 1);
recipe_food108 = RecipeFood.create(quantity: 2, food_id: 108, recipe_id: 14);

food109 = Food.create(name: 'Cucumber , halved and sliced', unit: '', price: 5, user_id: 1);
recipe_food109 = RecipeFood.create(quantity: 1, food_id: 109, recipe_id: 14);

food110 = Food.create(name: 'Radishes , finely sliced', unit: '', price: 2, user_id: 1);
recipe_food110 = RecipeFood.create(quantity: 4, food_id: 110, recipe_id: 14);

food111 = Food.create(name: 'Smoked salmon , torn into strips', unit: '00g', price: 30, user_id: 1);
recipe_food111 = RecipeFood.create(quantity: 1, food_id: 111, recipe_id: 14);

recipe15 = Recipe.create(
    name: "Peanut butter chicken",
    description: "The whole family will love this new, budget chicken dish. Any leftovers freeze well and make a handy lunch",
    prep_time: '10 mins',
    cook_time: '40 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Heat 1 tbsp of the oil in a deep frying pan over a medium heat. Brown the chicken in batches, setting aside once golden. Fry the onion for 8 minutes until softened. Then add the garlic, chilli 
        and ginger and fry in the other 1 tbsp oil for 1 min. Add the garam masala and fry for 1 min more.',
        'Stir in the peanut butter, coconut milk and tomatoes, and bring to a simmer. Return the chicken to the pan and add the chopped coriander. Cook for 30 mins until the sauce thickens and the chicken 
        is cooked through.',
        'Serve with the remaining coriander, roasted peanuts and rice, if you like.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/peanut-butter-chicken-37f339a.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food025 = RecipeFood.create(quantity: 1, food_id: 55, recipe_id: 15);

food112 = Food.create(name: 'Skinless boneless chicken thighs, cut into chunks', unit: '', price: 7, user_id: 1);
recipe_food112 = RecipeFood.create(quantity: 8, food_id: 112, recipe_id: 15);

recipe_food026 = RecipeFood.create(quantity: 1, food_id: 15, recipe_id: 15);

recipe_food027 = RecipeFood.create(quantity: 3, food_id: 17, recipe_id: 15);

food113 = Food.create(name: "Red chillies, finely sliced (deseeded if you don't like it too hot)", unit: '', price: 5, user_id: 1);
recipe_food113 = RecipeFood.create(quantity: 2, food_id: 113, recipe_id: 15);

food114 = Food.create(name: 'Fresh ginger, grated', unit: ' tsp', price: 1, user_id: 1);
recipe_food114 = RecipeFood.create(quantity: 2, food_id: 114, recipe_id: 15);

food115 = Food.create(name: 'Garam masala', unit: ' tbsp', price: 1, user_id: 1);
recipe_food115 = RecipeFood.create(quantity: 2, food_id: 115, recipe_id: 15);

food116 = Food.create(name: 'Smooth peanut butter', unit: '00g', price: 30, user_id: 1);
recipe_food116 = RecipeFood.create(quantity: 1, food_id: 116, recipe_id: 15);

food117 = Food.create(name: 'Coconut milk', unit: '00ml', price: 5, user_id: 1);
recipe_food117 = RecipeFood.create(quantity: 4, food_id: 117, recipe_id: 15);

recipe_food028= RecipeFood.create(quantity: 4, food_id: 20, recipe_id: 15);

food118 = Food.create(name: 'Coriander , ½ roughly chopped, ½ leaves picked', unit: '', price: 5, user_id: 1);
recipe_food118 = RecipeFood.create(quantity: 1, food_id: 118, recipe_id: 15);

food119 = Food.create(name: 'Roasted peanuts, to serve', unit: '', price: 25, user_id: 1);
recipe_food119 = RecipeFood.create(quantity: 1, food_id: 119, recipe_id: 15);

food120 = Food.create(name: 'Cooked basmati rice, to serve', unit: '', price: 35, user_id: 1);
recipe_food120 = RecipeFood.create(quantity: 1, food_id: 120, recipe_id: 15);

recipe16 = Recipe.create(
    name: "Chickpea Salad Sandwiches",
    description: "This vegetarian riff on a classic chicken salad sandwich is both satisfying and loaded with flavor, thanks to the tangy lemon juice, stone-ground mustard and fresh herbs. We added a sprinkle of 
    roasted pepitas and a handful of hearty baby kale for texture and crunch. Serve on toasted whole wheat bread or with vegetables and crackers for a wholesome meal.",
    prep_time: '5 mins',
    cook_time: 'no cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Mash the chickpeas, mayonnaise, lemon juice, dill, capers, mustard, turmeric, 1/2 teaspoon salt and several grinds of pepper in a large bowl with a fork or potato masher, scraping down the sides of the bowl 
        with a rubber spatula as needed, until the chickpeas are crushed and the salad is slightly chunky. Taste and adjust the seasoning with salt and pepper.',
        'Spread the salad onto 2 slices of the bread, top with the pepitas and baby kale and then sandwich with the remaining 2 slices bread. Serve immediately. '
    ],
    img: 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2020/07/13/FNK_CHICKPEA-SALAD-SANDWICHES_s4x3.jpg.rend.hgtvcom.826.620.suffix/1594676451474.jpeg'
)

food121 = Food.create(name: '15-ounce can chickpeas, drained and rinsed', unit: '', price: 20, user_id: 1);
recipe_food121 = RecipeFood.create(quantity: 1, food_id: 121, recipe_id: 16);

food122 = Food.create(name: "Mayonnaise or vegan mayonnaise spread", unit: ' tbsp', price: 1, user_id: 1);
recipe_food122 = RecipeFood.create(quantity: 3, food_id: 122, recipe_id: 16);

recipe_food029 = RecipeFood.create(quantity: 1, food_id: 106, recipe_id: 16);

recipe_food030 = RecipeFood.create(quantity: 1, food_id: 107, recipe_id: 16);

food123 = Food.create(name: 'Capers', unit: ' tsp', price: 0.5, user_id: 1);
recipe_food123 = RecipeFood.create(quantity: 2, food_id: 123, recipe_id: 16);

recipe_food031 = RecipeFood.create(quantity: 2, food_id: 59, recipe_id: 16);

food124 = Food.create(name: 'Ground turmeric', unit: ' tsp', price: 1, user_id: 1);
recipe_food124 = RecipeFood.create(quantity: 1, food_id: 124, recipe_id: 16);

food125 = Food.create(name: 'Kosher salt and freshly ground black pepper', unit: '', price: 1, user_id: 1);
recipe_food125 = RecipeFood.create(quantity: 1, food_id: 125, recipe_id: 16);

food126 = Food.create(name: 'Roasted unsalted pepitas', unit: '', price: 35, user_id: 1);
recipe_food126 = RecipeFood.create(quantity: 1, food_id: 126, recipe_id: 16);

food127 = Food.create(name: 'Lightly packed baby kale', unit: ' cup', price: 15, user_id: 1);
recipe_food127 = RecipeFood.create(quantity: 1, food_id: 127, recipe_id: 16);

food128 = Food.create(name: 'Whole wheat bread, toasted', unit: ' slices', price: 1, user_id: 1);
recipe_food128 = RecipeFood.create(quantity: 4, food_id: 128, recipe_id: 16);

recipe17 = Recipe.create(
    name: "Pumpkin Donut Holes",
    description: "The most irresistible mini pumpkin muffins smothered in cinnamon sugar goodness! Perfect for breakfast, lunch + dinner!. They are incredibly moist and fluffy with just enough sweetness to balance 
    out with the cinnamon sugar outer layer.",
    prep_time: '10 mins',
    cook_time: '45 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Preheat oven to 350 degrees F. Lightly oil a mini muffin pan or coat with nonstick spray.',
        'In a large bowl, combine flour, cinnamon, nutmeg, allspice, cloves, baking powder and salt.',
        'In a large glass measuring cup or another bowl, whisk together pumpkin puree, milk, brown sugar, canola oil, egg and vanilla.',
        'Pour mixture over dry ingredients and stir using a rubber spatula just until moist.',
        'Scoop the batter evenly into the muffin tray.',
        'Place into oven and bake for 10-12 minutes, or until a tester inserted in the center comes out clean.',
        'To make the cinnamon sugar, combine cinnamon and sugar.',
        'When the muffins are done, cool for 2 minutes and dip each muffin into the melted butter and then into the cinnamon-sugar mixture.',
        'Let cool on a wire rack.'
    ],
    img: 'https://s23209.pcdn.co/wp-content/uploads/2021/10/211015_DAMN-DELICIOUS_Pumpkin-Donut-Holes_169-1024x1536.jpg'
)

food129 = Food.create(name: 'All-purpose flour', unit: ' cups', price: 5, user_id: 1);
recipe_food129 = RecipeFood.create(quantity: 2, food_id: 129, recipe_id: 17);

food130 = Food.create(name: "Ground cinnamon", unit: ' tsp', price: 1, user_id: 1);
recipe_food130 = RecipeFood.create(quantity: 3, food_id: 130, recipe_id: 17);

food131 = Food.create(name: 'Ground nutmeg', unit: ' tsp', price: 1, user_id: 1);
recipe_food131 = RecipeFood.create(quantity: 1, food_id: 131, recipe_id: 17);

food132 = Food.create(name: 'Ground allspice', unit: ' tsp', price: 0.5, user_id: 1);
recipe_food132 = RecipeFood.create(quantity: 1, food_id: 132, recipe_id: 17);

food133 = Food.create(name: 'Ground cloves', unit: '/8 tsp', price: 0.15, user_id: 1);
recipe_food133 = RecipeFood.create(quantity: 1, food_id: 133, recipe_id: 17);

recipe_food032 = RecipeFood.create(quantity: 2, food_id: 8, recipe_id: 17);

food134 = Food.create(name: 'Salt', unit: ' tsp', price: 0.5, user_id: 1);
recipe_food134 = RecipeFood.create(quantity: 1, food_id: 134, recipe_id: 17);

food135 = Food.create(name: 'Pumpkin puree', unit: '/4 cup', price: 26, user_id: 1);
recipe_food135 = RecipeFood.create(quantity: 3, food_id: 135, recipe_id: 17);

food136 = Food.create(name: 'Milk', unit: ' cup', price: 10, user_id: 1);
recipe_food136 = RecipeFood.create(quantity: 1, food_id: 136, recipe_id: 17);

food137 = Food.create(name: 'Brown sugar', unit: ' cup', price: 10, user_id: 1);
recipe_food137 = RecipeFood.create(quantity: 1, food_id: 137, recipe_id: 17);

food138 = Food.create(name: 'Canola oil', unit: ' cup', price: 10, user_id: 1);
recipe_food138 = RecipeFood.create(quantity: 1, food_id: 138, recipe_id: 17);

recipe_food033 = RecipeFood.create(quantity: 1, food_id: 59, recipe_id: 17);

food139 = Food.create(name: 'Vanilla extract', unit: ' tsp', price: 1, user_id: 1);
recipe_food139 = RecipeFood.create(quantity: 1, food_id: 139, recipe_id: 17);

food140 = Food.create(name: 'Unsalted butter, melted', unit: ' tsp', price: 1, user_id: 1);
recipe_food140 = RecipeFood.create(quantity: 4, food_id: 140, recipe_id: 17);

recipe18 = Recipe.create(
    name: "Homemade Sausage",
    description: "Nothing beats homemade! These sausage patties are so so easy to make and they’re also freezer-friendly. Win-win!",
    prep_time: '5 mins',
    cook_time: '10 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'SAGE MIXTURE: In a small bowl, combine sage, thyme, fennel seeds, red pepper flakes, nutmeg, 1 1/2 teaspoons salt and 1 teaspoon pepper.',
        'In a large bowl, combine pork, bacon, maple syrup and SAGE MIXTURE; be careful not to over mix.',
        'To shape the patties, scoop out 0.25 cup (about 2 ounces) of pork mixture and flatten to create 2 0.5- to 3-inch wide patties, forming about 16 patties.*',
        'Heat canola oil in a large skillet over medium heat. Add sausage patties and cook until browned, about 2-3 minutes per side.'
    ],
    img: 'https://s23209.pcdn.co/wp-content/uploads/2021/01/Homemade-Breakfast-SausageIMG_1649.jpg'
)

food141 = Food.create(name: 'Chopped fresh sage leaves', unit: ' cups', price: 1, user_id: 1);
recipe_food141 = RecipeFood.create(quantity: 1, food_id: 141, recipe_id: 18);

food142 = Food.create(name: "Ground cinnamon", unit: ' tsp', price: 1, user_id: 1);
recipe_food142 = RecipeFood.create(quantity: 2, food_id: 142, recipe_id: 18);

food143 = Food.create(name: 'Fennel seeds, crushed', unit: ' tsp', price: 1, user_id: 1);
recipe_food143 = RecipeFood.create(quantity: 1, food_id: 143, recipe_id: 18);

food144 = Food.create(name: 'Crushed red pepper flakes, optional', unit: ' tsp', price: 0.5, user_id: 1);
recipe_food144 = RecipeFood.create(quantity: 1, food_id: 144, recipe_id: 18);

recipe_food033 = RecipeFood.create(quantity: 1/8, food_id: 131, recipe_id: 18);

food145 = Food.create(name: 'Ground pork', unit: '00g', price: 7, user_id: 1);
recipe_food145 = RecipeFood.create(quantity: 7, food_id: 145, recipe_id: 18);

recipe_food034 = RecipeFood.create(quantity: 3, food_id: 65, recipe_id: 18);

recipe_food035 = RecipeFood.create(quantity: 2, food_id: 67, recipe_id: 18);

food146 = Food.create(name: 'Canola oil', unit: ' tsp', price: 10, user_id: 1);
recipe_food146 = RecipeFood.create(quantity: 1, food_id: 146, recipe_id: 18);

recipe19 = Recipe.create(
    name: "Hearty pasta soup",
    description: "Do something different with a pack of tortellini. This filling soup is full of fibre and veg, plus it's low in fat. The perfect lunch or supper",
    prep_time: '5 mins',
    cook_time: '25 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Heat oil in a pan. Fry the carrots and onion for 5 mins until starting to soften. Add the stock and tomatoes, then simmer for 10 mins. Add the peas and beans with 5 mins to go.',
        'Once veg is tender, stir in the pasta. Return to the boil and simmer for 2 mins until the pasta is just cooked. Stir in the basil, if using. Season, then serve in bowls topped with a sprinkling of Parmesan and slices of garlic bread.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1201760_11-9e59547.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food036 = RecipeFood.create(quantity: 1, food_id: 79, recipe_id: 19);

food147 = Food.create(name: 'Carrots, chopped', unit: '', price: 5, user_id: 1);
recipe_food147 = RecipeFood.create(quantity: 2, food_id: 147, recipe_id: 19);

food148 = Food.create(name: 'Large onion, finely chopped', unit: '', price: 5, user_id: 1);
recipe_food148 = RecipeFood.create(quantity: 1, food_id: 148, recipe_id: 19);

food149 = Food.create(name: 'Vegetable stock', unit: '', price: 3, user_id: 1);
recipe_food149 = RecipeFood.create(quantity: 1, food_id: 149, recipe_id: 19);

recipe_food037 = RecipeFood.create(quantity: 4, food_id: 20, recipe_id: 19);

food150 = Food.create(name: 'Frozen mixed peas and beans', unit: '00g', price: 15, user_id: 1);
recipe_food150 = RecipeFood.create(quantity: 2, food_id: 150, recipe_id: 19);

food151 = Food.create(name: 'Pack fresh filled tortellini (we used spinach and ricotta)', unit: '50g', price: 10, user_id: 1);
recipe_food151 = RecipeFood.create(quantity: 2, food_id: 151, recipe_id: 19);

food152 = Food.create(name: 'Handful of basil leaves (optional)', unit: '', price: 7, user_id: 1);
recipe_food152 = RecipeFood.create(quantity: 1, food_id: 152, recipe_id: 19);

food153 = Food.create(name: 'Grated parmesan (or vegetarian alternative), to serve', unit: '', price: 2, user_id: 1);
recipe_food153 = RecipeFood.create(quantity: 1, food_id: 153, recipe_id: 19);

recipe20 = Recipe.create(
    name: "Ultimate roast potatoes",
    description: "This foolproof recipe will ensure even first timers get crispy skins and fluffy insides. Make sure your roast potatoes are perfect for Sunday lunch or even Christmas dinner",
    prep_time: '15 mins - 20 mins',
    cook_time: '50 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category2.id,
    instructions: [
        'Put a roasting tin in the oven (one big enough to take the potatoes in a single layer) and heat oven to 200C/fan 180C/gas 6.',
        'Peel 1kg potatoes and cut each into 4 even-sized pieces if they are medium size, 2-3 if smaller (5cm pieces).',
        'Drop the potatoes into a large pan and pour in enough water to barely cover them.',
        'Add salt, then wait for the water to boil. As soon as the water reaches a full rolling boil, lower the heat, put your timer on and simmer the potatoes uncovered, reasonably vigorously, for 2 mins.',
        "Meanwhile, put 100g duck or goose fat or 100ml olive oil into the hot roasting tin and heat it in the oven for a few mins, so it’s really hot.",
        'Drain the potatoes in a colander then shake the colander back and forth a few times to fluff up the outsides.',
        'Sprinkle with 2 tsp flour and give another shake or two so they are evenly and thinly coated.',
        'Carefully put the potatoes into the hot fat – they will sizzle as they go in – then turn and roll them around so they are coated all over.',
        'Spread them in a single layer making sure they have plenty of room.',
        'Roast the potatoes for 15 mins, then take them out of the oven and turn them over.',
        'Roast for another 15 mins and turn them over again. Put them back in the oven for another 10-20 mins, or however long it takes to get them really golden and crisp. The colouring will be uneven, which is what you want.',
        'Scatter with Maldon salt and serve straight away.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/roast-potatoes-main-7b0e23a.jpg?quality=90&webp=true&resize=440,400'
)

food154 = Food.create(name: 'Potatoes', unit: 'kg', price: 2, user_id: 1);
recipe_food154 = RecipeFood.create(quantity: 1, food_id: 154, recipe_id: 20);

food155 = Food.create(name: 'Olive oil', unit: '00ml', price: 10, user_id: 1);
recipe_food155 = RecipeFood.create(quantity: 1, food_id: 155, recipe_id: 20);

food156 = Food.create(name: 'Flour', unit: ' tsp', price: 1, user_id: 1);
recipe_food156 = RecipeFood.create(quantity: 2, food_id: 156, recipe_id: 20);

food157 = Food.create(name: 'Maldon salt, to serve', unit: '', price: 10, user_id: 1);
recipe_food157 = RecipeFood.create(quantity: 1, food_id: 157, recipe_id: 20);

recipe21 = Recipe.create(
    name: "Oven Fried Chicken Breast",
    description: "The spice rub tastes just like your favorite KFC. SO MUCH FLAVOR! This baked fried chicken breast recipe is one of our favorites to make year round.",
    prep_time: '15 mins',
    cook_time: '1 hour 5 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        'Cut chicken breasts into 4 portions.',
        'Marinate chicken in milk for 20 minutes.',
        'Mix together the breading mixture.',
        'Coat the baking pan with parchment and melted butter.',
        'Dip chicken in the flour/breading mixture.',
        'Bake chicken at 400°F for 35-40 minutes.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2014/06/baked-fried-chicken-recipe-2-of-6.jpg'
)

food158 = Food.create(name: 'Skinless, boneless chicken breasts', unit: '', price: 6, user_id: 1);
recipe_food158 = RecipeFood.create(quantity: 3, food_id: 158, recipe_id: 21);

food159 = Food.create(name: 'Buttermilk', unit: '', price: 15, user_id: 1);
recipe_food159 = RecipeFood.create(quantity: 1, food_id: 159, recipe_id: 21);

food160 = Food.create(name: 'All-purpose flour ', unit: '', price: 10, user_id: 1);
recipe_food160 = RecipeFood.create(quantity: 1, food_id: 160, recipe_id: 21);

food161 = Food.create(name: 'Paprika, all-purpose seasoning, and salt and pepper', unit: '', price: 20, user_id: 1);
recipe_food161 = RecipeFood.create(quantity: 1, food_id: 161, recipe_id: 21);

food162 = Food.create(name: 'Butter', unit: '0g', price: 10, user_id: 1);
recipe_food162 = RecipeFood.create(quantity: 1, food_id: 162, recipe_id: 21);

recipe22 = Recipe.create(
    name: "Swedish Meatballs (Best Sauce!)",
    description: "Swedish Meatballs are something every type of cook, from home cook to master chef, should know how to make. This delicious recipe features a simple and juicy meatball that anyone can make, baked in the absolute best sauce ever.",
    prep_time: '10 mins',
    cook_time: '40 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        'Cover 2 large cooking sheets with foil and spray the foil with cooking spray. Preheat oven to 400F.',
        'In a large bowl, combine breadcrumbs, milk, cream, egg, salt, pepper, allspice, nutmeg and parsley. Set the mixture aside to allow the milk to soak into the breadcrumbs, at least 10 minutes.',
        'Heat 1 tablespoon butter and 1 tablespoon oil in a medium skillet over medium heat. Add the minced onion and sauté until translucent. Add the minced garlic and sauté 30 seconds. Transfer the onion/garlic mixture to the breadcrumb mixture.',
        'Once the breadcrumb mixture is ready, add the ground chuck and chicken. Mix well using a wooden spoon. Roll meat into 1½-inch balls (or use a 1½ inch scoop) and place on the prepared sheet pan 1 inch apart. Cook 20 minutes or until no longer 
        pink in the center.',
        'While meatballs are cooking, prepare the sauce.',
        'Melt the butter in a large skillet. Add the flour to the butter and whisk well. Cook over med-low heat until mixture turns a little darker. Whisk often. Add beef broth, chicken broth, cream, sour cream, soy sauce, Dijon mustard, Worcestershire 
        sauce, cider vinegar, sugar and black pepper. Taste, then season with salt, if needed. Bring to a boil over medium heat, then reduce heat to low and add the meatballs. Simmer, stirring gently & often, until gravy has thickened. Add chopped parsley 
        and stir gently.',
        'Serve over egg noodles, mashed potatoes or macaroni.',
        'If eating Swedish Meatballs without noodles or a side dish, serve with a teaspoon of Lingonberry Jam or Cranberry Sauce on the side, optional.',
        'Enjoy!'
    ],
    img: 'https://www.livingchirpy.com/wp-content/uploads/2021/03/keto-swedish-meatballs-1.jpg'
)

food163 = Food.create(name: 'Beef and Chicken Broth', unit: '00g', price: 10, user_id: 1);
recipe_food163 = RecipeFood.create(quantity: 5, food_id: 163, recipe_id: 22);

food164 = Food.create(name: 'Heavy Cream', unit: '', price: 36, user_id: 1);
recipe_food164 = RecipeFood.create(quantity: 1, food_id: 164, recipe_id: 22);

food165 = Food.create(name: 'Sour Cream', unit: '', price: 16, user_id: 1);
recipe_food165 = RecipeFood.create(quantity: 1, food_id: 165, recipe_id: 22);

food166 = Food.create(name: 'Beef Bouillon Granules', unit: '', price: 46, user_id: 1);
recipe_food166 = RecipeFood.create(quantity: 1, food_id: 166, recipe_id: 22);

food167 = Food.create(name: 'Soy Sauce', unit: '', price: 36, user_id: 1);
recipe_food167 = RecipeFood.create(quantity: 1, food_id: 167, recipe_id: 22);

recipe_food038 = RecipeFood.create(quantity: 1, food_id: 160, recipe_id: 22);

food168 = Food.create(name: 'Dijon Mustard', unit: '', price: 26, user_id: 1);
recipe_food168 = RecipeFood.create(quantity: 1, food_id: 168, recipe_id: 22);

food169 = Food.create(name: 'Worcestershire Sauce', unit: '', price: 26, user_id: 1);
recipe_food169 = RecipeFood.create(quantity: 1, food_id: 169, recipe_id: 22);

food170 = Food.create(name: 'Cider Vinegar', unit: '', price: 36, user_id: 1);
recipe_food170 = RecipeFood.create(quantity: 1, food_id: 170, recipe_id: 22);

food171 = Food.create(name: 'Granulated Sugar', unit: '', price: 18, user_id: 1);
recipe_food171 = RecipeFood.create(quantity: 1, food_id: 171, recipe_id: 22);

food172 = Food.create(name: 'Salt (to taste, if needed) and Pepper', unit: '', price: 10, user_id: 1);
recipe_food172 = RecipeFood.create(quantity: 1, food_id: 172, recipe_id: 22);

food173 = Food.create(name: 'Parsley', unit: '', price: 8, user_id: 1);
recipe_food173 = RecipeFood.create(quantity: 1, food_id: 173, recipe_id: 22);

recipe23 = Recipe.create(
    name: "Healthy roast dinner",
    description: "Cook a healthy, low-fat version of roast beef for two, made with lean, juicy steak and roasted veg, plus gravy on the side",
    prep_time: '15 mins',
    cook_time: '50 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        "Heat the oven to 180C/160C fan/gas 4. Bring a large pan of water to the boil and cook the potatoes for 5 mins. Drain, reserving the water.",
        'Toss the potatoes, carrots, onions and sprouts with 2 tsp of the oil to coat. Arrange on a non-stick baking sheet, spaced apart. Scatter with 1 tsp of the thyme, grind over some black pepper, then roast for 30 mins.',
        'Meanwhile, mix 1 tsp of the vinegar with the garlic, remaining thyme and oil, the mustard and plenty of black pepper. Rub this over the steak, put in a shallow dish and set aside. Mix the rest of the vinegar with the bouillon and 125ml of 
        the reserved water from step 1, then set aside. After 30 mins, turn the veg over and roast for 15 mins more.',
        'Meanwhile, heat a small non-stick frying pan over a medium-high heat. Lift the steak out of the marinade, shake off the excess and fry for 2-3 mins on each side until cooked to your liking. Remove to a board and leave to rest. Pour the leftover marinade 
        into the frying pan and bubble until thickened slightly to make a gravy. Slice the steak and serve with the roast veg and gravy on the side.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2021/09/Healthy-roast-dinner-8757ce1.jpg?quality=90&webp=true&resize=900,817'
)

food174 = Food.create(name: 'Medium potatoes, thickly sliced', unit: '85g', price: 14, user_id: 1);
recipe_food174 = RecipeFood.create(quantity: 2, food_id: 174, recipe_id: 23);

food175 = Food.create(name: 'Small carrots (160g), halved lengthways', unit: '', price: 5, user_id: 1);
recipe_food175 = RecipeFood.create(quantity: 4, food_id: 175, recipe_id: 23);

food176 = Food.create(name: 'Red onions, cut into quarters', unit: 'x 80g', price: 10, user_id: 1);
recipe_food176 = RecipeFood.create(quantity: 2, food_id: 176, recipe_id: 23);

food177 = Food.create(name: 'Large Brussels sprouts (about 8-10), trimmed', unit: '70g', price: 20, user_id: 1);
recipe_food177 = RecipeFood.create(quantity: 1, food_id: 177, recipe_id: 23);

food178 = Food.create(name: 'Rapeseed oil', unit: ' tsp', price: 2, user_id: 1);
recipe_food178 = RecipeFood.create(quantity: 3, food_id: 178, recipe_id: 23);

recipe_food79 = RecipeFood.create(quantity: 2, food_id: 75, recipe_id: 23);

food179 = Food.create(name: 'Balsamic vinegar', unit: ' tsp', price: 1, user_id: 1);
recipe_food179 = RecipeFood.create(quantity: 2, food_id: 179, recipe_id: 23);

recipe_food039 = RecipeFood.create(quantity: 3, food_id: 17, recipe_id: 23);

food180 = Food.create(name: 'English mustard powder', unit: ' pinches', price: 1, user_id: 1);
recipe_food180 = RecipeFood.create(quantity: 2, food_id: 180, recipe_id: 23);

food181 = Food.create(name: 'Thick, lean fillet steak', unit: '70g', price: 40, user_id: 1);
recipe_food181 = RecipeFood.create(quantity: 1, food_id: 181, recipe_id: 23);

food182 = Food.create(name: 'Vegetable bouillon powder', unit: ' tsp', price: 1, user_id: 1);
recipe_food182 = RecipeFood.create(quantity: 1, food_id: 182, recipe_id: 23);

recipe24 = Recipe.create(
    name: "Baked Chicken Tacos Recipe",
    description: "Chicken Tacos are the perfect EASY weeknight dinner. These OVEN BAKED chicken tacos have lots of flavor and none of the stress. The ultimate recipe for serving a crowd.",
    prep_time: '10 mins',
    cook_time: '25 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        'Preheat oven to 400°F. Spray a 9×13 baking dish with nonstick spray.',
        'Heat olive oil over medium heat in a medium skillet.',
        'Add onion to skillet and cook for 2-3 minutes, or until the onion is translucent and fragrant.',
        'Stir in the chicken, taco seasoning, tomatoes (FULLY DRAINED), and green chiles (FULLY  DRAINED) *see note. Stir to combine fully. Reduce to simmer and allow to cook for 5-8 minutes.',
        'Place the taco shells in the baking dish, standing up. I was able to fit 10 taco shells in the dish by adding 2 on each side.',
        'Bake the taco shells for 5 minutes by themselves to allow them to crisp up. Remove from the oven.',
        'Spoon 1 tablespoon of beans into the bottom of each taco shell. Top with the chicken mixture, almost to the top of each shell.',
        'Sprinkle each shell generously with shredded cheese, the more the better!',
        'Bake for 7-10 minutes or until cheese is fully melted and the edges of the shells are browned.',
        'Remove from the oven and top with your favorite items such as jalapenos, sour cream, cilantro, and salsa.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2015/12/oven-baked-spicy-chicken-tacos-4-of-14.jpg'
)

recipe_food040 = RecipeFood.create(quantity: 1, food_id: 155, recipe_id: 24);

recipe_food041 = RecipeFood.create(quantity: 1, food_id: 153, recipe_id: 24);

food183 = Food.create(name: 'Chicken', unit: '', price: 50, user_id: 1);
recipe_food183 = RecipeFood.create(quantity: 1, food_id: 183, recipe_id: 24);

food184 = Food.create(name: 'Taco shells', unit: '', price: 30, user_id: 1);
recipe_food184 = RecipeFood.create(quantity: 1, food_id: 184, recipe_id: 24);

recipe_food42 = RecipeFood.create(quantity: 2, food_id: 21, recipe_id: 24);

recipe_food043 = RecipeFood.create(quantity: 2, food_id: 28, recipe_id: 24);

recipe_food044 = RecipeFood.create(quantity: 1, food_id: 164, recipe_id: 24);

food185 = Food.create(name: 'Salsa', unit: '', price: 30, user_id: 1);
recipe_food185 = RecipeFood.create(quantity: 1, food_id: 185, recipe_id: 24);

recipe25 = Recipe.create(
    name: "Italian Stuffed Shells with Meat and Cheese",
    description: "Homemade Stuffed Shells with Meat and Cheese are baked casserole-style with meat sauce, plenty of cheese, and tons of Italian flavor. This easy favorite recipe is perfect for any night of the week. Your whole family will love this Stuffed 
    Jumbo Shells recipe!",
    prep_time: '20 mins',
    cook_time: '1 hour 20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        'Cook the jumbo pasta shells to al dente.',
        'Brown the beef and make the meat sauce.',
        'Stuff the shells with cheese and arrange them in the baking dish with the sauce.',
        'Cover the casserole dish and bake.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2019/05/italian-stuffed-shells-recipe-1-of-8.jpg'
)

food186 = Food.create(name: 'Jumbo Pasta Shells', unit: '', price: 25, user_id: 1);
recipe_food186 = RecipeFood.create(quantity: 1, food_id: 186, recipe_id: 25);

food187 = Food.create(name: 'Olive oil, ground beef, onion, garlic, and marinara', unit: '', price: 30, user_id: 1);
recipe_food187 = RecipeFood.create(quantity: 1, food_id: 187, recipe_id: 25);

food188 = Food.create(name: 'Egg, cottage cheese, mozzarella, and parmesan', unit: '', price: 60, user_id: 1);
recipe_food188 = RecipeFood.create(quantity: 1, food_id: 188, recipe_id: 25);

food189 = Food.create(name: 'More mozzarella and parmesan, and fresh basil for garnish', unit: '', price: 40, user_id: 1);
recipe_food189 = RecipeFood.create(quantity: 1, food_id: 189, recipe_id: 25);

recipe26 = Recipe.create(
    name: "Baked Ranch Chicken with Bacon (Chicken Bacon Ranch)",
    description: "This Bacon Ranch Chicken is super simple (only FIVE ingredients!), absolutely fool-proof, and has so much flavor. Your baked chicken will come out juicy and tender every single time covered in the easiest and tastiest bacon ranch sauce. 
    Ranch Chicken has never tasted better!",
    prep_time: '10 mins',
    cook_time: '30 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        'Heat oven to 375°F and spray an 8 x 11-inch baking dish with cooking spray.',
        'If the breasts are uneven in thickness, pound them to an even 1” thickness using a meat pounder.',
        'Sprinkle both sides of meat with half the grated Parmesan cheese, salt and freshly ground black pepper. Place the chicken in the prepared baking dish.',
        'In a medium bowl, whisk together Ranch dressing and sour cream. Pour the mixture over the chicken breasts and sprinkle with remaining Parmesan cheese.',
        'Bake at 375°F for 20-30 minutes or until a meat thermometer inserted in the thickest part of the breast reads 150°F.',
        'Set oven to broil and broil the breast an additional 2-4 minutes or until the chicken turns golden. It will burn quickly so watch closely.',
        'The chicken is cooked through when the thermometer reads 160°F when inserted in the thickest part of the middle breast.',
        'Remove from the oven and sprinkle with cooked bacon crumbles. Allow the chicken to rest a few minutes before serving.',
        'Garnish with diced parsley, if desired.',
        'Enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2018/06/large-photos.jpg'
)

recipe_food045 = RecipeFood.create(quantity: 4, food_id: 158, recipe_id: 26);

food190 = Food.create(name: 'Ranch dressing', unit: ' ½ cups', price: 10, user_id: 1);
recipe_food190 = RecipeFood.create(quantity: 1, food_id: 190, recipe_id: 26);

food191 = Food.create(name: 'Sour cream', unit: ' ½ cups', price: 10, user_id: 1);
recipe_food191 = RecipeFood.create(quantity: 1, food_id: 191, recipe_id: 26);

food192 = Food.create(name: 'Grated Parmesan cheese divided', unit: ' - 1 ½ cups', price: 20, user_id: 1);
recipe_food192 = RecipeFood.create(quantity: 1, food_id: 192, recipe_id: 26);

food193 = Food.create(name: 'Kosher salt', unit: '', price: 10, user_id: 1);
recipe_food193 = RecipeFood.create(quantity: 1, food_id: 193, recipe_id: 26);

food194 = Food.create(name: 'Freshly grated black pepper', unit: '', price: 10, user_id: 1);
recipe_food194 = RecipeFood.create(quantity: 1, food_id: 194, recipe_id: 26);

food195 = Food.create(name: 'Cooked bacon crumbles', unit: ' cup', price: 8, user_id: 1);
recipe_food195 = RecipeFood.create(quantity: 1, food_id: 195, recipe_id: 26);

recipe_food046 = RecipeFood.create(quantity: 1, food_id: 173, recipe_id: 26);

recipe27 = Recipe.create(
    name: "Christmas dinner sausage roll",
    description: "Combine the best bits of a Christmas dinner in one moreish bite with these canapés. Ideal for a festive buffet",
    prep_time: '20 mins',
    cook_time: '30 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        'Heat the oven to 200C/180C fan/ gas 6. Line a large baking tray with baking parchment. Unroll the pastry and cut in half lengthways. Spread the cranberry sauce down the middle of each half, leaving a 1-2cm border at each side.',
        'Combine the mince with the stuffing mix and 1 tbsp water, then season. Spoon the mixture over the cranberry sauce, pressing down slightly, then lay the chipolatas on top in a line across the middle of each pastry half. Brush some of 
        the egg along one edge of each pastry half, then fold up and over the filling, and press to seal to make two long sausage rolls. Turn them so the seams are underneath. Cut both into eight pieces (you should have 16 in total), then 
        transfer to the tray. Brush with the remaining egg, then press a sage leaf on top of each roll. At this stage, you can freeze the rolls on the tray. Transfer to a container to keep frozen for up to two months.',
        'Bake for 25-30 mins until golden (or 35-40 mins from frozen). Serve warm with gravy for dunking. Will keep chilled in an airtight container for up to three days.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/10/Christmas-dinner-sausage-rolls-89ed0fa.jpg?quality=90&webp=true&resize=900,817'
)

food196 = Food.create(name: 'Ready-rolled puff pastry', unit: '75g', price: 10, user_id: 1);
recipe_food196 = RecipeFood.create(quantity: 3, food_id: 196, recipe_id: 27);

food197 = Food.create(name: 'Cranberry sauce', unit: ' heaped tbsp', price: 3, user_id: 1);
recipe_food197 = RecipeFood.create(quantity: 2, food_id: 197, recipe_id: 27);

food198 = Food.create(name: 'Turkey thigh mince', unit: '00g', price: 20, user_id: 1);
recipe_food198 = RecipeFood.create(quantity: 2, food_id: 198, recipe_id: 27);

food199 = Food.create(name: 'Dried stuffing mix', unit: '0g', price: 2, user_id: 1);
recipe_food199 = RecipeFood.create(quantity: 5, food_id: 199, recipe_id: 27);

food200 = Food.create(name: 'Chipolatas', unit: '', price: 4, user_id: 1);
recipe_food200 = RecipeFood.create(quantity: 6, food_id: 200, recipe_id: 27);

food201 = Food.create(name: 'Egg, beaten', unit: '', price: 1, user_id: 1);
recipe_food201 = RecipeFood.create(quantity: 1, food_id: 201, recipe_id: 27);

recipe_food047 = RecipeFood.create(quantity: 16, food_id: 95, recipe_id: 27);

food202 = Food.create(name: 'Gravy, to serve', unit: '', price: 15, user_id: 1);
recipe_food202 = RecipeFood.create(quantity: 1, food_id: 202, recipe_id: 27);

recipe28 = Recipe.create(
    name: "One-pan roast dinner",
    description: "Take the stress out of a Sunday roast with this one-pan recipe that couldn't be simpler",
    prep_time: '20 mins',
    cook_time: '1 hr and 20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        "Heat oven to 220C/200C fan/gas 7. Snip the string or elastic off the chicken if it’s tied up, then place in a big roasting tin. Shove the lemon halves into the cavity. Rub the butter, herbs and seasoning all over the chicken. Put the 
        potatoes and carrots around it, drizzle everything with oil, season and toss together.",
        'Roast for 20 mins, then turn the oven down to 200C/180C fan/gas 6 and roast for 50 mins more. Stir the peas, stock and Marmite into the veg in the tin, then return to the oven for 10 mins more.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-513808_11-c61f40b.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food048 = RecipeFood.create(quantity: 1, food_id: 185, recipe_id: 28);

food203 = Food.create(name: 'lemon, halved', unit: '', price: 5, user_id: 1);
recipe_food203 = RecipeFood.create(quantity: 1, food_id: 203, recipe_id: 28);

recipe_food43 = RecipeFood.create(quantity: 5, food_id: 43, recipe_id: 28);

food204 = Food.create(name: 'Dried mixed herbs', unit: '', price: 0.25, user_id: 1);
recipe_food204 = RecipeFood.create(quantity: 2, food_id: 204, recipe_id: 28);

food205 = Food.create(name: 'Potatoes, chopped into roastie size', unit: '', price: 5, user_id: 1);
recipe_food205 = RecipeFood.create(quantity: 7, food_id: 205, recipe_id: 28);

food206 = Food.create(name: 'Carrots, roughly 500g, each chopped into 2-3 chunks', unit: '', price: 5, user_id: 1);
recipe_food206 = RecipeFood.create(quantity: 7, food_id: 206, recipe_id: 28);

food207 = Food.create(name: 'Olive oil', unit: ' tbsp', price: 1, user_id: 1);
recipe_food207 = RecipeFood.create(quantity: 2, food_id: 207, recipe_id: 28);

food208 = Food.create(name: 'Frozen peas', unit: '00g', price: 15, user_id: 1);
recipe_food208 = RecipeFood.create(quantity: 1, food_id: 208, recipe_id: 28);

food209 = Food.create(name: 'Chicken stock', unit: '00ml', price: 3, user_id: 1);
recipe_food209 = RecipeFood.create(quantity: 3, food_id: 209, recipe_id: 28);

food210 = Food.create(name: 'Marmite', unit: ' tsp', price: 3, user_id: 1);
recipe_food210 = RecipeFood.create(quantity: 1, food_id: 210, recipe_id: 28);

recipe29 = Recipe.create(
    name: "Christmas dinner wellington",
    description: "Mix up your festive main with this fabulous Christmas dinner wellington. A make-ahead meal in one, it incorporates stuffing and cranberry sauce, so all you need to think about on the big day is the veg and gravy",
    prep_time: '30 mins',
    cook_time: '1 hour 15 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        'Heat the oil in a pan. Add the onion and cook for 8-10 mins until soft. Tip into a bowl and leave to cool.',
        'Cover a chopping board with cling film and place a chicken breast on top. Cover the chicken with more cling film. Use a rolling pin to gently bash the thicker part of the chicken until the whole chicken breast is an even thickness of 
        about ½cm. Repeat with the remaining breasts.',
        "Mix the sausagemeat, herbs and breadcrumbs into the cooled onions. On your worktop, make a double layer of cling film, about 30 x 40cm in size. Lay the prosciutto on top, covering as much of the cling film's surface area as possible. 
        Top with the chicken breasts, placing them to fit together (cut into smaller pieces if you need to) and arranging them to completely cover the prosciutto. Season the chicken.",
        'Cover the chicken with the sausagemeat mixture, spreading it right to the edges. Stir the cranberry sauce to loosen it, then spread over the sausagemeat. Roll the chicken up tightly from one of the longer sides (using the cling film to 
        help you but keeping the cling film on the outside), encasing the fillings in a spiral inside. The prosciutto should be the outermost layer. Wrap the roulade in a large sheet of cling film and twist at the ends to seal, then freeze for 30 mins.',
        'On a floured surface, roll out one block of pastry to the thickness of a £1 coin. Place on a baking tray lined with parchment. Unwrap the chicken roulade and place on top of the pastry. Trim the pastry to a rectangle, leaving 2-3cm all the way 
        around the base of the roulade. Save the off-cuts for decorating the top.',
        'Roll out the second piece of pastry to the same thickness as the first. Whisk together the egg and extra yolk and brush a little around the edge of the pastry base. Drape the second piece of pastry over the roulade, moulding it tightly around 
        the meat and pushing out any air pockets. Trim off any excess pastry, leaving a border of about 2cm.',
        "Crimp the border with your thumb and forefingers, or use a fork to press around the edge to seal (flour the fork if the pastry begins to stick). Brush the wellington all over with the egg wash. Use the reserved pastry off-cuts to decorate the 
        wellington as you like, or score through the top layer with a sharp knife. Cover and chill for at least 1 hr, or for up to 48 hrs. Can be frozen at this stage for up to two months (defrost in the fridge before cooking). When you’re ready to cook, 
        heat the oven to 200C/180C fan/gas 6.",
        "If you have any egg wash left over, brush the wellington with a little more just before baking. Cook for 1 hr 15 mins until the pastry is golden and crisp. If you've previously frozen the wellington, make sure it's cooked through by poking a sharp 
        knife into the centre and checking the tip comes out very hot. Serve with mash or roast potatoes, veg and gravy, if you like. Chicken is much juicier than beef, so have some kitchen paper to hand ready for when you cut into the wellington."
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/christmas-wellington-17c695f.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food044 = RecipeFood.create(quantity: 1, food_id: 14, recipe_id: 29);

recipe_food045 = RecipeFood.create(quantity: 1, food_id: 148, recipe_id: 29);

recipe_food046 = RecipeFood.create(quantity: 6, food_id: 158, recipe_id: 29);

food211 = Food.create(name: 'Sausagemeat', unit: '00g', price: 10, user_id: 1);
recipe_food211 = RecipeFood.create(quantity: 4, food_id: 211, recipe_id: 29);

food212 = Food.create(name: 'Small bunch winter herbs (we used rosemary, thyme and sage), chopped', unit: '', price: 10, user_id: 1);
recipe_food212 = RecipeFood.create(quantity: 1, food_id: 212, recipe_id: 29);

food213 = Food.create(name: 'Fresh breadcumbs', unit: '00g', price: 10, user_id: 1);
recipe_food213 = RecipeFood.create(quantity: 1, food_id: 213, recipe_id: 29);

food214 = Food.create(name: 'Prosciutto or parma ham', unit: ' slices', price: 1, user_id: 1);
recipe_food214 = RecipeFood.create(quantity: 10, food_id: 214, recipe_id: 29);

food215 = Food.create(name: 'Cranberry sauce', unit: '50g jar', price: 15, user_id: 1);
recipe_food215 = RecipeFood.create(quantity: 2, food_id: 215, recipe_id: 29);

food216 = Food.create(name: 'Blocks all-butter puff pastry', unit: ' x 500g', price: 15, user_id: 1);
recipe_food216 = RecipeFood.create(quantity: 2, food_id: 216, recipe_id: 29);

food217 = Food.create(name: 'Plain flour, for rolling', unit: '', price: 15, user_id: 1);
recipe_food217 = RecipeFood.create(quantity: 1, food_id: 217, recipe_id: 29);

recipe_food047 = RecipeFood.create(quantity: 1, food_id: 24, recipe_id: 29);

recipe30 = Recipe.create(
    name: "Bolognese with a difference",
    description: "A classic with a few added extras, everyone loves a good spag bol",
    prep_time: '10 mins',
    cook_time: '50 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category3.id,
    instructions: [
        "Heat the olive oil in a large pan and cook the chopped onion, garlic and chopped celery for 3-4 minutes over a medium heat until the onion has softened slightly. Tip in the lean minced beef and cook, stirring occasionally, for 3-4 minutes until 
        browned all over. Stir in the sun-dried tomato paste and cook for 1 minute.",
        'Add the chopped tomatoes. Pour the beef stock into the empty tomato can, swish around then add to the pan. Stir in the pitted black chopped olives. Bring to the boil, reduce the heat, then cover and simmer gently for 35-40 minutes, until very 
        tender. Season well and stir in a handful of fresh torn basil leaves.',
        'Toss with cooked spaghetti and serve.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-385484_10-4a61b7f.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food048 = RecipeFood.create(quantity: 2, food_id: 208, recipe_id: 30);

recipe_food049 = RecipeFood.create(quantity: 1, food_id: 153, recipe_id: 30);

recipe_food050 = RecipeFood.create(quantity: 2, food_id: 17, recipe_id: 30);

food218 = Food.create(name: 'Finely chopped celery', unit: '', price: 15, user_id: 1);
recipe_food218 = RecipeFood.create(quantity: 1, food_id: 218, recipe_id: 30);

food219 = Food.create(name: 'Minced beef', unit: '50g', price: 10, user_id: 1);
recipe_food219 = RecipeFood.create(quantity: 4, food_id: 219, recipe_id: 30);

food220 = Food.create(name: 'Sun-dried tomato paste', unit: ' tbsp', price: 1, user_id: 1);
recipe_food220 = RecipeFood.create(quantity: 2, food_id: 220, recipe_id: 30);

recipe_food51 = RecipeFood.create(quantity: 4, food_id: 20, recipe_id: 30);

food221 = Food.create(name: 'Beef stock', unit: '50ml', price: 8, user_id: 1);
recipe_food221 = RecipeFood.create(quantity: 1, food_id: 221, recipe_id: 30);

food222 = Food.create(name: 'Chopped olive', unit: '0g', price: 0.5, user_id: 1);
recipe_food222 = RecipeFood.create(quantity: 5, food_id: 222, recipe_id: 30);

recipe_food052 = RecipeFood.create(quantity: 1, food_id: 157, recipe_id: 30);

food223 = Food.create(name: 'Spaghetti , to serve', unit: '', price: 25, user_id: 1);
recipe_food223 = RecipeFood.create(quantity: 1, food_id: 223, recipe_id: 30);

recipe31 = Recipe.create(
    name: "Easy banana muffins",
    description: "Make these moreish banana muffins for an easy breakfast or a snack on the go. They're also great for lunchboxes and will prove popular with the whole family.",
    prep_time: '15 mins',
    cook_time: '25 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Heat the oven to 190C/170C Fan/gas 5. Line a 12-hole muffin tin with paper cases. Sift together the flour, baking powder, bicarbonate of soda and caster sugar with a big pinch of salt. In a separate bowl mix the melted butter, vanilla extract, 
        eggs, mashed bananas and buttermilk.",
        'Make a well in the centre of the dry ingredients and pour the wet ingredients in. Roughly mix together with a fork, being careful not to over-mix. Scatter in the chopped pecans, if using, then spoon the mixture into the muffin cases. Top with 
        pecan halves, then bake for 20-25 mins, until golden brown. Cool on a wire rack.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/banana-muffins-943f3dc.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food053 = RecipeFood.create(quantity: 2, food_id: 7, recipe_id: 31);

food224 = Food.create(name: 'Baking powder', unit: ' tsp', price: 0.25, user_id: 1);
recipe_food224 = RecipeFood.create(quantity: 1, food_id: 224, recipe_id: 31);

recipe_food054 = RecipeFood.create(quantity: 1, food_id: 63, recipe_id: 31);

food225 = Food.create(name: 'Caster sugar', unit: '10g', price: 17, user_id: 1);
recipe_food225 = RecipeFood.create(quantity: 1, food_id: 225, recipe_id: 31);

food226 = Food.create(name: 'Butter, melted', unit: '5g', price: 3, user_id: 1);
recipe_food226 = RecipeFood.create(quantity: 7, food_id: 226, recipe_id: 31);

recipe_food055 = RecipeFood.create(quantity: 1, food_id: 139, recipe_id: 31);

recipe_food056 = RecipeFood.create(quantity: 2, food_id: 45, recipe_id: 31);

food227 = Food.create(name: 'Large ripe bananas, mashed', unit: '', price: 5, user_id: 1);
recipe_food227 = RecipeFood.create(quantity: 2, food_id: 227, recipe_id: 31);

food228 = Food.create(name: 'Buttermilk (or add 1 tsp of lemon juice to milk and leave for 20 mins)', unit: '25ml', price: 5, user_id: 1);
recipe_food228 = RecipeFood.create(quantity: 1, food_id: 228, recipe_id: 31);

recipe32 = Recipe.create(
    name: "Homemade Gardetto’s Snack Mix Recipe (Copycat Recipe)",
    description: "This recipe for Homemade Gardetto’s is a fun and easy way to make a delicious snack mix for your family! We love the flavor and that you can control all of the ingredients to make it just like your family loves it. ",
    prep_time: '15 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Preheat oven to 300°F. Since this recipe requires two baking sheets, set one oven rack to upper middle and one to lower middle.",
        'In a large mixing bowl, combine cereal, breadsticks and pretzels.',
        'In a small saucepan, over medium heat, combine butter, Dry Ranch Dip, Worcestershire sauce, hot sauce, seasoning salt, garlic powder and black pepper. Whisk well and cook until butter melts. Remove from heat.',
        "Stir well and pour butter mixture over the cereal mixture. Stir until all dry ingredients are thoroughly coated.",
        'Spread half of the cereal mixture, in an even layer, onto a baking sheet. Pour the remaining half over the second baking sheet.',
        'Place baking sheets in the 300°F oven and cook a total of 30 minutes. After 15 minutes, add half the Gardetto Rye Chips to each tray and stir.',
        "Rotate the baking sheets, top-to-bottom and front-to-back. Bake another 15 minutes. If the cereal isn't crispy, bake another 5-15 minutes.",
        'Pour the baked mix onto a clean dishcloth to cool.',
        'Store in an airtight container.',
        'Enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2018/01/homemade-gardettos-3-of-5.jpg'
)

food229 = Food.create(name: 'Chex cereal rice and corn work wel', unit: ' cups', price: 2, user_id: 1);
recipe_food229 = RecipeFood.create(quantity: 6, food_id: 229, recipe_id: 32);

food230 = Food.create(name: 'Grissini Torinesi Thin Breadsticks broken into 2" pieces', unit: ' ounce pkg', price: 3, user_id: 1);
recipe_food230 = RecipeFood.create(quantity: 3, food_id: 230, recipe_id: 32);

food231 = Food.create(name: 'Itty Bitty Minis Pretzels', unit: ' cups', price: 5, user_id: 1);
recipe_food231 = RecipeFood.create(quantity: 2, food_id: 231, recipe_id: 32);

food232 = Food.create(name: 'Butter 0.5 stick', unit: ' cups', price: 10, user_id: 1);
recipe_food232 = RecipeFood.create(quantity: 1, food_id: 232, recipe_id: 32);

food233 = Food.create(name: 'Ranch seasoning dry', unit: ' ounce', price: 1, user_id: 1);
recipe_food233 = RecipeFood.create(quantity: 1, food_id: 233, recipe_id: 32);

food234 = Food.create(name: 'Worcestershire sauce', unit: ' cup', price: 10, user_id: 1);
recipe_food234 = RecipeFood.create(quantity: 1, food_id: 234, recipe_id: 32);

food235 = Food.create(name: 'Hot sauce', unit: ' tbsp', price: 10, user_id: 1);
recipe_food235 = RecipeFood.create(quantity: 1, food_id: 235, recipe_id: 32);

food236 = Food.create(name: 'Seasoning Salt', unit: ' tsp', price: 10, user_id: 1);
recipe_food236 = RecipeFood.create(quantity: 1, food_id: 236, recipe_id: 32);

food237 = Food.create(name: 'Garlic powder', unit: ' ½ tbsp', price: 1, user_id: 1);
recipe_food237 = RecipeFood.create(quantity: 1, food_id: 237, recipe_id: 32);

food238 = Food.create(name: 'Black pepper', unit: ' tsp', price: 0.25, user_id: 1);
recipe_food238 = RecipeFood.create(quantity: 1, food_id: 238, recipe_id: 32);

food239 = Food.create(name: 'Gardetto Special Request Garlic Rye Chips', unit: ' cups', price: 5, user_id: 1);
recipe_food239 = RecipeFood.create(quantity: 2, food_id: 239, recipe_id: 32);

recipe33 = Recipe.create(
    name: "BBQ Chex Mix",
    description: "This homemade BBQ Chex mix is the most perfect snacking recipe for game day and beyond! loaded with flavor and super easy to make!",
    prep_time: '15 mins',
    cook_time: '45 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Mix together the cereal in a large bowl.",
        'Melt the batter and whisk in the seasonings.',
        'Pour the butter of the cereal and mix well.',
        "Place the mix on to baking sheets and cook until golden brown."
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2021/01/bbq-chex-mix-recipe-4.jpg'
)

recipe34 = Recipe.create(
    name: "Sweet and Salty Hot Buttered Cheerios Snack Mix",
    description: "Hot Buttered Cheerios are so tasty and so snackable! This sweet and salty snack mix recipe is sure to please guests at any party.",
    prep_time: '5 mins',
    cook_time: '20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Melt butter in a skillet over medium heat.",
        'Stir in the Worcestershire sauce and seasoned salt.',
        'Reduce heat to medium-low and stir in the Cheerios.',
        "Cook until the Cheerios are fully coated, and the Worcestershire and butter are fully absorbed. (should take about 3-4 minutes)",
        'Sprinkle the sugar over the cereal and cook just a couple more minutes.',
        'Spread the cereal mix onto a baking sheet, and cook about 10 minutes at 200°F (this will help the cereal dry out).'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2018/12/spicy-hot-buttered-cheerios-5-of-7.jpg'
)

food240 = Food.create(name: 'Granulated Sugar', unit: '', price: 15, user_id: 1);
recipe_food240 = RecipeFood.create(quantity: 1, food_id: 240, recipe_id: 34);

food241 = Food.create(name: 'Butter', unit: '', price: 15, user_id: 1);
recipe_food241 = RecipeFood.create(quantity: 1, food_id: 241, recipe_id: 34);

food242 = Food.create(name: 'Seasoned Salt', unit: '', price: 15, user_id: 1);
recipe_food242 = RecipeFood.create(quantity: 1, food_id: 242, recipe_id: 34);

food243 = Food.create(name: 'Worcestershire Sauce', unit: '', price: 28, user_id: 1);
recipe_food243 = RecipeFood.create(quantity: 1, food_id: 243, recipe_id: 34);

food244 = Food.create(name: 'Plain Cheerios & Honey Nut Cheerios', unit: '', price: 38, user_id: 1);
recipe_food244 = RecipeFood.create(quantity: 1, food_id: 244, recipe_id: 34);

recipe35 = Recipe.create(
    name: "Candied Corn Puffs Snack Mix Recipe",
    description: "If you are a fan of caramel corn then you will love these candied corn puffs! These little puffs are the perfect sweet, salty and crunchy mix for movie night, game day or just a delicious snack all to yourself.",
    prep_time: '15 mins',
    cook_time: '20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Line 3 large, rimmed baking sheets with parchment or waxed paper; set aside.",
        'Melt the almond bark in a clean, large, microwave-safe bowl for 1-2 minutes. Stir the almond bark every 15 seconds until melted.',
        'Pour the corn puffs into a huge bowl and pour the melted almond bark over the top. Use two rubber spatulas to “toss” the corn puffs until evenly coated.',
        "Spread the mixture onto the prepared baking sheets – spread out the corn puffs as much as possible. Sprinkle lightly with coarse sea salt. Many of the Candied Corn Puffs will be stuck together, so let them dry about 10 minutes and separate into 
        individual pieces. Let the corn puffs dry completely, about 1 hour, and place in an airtight container up to 4 days (although I don’t think they will last that long). If left in an open container, the puffs could get soggy.",
        'Enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2019/12/candied-corn-puffs-snack-mix-2-of-5.jpg'
)

food245 = Food.create(name: 'Package vanilla flavored almond bark', unit: ' 20 ounce', price: 13, user_id: 1);
recipe_food245 = RecipeFood.create(quantity: 1, food_id: 245, recipe_id: 35);

food246 = Food.create(name: 'Package plain corn puffs (NOT popcorn)', unit: ' 8 ounce', price: 13, user_id: 1);
recipe_food246 = RecipeFood.create(quantity: 1, food_id: 246, recipe_id: 35);

food247 = Food.create(name: 'Coarse sea salt for sprinkling', unit: '', price: 10, user_id: 1);
recipe_food247 = RecipeFood.create(quantity: 1, food_id: 247, recipe_id: 35);


recipe36 = Recipe.create(
    name: "Easy onion bhajis",
    description: "Serve your crispy onion bhajis with cooling cucumber and mint raita as a snack, or eat alongside a homemade Indian curry. You'll be surprised by how easy they are to make",
    prep_time: '30 mins',
    cook_time: '20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Soak the onion in cold water while you make the base mix. Sift the flour and baking powder into a bowl, then add the chilli powder, turmeric, chopped chilli and a good sprinkling of salt. Mix in about 100ml of cold water to make a thick batter – 
        add a splash more if it feels too stiff.",
        'For the raita, peel the cucumber and grate it into a sieve set over another bowl. Mix the remaining ingredients with some seasoning and the drained cucumber – squeezing out any extra moisture with your hands – then spoon into a small serving bowl.',
        'Drain the onion well and mix it into the batter. Heat about 5cm of oil in a wok or deep pan. Do not fill the pan more than a third full. Add a tiny speck of batter. If it rises to the surface surrounded by bubbles and starts to brown, then the oil 
        is hot enough for frying.',
        "Lower heaped tbsps of the bhaji mixture into the pan, a few at a time, and cook for a few mins, turning once, until they are evenly browned and crisp, so about 3-4 mins. Drain on kitchen paper, sprinkle with a little salt and keep warm while you cook 
        the rest. Serve with the raita."
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/onion-ea06386.jpg?quality=90&webp=true&resize=440,400'
)


food248 = Food.create(name: 'Onions, finely sliced', unit: '', price: 5, user_id: 1);
recipe_food248 = RecipeFood.create(quantity: 2, food_id: 248, recipe_id: 36);

food249 = Food.create(name: 'Flour', unit: '00g', price: 15, user_id: 1);
recipe_food249 = RecipeFood.create(quantity: 1, food_id: 249, recipe_id: 36);

food250 = Food.create(name: 'Gluten-free baking powder', unit: '', price: 1, user_id: 1);
recipe_food250 = RecipeFood.create(quantity: 1, food_id: 250, recipe_id: 36);

food251 = Food.create(name: 'Chilli powder', unit: ' tsp', price: 1, user_id: 1);
recipe_food251 = RecipeFood.create(quantity: 1, food_id: 251, recipe_id: 36);

recipe_food057 = RecipeFood.create(quantity: 1, food_id: 125, recipe_id: 36);

food252 = Food.create(name: 'Green chilli, deseeded and very finely chopped', unit: ' tsp', price: 1, user_id: 1);
recipe_food252 = RecipeFood.create(quantity: 1, food_id: 252, recipe_id: 36);

food253 = Food.create(name: 'Vegetable oil for frying', unit: '', price: 15, user_id: 1);
recipe_food253 = RecipeFood.create(quantity: 1, food_id: 253, recipe_id: 36);

food254 = Food.create(name: 'Cucumber', unit: '', price: 5, user_id: 1);
recipe_food254 = RecipeFood.create(quantity: 1, food_id: 254, recipe_id: 36);

food255 = Food.create(name: 'Greek-style yogurt', unit: '50g tub', price: 25, user_id: 1);
recipe_food255 = RecipeFood.create(quantity: 1, food_id: 255, recipe_id: 36);

recipe_food058 = RecipeFood.create(quantity: 2, food_id: 85, recipe_id: 36);

recipe37 = Recipe.create(
    name: "Pitta bread",
    description: "Rustle up homemade pitta bread to serve with dips or as a side dish to mop up juices. You can easily make them ahead and freeze them for a fail-safe snack",
    prep_time: '20 mins',
    cook_time: '40 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Mix the yeast with 300ml warm water in a large bowl. Leave to sit for 5 mins until the yeast is super bubbly then tip in the flour, salt and olive oil. Bring the mixture together into a soft dough. Don’t worry if it looks a little rough round the edges.",
        "Tip the dough onto a lightly floured work surface. Knead for 5-10 mins until you have a soft, smooth and elastic dough. Try to knead using as little extra flour as possible, just enough so that the dough doesn’t stick – this will keep the pittas light and 
        airy. Once kneaded, place in a lightly oiled bowl, cover with a tea towel and leave to double in size, approximately 1 hour.",
        'Heat oven as high as it will go (ideally 250C/230C fan/gas 9) and put a large baking tray on the middle shelf of the oven to get searingly hot. Divide the dough into eight balls then flatten each into a disc with the palm of your hand. On a lightly floured 
        surface, roll each disc into an oval, around 20cm long, 15cm wide and 3-5mm thick.',
        "Carefully remove the hot tray from the oven. Dust with flour then place your pittas directly onto it – you may have to do this in batches. Return swiftly to the oven and bake for 4-5 mins, or until the pittas have puffed up and are a pale golden colour. 
        Wrap each hot pitta in a clean tea towel once it's baked to keep it soft while the others cook."
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/pitta-bread-74a1b32.jpg?quality=90&webp=true&resize=440,400'
)

food256 = Food.create(name: 'Fast-action dried yeast', unit: ' tsp', price: 1, user_id: 1);
recipe_food256 = RecipeFood.create(quantity: 2, food_id: 256, recipe_id: 37);

food257 = Food.create(name: 'Strong white bread flour, plus extra for dusting', unit: '00g', price: 0.25, user_id: 1);
recipe_food257 = RecipeFood.create(quantity: 5, food_id: 257, recipe_id: 37);

food258 = Food.create(name: 'Salt', unit: ' tsp', price: 1, user_id: 1);
recipe_food258 = RecipeFood.create(quantity: 2, food_id: 258, recipe_id: 37);

recipe_food059 = RecipeFood.create(quantity: 1, food_id: 208, recipe_id: 37);

recipe38 = Recipe.create(
    name: "Super sausage rolls",
    description: "Eat these family-friendly sausage rolls with a chutney or pickle. They make a great snack for a party buffet",
    prep_time: '25 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Roll out the pastry to a 35 x 30cm rectangle on a surface lightly dusted with flour. Trim the edges neatly, then cut in half lengthways to form two long strips. Spread with a thin layer of the apple sauce, pickle or chutney, leaving a border along the edges.",
        'Tip the sausagemeat into a large bowl, add 3 tbsp cold water and squash together. Divide the mixture in two and mould each half into a cylindrical shape. Put each portion of meat into the middle of a pastry strip, leaving a border at either side. Brush the 
        pastry border and the top of the sausage mix with the beaten egg. Fold one edge of the pastry over the meat and roll to encase, then use a fork to press the pastry edges together. Cut the sausage rolls into 5cm lengths and arrange on a lined baking tray. Chill 
        for 20 mins. Can be made a day ahead or frozen for up to one month; to bake from frozen, add an extra 10 mins to the cooking time.',
        "Heat oven to 200C/180C fan/gas 6. Brush the sausage rolls with the rest of the beaten egg and sprinkle with the sesame seeds or nigella seeds (if using). Bake for 30-35 mins until the pastry is deep golden. Transfer the sausage rolls to a wire rack and leave 
        to cool for 10 mins."
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/sausage-rolls-aa4a59d.jpg?quality=90&webp=true&resize=440,400'
)

food259 = Food.create(name: 'All-butter puff pastry', unit: '75g', price: 10, user_id: 1);
recipe_food259 = RecipeFood.create(quantity: 3, food_id: 259, recipe_id: 38);

food260 = Food.create(name: 'Flour, for dusting', unit: '', price: 10, user_id: 1);
recipe_food260 = RecipeFood.create(quantity: 1, food_id: 260, recipe_id: 38);

food261 = Food.create(name: 'Apple sauce, pickle or chutney', unit: ' tbsp', price: 1, user_id: 1);
recipe_food261 = RecipeFood.create(quantity: 2, food_id: 261, recipe_id: 38);

food262 = Food.create(name: 'Sausagemeat or sausages, skins removed', unit: '00g', price: 10, user_id: 1);
recipe_food262 = RecipeFood.create(quantity: 4, food_id: 262, recipe_id: 38);

recipe_food060 = RecipeFood.create(quantity: 1, food_id: 202, recipe_id: 38);

food263 = Food.create(name: 'Sesame seeds or nigella seeds (optional)', unit: ' tsp', price: 5, user_id: 1);
recipe_food263 = RecipeFood.create(quantity: 2, food_id: 263, recipe_id: 38);

recipe39 = Recipe.create(
    name: "Potato wedges",
    description: "Serve these simple potato wedges with soured cream to dip into as a snack, or enjoy as a side dish alongside chilli con carne, burgers or salads ",
    prep_time: '15 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Heat the oven to 200C/180C fan/gas 6. Bring a large pan of lightly salted water to the boil. Cut the potatoes into chunky wedges, then boil in the water for 7 mins. Drain and leave to steam dry for 5 mins.",
        "Spread the wedges out on a large baking sheet or two smaller ones. Toss with the oil and 1 tsp salt (preferably sea salt) and spread out so that they aren’t overlapping. Roast for 30 mins, turning halfway until golden and crisp."
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/potato-wedges-388c229.jpg?quality=90&webp=true&resize=440,400'
)

food264 = Food.create(name: 'Large baking potatoes (around 1kg)', unit: ' tsp', price: 8, user_id: 1);
recipe_food264 = RecipeFood.create(quantity: 3, food_id: 264, recipe_id: 39);

recipe_food061 = RecipeFood.create(quantity: 1, food_id: 208, recipe_id: 39);

recipe40 = Recipe.create(
    name: "Sweet popcorn",
    description: "Make a batch of sweet popcorn for a home movie night. It’s a great snack for sharing, or divide into paper cones to avoid bickering!",
    prep_time: '2 mins',
    cook_time: '15 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category4.id,
    instructions: [
        "Put the oil in a large saucepan with a tight-fitting lid over a medium heat. Toss the popcorn kernels in the oil to coat. Put the lid on, and keep over a medium heat until you hear the first popcorn pop, then turn the heat to medium-low. When you begin to hear lots 
        of popping, give the pan a shake. Continue to shake frequently until the popping stops. Turn off the heat and leave in the pan.",
        "Line a large baking tray with baking parchment. Put the sugar and 60ml water into a medium heavy-based saucepan and bring to the boil. Stir until the sugar has dissolved, then leave over a medium heat, without stirring, for 6-8 mins. It should start to turn into a 
        golden caramel, swirl it around and add the butter – stand back as it may spit a little. Stir well until combined. ",
        "Pour the caramel over the popcorn in the pan and stir immediately to coat the popcorn, being careful not to touch the hot caramel. Carefully transfer onto the lined baking tray and press down with the back of a spoon to spread evenly. Leave to cool for 5 mins, then 
        break apart and eat."
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/popcorn-2afe9a3.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food062 = RecipeFood.create(quantity: 1, food_id: 208, recipe_id: 40);

food265 = Food.create(name: 'Popcorn kernels', unit: '00g', price: 10, user_id: 1);
recipe_food265 = RecipeFood.create(quantity: 1, food_id: 265, recipe_id: 40);

recipe_food063 = RecipeFood.create(quantity: 2, food_id: 226, recipe_id: 40);

food266 = Food.create(name: 'Salted butter , cubed', unit: '0g', price: 2, user_id: 1);
recipe_food266 = RecipeFood.create(quantity: 5, food_id: 266, recipe_id: 40);

recipe41 = Recipe.create(
    name: "Brownie Cookies Recipe (2 Ways!)",
    description: "Brownie cookies are the perfect holiday dessert. Fudgy, Chocolatey, soft, and so delicious! They’re filled with chocolate chips, and if you want, you can add crushed peppermint for the ultimate chocolate cookie recipe.",
    prep_time: '15 mins',
    cook_time: '20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        "Place a heat safe bowl over a saucepan of simmering water. Add the butter and the chopped chocolate. Stir until smooth (5-10 minutes)",
        'Beat the eggs with the sugar in a stand mixer on medium speed. Beat in the vanilla. Scrape the sides if needed. Pour in the melted chocolate and beat until combined. Mix in the flour and baking powder. Turn off the mixer.',
        'Stir in the chocolate chips.',
        'Pour the batter into a large bowl and cover. Freeze for 1 hour.',
        "Preheat the oven to 350F. Line your baking sheet with Reynolds
        Kitchens Parchment Paper with SmartGrid. Scoop 2 tablespoons of batter into a ball (doesn't have to be pretty) and place on the prepared baking sheets, about 2 inches apart (The Reynolds Kitchens Parchment Paper with SmartGrid makes spacing super easy!)",
        'Bake for 10 minutes, or until the cookies crack on top and appear dry on the edges.',
        'Let cool on the cookie sheet for 10 minutes, then transfer to a cooling rack to cool completely.',
        'Enjoy!',
        'If wanting to make the peppermint version, sprinkle cookies with crushed peppermint upon removing from the oven. Lightly and carefully press them into each cookie to adhere. Allow to cool as stated above.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2019/12/brownie-cookies-recipe-7-of-12.jpg'
)

food267 = Food.create(name: 'Semisweet chocolate chopped', unit: '50g', price: 30, user_id: 1);
recipe_food267 = RecipeFood.create(quantity: 1, food_id: 267, recipe_id: 41);

recipe_food064 = RecipeFood.create(quantity: 4, food_id: 266, recipe_id: 41);

recipe_food065 = RecipeFood.create(quantity: 4, food_id: 9, recipe_id: 41);

food268 = Food.create(name: 'Sugar', unit: ' 0.5 cups', price: 5, user_id: 1);
recipe_food268 = RecipeFood.create(quantity: 1, food_id: 268, recipe_id: 41);

recipe_food066 = RecipeFood.create(quantity: 1, food_id: 139, recipe_id: 41);

recipe_food067 = RecipeFood.create(quantity: 1, food_id: 129, recipe_id: 41);

recipe_food068 = RecipeFood.create(quantity: 1, food_id: 225, recipe_id: 41);

food269 = Food.create(name: 'Milk chocolate chips', unit: '2 ounse', price: 30, user_id: 1);
recipe_food269 = RecipeFood.create(quantity: 1, food_id: 269, recipe_id: 41);

food270 = Food.create(name: 'Crushed peppermint optional', unit: '', price: 41, user_id: 1);
recipe_food270 = RecipeFood.create(quantity: 1, food_id: 270, recipe_id: 41);

recipe42 = Recipe.create(
    name: "Chocolate Lasagna Recipe",
    description: "This delicious chocolate lasagna is made on an Oreo crust and has layers of cream cheese, chocolate pudding and finished with a whipped topping. Easy to make, this no bake dessert is a real show stopper.",
    prep_time: '4 hrs',
    cook_time: '25 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        "Make first layer by combining Oreos and melted butter in a food processor. Grind until Oreos have been fully pulverized, and no large chunks of Oreo remain.",
        'Spread ground Oreos into the bottom of a 9×13 inch pan and firmly press down. Make sure Oreos reach all the way to the edges.',
        'Make second layer by combining cream cheese, sugar, 1 Tbs milk, vanilla extract, and 8 oz whipped topping. Beat until smooth.',
        'Spread cream cheese mixture carefully over the Oreo crust, making sure to smooth the top.',
        'Make chocolate pudding layer by beating together chocolate pudding mix and 3 cups milk until smooth.',
        'Pour over cream cheese layer and spread to the edges.',
        'Top the chocolate pudding with the remaining half of the whipped topping. Spread carefully all the way to the edges of the pan.',
        'Sprinkle mini chocolate chips over whipped topping layer',
        'Chill in the refrigerator for 4 to 5 hours or until set.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2020/06/chocolate-lasagna-recipe-2-of-7.jpg'
)

food271 = Food.create(name: 'Regular Oreos not double stuffed, with filling', unit: '', price: 1, user_id: 1);
recipe_food271 = RecipeFood.create(quantity: 36, food_id: 271, recipe_id: 42);

food272 = Food.create(name: 'Salted butter melted', unit: '', price: 0.25, user_id: 1);
recipe_food272 = RecipeFood.create(quantity: 5, food_id: 272, recipe_id: 42);

food273 = Food.create(name: 'Cream cheese, softened', unit: '½ 8 ounce packages', price: 23, user_id: 1);
recipe_food273 = RecipeFood.create(quantity: 1, food_id: 273, recipe_id: 42);

food274 = Food.create(name: 'Granulated sugar', unit: ' cup', price: 1.25, user_id: 1);
recipe_food274 = RecipeFood.create(quantity: 1, food_id: 274, recipe_id: 42);

food275 = Food.create(name: 'Milk', unit: ' cups', price: 3, user_id: 1);
recipe_food275 = RecipeFood.create(quantity: 4, food_id: 275, recipe_id: 42);

recipe_food069 = RecipeFood.create(quantity: 2, food_id: 139, recipe_id: 42);

food276 = Food.create(name: 'Whipped topping 16 oz total, divided in half', unit: ' oz', price: 1, user_id: 1);
recipe_food276 = RecipeFood.create(quantity: 1, food_id: 276, recipe_id: 42);

food277 = Food.create(name: 'Packages instant chocolate pudding mix', unit: ' ounce', price: 10, user_id: 1);
recipe_food277 = RecipeFood.create(quantity: 1, food_id: 277, recipe_id: 42);

recipe43 = Recipe.create(
    name: "Easy Peach Cobbler Recipe",
    description: "Peach Cobbler with Canned Peaches can be made year round and is so full of flavor you’ll swear it was made by Grandma. It’s a must make for every holiday including Easter, 4th of July, Thanksgiving, and Christmas!",
    prep_time: '20 mins',
    cook_time: '45 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        "Preheat the oven, and let butter melt in the baking dish.",
        'Drain both jars/cans of peaches and reserve some of the syrup in a separate bowl.',
        'Stir together flour and sugar, then whisk in the, milk, vanilla, and syrup from the peaches.',
        'Pour the mixture into the baking dish, and spoon the peaches over the batter.',
        'Bake for 1 hour at 350°F until the batter turns a golden brown.',
        'Let it cool slightly before serving! Scoop some whipped cream or ice cream (or both) on top, and enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2018/03/peach-cobbler-recipe-easy-peach-cobbler-7-of-8.jpg'
)

food278 = Food.create(name: '1 stick salted butter', unit: ' ounce', price: 10, user_id: 1);
recipe_food278 = RecipeFood.create(quantity: 1, food_id: 278, recipe_id: 43);

food279 = Food.create(name: 'Cans or jars sliced peaches in syrup', unit: ' 23 ounce', price: 15, user_id: 1);
recipe_food279 = RecipeFood.create(quantity: 2, food_id: 279, recipe_id: 43);

food280 = Food.create(name: 'Self-raising flour', unit: ' cup', price: 4, user_id: 1);
recipe_food280 = RecipeFood.create(quantity: 1, food_id: 280, recipe_id: 43);

food281 = Food.create(name: 'Sugar', unit: ' cup', price: 4, user_id: 1);
recipe_food281 = RecipeFood.create(quantity: 1, food_id: 281, recipe_id: 43);

food282 = Food.create(name: 'Sea salt', unit: '/8 tsp', price: 0.20, user_id: 1);
recipe_food282 = RecipeFood.create(quantity: 1, food_id: 282, recipe_id: 43);

recipe_food070 = RecipeFood.create(quantity: 1, food_id: 39, recipe_id: 43);

recipe44 = Recipe.create(
    name: "Pumpkin Brownies (Fall Dessert Recipe)",
    description: "This easy brownie recipe uses a boxed brownie mix of your choice with a layer of pumpkin in the middle to create something super fun and delicious.",
    prep_time: '10 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        "Preheat your oven to whatever instructions are on the brownie mix box. 350F works well.",
        'Make the brownie mix in a separate bowl. Follow the directions on the box. Add the chocolate chips to the brownie mix. Stir them in and set the bowl and set to the side.',
        'Mix the pumpkin, cream cheese (softened), sugar, and pumpkin pie spice in another bowl. Mix until very smooth.',
        'Spray your pan with cooking spray before starting. Pour half of the brownie mix into the pan and spread out so the entire bottom of the pan is covered.',
        'Next add the pumpkin. You can either spoon the pumpkin filling onto the brownie in chunks or spread it out evenly. Cover the pumpkin with the rest of the brownie batter and smooth out the top.',
        "Now you’re ready to bake! I added 10 minutes to the directions on the box (cooked for 35 minutes for my pan size). Since you’re adding quite a bit of depth with the pumpkin mix…you’ll need to cook longer. To check if brownies are 
        done…dip a fork into the middle of the brownies. If the fork comes out clean…they’re done! Enjoy!"
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2012/10/pumpkin-brownies-2-of-9.jpg'
)

food283 = Food.create(name: 'Brownie mix of your choice', unit: ' tsp', price: 34, user_id: 1);
recipe_food283 = RecipeFood.create(quantity: 1, food_id: 283, recipe_id: 44);

food284 = Food.create(name: 'Can pumpkin NOT pumpkin pie filling', unit: ' tsp', price: 25, user_id: 1);
recipe_food284 = RecipeFood.create(quantity: 1, food_id: 284, recipe_id: 44);

food285 = Food.create(name: 'Cream cheese', unit: ' oz', price: 5, user_id: 1);
recipe_food285 = RecipeFood.create(quantity: 6, food_id: 285, recipe_id: 44);

food286 = Food.create(name: 'Sugar', unit: ' tsp', price: 5, user_id: 1);
recipe_food286 = RecipeFood.create(quantity: 3, food_id: 286, recipe_id: 44);

food287 = Food.create(name: 'Pumpkin pie spice', unit: ' tsp', price: 0.25, user_id: 1);
recipe_food287 = RecipeFood.create(quantity: 1, food_id: 287, recipe_id: 44);

food288 = Food.create(name: 'Milk chocolate chips', unit: ' cup', price: 10, user_id: 1);
recipe_food288 = RecipeFood.create(quantity: 1, food_id: 288, recipe_id: 44);

recipe45 = Recipe.create(
    name: "Cheesecake Watermelon Pizza (HEALTHY Dessert Recipe)",
    description: "Watermelon Pizza is a delicious and fun sweet treat that everyone will enjoy! Juicy watermelon topped with a low-fat cheesecake sauce, fresh strawberries, bananas, white chocolate chips, and pecans is the ultimate (but still 
    indulgent) healthy dessert. This refreshing cheesecake watermelon pizza is an easy summer dessert you’ll be eating all season long!",
    prep_time: '5 mins',
    cook_time: 'no cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        'Cut a thick (1 1/2 inch) round slice of watermelon for your “pizza” base.',
        'Mix greek yogurt, cream cheese, and powdered sugar',
        'Spread the cheesecake mixture over the watermelon like a pizza sauce',
        'Top with slices of bananas and strawberries',
        'Add chopped pecans and white chocolate chips on top',
        'Slice the watermelon pizza and serve!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2014/10/watermelon-pizza-6-of-8.jpg'
)

food289 = Food.create(name: 'Watermelon (cut all the way across so a circle or "pizza" forms) about 1 1/2 inch thick', unit: ' slice', price: 10, user_id: 1);
recipe_food289 = RecipeFood.create(quantity: 1, food_id: 289, recipe_id: 45);

food290 = Food.create(name: 'Vanilla greek yogurt', unit: ' ounces', price: 4, user_id: 1);
recipe_food290 = RecipeFood.create(quantity: 4, food_id: 290, recipe_id: 45);

food291 = Food.create(name: 'Low fat cream cheese', unit: ' ounces', price: 4, user_id: 1);
recipe_food291 = RecipeFood.create(quantity: 4, food_id: 291, recipe_id: 45);

food292 = Food.create(name: 'Powdered sugar optional', unit: ' cup', price: 4, user_id: 1);
recipe_food292 = RecipeFood.create(quantity: 0.25, food_id: 292, recipe_id: 45);

food293 = Food.create(name: 'Strawberries sliced', unit: '-5', price: 4, user_id: 1);
recipe_food293 = RecipeFood.create(quantity: 4, food_id: 293, recipe_id: 45);

food294 = Food.create(name: 'Banana sliced', unit: '', price: 5, user_id: 1);
recipe_food294 = RecipeFood.create(quantity: 1, food_id: 294, recipe_id: 45);

food295 = Food.create(name: 'White chocolate chips', unit: ' cup', price: 25, user_id: 1);
recipe_food295 = RecipeFood.create(quantity: 0.25, food_id: 295, recipe_id: 45);

food296 = Food.create(name: 'Chopped pecans', unit: ' cup', price: 30, user_id: 1);
recipe_food296 = RecipeFood.create(quantity: 0.25, food_id: 296, recipe_id: 45);

recipe46 = Recipe.create(
    name: "S’mores Dessert Pizza Recipe (Easy S’mores Pizza)",
    description: "S’mores Dessert Pizza is a sweet, chocolaty dessert made just like a pizza! It’s got the classic s’mores flavor of melted chocolate, graham crackers, and fluffy marshmallows, all melted together into the most amazing s’mores pizza. 
    This easy dessert pizza recipe is fun to make and even more fun to eat!",
    prep_time: '10 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        'Make the dessert pizza dough by combining graham cracker crumbs, flour, & baking soda; mixing the butter & sugar in a mixer then adding in the eggs; and then combining wet & dry ingredients.',
        'Press out the dough onto a pizza pan and use a fork to pierce the dough for venting',
        'Bake the dough for 8-10 minutes until brown',
        'Sprinkle chocolate chips all over the dough, let them melt, and then spread the chocolate out like a sauce',
        'Sprinkle the rest of the graham crackers crumbs, chocolate chips, & mini marshmallows across the pizza and broil for 1-3 minutes until marshmallows start to brown',
        'Drizzle melted chocolate across the pizza to finish it off, then slice and serve like you would a regular pizza'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2018/07/smores-dessert-pizza-recipe-4-of-10.jpg'
)

food297 = Food.create(name: 'Graham cracker crumbs divided', unit: ' cup', price: 38, user_id: 1);
recipe_food297 = RecipeFood.create(quantity: 1, food_id: 297, recipe_id: 46);

recipe_food071 = RecipeFood.create(quantity: 1, food_id: 268, recipe_id: 46);

food298 = Food.create(name: 'Salted butter at room temperature', unit: ' cup', price: 10, user_id: 1);
recipe_food298 = RecipeFood.create(quantity: 1, food_id: 298, recipe_id: 46);

food299 = Food.create(name: 'Brown sugar', unit: ' cup', price: 6, user_id: 1);
recipe_food299 = RecipeFood.create(quantity: 0.25, food_id: 299, recipe_id: 46);

food300 = Food.create(name: 'Sugar', unit: ' cup', price: 6, user_id: 1);
recipe_food300 = RecipeFood.create(quantity: 1, food_id: 300, recipe_id: 46);

food301 = Food.create(name: 'Kosher salt', unit: ' tsp', price: 0.5, user_id: 1);
recipe_food301 = RecipeFood.create(quantity: 1, food_id: 301, recipe_id: 46);

recipe_food071 = RecipeFood.create(quantity: 1, food_id: 139, recipe_id: 46);

recipe_food072 = RecipeFood.create(quantity: 2, food_id: 287, recipe_id: 46);

food302 = Food.create(name: 'Mini marshmallows', unit: ' cups', price: 11, user_id: 1);
recipe_food302 = RecipeFood.create(quantity: 2.5, food_id: 302, recipe_id: 46);

food303 = Food.create(name: 'Chocolate sauce for drizzling', unit: '', price: 11, user_id: 1);
recipe_food303 = RecipeFood.create(quantity: 1, food_id: 303, recipe_id: 46);

recipe47 = Recipe.create(
    name: "Bread pudding",
    description: "This simple bake is lovely with a cuppa. Or have it for dessert instead, with custard or ice cream",
    prep_time: '10 mins',
    cook_time: '1 hr 30 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        'Tear 500g white or wholemeal bread into a large mixing bowl and add 500g mixed dried fruit, 85g mixed peel and 1 ½ tbsp mixed spice.',
        'Pour in 600ml milk, then stir or scrunch through your fingers to mix everything well and completely break up the bread.',
        'Add 2 beaten large eggs, 140g light muscovado sugar and zest of 1 lemon, if using. Stir well, then set aside for 15 mins to soak.',
        'Heat oven to 180C/160C fan/gas 4. Butter and line the base of a 20cm non-stick square cake tin (not one with a loose base).',
        'Stir the melted butter into the pudding mixture, tip into the tin, then scatter with demerara.',
        'Bake for 1½ hrs until firm and golden, covering with foil if it starts to brown too much. Turn out of the tin and strip off the paper. Cut into squares and serve warm.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-424712_11-9409dbe.jpg?quality=90&webp=true&resize=440,400'
)

food304 = Food.create(name: 'White or wholemeal bread', unit: '00g', price: 3, user_id: 1);
recipe_food304 = RecipeFood.create(quantity: 5, food_id: 304, recipe_id: 47);

food305 = Food.create(name: 'Mixed dried fruit', unit: '00g/ 1lb 2oz', price: 3, user_id: 1);
recipe_food305 = RecipeFood.create(quantity: 5, food_id: 305, recipe_id: 47);

food306 = Food.create(name: 'Mixed peel', unit: '5g', price: 3, user_id: 1);
recipe_food306 = RecipeFood.create(quantity: 8, food_id: 306, recipe_id: 47);

food307 = Food.create(name: 'Mixed spice', unit: ' tbsp', price: 3, user_id: 1);
recipe_food307 = RecipeFood.create(quantity: 1.5, food_id: 307, recipe_id: 47);

recipe_food073 = RecipeFood.create(quantity: 6, food_id: 11, recipe_id: 47);

recipe_food074 = RecipeFood.create(quantity: 2, food_id: 45, recipe_id: 47);

food308 = Food.create(name: 'Light muscovado sugar', unit: '40', price: 15, user_id: 1);
recipe_food308 = RecipeFood.create(quantity: 1, food_id: 308, recipe_id: 47);

food309 = Food.create(name: 'Zest 1 lemon (optional)', unit: '', price: 15, user_id: 1);
recipe_food309 = RecipeFood.create(quantity: 1, food_id: 309, recipe_id: 47);

recipe_food075 = RecipeFood.create(quantity: 9, food_id: 227, recipe_id: 47);

food310 = Food.create(name: 'Demerara sugar', unit: ' tbsp', price: 1, user_id: 1);
recipe_food310 = RecipeFood.create(quantity: 2, food_id: 310, recipe_id: 47);

recipe48 = Recipe.create(
    name: "Strawberry cheesecake",
    description: "Follow our step-by-step recipe for this easy no-cook cheesecake – a delicious summer dessert for all occasions",
    prep_time: '30 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        'To make the base, butter and line a 23cm loose-bottomed tin with baking parchment. Put the digestive biscuits in a plastic food bag and crush to crumbs using a rolling pin. 
        Transfer the crumbs to a bowl, then pour over the melted butter. Mix thoroughly until the crumbs are completely coated. Tip them into the prepared tin and press firmly down 
        into the base to create an even layer. Chill in the fridge for 1 hr to set firmly.',
        'Slice the vanilla pod in half lengthways, leaving the tip intact, so that the two halves are still joined. Holding onto the tip of the pod, scrape out the seeds using the 
        back of a kitchen knife.',
        "Pour the double cream into a bowl and whisk with an electric mixer until it’s just starting to thicken to soft peaks. Place the soft cheese, icing sugar and the vanilla seeds 
        in a separate bowl, then beat for 2 mins with an electric mixer until smooth and starting to thicken, it will get thin and then start to thicken again. Tip in the double cream 
        and fold it into the soft cheese mix. You’re looking for it to be thickened enough to hold its shape when you tip a spoon of it upside down. If it’s not thick enough, continue 
        to whisk. Spoon onto the biscuit base, starting from the edges and working inwards, making sure that there are no air bubbles. Smooth the top of the cheesecake down with the back 
        of a dessert spoon or spatula. Leave to set in the fridge overnight.",
        'Bring the cheesecake to room temperature about 30 mins before serving. To remove it from the tin, place the base on top of a can, then gradually pull the sides of the tin down. 
        Slip the cake onto a serving plate, removing the lining paper and base. Purée half the strawberries in a blender or food processor with the icing sugar and 1 tsp water, then sieve. 
        Pile the remaining strawberries onto the cake, and pour the purée over the top.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1028453_10-36f879a.jpg?quality=90&webp=true&resize=440,400'
)

food311 = Food.create(name: 'Digestive biscuits', unit: '50g', price: 15, user_id: 1);
recipe_food311 = RecipeFood.create(quantity: 2, food_id: 311, recipe_id: 48);

recipe_food076 = RecipeFood.create(quantity: 7, food_id: 227, recipe_id: 48);

food312 = Food.create(name: 'Vanilla', unit: ' pod', price: 5, user_id: 1);
recipe_food312 = RecipeFood.create(quantity: 1, food_id: 312, recipe_id: 48);

food313 = Food.create(name: 'Full fat soft cheese', unit: '00g', price: 5, user_id: 1);
recipe_food313 = RecipeFood.create(quantity: 6, food_id: 313, recipe_id: 48);

food314 = Food.create(name: 'Icing sugar', unit: '00g', price: 15, user_id: 1);
recipe_food314 = RecipeFood.create(quantity: 1, food_id: 314, recipe_id: 48);

food315 = Food.create(name: 'Pot of double cream', unit: '84ml', price: 25, user_id: 1);
recipe_food315 = RecipeFood.create(quantity: 2, food_id: 315, recipe_id: 48);

food316 = Food.create(name: 'Punnet of strawberries, halved', unit: '00g', price: 6, user_id: 1);
recipe_food316 = RecipeFood.create(quantity: 4, food_id: 316, recipe_id: 48);

recipe49 = Recipe.create(
    name: "Lemon cheesecake",
    description: "Need a simple, zingy dessert you can make with minimal fuss? Try this creamy lemon cheesecake, made with just a few basic storecupboard ingredients",
    prep_time: '20 mins',
    cook_time: '5 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        'Crush the digestive biscuits in a food bag with a rolling pin or in the food processor. Melt the butter in a saucepan, take off heat and stir in the brown sugar and biscuit crumbs.',
        'Line the base of a 20cm loose bottomed cake tin with baking parchment. Press the biscuit into the bottom of the tin and chill in the fridge while making the topping.',
        'Beat together the mascarpone, caster sugar, lemon zest and juice, until smooth and creamy. Spread over the base and chill for a couple of hours.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/lemon-cheesecake-member-recipe-68bbc86.jpg?quality=90&webp=true&resize=440,400'
)

recipe_food075 = RecipeFood.create(quantity: 2, food_id: 310, recipe_id: 49);

food317 = Food.create(name: 'Butter', unit: '0g', price: 3, user_id: 1);
recipe_food317 = RecipeFood.create(quantity: 5, food_id: 317, recipe_id: 49);

food318 = Food.create(name: 'Light brown soft sugar', unit: '5g', price: 2, user_id: 1);
recipe_food318 = RecipeFood.create(quantity: 2, food_id: 318, recipe_id: 49);

food319 = Food.create(name: 'Mascarpone', unit: '50g', price: 8, user_id: 1);
recipe_food319 = RecipeFood.create(quantity: 3, food_id: 319, recipe_id: 49);

food320 = Food.create(name: 'Caster sugar', unit: '5g', price: 0.5, user_id: 1);
recipe_food320 = RecipeFood.create(quantity: 7, food_id: 320, recipe_id: 49);

food321 = Food.create(name: 'Lemon, zested', unit: '', price: 5, user_id: 1);
recipe_food321 = RecipeFood.create(quantity: 1, food_id: 321, recipe_id: 49);

food322 = Food.create(name: 'Lemons, juiced (about 90ml)', unit: '-3', price: 5, user_id: 1);
recipe_food322 = RecipeFood.create(quantity: 2, food_id: 322, recipe_id: 49);

recipe50 = Recipe.create(
    name: "Rice pudding",
    description: "Try our recipe for a gorgeously creamy, yet low in fat rice pudding. Serve this comforting dessert with jam or fruit",
    prep_time: '5 mins',
    cook_time: '2 hrs',
    public: true,
    user_id: 1,
    recipe_catogory_id: category5.id,
    instructions: [
        'Heat the oven to 150C/130C fan/gas 2. Wash and drain the rice. Butter a 850ml baking dish, then tip in the rice and sugar and stir through the milk. Sprinkle in the nutmeg and top with the 
        bay leaf or lemon zest.',
        'Cook for 2 hrs or until the pudding wobbles ever so slightly when shaken.',
        'Serve with strawberries or jam'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-373473_11-dad1f50.jpg?quality=90&webp=true&resize=500,454'
)

food323 = Food.create(name: 'Pudding rice', unit: '00g', price: 10, user_id: 1);
recipe_food323 = RecipeFood.create(quantity: 2, food_id: 323, recipe_id: 50);

food324 = Food.create(name: 'Butter, for the dish', unit: '', price: 10, user_id: 1);
recipe_food324 = RecipeFood.create(quantity: 1, food_id: 324, recipe_id: 50);

food325 = Food.create(name: 'Sugar', unit: '0g', price: 0.5, user_id: 1);
recipe_food325 = RecipeFood.create(quantity: 5, food_id: 325, recipe_id: 50);

food326 = Food.create(name: 'Semi-skimmed milk', unit: '00ml', price: 2, user_id: 1);
recipe_food326 = RecipeFood.create(quantity: 7, food_id: 326, recipe_id: 50);

food327 = Food.create(name: 'Grated nutmeg or strip lemon zest', unit: ' pinch', price: 2, user_id: 1);
recipe_food327 = RecipeFood.create(quantity: 1, food_id: 327, recipe_id: 50);

food328 = Food.create(name: 'Bay leaf, or strip lemon zest', unit: ' pinch', price: 16, user_id: 1);
recipe_food328 = RecipeFood.create(quantity: 1, food_id: 328, recipe_id: 50);

recipe51 = Recipe.create(
    name: "Malted Homemade Hot Chocolate Mix Recipe",
    description: "Hot Chocolate Mix is so easy to make at home, you’ll never buy premade mix again! This Malted Hot Chocolate Mix Recipe is the perfect homemade Christmas gift, and it’s so easy to use. 
    The added malt flavor in this homemade hot chocolate mix takes it over the top and makes it one of my favorite versions of hot cocoa!",
    prep_time: '5 mins',
    cook_time: '10 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Heat 1 cup of water or milk to a simmer on the stove.',
        'Pour into a mug and stir in 0.25 cup hot chocolate mix.',
        'Top it off with mini marshmallows, add in some flavoring, or even make it an adult hot cocoa with liqueurs.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2016/12/malted-instant-hot-chocolate-mix-3-of-9.jpg'
)

food329 = Food.create(name: "Confectioner’s powdered sugar", unit: ' cups', price: 5, user_id: 1);
recipe_food329 = RecipeFood.create(quantity: 2, food_id: 329, recipe_id: 51);

food330 = Food.create(name: "Unsweetened cocoa", unit: ' cups', price: 6, user_id: 1);
recipe_food330 = RecipeFood.create(quantity: 1, food_id: 330, recipe_id: 51);

food331 = Food.create(name: "Nonfat dry milk powder", unit: ' cup', price: 4, user_id: 1);
recipe_food331 = RecipeFood.create(quantity: 1, food_id: 331, recipe_id: 51);

food332 = Food.create(name: "Malted milk powder chocolate", unit: ' 0.5 cup', price: 7, user_id: 1);
recipe_food332 = RecipeFood.create(quantity: 1, food_id: 332, recipe_id: 51);

food333 = Food.create(name: "Cornstarch", unit: ' tsp', price: 7, user_id: 1);
recipe_food333 = RecipeFood.create(quantity: 2, food_id: 333, recipe_id: 51);

food334 = Food.create(name: "Salt", unit: ' tsp', price: 0.25, user_id: 1);
recipe_food334 = RecipeFood.create(quantity: 1, food_id: 334, recipe_id: 51);

food335 = Food.create(name: "Milk or hot water", unit: '', price: 0, user_id: 1);
recipe_food335 = RecipeFood.create(quantity: 1, food_id: 335, recipe_id: 51);

recipe52 = Recipe.create(
    name: "Chili Mango Margaritas",
    description: "Creamy and dreamy SUPER EASY Chili Mango Margaritas are perfect for any Summer party! Cheers! I love frozen mango margaritas and this chili twist makes them extra delicious.",
    prep_time: '10 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'In a large blender, combine mango chunks, limeade concentrate, 2 cups water, tequila, and hot sauce. Blend until well combined. You may need to add more water for a thinner consistency.',
        'On a small plate, mix equal parts sea salt and chili powder.',
        'Take margarita glass and rub lime wedge along half of the rim. Dip in the sea salt/chili powder mixture to coat.',
        'Pour Margaritas into each glass and garnish with a lime wedge.',
        'Enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2015/06/chili-mango-margaritas-6-of-7.jpg'
)

food336 = Food.create(name: "Frozen mango chunks", unit: '0 ounces', price: 10, user_id: 1);
recipe_food336 = RecipeFood.create(quantity: 2, food_id: 336, recipe_id: 52);

food337 = Food.create(name: "Can frozen limeade concentrate", unit: ' 12 ounce', price: 20, user_id: 1);
recipe_food337 = RecipeFood.create(quantity: 1, food_id: 337, recipe_id: 52);

food338 = Food.create(name: "Water depending on desired consistency", unit: '-3 cups', price: 0, user_id: 1);
recipe_food338 = RecipeFood.create(quantity: 2, food_id: 338, recipe_id: 52);

food339 = Food.create(name: "Good quality tequila optional", unit: ' ounces', price: 5, user_id: 1);
recipe_food339 = RecipeFood.create(quantity: 3, food_id: 339, recipe_id: 52);

food340 = Food.create(name: "Dash hot sauce optional", unit: ' ounces', price: 29, user_id: 1);
recipe_food340 = RecipeFood.create(quantity: 1, food_id: 340, recipe_id: 52);

recipe_food076 = RecipeFood.create(quantity: 1, food_id: 248, recipe_id: 52);

food341 = Food.create(name: "Chili powder for rim", unit: '', price: 9, user_id: 1);
recipe_food341 = RecipeFood.create(quantity: 1, food_id: 341, recipe_id: 52);

food342 = Food.create(name: "Lime slices for garnish", unit: '', price: 17, user_id: 1);
recipe_food342 = RecipeFood.create(quantity: 1, food_id: 342, recipe_id: 52);

recipe53 = Recipe.create(
    name: "Strawberry Lemonade Party Punch Recipe",
    description: "Strawberry Lemonade Party Punch is a fun summer punch recipe to enjoy on hot days. This alcoholic party punch is made with Everclear, giving it the perfect kick for parties. It’s 
    such a refreshing flavor, best served over ice with a few fresh strawberry or lemon slices. This punch recipe is perfect to serve all summer long, or even for the holidays. ",
    prep_time: '5 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Use a high-powered blender to mix frozen strawberries and lemonade',
        "If the mixture still isn’t smooth, use a mesh strainer to remove strawberry chunks",
        'Pour into bowl or pitcher',
        'Add in the lemon lime soda and Everclear and stir well',
        'Slice some lemon and fresh strawberries to add into the punch bowl'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2018/07/strawberry-lemonade-party-punch-2-of-9.jpg'
)

food343 = Food.create(name: "Frozen strawberries", unit: ' ounces', price: 1, user_id: 1);
recipe_food343 = RecipeFood.create(quantity: 24, food_id: 343, recipe_id: 53);

food344 = Food.create(name: "Lemonade", unit: ' liter bottle', price: 12, user_id: 1);
recipe_food344 = RecipeFood.create(quantity: 2, food_id: 344, recipe_id: 53);

food345 = Food.create(name: "Lemon Lime Soda", unit: ' liter bottle', price: 12, user_id: 1);
recipe_food345 = RecipeFood.create(quantity: 2, food_id: 345, recipe_id: 53);

food346 = Food.create(name: "Everclear", unit: ' cup', price: 7, user_id: 1);
recipe_food346 = RecipeFood.create(quantity: 1, food_id: 346, recipe_id: 53);

food347 = Food.create(name: "Extra frozen strawberries for punch bowl", unit: '', price: 1, user_id: 1);
recipe_food347 = RecipeFood.create(quantity: 5, food_id: 347, recipe_id: 53);

food348 = Food.create(name: "Lemon and strawberry slices for garnish", unit: '', price: 19, user_id: 1);
recipe_food348 = RecipeFood.create(quantity: 1, food_id: 348, recipe_id: 53);


recipe54 = Recipe.create(
    name: "Lavender Lemonade Recipe",
    description: "Lavender Lemonade is a fragrant, refreshing, and beautiful drink. This Lavender Lemonade Recipe is the ultimate party drink to make for baby shower drinks, wedding showers, Summer BBQs, 
    and more! Cheers to Spring! This Purple Lemonade is such a pretty sip to bring to any party.",
    prep_time: '2 hrs 5 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Over medium heat, combine two cups of water and sugar, bringing to a boil until sugar is dissolved. Turn off of the heat and stir in honey and lavender.',
        "Allow mixture to steep for 2 hours (less if you want less of a lavender taste). Strain the liquid, pressing the lavender down to make sure you get all of those juices into your mixture!",
        'In a large pitcher, combine freshly squeezed lemon juice, lavender mixture and water.',
        'Feel free to add a couple drops of blue or purple food coloring if you want more color than the lavender provides. Makes the lemonade especially cute for those brunches! Serve over ice.',
        'Enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2015/02/lavender-lemonade-4.jpg'
)

food349 = Food.create(name: "Water divided", unit: ' cups', price: 0, user_id: 1);
recipe_food349 = RecipeFood.create(quantity: 6, food_id: 349, recipe_id: 54);

recipe_food077 = RecipeFood.create(quantity: 1, food_id: 299, recipe_id: 54);

food350 = Food.create(name: "Honey", unit: ' cup', price: 10, user_id: 1);
recipe_food350 = RecipeFood.create(quantity: 0.25, food_id: 350, recipe_id: 54);

food351 = Food.create(name: "Dried lavender", unit: ' tbsp', price: 0.5, user_id: 1);
recipe_food351 = RecipeFood.create(quantity: 3, food_id: 351, recipe_id: 54);

food352 = Food.create(name: "Lemon juice", unit: ' cups', price: 20, user_id: 1);
recipe_food352 = RecipeFood.create(quantity: 2, food_id: 352, recipe_id: 54);

recipe55 = Recipe.create(
    name: "Orange Julius Recipe",
    description: "Simple and easy to make this homemade orange julius recipe is one delicious sip. Ready to enjoy in minutes, it’s fruity, sweet and so creamy!",
    prep_time: '10 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Simply add everything to a blender and blend til smooth.',
        "It’s that easy! Enjoy your homemade goodness any day of the week."
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2021/08/orange-julius-recipe-3.jpg'
)

food353 = Food.create(name: "Ice", unit: ' cups', price: 0, user_id: 1);
recipe_food353 = RecipeFood.create(quantity: 3, food_id: 353, recipe_id: 55);

food354 = Food.create(name: "Milk", unit: ' cups', price: 0, user_id: 1);
recipe_food354 = RecipeFood.create(quantity: 2, food_id: 354, recipe_id: 55);

food355 = Food.create(name: "Frozen orange juice concentrate", unit: ' 0.5 cups', price: 10, user_id: 1);
recipe_food355 = RecipeFood.create(quantity: 1, food_id: 355, recipe_id: 55);

food356 = Food.create(name: "Frozen orange juice concentrate", unit: ' 0.5 cups', price: 10, user_id: 1);
recipe_food356 = RecipeFood.create(quantity: 1, food_id: 356, recipe_id: 55);

recipe_food078 = RecipeFood.create(quantity: 1, food_id: 291, recipe_id: 55);

recipe_food079 = RecipeFood.create(quantity: 1, food_id: 347, recipe_id: 55);

recipe_food080 = RecipeFood.create(quantity: 2, food_id: 139, recipe_id: 55);


recipe56 = Recipe.create(
    name: "Strawberry Lemonade",
    description: "Simple and easy to make this homemade orange julius recipe is one delicious sip. Ready to enjoy in minutes, it’s fruity, sweet and so creamy!",
    prep_time: '20 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Heat together the water and sugar and let cool.',
        'Add the strawberries, lemon juice and syrup to a blender and blend.',
        'Strain in a mesh strainer.',
        'Serve over ice.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2021/03/strawberry-lemonade-recipe-3.jpg'
)

recipe_food081 = RecipeFood.create(quantity: 2, food_id: 347, recipe_id: 56);

food357 = Food.create(name: "White sugar", unit: ' cup', price: 6, user_id: 1);
recipe_food357 = RecipeFood.create(quantity: 1, food_id: 357, recipe_id: 56);

recipe_food082 = RecipeFood.create(quantity: 10, food_id: 339, recipe_id: 56);

recipe_food083 = RecipeFood.create(quantity: 1, food_id: 350, recipe_id: 56);

food358 = Food.create(name: "Vodka OPTIONAL", unit: ' cup', price: 15, user_id: 1);
recipe_food358 = RecipeFood.create(quantity: 1, food_id: 358, recipe_id: 56);

recipe57 = Recipe.create(
    name: "Mangonadas Recipe",
    description: "Sweet, spicy, tart and salty, this Mexican mangonadas recipe is a real treat for your tastebuds! So flavorful, this non-alcoholic drink is sure to be a hit!",
    prep_time: '10 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Blend the mango, water, sugar and lime juice.',
        'Rim the glass with chamoy and dip in the tajin.',
        'Drizzle some chamoy in the bottom of the glass and add crushed ice.',
        'Fill halfway with the mango drink',
        'Place in the diced mango and layer with chamoy and tajin and repeat the layers.',
        'Finish with lollipop straws and chopped pulparindo candies.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2021/02/mangonadas-recipe-5.jpg'
)

food359 = Food.create(name: "Frozen mangoL", unit: ' cups', price: 10, user_id: 1);
recipe_food359 = RecipeFood.create(quantity: 4, food_id: 359, recipe_id: 57);

recipe_food084 = RecipeFood.create(quantity: 1, food_id: 347, recipe_id: 57);

recipe_food085 = RecipeFood.create(quantity: 1/3, food_id: 273, recipe_id: 57);

food360 = Food.create(name: "Lime juice", unit: ' cups', price: 30, user_id: 1);
recipe_food360 = RecipeFood.create(quantity: 1/3, food_id: 360, recipe_id: 57);

food361 = Food.create(name: "Chamoy juice for serving", unit: '', price: 30, user_id: 1);
recipe_food361 = RecipeFood.create(quantity: 1, food_id: 361, recipe_id: 57);

food362 = Food.create(name: "Tajin seasoning", unit: '', price: 20, user_id: 1);
recipe_food362 = RecipeFood.create(quantity: 1, food_id: 362, recipe_id: 57);

recipe_food086 = RecipeFood.create(quantity: 2, food_id: 351, recipe_id: 57);

food363 = Food.create(name: "Diced fresh mango", unit: ' cup', price: 20, user_id: 1);
recipe_food363 = RecipeFood.create(quantity: 1, food_id: 363, recipe_id: 57);

recipe58 = Recipe.create(
    name: "Homemade Sweet Tea",
    description: "Homemade sweet tea is the ultimate in summer drinks.  Easy to make, refreshing and a Southern classic. I love making a big pitcher to serve to guests and at less than 
    100 calories a serving, it’s a great alternative to the store bought stuff.",
    prep_time: '5 mins',
    cook_time: '15 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'In a small saucepan set over medium heat, bring water to a boil. Add sugar, and stir until the sugar has dissolved. Remove from the heat and pour the simple syrup into a heat-resistant, airtight jar to cool completely (and store).',
        'In a ½ gallon pitcher, pour 8 cups water over 2 family-size, cold brew tea bags. Allow the tea to infuse the water at least 5 minutes and up to 15 minutes. Discard the tea bags.',
        'Pour sweet tea into glasses and allow each person to sweeten his/her own tea with the Simple Syrup. Stir and add ice.',
        'Garnish with lemon slices, orange slices, raspberries and/or mint leaves.',
        'Enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2019/05/homemade-sweet-tea-recipe-4-of-8.jpg'
)

recipe_food087 = RecipeFood.create(quantity: 7, food_id: 347, recipe_id: 58);

food364 = Food.create(name: "Sugar granulated, super-fine, organic, coconut or brown", unit: ' cup', price: 5, user_id: 1);
recipe_food364 = RecipeFood.create(quantity: 1, food_id: 364, recipe_id: 58);

food365 = Food.create(name: "Family-size cold brew tea bags", unit: '-3', price: 1, user_id: 1);
recipe_food365 = RecipeFood.create(quantity: 2, food_id: 365, recipe_id: 58);

recipe59 = Recipe.create(
    name: "Iced latte",
    description: "Cool off with a refreshing iced latte. This simple drink only needs a handful of ingredients and is perfect for a hot weather caffeine kick",
    prep_time: '5 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Mix the hot espresso with the sugar until it dissolves.',
        'Fill a glass with ice and stir in the sweetened coffee.',
        'Pour over the milk and stir until combined.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/iced-latte-30188f7.jpg?quality=90&webp=true&resize=440,400'
)

food366 = Food.create(name: "Espresso shots (60ml)", unit: '', price: 2.99, user_id: 1);
recipe_food366 = RecipeFood.create(quantity: 2, food_id: 366, recipe_id: 59);

food367 = Food.create(name: "Sugar, honey or maple syrup (to taste)", unit: ' tsp', price: 2.99, user_id: 1);
recipe_food367 = RecipeFood.create(quantity: 2, food_id: 367, recipe_id: 59);

recipe_food088 = RecipeFood.create(quantity: 1, food_id: 351, recipe_id: 59);

recipe_food089 = RecipeFood.create(quantity: 1, food_id: 25, recipe_id: 59);

recipe60 = Recipe.create(
    name: "Vanilla milkshake",
    description: "Treat yourself to an indulgent, creamy vanilla milkshake with our classic recipe. This easy drink is perfect for customising with indulgent toppings",
    prep_time: '10 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category6.id,
    instructions: [
        'Blitz the ice cream, milk and vanilla extract in a blender until combined and creamy. Pour into a large jug.',
        'Dip the rims of four glasses in the melted white chocolate, then some sprinkles, if you like. Leave to set slightly, then divide the milkshake between the glasses. You can customise your shake with different toppings, such as mini cookies, 
        marshmallows, pretzels, sweets and squirty cream.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/12/classic-vanilla-milkshake-9e7745f.jpg?quality=90&webp=true&resize=544,494'
)

food368 = Food.create(name: "Vanilla ice cream", unit: '00g', price: 20, user_id: 1);
recipe_food368 = RecipeFood.create(quantity: 2, food_id: 368, recipe_id: 60);

recipe_food090 = RecipeFood.create(quantity: 5, food_id: 25, recipe_id: 60);

recipe_food091 = RecipeFood.create(quantity: 2, food_id: 139, recipe_id: 60);


recipe61 = Recipe.create(
    name: "Sauteed Asparagus Recipe with Pancetta",
    description: "SAUTEED ASPARAGUS is the perfect side dish for any meal, and the Pancetta makes it even better! The leeks, garlic, and pine nuts add so much flavor to this dish…it just might be the Best Asparagus Recipe I’ve ever had. This Sauteed 
    Asparagus Recipe with Pancetta is good enough to eat on its own, but it pairs well with other pork recipes.",
    prep_time: '5 mins',
    cook_time: '10 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category7.id,
    instructions: [
        'Place the sliced pancetta in a large skillet over medium heat. Cook until crisp and light golden brown.',
        'Add the butter, asparagus pieces and sliced leek, and sauté 3-4 minutes or until asparagus is tender crisp.',
        'Add garlic, lemon zest, orange zest, pine nuts and parsley, and sauté 1 minute.',
        'Season, to taste, with salt and freshly ground black pepper.',
        'Serve immediately.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2018/05/best-sauteed-asparagus-3-of-5.jpg'
)

food369 = Food.create(name: "Pancetta cut into ¼ inch slices", unit: ' ounces', price: 5, user_id: 1);
recipe_food369 = RecipeFood.create(quantity: 4, food_id: 369, recipe_id: 61);

recipe_food092 = RecipeFood.create(quantity: 1, food_id: 140, recipe_id: 61);

food370 = Food.create(name: "Asparagus woody ends trimmed and sliced into 2-inch pieces on the bias", unit: ' pound', price: 15, user_id: 1);
recipe_food370 = RecipeFood.create(quantity: 1, food_id: 370, recipe_id: 61);

food371 = Food.create(name: "Sliced leek thinly sliced crosswise (white & pale green parts)", unit: ' 0.25 cups', price: 15, user_id: 1);
recipe_food371 = RecipeFood.create(quantity: 1, food_id: 371, recipe_id: 61);

recipe_food093 = RecipeFood.create(quantity: 2, food_id: 17, recipe_id: 61);

recipe_food094 = RecipeFood.create(quantity: 1, food_id: 98, recipe_id: 61);

food372 = Food.create(name: "Orange zest", unit: ' tsp', price: 1, user_id: 1);
recipe_food372 = RecipeFood.create(quantity: 1, food_id: 372, recipe_id: 61);

food373 = Food.create(name: "Toasted pine nuts or sunflower seeds", unit: ' tsp', price: 3, user_id: 1);
recipe_food373 = RecipeFood.create(quantity: 2, food_id: 373, recipe_id: 61);

food374 = Food.create(name: "Fresh Italian parsley chopped", unit: '-2 tsp', price: 0.5, user_id: 1);
recipe_food374 = RecipeFood.create(quantity: 1, food_id: 374, recipe_id: 61);

food375 = Food.create(name: "Kosher salt & freshly ground black pepper to taste", unit: '', price: 10, user_id: 1);
recipe_food375 = RecipeFood.create(quantity: 1, food_id: 375, recipe_id: 61);

recipe62 = Recipe.create(
    name: "Mashed Potatoes Recipe (Boiled in Milk)",
    description: "This easy mashed potatoes recipe needs a place at your table this holiday season! Deliciously creamy and indulgent, you won’t want to make this side dish any other way! These Mashed Potatoes have a secret, they’re boiled in milk!",
    prep_time: '5 mins',
    cook_time: '35 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category7.id,
    instructions: [
        'Combine cream, water, potatoes, 1-tablespoon kosher salt and 1-teaspoon black pepper in a large saucepan, set over medium heat.',
        'Bring just to a boil, reduce heat to low and simmer 15-25 minutes or until potatoes are fork-tender.',
        'Drain potatoes in a colander set over a medium, heatproof bowl (reserve the potato milk/water).',
        'Return the potatoes to the pan and set the heat to medium-low. Stir gently until the excess moisture evaporates from the potatoes, about 1 minute.',
        'Add the butter, 1½ teaspoons kosher salt and ½ teaspoon black pepper. Mash the potatoes until smooth and creamy (or fluffadding some of the reserved potato milk-water, when/if necessary. (NOTE: If not serving the potatoes immediately, 
        save about 1-cup of the milk-water to add before serving. Be sure to add the milk-water in ¼-cup increments to ensure the potatoes stay fluffy. No one likes watery mashed potatoes.)',
        'Transfer potatoes to a serving bowl, dot with 3-4 tabs of butter (or drizzle with melted butteand garnish with parsley or cheese, if desired.',
        'Enjoy!'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2019/09/easy-mashed-potatoes-recipe-2-of-6.jpg'
)

recipe_food095 = RecipeFood.create(quantity: 2, food_id: 352, recipe_id: 62);

recipe_food096 = RecipeFood.create(quantity: 3, food_id: 347, recipe_id: 62);

food376 = Food.create(name: "Yukon Gold Potatoes peeled and cubed", unit: ' pounds', price: 6, user_id: 1);
recipe_food376 = RecipeFood.create(quantity: 3, food_id: 376, recipe_id: 62);

recipe_food097 = RecipeFood.create(quantity: 2, food_id: 300, recipe_id: 62);

recipe_food098 = RecipeFood.create(quantity: 1.5, food_id: 239, recipe_id: 62);

food377 = Food.create(name: "Stick unsalted butter, cut into 6-8 pieces", unit: ' cup', price: 6, user_id: 1);
recipe_food377 = RecipeFood.create(quantity: 1, food_id: 377, recipe_id: 62);

recipe_food099 = RecipeFood.create(quantity: 1, food_id: 173, recipe_id: 62);

food378 = Food.create(name: 'Shredded or grated cheese', unit: '0g', price: 30, user_id: 1);
recipe_food378 = RecipeFood.create(quantity: 1, food_id: 378, recipe_id: 62);

recipe63 = Recipe.create(
    name: "Roasted Garlic Butter Turkey",
    description: "This roast turkey breast recipe is perfect for Thanksgiving, Christmas and other special occasions. This oven roasted turkey breast is basted in garlic butter for a real flavor explosion! This garlic turkey breast is simple to prep 
    and it’s a real show stopper. The skin is perfectly crispy and the meat is so succulent and flavorful!",
    prep_time: '20 mins',
    cook_time: '2 hrs 20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category7.id,
    instructions: [
        'Prep: Preheat oven to 325°F, line a large roasting pan with foil, spray both sides of a wire rack with nonstick cooking spray, and place the wire rack over the pan.',
        'Pat the turkey breast dry and set it on the wire rack.',
        'Mince 20 cloves of garlic and cut the other 2 heads of garlic in half.',
        'Garlic Butter: combine ingredients to make the garlic butter rub, then use your fingers to loosen the skin from the breast meat.',
        'Smear 1/3rd of the garlic butter underneath the skin and directly over the meat on each side of the breasts. Use the remaining 1/3rd garlic butter to coat the outer skin of the breasts.',
        'Before Roasting: Use 2-3 toothpicks on each half of the breasts to secure the skin to the breasts. Pour wine and water into the bottom of the roasting pan, and set the garlic halves in the roasting pan.',
        'Roast: Roast the turkey at 325°F for 1½ -2 hours or until the internal temperature registers 162°F. If the skin is darkening too quickly, tent the turkey with aluminum foil.',
        'Rest: Remove the turkey from the oven and tent snugly with foil for 15 minutes before slicing.',
        'Serve: Serve the turkey along with the pan juices.'
    ],
    img: 'https://www.thecookierookie.com/wp-content/uploads/2019/08/garlic-butter-roast-turkey-recipe-turkey-with-40-cloves-1-of-8.jpg'
)

recipe_food100 = RecipeFood.create(quantity: 1, food_id: 378, recipe_id: 63);

food379 = Food.create(name: 'Minced garlic', unit: '', price: 35, user_id: 1);
recipe_food379 = RecipeFood.create(quantity: 1, food_id: 379, recipe_id: 63);

recipe_food101 = RecipeFood.create(quantity: 1, food_id: 168, recipe_id: 63);

food380 = Food.create(name: 'Rosemary', unit: '', price: 25, user_id: 1);
recipe_food380 = RecipeFood.create(quantity: 1, food_id: 380, recipe_id: 63);

food381 = Food.create(name: 'Sage', unit: '', price: 25, user_id: 1);
recipe_food381 = RecipeFood.create(quantity: 1, food_id: 381, recipe_id: 63);

recipe_food102 = RecipeFood.create(quantity: 1, food_id: 74, recipe_id: 63);

food382 = Food.create(name: 'Salt & Pepper', unit: '', price: 25, user_id: 1);
recipe_food382 = RecipeFood.create(quantity: 1, food_id: 382, recipe_id: 63);

food383 = Food.create(name: 'Lemon Juice', unit: '', price: 15, user_id: 1);
recipe_food383 = RecipeFood.create(quantity: 1, food_id: 383, recipe_id: 63);

food384 = Food.create(name: 'Lemon Zest', unit: '', price: 15, user_id: 1);
recipe_food384 = RecipeFood.create(quantity: 1, food_id: 384, recipe_id: 63);

recipe64 = Recipe.create(
    name: "Fish mappas",
    description: "A coconut fish curry, popular in the southern Indian state of Kerala - use pollock or any other sustainably sourced white fish fillets",
    prep_time: '15 mins',
    cook_time: '20 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category7.id,
    instructions: [
        'Put a large saucepan of water on to boil and cook the rice following pack instructions. Meanwhile, heat the oil in a large, wide saucepan over a medium heat and add the onions. Cook for 5-10 mins until softened and starting to colour. Add the 
        garlic and tomatoes, and fry for 2 mins. Add the curry paste, fry for 2 mins more, then pour in the coconut milk and bring to the boil.',
        'Add the fish to the pan and simmer gently for 5-8 mins until just cooked through. Turn off the heat. Sprinkle the coriander over the curry and serve with the rice.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/fish-mappas-a84eed1.jpg?quality=90&webp=true&resize=440,400'
)

food385 = Food.create(name: 'Basmati rice', unit: '00g', price: 10, user_id: 1);
recipe_food385 = RecipeFood.create(quantity: 3, food_id: 385, recipe_id: 64);

recipe_food103 = RecipeFood.create(quantity: 1, food_id: 14, recipe_id: 64);

recipe_food104 = RecipeFood.create(quantity: 2, food_id: 148, recipe_id: 64);

recipe_food105 = RecipeFood.create(quantity: 2, food_id: 17, recipe_id: 64);

recipe_food106 = RecipeFood.create(quantity: 5, food_id: 20, recipe_id: 64);

food386 = Food.create(name: 'Tikka curry paste', unit: ' tbsp', price: 0.5, user_id: 1);
recipe_food386 = RecipeFood.create(quantity: 3, food_id: 386, recipe_id: 64);

food387 = Food.create(name: 'Can coconut milk', unit: '00g', price: 7, user_id: 1);
recipe_food387 = RecipeFood.create(quantity: 4, food_id: 387, recipe_id: 64);

food388 = Food.create(name: 'Skinless, boneless pollock fillets (about 150g/51/2oz each), or other sustainable white fish, cut into 4cm/11/2in chunks', unit: '', price: 15, user_id: 1);
recipe_food388 = RecipeFood.create(quantity: 4, food_id: 388, recipe_id: 64);

food389 = Food.create(name: 'Small pack coriander, roughly chopped', unit: '', price: 4, user_id: 1);
recipe_food389 = RecipeFood.create(quantity: 1, food_id: 389, recipe_id: 64);

recipe65 = Recipe.create(
    name: "Nachos",
    description: "Whip up these speedy nachos for a casual get-together with friends. Crispy tortilla chips are loaded with salsa, cheese, spring onions, chilli and other toppings.",
    prep_time: '5 mins',
    cook_time: 'No cook',
    public: true,
    user_id: 1,
    recipe_catogory_id: category7.id,
    instructions: [
        'Tip tortilla chips on to a baking tray, pour over salsa and scatter over a few sliced spring onions.',
        'Grate over a good chunk of cheese (fontina is perfect, but cheddar will do). Add a pinch of crushed chilli flakes, then put under a hot grill for about 3 minutes to melt the cheese. Serve with soured cream or guacamole (optional).'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-2507_11-bb80af0.jpg?quality=90&webp=true&resize=500,454'
)

food390 = Food.create(name: 'Packet plain tortilla chips', unit: '75g', price: 29, user_id: 1);
recipe_food390 = RecipeFood.create(quantity: 1, food_id: 390, recipe_id: 65);

food391 = Food.create(name: 'Salsa', unit: '25g', price: 22, user_id: 1);
recipe_food391 = RecipeFood.create(quantity: 2, food_id: 391, recipe_id: 65);

recipe_food107 = RecipeFood.create(quantity: 2, food_id: 53, recipe_id: 65);

recipe_food108 = RecipeFood.create(quantity: 2, food_id: 28, recipe_id: 65);

food392 = Food.create(name: 'Crushed chilli flakes', unit: ' pinch', price: 0.5, user_id: 1);
recipe_food392 = RecipeFood.create(quantity: 1, food_id: 392, recipe_id: 65);

food393 = Food.create(name: 'Golden caster sugar', unit: '½ tsp', price: 1, user_id: 1);
recipe_food393 = RecipeFood.create(quantity: 1, food_id: 393, recipe_id: 65);

food394 = Food.create(name: 'Chipotle paste', unit: ' tbsp', price: 3, user_id: 1);
recipe_food394 = RecipeFood.create(quantity: 2, food_id: 394, recipe_id: 65);

food395 = Food.create(name: 'Red wine vinegar', unit: ' tbsp', price: 0.5, user_id: 1);
recipe_food395 = RecipeFood.create(quantity: 2, food_id: 395, recipe_id: 65);


recipe66 = Recipe.create(
    name: "Ham & potato hash with baked beans & healthy ‘fried’ eggs",
    description: "Makeover your fry-up with this low-fat, low-calorie ham hash brown and healthier 'fried' eggs - a great brunch or weeknight dinner",
    prep_time: '10 mins',
    cook_time: '25 mins - 30 mins',
    public: true,
    user_id: 1,
    recipe_catogory_id: category1.id,
    instructions: [
        'Bring a large pan of salted water to the boil. Add the potatoes and boil for 5 mins until just tender. Drain well and leave in the colander to steam-dry.',
        'Meanwhile, spray an ovenproof pan with cooking spray. Add the leeks with a splash of water and fry until very soft and squishy. Add a few more sprays of the oil, tip in the 
        potatoes along with the ham, and fry to crisp up a little. Heat oven to 200C/180C fan/gas 6.',
        'Stir in the mustard, 1 egg and a good amount of seasoning with a fork – break up some of the potatoes roughly as you do. Flatten down the mixture, spray the top with oil, 
        and bake in the oven for 15-20 mins until the top is crisp.',
        'When the hash is nearly ready, heat 200ml water in a non-stick frying pan with a lid (or use a baking sheet as a lid). When it is steaming (but before it simmers), crack in 
        the remaining 4 eggs and cover with a lid. Cook for 2-4 mins until the eggs are done to your liking. Meanwhile, heat the beans.',
        'Lift an egg onto each plate, add a big scoop of hash and spoon on some beans.'
    ],
    img: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/ham-potato-hash-with-baked-beans-healthy-fried-eggs-8075b24.jpg?quality=90&webp=true&resize=440,400'
)

food396 = Food.create(name: 'Potato , diced', unit: 'g', price: 10, user_id: 1);
recipe_food396 = RecipeFood.create(quantity: 6, food_id: 396, recipe_id: 66);

food397 = Food.create(name: 'Leeks , trimmed, washed and sliced', unit: '', price: 10, user_id: 1);
recipe_food397 = RecipeFood.create(quantity: 2, food_id: 397, recipe_id: 66);

food398 = Food.create(name: 'Lean ham , weighed after trimming and discarding any fat, chopped', unit: '75g', price: 50, user_id: 1);
recipe_food398 = RecipeFood.create(quantity: 1, food_id: 398, recipe_id: 66);

food399 = Food.create(name: 'Wholegrain mustard', unit: ' tbsp', price: 2, user_id: 1);
recipe_food399 = RecipeFood.create(quantity: 2, food_id: 399, recipe_id: 66);

food400 = Food.create(name: 'Cans reduced sugar & salt baked beans', unit: ' x 415g', price: 25, user_id: 1);
recipe_food400 = RecipeFood.create(quantity: 2, food_id: 400, recipe_id: 66);

recipe_food109 = RecipeFood.create(quantity: 5, food_id: 59, recipe_id: 66);
