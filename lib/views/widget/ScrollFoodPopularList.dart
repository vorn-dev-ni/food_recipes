import 'package:flutter/cupertino.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../model/Foods.dart';
import '../../provider/RecipesProvider.dart';
import '../foodsdetail.dart';


class ScrollFoodsPopular extends StatefulWidget {

ScrollFoodsPopular({Key? key}) : super(key: key);

  @override
  State<ScrollFoodsPopular> createState() => _ScrollFoodsPopularState();
}

class _ScrollFoodsPopularState extends State<ScrollFoodsPopular> {

  @override

  Widget build(BuildContext context) {

  var f= Provider.of<RecipeProvider>(context);
  var foodss =f.getpopular();

    return Consumer<RecipeProvider>(
      builder: (context, food, child){

        return        ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: foodss.length,

          itemBuilder: (context, index) {
         var food = foodss![index];
            return    InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FoodDetail( foodid: foodss[index].id,);
                },));
              },
              child: Container(
                  width: 190,


                  margin:   EdgeInsets.only(right: 25),

                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: 220,

                          child:

                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.
                            network("${foodss[index].imgurl}",
                              fit: BoxFit.cover,),
                          ),

                        ),
                        SizedBox(height: 15,),
                        Text("${foodss?[index].title}",
                          style: Theme.of(context).textTheme.labelMedium,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text("By ${foodss?[index].author}",

                                  style: TextStyle(
                                    color: Colors.grey,
                                  )
                              ),
                            ),

                            Icon(Icons.access_alarms_sharp,

                              color: Colors.grey,
                              size: 20,


                            ),

                            Text("${foodss?[index].duration}",
                                style: TextStyle(
                                  color: Colors.grey,
                                )

                            ),

                          ],
                        ),
                      ]
                  )
              ),
            );
          },);
        }
   ,

    );
  }
}
