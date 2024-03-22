
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../provider/RecipesProvider.dart';
import '../../res/appcolor.dart';
import '../foodsdetail.dart';


class FavoriteFoodTemplate extends StatefulWidget {
 FavoriteFoodTemplate({Key? key}) : super(key: key);

  @override
  State<FavoriteFoodTemplate> createState() => _FavoriteFoodTemplateState();
}

class _FavoriteFoodTemplateState extends State<FavoriteFoodTemplate> {
  @override
  Widget build(BuildContext context) {
    var food = Provider.of<RecipeProvider>(context).getfavorite();
    return  Consumer<RecipeProvider>(
      builder: (context, value, child) {
        return  ListView(
          scrollDirection: Axis.horizontal,
          children:List.generate(food.length, (index) {
            return         InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FoodDetail( foodid: food[index].id,);
                },));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(


                    children: [

                      Container(

                        child: ClipRRect(

                          borderRadius: BorderRadius.circular(100),
                          child: Image.network("${food[index].imgurl}",

                            fit: BoxFit.cover,
                          ),
                        ),
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(height: 10,),
                      Text("${food[index].title}",

                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          )
                      ),
                      SizedBox(height: 10,),
                      Text("${food[index].calories} cal",

                          style: TextStyle(
                              color: Colors.grey

                          )
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Color(Appcolor.maincolor))
                              ),
                              onPressed: null, icon: Icon(Icons.alarm,

                            color: Colors.white,
                          ),
                              label:Text("${food[index].duration}",style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),)

                          ),
                          SizedBox(width: 10,),
                          ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.white12)
                              ),
                              onPressed: null, icon: Icon(Icons.star,

                            color: Colors.orange,
                          ),
                              label:Text("${food[index].ratingstar}",style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),)

                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        );
      },

    );
  }
}
