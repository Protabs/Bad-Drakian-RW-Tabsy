// Generated from Lowtown Guidebook-Public - Cooking Recipies.pdf.
// This file intentionally contains only the PDF catalogue.
/datum/book_entry/cooking/individual
	abstract_type = /datum/book_entry/cooking/individual
	var/recipe_text = ""

/datum/book_entry/cooking/individual/inner_book_html(mob/user)
	return {"
	<div>
	<h2>[name]</h2>
	<p>[recipe_text]</p>
	</div>
	"}

/datum/book_entry/cooking/individual/flour
	name = "Flour"
	category = "Other"
	recipe_text = "Most baking begins with flour, so you had best learn to make your own. Feed your grain through the millstone and grind it down fine. Wheat, oats, or rice will each do the job."
/datum/book_entry/cooking/individual/sugar
	name = "Sugar"
	category = "Other"
	recipe_text = "A little sweetness goes a long way, especially once you take to making cakes and pastries. Run the sugarcane through the millstone until you have your sugar. Simple work, and well worth keeping some to hand."
/datum/book_entry/cooking/individual/roast_coffee_beans
	name = "Roast Coffee Beans"
	category = "Other"
	recipe_text = "For those mornings when even a good breakfast will not wake you, coffee is a fine thing to have ready. Put the coffee bean it in the oven. Mind it well, there is a difference between roasted and ruined. Once roasted put the bean on boiling water to brew your coffee."
/datum/book_entry/cooking/individual/ground_tea_leaves
	name = "Ground Tea Leaves"
	category = "Other"
	recipe_text = "If you mean to brew a decent cup of tea, you must first see to the leaves. Lay the fresh tea leaf upon the drying rack, then take the dried leaves to the millstone and grind them down."
/datum/book_entry/cooking/individual/dried_rosa_petals
	name = "Dried Rosa Petals"
	category = "Other"
	recipe_text = "Dried petals are worth keeping for the more fragrant preparations. Put the rosa through the millstone to separate its petals, then spread them upon the drying rack. A little patience will see them ready."
/datum/book_entry/cooking/individual/dough
	name = "Dough"
	category = "Baked"
	recipe_text = "Dough is the base for many other recipes, so you had best get familiar with it. Wet your first helping of flour with water and work it thoroughly by hand. Once it begins to come together, add the second helping and knead the stubborn mixture into a proper dough."
/datum/book_entry/cooking/individual/small_dough
	name = "Small Dough"
	category = "Baked"
	recipe_text = "Many a bun and handpie begins with a smaller piece of dough. Take a knife to your dough and cut yourself a portion. Nothing complicated about it."
/datum/book_entry/cooking/individual/flatdough
	name = "FlatDough"
	category = "Baked"
	recipe_text = "You will find plenty of uses for a flat sheet of dough, so keep your rolling pin nearby. Lay the dough upon the table and give it a good going-over until it lies nice and flat."
/datum/book_entry/cooking/individual/butter_dough
	name = "Butter Dough"
	category = "Baked"
	recipe_text = "For richer pastries and cakes, ordinary dough will not quite do. Lay your dough out and work a slice of butter into it by hand. Keep at it until the two are well acquainted."
/datum/book_entry/cooking/individual/small_butter_dough
	name = "Small Butter Dough"
	category = "Baked"
	recipe_text = "Set the butter dough on your table and cut it down to size with a knife."
/datum/book_entry/cooking/individual/dotted_tartdough
	name = "Dotted Tartdough"
	category = "Baked"
	recipe_text = "Take your small butter dough and press a spoon into its middle to make a little hollow. There is your tart, ready for filling."
/datum/book_entry/cooking/individual/pie_dough
	name = "Pie Dough"
	category = "Baked"
	recipe_text = "Set your small butter dough on the table and roll it out with a rolling pin into a proper sheet for pie-making."
/datum/book_entry/cooking/individual/pie_bottom
	name = "Pie Bottom"
	category = "Baked"
	recipe_text = "A pie needs something to hold all that filling, and this is where you begin. Give the prepared pie dough a turn in the oven to make your pie bottom."
/datum/book_entry/cooking/individual/tallow
	name = "Tallow"
	category = "Other"
	recipe_text = "Take your fat and a frying pan to the hearth or campfire and render it down into tallow. Little use in cooking but good for making soaps and keeping the kitchen clean."
/datum/book_entry/cooking/individual/raw_bacon
	name = "Raw Bacon"
	category = "Meat"
	recipe_text = "Lay the raw pigflesh on the table and take a sharp blade to it, cutting it into bacon."
/datum/book_entry/cooking/individual/sausage
	name = "Sausage"
	category = "Meat"
	recipe_text = "Work two helpings of mince together until they make a single sausage, then cook it until nicely browned. If your meat is running thin you can always add a helping of fat to the mix instead of one of the mince."
/datum/book_entry/cooking/individual/salo
	name = "Salo"
	category = "Preserved"
	recipe_text = "Give the fat a thorough salting and leave it upon the drying rack. Time will take care of the rest."
/datum/book_entry/cooking/individual/salumoi
	name = "Salumoi"
	category = "Preserved"
	recipe_text = "Salt your sausage well and hang it upon the drying rack. A fine thing to have put aside for later."
/datum/book_entry/cooking/individual/coppiette
	name = "Coppiette"
	category = "Preserved"
	recipe_text = "Rub the meat with salt and leave it upon the drying rack until properly dried. Simple fare, and all the better for travelling."
/datum/book_entry/cooking/individual/raisins
	name = "Raisins and other giblets"
	category = "Preserved"
	recipe_text = "Spread your chosen fruit upon the drying rack and leave it to shrivel. Jackberries, raspberries, blackberries, strawberries, plums, pears, tangerines, lemons, and limes all take well to drying, their flavours growing richer as the moisture leaves them. They may look a little worse for wear by the end, but that is rather the point. Keep a handful aside with some honey if you intend to make sweetglass."
/datum/book_entry/cooking/individual/brothbrique
	name = "Brothbrique"
	category = "Preserved"
	recipe_text = "Take your dried coppiette or salumoi, add the raisins and tallow, and set the lot upon the drying rack to make a brothbrique. Not a pretty little thing, but useful."
/datum/book_entry/cooking/individual/raisin_bread
	name = "Raisin Bread"
	category = "Baked"
	recipe_text = "Work two handfuls of raisins into your dough a handful at a time, then bake the loaf until golden brown. Slice it with a knife once it is ready, if you mean to share."
/datum/book_entry/cooking/individual/raisin_biscuit
	name = "Raisin Biscuit"
	category = "Baked"
	recipe_text = "Press a handful of raisins into the small butter dough and bake until the biscuit takes on a golden colour."
/datum/book_entry/cooking/individual/hardtack
	name = "Hardtack"
	category = "Baked"
	recipe_text = "Roll your dough flat with a rolling pin, then score it with a knife. There is no need to make it pretty."
/datum/book_entry/cooking/individual/bread
	name = "Bread"
	category = "Baked"
	recipe_text = "Put your dough in the oven and bake until the loaf is a good golden brown. Take a knife to it for slices, should you want them."
/datum/book_entry/cooking/individual/bun
	name = "Bun"
	category = "Baked"
	recipe_text = "Set the small dough in the oven and let it bake to a fine golden brown. A humble bun needs little fuss."
/datum/book_entry/cooking/individual/handpies
	name = "Handpies"
	category = "Baked"
	recipe_text = "A handpie is a fine way to make a meal of whatever you have to spare. They keep well and are easy to carry for any outing. Lay your filling upon a piece of pie dough, tuck it inside, and bake until the pastry turns golden. Jacksberries make a sweet one (mind wild berries as some may be poisonous), while minced meat, truffle, potato, fish, crab meat, or shredded cabbage will do for something heartier."
/datum/book_entry/cooking/individual/pies
	name = "Pies"
	category = "Baked"
	recipe_text = "A proper pie begins with a prepared bottom and enough filling to make the trouble worthwhile. Heap three helpings of your chosen filling into the crust, cover with a roof of pie dough, and bake until golden brown. Minced meat, minced fish, apples, or jacksberries all make good pies. You can also make a pot pie by choosing from cut potatoes, fat, salo, cheese, bacon, or bird meat. A crab pie takes crab meat, shredded cabbage, or both, but there must be some crab in it or you've no business calling it one."
/datum/book_entry/cooking/individual/pie_pumpkin
	name = "Pumpkin Pie"
	category = "Baked"
	recipe_text = "Fill your pie bottom with pumpkin, either sliced or cooked to a mash, then work in fresh cheese and an egg. Finish with a handful of sugar and bake until golden brown."
/datum/book_entry/cooking/individual/dot_tarts
	name = "Dot Tarts"
	category = "Baked"
	recipe_text = "A little pocket of butter dough makes a fine home for a piece of fruit. Press your spoon into the small butter dough to form the tart, then tuck in your choice of tangerine, plum, blackberry, raspberry, strawberry, pear, apple slice, or ambrosia slice. Bake into the oven until golden."
/datum/book_entry/cooking/individual/fresh_cheese
	name = "Fresh Cheese"
	category = "Dairy"
	recipe_text = "Fresh cheese is useful in everything from buns to cakes, and there is no great mystery to making it. Stir salt into your milk in a bucket, then use a cloth to strain out the cheese."
/datum/book_entry/cooking/individual/cheese_wheel
	name = "Cheese Wheel"
	category = "Dairy"
	recipe_text = "Gather four portions of fresh cheese into a cloth upon the table and leave them until they set into a proper wheel."
/datum/book_entry/cooking/individual/aged_cheese_wheel
	name = "Aged Cheese Wheel"
	category = "Dairy"
	recipe_text = "Set your cheese wheel down and leave it to age. This is one of those rare jobs improved by doing nothing at all."
/datum/book_entry/cooking/individual/butter
	name = "Butter"
	category = "Dairy"
	recipe_text = "Butter finds its way into so much cooking that you will soon tire of making it, though never of having it. Add salt to your milk in a bucket, then take a spoon and churn until the butter comes together."
/datum/book_entry/cooking/individual/cake_base
	name = "Cake Base"
	category = "Baked"
	recipe_text = "Before you can dress up a cake with honey, cheese, or frosting, you need a good base. Work an egg into your butter dough until you have the makings of one."
/datum/book_entry/cooking/individual/cheesecake
	name = "Cheesecake"
	category = "Baked"
	recipe_text = "Take your cake base and work the fresh cheese into it. That is the heart of a good cheesecake."
/datum/book_entry/cooking/individual/ranesheni_zybantine_cake
	name = "Ranesheni Cake"
	category = "Baked"
	recipe_text = "Spread honey generously over the cake base. A sweet delight from my home land, one that I miss greatly."
/datum/book_entry/cooking/individual/frosting
	name = "Frosting"
	category = "Other"
	recipe_text = "A cake can be perfectly good plain, but frosting makes it feel like an occasion. Take a slice of butter and work a handful of sugar into it until the two come together."
/datum/book_entry/cooking/individual/toast
	name = "Toast"
	category = "Baked"
	recipe_text = "Give a slice of bread a little more heat until it turns golden and crisp. Keep watch, for toast goes from fine to burnt in a hurry."
/datum/book_entry/cooking/individual/breadcrumbs
	name = "Breadcrumbs"
	category = "Baked"
	recipe_text = "Keep some breadcrumbs to hand if you intend to fry anything in a good coating. Feed your toast through the millstone until it is reduced to crumbs. There is a use for yesterday's bread after all."
/datum/book_entry/cooking/individual/buttered_toast
	name = "Buttered Toast"
	category = "Baked"
	recipe_text = "Spread a slice of butter over your toast. Hardly a recipe, perhaps, but a good breakfast all the same."
/datum/book_entry/cooking/individual/bread_and_toast
	name = "Bread and Toast"
	category = "Baked"
	recipe_text = "A slice of bread makes a fine meal when you have something worth putting upon it. Toast it first if you fancy a little crunch, or leave it as it is when hunger gets the better of patience. Lay on a slice of salumoi, cheese, or salo, or make a warmer meal of it with a fried egg or bacon. Not every good meal needs a pot and half a day's labour."
/datum/book_entry/cooking/individual/fresh_cheese_bun
	name = "Fresh Cheese Bun"
	category = "Baked"
	recipe_text = "Work fresh cheese into a portion of small dough. A fine little bun in the making."
/datum/book_entry/cooking/individual/grenzel_bun
	name = "Grenzel Bun"
	category = "Baked"
	recipe_text = "Take a bun and work a sausage into it. A hearty mouthful, and no great skill required."
/datum/book_entry/cooking/individual/raston
	name = "Raston"
	category = "Baked"
	recipe_text = "Work a wedge of cheese into your bun. The sort of thing that disappears quickly from the table."
/datum/book_entry/cooking/individual/pastry
	name = "Pastry"
	category = "Baked"
	recipe_text = "Put the small butter dough into the oven and bake it until it turns a pleasing golden brown."
/datum/book_entry/cooking/individual/frybread
	name = "Frybread"
	category = "Baked"
	recipe_text = "Lay the small butter dough in a frying pan and cook it until golden brown."
/datum/book_entry/cooking/individual/fried_egg
	name = "Fried Egg"
	category = "Eggs"
	recipe_text = "Crack an egg into a hot frying pan and leave it until the white has set. A good cook knows when to stop fussing with an egg."
/datum/book_entry/cooking/individual/washed_rice
	name = "Washed Rice"
	category = "Rice"
	recipe_text = "Before making any of the rice dishes, see that your rice is properly washed. Wet it with water and work it gently between your hands until clean. Once washed, it is ready for cooking, the oven does the job nicely."
/datum/book_entry/cooking/individual/rice_and_beef_meal
	name = "Rice and Beef Meal"
	category = "Rice"
	recipe_text = "Take a helping of cooked rice and add frysteak and then roasted carrot. A hearty plate without much fuss."
/datum/book_entry/cooking/individual/rice_and_pork_meal
	name = "Rice and Pork Meal"
	category = "Rice"
	recipe_text = "Take a helping of cooked rice and add roast pork and then cucumber. A hearty plate without much fuss."
/datum/book_entry/cooking/individual/rice_and_shrimp_meal
	name = "Rice and Shrimp Meal"
	category = "Rice"
	recipe_text = "Take a helping of cooked rice and add cooked shrimp and then roasted carrot. A hearty plate without much fuss."
/datum/book_entry/cooking/individual/rice_and_frybird_meal
	name = "Rice and Frybird Meal"
	category = "Rice"
	recipe_text = "Take a helping of cooked rice and add frybird and then roasted carrot. A hearty plate without much fuss."
/datum/book_entry/cooking/individual/rice_with_egg_and_cheese
	name = "Rice with Egg and Cheese"
	category = "Eggs"
	recipe_text = "Set out your cooked rice, crack a fresh egg over it, then lay a slice of cheese on top to melt. A comforting heap of food, if nothing else."
/datum/book_entry/cooking/individual/twin_fried_egg
	name = "Twin Fried Egg"
	category = "Eggs"
	recipe_text = "Take one fried egg and lay another right atop it. Twice the egg, twice the pleasure."
/datum/book_entry/cooking/individual/hammerholdian_breakfast
	name = "Hammerholdian breakfast"
	category = "Eggs"
	recipe_text = "Begin with a fried egg, add a sausage and a slice of bacon, then finish with a piece of toast. The Hammerholdians know how to start the day right."
/datum/book_entry/cooking/individual/valerian_omelette
	name = "Valerian Omelette"
	category = "Eggs"
	recipe_text = "Lay a wedge of cheese over your twin fried eggs. The Valerians have a rather generous notion of an omelette."
/datum/book_entry/cooking/individual/bacon_and_egg
	name = "Bacon and Egg"
	category = "Eggs"
	recipe_text = "Set your fried bacon atop a pair of fried eggs. There are worse ways to start the day."
/datum/book_entry/cooking/individual/stuffed_egg
	name = "Stuffed Egg"
	category = "Eggs"
	recipe_text = "Take a raw egg and work a wedge of cheese into it, then bake the whole affair in the oven or on the stove."
/datum/book_entry/cooking/individual/peppersteak
	name = "Peppersteak"
	category = "Meat"
	recipe_text = "Give your cooked frysteak a good seasoning from the peppermill. There is little point being timid with the pepper."
/datum/book_entry/cooking/individual/ducal_steak
	name = "Ducal Steak"
	category = "Meat"
	recipe_text = "Start with a peppersteak and work a clove of garlic into the meat. A small addition for a rather grand title."
/datum/book_entry/cooking/individual/steak_meal
	name = "Steak Meal"
	category = "Meat"
	recipe_text = "Lay roasted carrot over your frysteak, then finish with fried onion. A proper plate, without unnecessary ceremony."
/datum/book_entry/cooking/individual/wiener_on_cabbage
	name = "Wiener on Cabbage"
	category = "Meat"
	recipe_text = "Make a bed of cooked cabbage, then lay your sausage atop it. A simple meal, but a good one.	"
/datum/book_entry/cooking/individual/wiener_meal
	name = "Wiener Meal"
	category = "Meat"
	recipe_text = "Add sausage to your fried potato, then add fried onion to finish. No one should leave this meal hungry."
/datum/book_entry/cooking/individual/frybird_with_tato
	name = "Frybird With Tato"
	category = "Meat"
	recipe_text = "Lay a fried potato atop your frybird and call it a meal. Sometimes simple is best."
/datum/book_entry/cooking/individual/spiced_bird_roast
	name = "Spiced Bird Roast"
	category = "Meat"
	recipe_text = "Take your roasted bird and give it a generous turn of the peppermill. A little spice does wonders for a roast."
/datum/book_entry/cooking/individual/crab_cake
	name = "Crab Cake"
	category = "Seafood"
	recipe_text = "Work the crab meat into a piece of small butter dough, then bake it in the oven until golden brown."
/datum/book_entry/cooking/individual/saint_dendor_s_salmon
	name = "Saint Dendor's Salmon"
	category = "Seafood"
	recipe_text = "Work a helping of mentha into your cooked salmon. A modest preparation for a dish bearing a saint's name."
/datum/book_entry/cooking/individual/berrymash_salmon
	name = "Berrymash Salmon"
	category = "Seafood"
	recipe_text = "Take your cooked salmon and work a jacksberry into the flesh. Fish and fruit make better companions than you might think."
/datum/book_entry/cooking/individual/peppertail
	name = "Peppertail"
	category = "Seafood"
	recipe_text = "Give your cooked lobster a thorough seasoning with the peppermill. A fine tail deserves a little bite."
/datum/book_entry/cooking/individual/buttered_lobster
	name = "Buttered Lobster"
	category = "Seafood"
	recipe_text = "Work a slice of butter into the cooked lobster. There is little that butter cannot improve."
/datum/book_entry/cooking/individual/buttered_sole
	name = "Buttered Sole"
	category = "Seafood"
	recipe_text = "Take your cooked sole and work a slice of butter into it. A modest fish, treated kindly."
/datum/book_entry/cooking/individual/plaice_with_onion
	name = "Plaice with Onion"
	category = "Seafood"
	recipe_text = "Work chopped onion into your cooked plaice. Nothing fancy, just a good pairing."
/datum/book_entry/cooking/individual/alecod
	name = "Alecod"
	category = "Seafood"
	recipe_text = "Take your cooked cod and work a little wheat beer into it. Do try to leave some beer for the fish."
/datum/book_entry/cooking/individual/milkclams
	name = "Milkclams"
	category = "Seafood"
	recipe_text = "“Work a small measure of milk into your cooked clams. It may sound an unlikely pairing, but the two get along rather better than one might expect."
/datum/book_entry/cooking/individual/garlicked_seabass
	name = "Garlicked Seabass"
	category = "Seafood"
	recipe_text = "Work a clove of garlic into your cooked seabass. A little garlic gives the fish some character."
/datum/book_entry/cooking/individual/jellied_eel
	name = "Jellied Eel"
	category = "Seafood"
	recipe_text = "Cook your eel in a hot frying pan, then give the cooked eel another turn in the pan. Yes, twice, that is how the dish is made."
/datum/book_entry/cooking/individual/squire_s_delight
	name = "Squire's Delight"
	category = "Deep Fried"
	recipe_text = "Coat an entire stick of butter with breadcrumbs, using an egg to hold the covering together, then deep-fry it in a pot of boiling fat until golden. A squire with a taste for this had better keep busy."
/datum/book_entry/cooking/individual/nitzel
	name = "Nitzel"
	category = "Deep Fried"
	recipe_text = "Flatten your meat with a rolling pin, coat it with breadcrumbs and use an egg to bind the coating. Deep-fry in boiling fat until golden brown."
/datum/book_entry/cooking/individual/caramel_giblets_and_sweetglass
	name = "Caramel Giblets and Fruit Sweetglass"
	category = "Deep Fried"
	recipe_text = "Set a pot upon the hearth and melt a generous helping of tallow into it, enough to give whatever you fry a proper bath. For caramel giblets, simply drop in a helping of sugar milled from sugarcane and let it fry in the hot fat. For fruit sweetglass, begin with dried jackberries or any other dried fruit giblets, coat them thoroughly in honey, and fry them in the same fashion. The result is a fine little sweet for the road, provided you can resist eating the lot before setting off."
/datum/book_entry/cooking/individual/aubergine
	name = "Aubergine"
	category = "Other"
	recipe_text = "Cut a hollow into the eggplant with your knife, then fill it with minced meat followed by apple. Bake until the whole thing is golden brown. To take this dish a step further, set a wedge of cheese over your cooked aubergine and let it melt across the top, giving it a rich and savoury finish"
/datum/book_entry/cooking/individual/pumpkin_slice
	name = "Pumpkin Slice"
	category = "Other"
	recipe_text = "Cut open your pumpkin with a knife, then take a spoon and scoop out the flesh in slices until the shell is hollow. Mind where you put the seeds."
/datum/book_entry/cooking/individual/pumpkin_loaf
	name = "Pumpkin Loaf"
	category = "Baked"
	recipe_text = "Work a slice of pumpkin into your butter dough and bake it until golden brown."
/datum/book_entry/cooking/individual/pumpkin_balls
	name = "Pumpkin Balls"
	category = "Baked"
	recipe_text = "Work a slice of pumpkin into your small butter dough, then bake until golden brown. Little morsels, and easy enough to make."
/datum/book_entry/cooking/individual/muffin
	name = "Muffin"
	category = "Baked"
	recipe_text = "Bake your butter dough in the oven until golden. A good muffin asks for little more."
/datum/book_entry/cooking/individual/honey_muffin
	name = "Honey Muffin"
	category = "Baked"
	recipe_text = "Slather your muffin generously with honey and bake it until golden. A little sweetness goes a long way towards making a simple treat something special."
/datum/book_entry/cooking/individual/cheese_muffin
	name = "Cheese Muffin"
	category = "Baked"
	recipe_text = "Spread fresh cheese over your muffin and bake it until the cheese melts. Best enjoyed while it is still warm."
/datum/book_entry/cooking/individual/frybird_bucket
	name = "Frybird Bucket"
	category = "Meat"
	recipe_text = "Gather three helpings of frybird in a bucket with salt. A whole bucket of bird: hardly elegant, but no one can accuse you of stinginess."
/datum/book_entry/cooking/individual/bird_filled_bird_roast
	name = "Bird filled Bird-roast"
	category = "Meat"
	recipe_text = "To make Psydon weep, simply place a roast bird upon the table, then take another and shove it into the poor cooked creature."
/datum/book_entry/cooking/individual/ducal_bird_roast
	name = "Ducal Bird-Roast"
	category = "Meat"
	recipe_text = "Work a clove of garlic into your spiced bird roast. The dukes apparently know the value of a good garlic clove."
/datum/book_entry/cooking/individual/butter_bird_roast
	name = "Butter Bird-Roast"
	category = "Meat"
	recipe_text = "Take your roasted bird and work a stick of butter into it. Do not be shy about the butter."
/datum/book_entry/cooking/individual/coated_strudel
	name = "Coated Strudel"
	category = "Baked"
	recipe_text = "Work your small dough and dough into a long shape, then fill it with apple and rocknuts. Bake until golden, coat with sugar as it cools, and cut into six slices for serving."
/datum/book_entry/cooking/individual/hunter_s_feast
	name = "Hunter's Feast"
	category = "Meat"
	recipe_text = "Take your fried volf and work in a clove of garlic, then add cucumber to finish the meal. A hunter ought to eat well after a long day."
/datum/book_entry/cooking/individual/elven_cabbit_roast
	name = "Elven Cabbit Roast"
	category = "Meat"
	recipe_text = "Work a clove of garlic into your fried cabbit, then add cucumber to make a meal of it. The elves have their ways."
/datum/book_entry/cooking/individual/wiener_nitzel
	name = "Wiener Nitzel"
	category = "Meat"
	recipe_text = "Flatten your sausage with a rolling pin, coat it in breadcrumbs and bind the coating with an egg. Deep-fry in boiling fat until golden brown."
/datum/book_entry/cooking/individual/tender_frybird
	name = "Tender Frybird"
	category = "Meat"
	recipe_text = "Give your bird meat a good flattening with the rolling pin, then coat it in breadcrumbs and bind them with an egg. Deep-fry in boiling fat until golden brown."
/datum/book_entry/cooking/individual/dried_fish_filet
	name = "Dried Fish Filet"
	category = "Preserved"
	recipe_text = "Salt the raw fish fillet and lay it upon the drying rack. A useful bit of food to have tucked away."
/datum/book_entry/cooking/individual/trail_mix
	name = "Trail-Mix"
	category = "Preserved"
	recipe_text = "Gather raisins, roasted seeds and a slice of pumpkin, then pack them together in ration wrapping paper. A small comfort for a long road."
/datum/book_entry/cooking/individual/tomatoplates
	name = "Tomatoplates"
	category = "Other"
	recipe_text = "Spread your flat dough upon the table, crush a tomato over it, and scatter fresh cheese across the top. Bake it as it is, or leave it ready for a topping. Sausage, truffle, minced fish, pear, or onion will each make a different sort of meal."
/datum/book_entry/cooking/individual/stuffed_butterdough
	name = "BookBread"
	category = "Baked"
	recipe_text = "Butter dough takes kindly to a sweet filling. Work in a pear, plum, lemon, tangerine, blackberry, raspberry, jackberry, or half a chocolate ingot, then cook the filled pastry until done."
/datum/book_entry/cooking/individual/tartar
	name = "Tartar"
	category = "Meat"
	recipe_text = "Work the minced meat and egg together until combined."
/datum/book_entry/cooking/individual/jamtallow
	name = "Jamtallow"
	category = "Preserved"
	recipe_text = "To prepare jamtallow, begin by coating a blackberry thoroughly in sugar until well smothered. Drop it into a pot of boiling fat and let it fry until it sets into a firm stick of jamtallow. Once ready, cut it into slices with a proper knife and spread them over toast, buns or bookbread. A little goes a long way towards sweetening even the plainest bread."
/datum/book_entry/cooking/individual/marmalade
	name = "Marmalade"
	category = "Preserved"
	recipe_text = "To prepare marmalade, begin by coating a tangerine thoroughly in sugar until well smothered. Drop it into a pot of boiling fat and let it fry until it sets into a firm stick of marmalade. Once ready, cut it into slices with a proper knife and spread them over toast, buns or bookbread. Its bright, sweet flavour makes a welcome addition to even the simplest breakfast."
/datum/book_entry/cooking/individual/cookie_dough
	name = "Cookie Dough"
	category = "Baked"
	recipe_text = "For a batch of cookies, start with raw Hardtack and add one flavouring: a Chocolate Slice, Raisins or Caramel Giblets. This makes a half-finished dough. Add the same flavouring once more to complete the Cookie Dough, then bake it in the oven until crisp and fragrant."
/datum/book_entry/cooking/individual/porridge_soup
	name = "Soups & Stews"
	category = "Soups and Stews"
	recipe_text = "Every cook worth their salt ought to know how to make a good soup or stew. They're among the simplest dishes to prepare, and a staple in any kitchen. And when food runs short, there's nothing better for stretching what little you have into a meal for many. All you need is a pot of fresh water and something to put in it. Grains, vegetables, meat, fish, or even berries will do, depending on what you've got at hand. Simply add your chosen ingredients and leave the pot to cook upon the hearth until ready. A humble meal, perhaps, but one that has kept many a belly full when the pantry was looking rather bare."
