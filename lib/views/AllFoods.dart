import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../model/Category.dart';
import '../provider/RecipesProvider.dart';
import '../res/appcolor.dart';
import 'foodsdetail.dart';

class AllFoods extends StatefulWidget {
  const AllFoods({Key? key}) : super(key: key);

  @override
  State<AllFoods> createState() => _AllFoodsState();
}

class _AllFoodsState extends State<AllFoods> {
  List<LabelCategory> labelcategory = [
    LabelCategory(label: "All",icon: 'asset/icon/cutlery.png'),
    LabelCategory(label: "Breakfast",icon: 'asset/icon/diet.png'),
    LabelCategory(label: "Lunch",icon: 'asset/icon/fast-food.png'),
    LabelCategory(label: "Dinner",icon: 'asset/icon/roasted-chicken.png'),
    LabelCategory(label: "Other",icon: 'asset/icon/salad.png'),
  ];
  @override
  Widget build(BuildContext context) {
    var f= Provider.of<RecipeProvider>(context);
    var food = f.food;
    return DefaultTabController(
      length: labelcategory.length,
      initialIndex: 0,
      child: Scaffold(
        appBar:      AppBar(

          iconTheme:  IconThemeData(
              color: Color(Appcolor.maincolor)
          ),
          backgroundColor:Colors.white12,
          elevation: 0,
          title: Text("Recipes",style: TextStyle(
            color: Colors.black
          ),),
          bottom: TabBar(
            indicatorColor: Color(Appcolor.lightmain),
            unselectedLabelColor: Colors.grey,
        labelColor: Color(Appcolor.maincolor),
        labelStyle: TextStyle(
            color: Color(Appcolor.lightmain),
            fontSize: 10,
          fontWeight: FontWeight.w500
        ),
            onTap: (value) {
              print(value);
              switch(value){
                case 0:
                  food = f.food;
                  break;
                case 1 :
                  food =  f.tabcategory("breakfast");
                  break;
                case 2:
                  food =   f.tabcategory("lunch");
                  break;
                case 3:
                  food =   f.tabcategory("dinner");
                  break;
                case 4:
                  food =  f.tabcategory("other");
                  break;




                default:
                  break;

              }
            },
            tabs:List.generate(labelcategory.length, (index) {
              return     Tab(

                child: Text(labelcategory[index].label,




                ),

              );
            })
          ),

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.



        ),


        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: TabBarView(

                children:List.generate(labelcategory.length, (index) {
                  return Consumer<RecipeProvider>(
                    builder: (context, value, child) {
                      return ListView.builder(

                        itemCount: food.length ?? 0,

                        itemBuilder: (context, index) {
                          return  InkWell(
                            onTap:() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return FoodDetail( foodid: food[index].id,);
                              },));
                            },
                            child: Card(
                              margin: EdgeInsets.only(top: 40),
                              color: Colors.white,

                              elevation: 0.6,

                              child: ListTile(
                                isThreeLine: true,
                                leading:  Stack(

                                  children: [

                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.
                                        network("${food[index].imgurl}",
                                          fit: BoxFit.cover,),
                                      ),
                                    ),


                                  ],

                                ),
                                title: Text("${food[index].title}",style: TextStyle(
                                    color: Colors.black,
                                  fontWeight: FontWeight.w500
                                ),),
                                trailing:
                                food[index].isfavorite ==false ?

                                Icon(Icons.favorite_border_outlined,

                                  color: Color(Appcolor.lightmain),) :
                                Icon(Icons.favorite,

                                  color: Color(Appcolor.lightmain),)

                                ,

                                subtitle:       Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5,),
                                    Text("By ${food[index].author}",

                                        style: TextStyle(
                                          color: Colors.grey,
                                        )
                                    ),

                                    SizedBox(height: 5,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Icon(Icons.access_alarm,size: 17,

                                                color: Color(Appcolor.lightmain),
                                              ),
                                              SizedBox(width: 5,),
                                              Text("${food[index].duration}",

                                                  style: TextStyle(
                                                    color: Color(Appcolor.lightmain),
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),


                                        Expanded(

                                          child: Row(
                                            children: [
                                              Icon(Icons.leaderboard,size: 17,

                                                color: Color(Appcolor.lightmain),
                                              ),
                                              SizedBox(width: 5,),
                                              Text("${food[index].difficulties}",

                                                  style: TextStyle(
                                                    color: Color(Appcolor.lightmain),
                                                  )
                                              ),
                                            ],

                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5,),

                                    SizedBox(height: 5,),


                                  ],
                                ),


                              ),
                            ),
                          );
                        },);
                    },

                  );
                })
              ),
            )
        ),


// This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

