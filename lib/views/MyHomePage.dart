
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/RecipesProvider.dart';
import 'searchdetail.dart';
import 'widget/HomeHeader.dart';
import 'widget/ListofFoodPreview.dart';
import 'widget/ScrollFoodPopularList.dart';
import 'widget/ScrollListCategory.dart';

class MyHomePageMain extends StatefulWidget {

  MyHomePageMain({Key? key}) : super(key: key);

  @override
  State<MyHomePageMain> createState() => _MyHomePageMainState();
}

class _MyHomePageMainState extends State<MyHomePageMain> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return  ListView(
            children: [
              //TODO customize header SCholl
              Container(
                height: constraints.maxHeight*0.28,

                child: Column(
                  children: [
                    HomeHeaderCustom(),

                    //TODO customize Label Categories
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text("Categories",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        // Text("See all",
                        //     style: Theme.of(context).textTheme.titleSmall
                        // ),
                      ],
                    ),
                  ],
                ),
              ),



              SizedBox(height: 20,),
              //TODO customize Categories SCholl

              Expanded(child: Column(children: [
                Container(
                    width: double.maxFinite,
                    height: 90,
                    child: ScrollCategoryHome()
                ),

                SizedBox(height: 20,),

                Container(
                  child: Column
                    (
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Text("Popular",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return SearchDialog(state: "popular",);
                              },));
                            },
                            child: Text("See all",
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20,),
                      //TODO Customize List Foods Scroll

                      Container(

                          width: double.maxFinite,
                          height:320,

                          child: ScrollFoodsPopular()),



                      //TODO Customize List Main

                      Container(
                        height: 480,
                        child:
                        ListofFoodPreview(),
                      )


                    ],
                  ),
                )
              ],))

            ],
          );
        },

      ),
    );
  }
}
