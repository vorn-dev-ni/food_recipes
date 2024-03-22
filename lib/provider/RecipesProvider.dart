import 'package:flutter/material.dart';


import '../model/Foods.dart';

class RecipeProvider with ChangeNotifier{
 List<Foods> _food = [
    //TODO breakfast
    Foods(DateTime.now().toString(), "Hot Noodle Soup (Kuy Teav)",
        "https://www.foodandwine.com/thmb/kUAJQMcvXu-ogrZdevp6elBxhsE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/cambodian-rice-noodle-soup-XL-RECIPE0318_0-17acba679dca4c2a9fbd65400bfc3db2.jpg",
        1466000,"Medium",
       "Kuy Teav is a popular breakfast dish in Cambodia, influenced by Chinese cuisine. It is made with rice vermicelli, broth, bean sprouts, vegetables, and dry onion. You can add meat such as pork, fish balls, chicken, beef or seafood to the soup",
        "1 hour", false, [
          Ingredient(
            DateTime.now().toString(),
             "chicken stock", 2," litres"
              ),
          Ingredient(
            DateTime.now().toString(),
            " poached chicken breasts shredded", 300,"g"
          ),
          Ingredient(
            DateTime.now().toString(),
            "dried rice vermicelli noodles", 200,"g"
          ),
          Ingredient(
            DateTime.now().toString(),
            "Carrot", 1,"large"
          ),
          Ingredient(
              DateTime.now().toString(),
              "bean sprouts", 100,"g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "spring onions finely sliced", 2,"pieces"
          ),
        ], "John",ratingstar: 3,category: "breakfast"),
    Foods(DateTime.now().toString(),
        "Porridge BorBor",
        "https://images.squarespace-cdn.com/content/v1/60982df9899ff80ac258be5e/1633467692360-4695ZH2Q7X2E80EQW9G6/IMG_5431+%281%29.jpg?format=2500w",
        1466000,"Medium",
        "Kuy Teav is a popular breakfast dish in Cambodia, influenced by Chinese cuisine. It is made with rice vermicelli, broth, bean sprouts, vegetables, and dry onion. You can add meat such as pork, fish balls, chicken, beef or seafood to the soup",
        "55 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "water", 1," litres"
          ),
          Ingredient(
              DateTime.now().toString(),
              "cup washed jasmine rice ", 0.5,"cup"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish sauce", 2,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "Salt", 1,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "lemongrass",2,"stalk"
          ),
          Ingredient(
              DateTime.now().toString(),
              "chicken", 2,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "ginger", 3,"slices"
          ),
        ], "John",ratingstar: 5,category: "breakfast"),
    Foods(DateTime.now().toString(),
        "Stir Fry Noodles Mi cha",
        "https://www.wellplated.com/wp-content/uploads/2020/08/Chicken-Noodle-Stir-Fry.jpg",
        1466000,"Easy",
        "For this recipe, I recommend any kind of thicker, longer noodles that will hold up to lots of tossing in the pan. I also like to use whole grain options where possible to enhance the recipe’s nutritional benefits.",
        "15 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "fresh noodles", 300," g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "neutral oil", 2,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "cut green onions ", 2,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "Salt", 1,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "bean sprouts or other vegetables",1,"cup"
          ),
          Ingredient(
              DateTime.now().toString(),
              "sesame oil", 1,"table spoon"
          ),

        ], "Veashna",ratingstar: 2,category: "breakfast"),

//TODO lunch
    Foods(DateTime.now().toString(),
        "Lemongrass beef stir-fry",
        "https://img.taste.com.au/p27HWz8u/w643-h428-cfill-q90/taste/2016/11/lemongrass-beef-stir-fry-31605-1.jpeg",
        1466000,"Medium",
        "Easy, tasty and ready in a flash, this lemongrass beef stir fry is definitely a keeper!",
        "30 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "peanut oil", 0.25," cup"
          ),
          Ingredient(
              DateTime.now().toString(),
              "beef sirloin", 800,"g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "clove garlic", 1,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "lemon grass", 2,"stalk"
          ),
          Ingredient(
              DateTime.now().toString(),
              "soy sauces",2,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish sauces", 1,""
          ),

        ], "Kirrily La Rosa",ratingstar: 5,category: "lunch"),
    Foods(DateTime.now().toString(),
        "NOM BANH CHOK",
        "https://grantourismotravels.com/wp-content/uploads/2021/02/Authentic-Nom-Banh-Chok-Recipe-Cambodian-Khmer-Noodles-Copyright-2022-Terence-Carter-Grantourismo-T.jpg",
        146,"Medium",
        "Cambodia’s most beloved dish, Cambodia’s most quintessential dish, and Cambodia’s national dish for so many Cambodians – indicative by the fact that locals translate the dish to foreigners as ‘Khmer noodles’ – nom banh chok has long been ‘Cambodia in a bowl’ for me and is perhaps my most favourite Cambodian food and one of my favourite Southeast Asian noodle dishes.",
        "60 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "lemongrass stalks peeled", 200,"g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "galangal peeled and chopped finely",1,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "Chinese keys/lesser galangal", 1,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "garlic", 5,"cloves"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish fillets freshwater ",400 ,"g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "palm sugar",1,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish sauce ", 3,"table spoon"
          ),
        ], "Amy",ratingstar: 3,category: "lunch"),
    Foods(DateTime.now().toString(),
        "Sweet Sour Soup with Fish",
        "https://www.asiangroceronline.com.au/img/blog/2082.webp",
      806,"Hard",
        "Aroma sweet, sour and spicy soup with fish is delicious authentic Khmer food. It easy to make, all you need fish with vegetables.",
        "60 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "vegetable oil", 1,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "garlic chopped", 2,"cloves"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish or seafoods",1,"whole"
          ),
          Ingredient(
              DateTime.now().toString(),
              "Fresh pineapple,iced, or 1 large canned chunk pineapple", 0.5,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "sugar",3,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish sauce", 2,"table spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "salt", 0.25,"tea spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "tomatoes, sliced chunks", 2,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "green onion, chopped",1,"stalk"
          ),
        ], "Kimhong",category: "lunch"),


//TODO dinner
    Foods(DateTime.now().toString(),
        "Porridge BorBor",
        "https://img.sndimg.com/food/image/upload/f_auto,c_thumb,q_55,w_860,ar_3:2/v1/img/recipes/49/64/61/picNYc2sK.jpg",
        300,"Easy",
        "Lok Lak is a Cambodian stir-fry dish that can be made from different types of meat including beef, fish, and shrimp. The beef version of this dish is served on a bed of lettuce and topped with onions, cucumbers, and tomatoes. This is one of those traditional Cambodian recipes that is shared with the entire family",
        "20 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "g beef steaks, sliced (best you can afford)",300,"g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "cup light soy sauce",1,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "tomato sauce", 1,"tablespoon "
          ),
          Ingredient(
              DateTime.now().toString(),
              "sugar", 3,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              " fresh ground black pepper",1,"teaspoon "
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish sauce", 2,"teaspoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "vegetable oil", 2,"tablespoon"
          ),
        ], "Seyha",category: "dinner"),
    Foods(DateTime.now().toString(),
        "Kampot Crab",
        "https://www.souschef.co.uk/cdn/shop/articles/timthumb_6a470a70-b04f-4758-8aa4-4fdb39c241aa_900x.jpg?v=1531317017",
        1466,"Medium",
        "Kampot, on the Southern coast of Cambodia is famous for its pepper as well as its incredible seafood. Kampot pepper's citrus heat perfectly compliments the sweet crab meat in the classic dish 'chhar kdam merec', or Kampot pepper crab.",
        "45 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "oiled or steamed whole crab (ask the fishmonger to clean the crab and crack it", 1.5,"kg"
          ),
          Ingredient(
              DateTime.now().toString(),
              "vegetable oil", 2,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "kampot black peppercorns (plus a little extra to garnish)",40,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "soy sauce",2,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "palm sugar",2,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "garlic , finely minced", 2,"cloves"
          ),
          Ingredient(
              DateTime.now().toString(),
              "Rice and green vegetable", 1,""
          ),
        ], "Dararith",ratingstar: 4,category: "dinner"),
    Foods(DateTime.now().toString(),
        "Khmer curry  Samlar kari",
        "https://grantourismotravels.com/wp-content/uploads/2019/08/Cambodian-Chicken-Curry-Recipe-Copyright-2022-Terence-Carter-Grantourismo-T-500x500.jpg",
        2000,"Hard",
        "Samlar kari is a traditional Cambodian chicken curry consisting of pieces of chicken in a silky-smooth coconut sauce that is typically flavored with Cambodian kroeung paste, shrimp paste, fish sauce, and palm sugar. This soupy curry derives its distinctive flavor and fragrance from the red kroeung paste used in it, which is a type of Cambodian curry paste made with lemongrass, turmeric, galangal, kaffir lime leaves and zest, red chilis, shallots, and garlic.",
        "55 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "Chicken", 1,"whole"
          ),
          Ingredient(
              DateTime.now().toString(),
              "blood curd", 2,"cup"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish sauce", 2,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "coconut milk", 1.5,"cup"
          ),
          Ingredient(
              DateTime.now().toString(),
              "Fresh chilli, soaked in water",null,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "onion", 1,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "Prahok", 1,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              " Palm sugar", 1,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "water", 1,"cup"
          ),
        ], "Ly heng",ratingstar: 4,category: "dinner"),


//TODO other
    Foods(DateTime.now().toString(),
        "Sweet Jelly Cha Houy Teuk",
        "https://thewoksoflife.com/wp-content/uploads/2019/08/grass-jelly-dessert-10-500x500.jpg",
       500,"Medium",
        "It has a unique and irresistible taste, not only encapsulated in words such as the sweet aroma of coconut water, the suppleness of sticky rice, and the crunchiness of jelly.",
        "55 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "Sticky rice or sago", 1,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "Coconut", 1,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "Seaweed jelly", 1,""
          ),
          Ingredient(
              DateTime.now().toString(),
              "Salt", 1,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              " cut of taro, red beans, pumpkin, jackfruit, etc.",1,""
          ),

        ], "Sokleap",ratingstar: 5,category: "other"),
    Foods(DateTime.now().toString(),
        "Sticky Rice Sweet Balls",
        "https://www.seriouseats.com/thmb/NeaZ9zmmBrr-0Xt3JEqwn5KbkMY=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/glutinous-rice-balls-tang-yuan-092722-hero-1_1-3f92a23b9a3345b3bb27c081a9f6c015.JPG",
        500,"Medium",
        "Kuy Teav is a popular breakfast dish in Cambodia, influenced by Chinese cuisine. It is made with rice vermicelli, broth, bean sprouts, vegetables, and dry onion. You can add meat such as pork, fish balls, chicken, beef or seafood to the soup",
        "45 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "roasted and ground sesame seeds, peanuts, almonds, or cashews", 2," tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "sugar",2 ,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "lard or coconut oil", 2,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "glutinous rice flour", 150,"g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "regular rice flour or tapioca starch",15,"g"
          ),
          Ingredient(
              DateTime.now().toString(),
              "boiling water",148,"g"
          ),

        ], "Panha",ratingstar: 5,category: "other"),
    Foods(DateTime.now().toString(),
        "Cambodian Donuts Noum Kong",
        "https://boyeatsworld.com.au/wp-content/uploads/2021/09/IMG_8508.jpg",
        300,"Medium",
        "Deep fried and dipped into a glaze of molten palm sugar and sesame seeds, the surprising texture and unique flavour of these delicious doughnuts makes them unlike any you’ve ever tasted before.",
        "55 min", false, [
          Ingredient(
              DateTime.now().toString(),
              "glutinous rice flour", 2,"cups"
          ),
          Ingredient(
              DateTime.now().toString(),
              "rice flour", 1.5,"cup"
          ),
          Ingredient(
              DateTime.now().toString(),
              "fish sauce", 2,"spoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "Salt", 1,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "palm sugar melted",2,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "palm sugar", 1,"tablespoon"
          ),
          Ingredient(
              DateTime.now().toString(),
              "sesame seeds", 3,"tablespoon"
          ),
        ], "Vorn",ratingstar: 3,category: "other"),





  ];


 List<Foods> get food => _food;

  void addRecipe(Foods f){
_food.add(f);
notifyListeners();
  }

 void updateFavorite(var favorite,id,Foods foods){
    // favorite =! favorite;
    var index = _food.indexWhere((element) => element.id == id);
    print(index);
    print(foods.isfavorite);

    _food.removeAt(index);

    foods.isfavorite =!     foods.isfavorite;
    _food.insert(index,    foods);
    notifyListeners();


 }
List<Foods>  tabcategory(category){



  return _food.where((element) => element.category == category).toList();

}
Foods getfooddetail(id){
 var detail = _food.firstWhere((element) => element.id == id);
 notifyListeners();
    return detail;
}
  List<Foods>  searchRecipeall(String? search){
   List<Foods> foodss = [..._food];
   print("object");
   print(search);
   List<Foods> f = _food.where((element) => element.title!.toLowerCase().contains(search!)).toList();
   _food = foodss;
   print(f.length);
   notifyListeners();
   return f;





 }


 List<Foods>  searchRecipepopular(String? search){
   List<Foods> foodss = [..._food];
   print("object");
   print(search);

   foodss.sort((a, b)=> a.ratingstar.compareTo(b.ratingstar));
   List<Foods> f = foodss .where((element) => element.title!.toLowerCase().contains(search!)).toList();
   print(f.length);
   notifyListeners();
   return f;





 }

 List<Foods>  searchRecipe(String? search){
  List<Foods> foodss = [..._food];
print("object");
print(search);
  List<Foods> f = _food.where((element) => element.title!.toLowerCase().contains(search!)).toList();
_food = foodss;
print(f.length);
notifyListeners();
  return f;





 }

void updateReviewStar(ratingpoint,id){
  var index = _food.indexWhere((element) => element.id == id);
  var foods  = _food.firstWhere((element) => element.id == id);
  print(index);
  print(foods.isfavorite);

  _food.removeAt(index);

  foods.ratingstar= ratingpoint;
  print(ratingpoint);
  _food.insert(index,    foods);
  notifyListeners();



      }
var isfood = [] ;

  List getpopular(){
  isfood =[..._food];
  //Copy foods
  isfood.sort((a, b)=> a.ratingstar.compareTo(b.ratingstar));

    return isfood;

  }
 List<Foods> allfood(){
   List<Foods> food = [..._food];
   return food;
 }
 List<Foods> allpopular(){
   List<Foods> food = [..._food];
   food.sort((a, b)=> a.ratingstar.compareTo(b.ratingstar));
   return food;

 }

 List<Foods> getfavorite() {

    List<Foods> food = [..._food];
    food.map((e) => e.isfavorite == true).toList();
    print(food);
    return food;
  }
}