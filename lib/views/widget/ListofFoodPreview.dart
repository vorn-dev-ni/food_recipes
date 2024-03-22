import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../model/Foods.dart';
import '../../provider/RecipesProvider.dart';
import '../../res/appcolor.dart';
import '../foodsdetail.dart';
import '../searchdetail.dart';

class     ListofFoodPreview extends StatefulWidget {
 List< Foods> ? food;
 ListofFoodPreview({Key? key,this.food  }) : super(key: key);

  @override
  State<ListofFoodPreview> createState() => _ListofFoodPreviewState();
}
Widget WidgetBuilderCard(BuildContext context, int index,Foods food) {

  return Container(
      width: 300,
      height: double.maxFinite,


      margin:   EdgeInsets.only(right: 25),

      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FoodDetail( foodid: food.id,);
          },));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width:double.infinity,


                child:

                Stack(
                  children: [
                    ClipRRect(


                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight:Radius.circular(20),
                      ),

                      child: Container(
                        height:280,
                        width: double.maxFinite,
                        child: Image.
                        network("${food.imgurl}",
                          fit: BoxFit.cover,


                        ),
                      ),
                    ),

                    Positioned(
                      top: 10,
                      right: 10,


                        child:
                        food.isfavorite  != null ?

                            Icon(Icons.favorite_border_outlined,size:

                            30,color: Color(Appcolor.maincolor),) :
                        Icon(Icons.favorite_outlined,size:

                          30,color:Colors.redAccent,))
                  ],
        
                ),

              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 13,right: 13),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(

                        children: [
                          Row(


                            children: [
                              Expanded(
                                child: Text("${food.title}",


                                    softWrap: true,
                                    style: TextStyle(
                                    fontSize: 18,
                                      overflow: TextOverflow.ellipsis,

                                      fontWeight: FontWeight.w500,


                                    )
                                ),
                              ),
                             ElevatedButton.icon(onPressed: null,
                          label: Text("${food.duration}",style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),),
                            style:ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(Color(Appcolor.maincolor))
                            ),
                               icon: Icon(Icons.access_alarms_sharp,

                               color: Colors.white,
                                 size: 15,

                               ),

                             )
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${food.calories > 1000 ? food.calories / 1000 : food.calories  } ${food.calories > 1000 ? "kcal" : "cal"}",

                                  style: TextStyle(
                              color: Colors.grey

                                  )
                              ),
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.white)
                                ),
                                  onPressed: null, icon: Icon(Icons.star,

                                color: Colors.orange,
                              ),
                                  label:Text("${food.ratingstar ?? "N/A" }")

                              )


                            ],
                          ),

                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      )
  );
}
class _ListofFoodPreviewState extends State<ListofFoodPreview> {

  @override

  Widget build(BuildContext context) {
    var f= Provider.of<RecipeProvider>(context);
    var foods  =f.food ;
    return Consumer<RecipeProvider>(
      builder: (context, value, child) {
        return  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text("Recipes Foods",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SearchDialog(state: "all",);
                    },));
                  },
                  child: Text("See all",
                      style: Theme.of(context).textTheme.titleSmall
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foods?.length ?? 0,

                  itemBuilder: (context, index) {
                    var food = foods![index];
                    return WidgetBuilderCard(context,index,food );
                  },)

            )
          ],
        );
      },

    );
  }
}
