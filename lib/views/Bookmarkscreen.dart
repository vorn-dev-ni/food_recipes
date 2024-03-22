
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../res/appcolor.dart';
import 'widget/FavfoodCard.dart';

class BookMarkTools extends StatefulWidget {
   BookMarkTools({Key? key}) : super(key: key);

  @override
  State<BookMarkTools> createState() => _BookMarkToolsState();
}

class _BookMarkToolsState extends State<BookMarkTools> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Bookmark",

        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.bookmark,
            color: Colors.orange,size: 32,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),


        child: ListView(
          children: [
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TODO Banner
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Color(Appcolor.lastcolor),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        RichText(text: TextSpan(

                            style:TextStyle(
                              color: Color(Appcolor.lightmain),
                              fontSize: 25,
                              fontWeight: FontWeight.w500,

                            ),
                            text: "Base",

                            children: [

                              WidgetSpan(child: SizedBox(width: 10,)),
                              TextSpan(

                                  style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,

                                  ),

                                  text: "on your personal food",
                                  children: [
                                    WidgetSpan(child: SizedBox(width: 10,)),
                                    TextSpan(
                                      style:TextStyle(
                                        color: Color(Appcolor.lightmain),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,

                                      ),
                                      text: "recipe",
                                    )
                                  ]
                              ),

                            ]

                        )),
                        // Text("Find ",
                        //
                        //     style:TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 25,
                        //         fontWeight: FontWeight.w500
                        //     )
                        //
                        // ),
                        SizedBox(height: 17,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton.icon(

                              onPressed: ()=>null,

                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Color(Appcolor.secondaryc),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  )

                              ),

                              label: Text("Read",
                                style: TextStyle(
                                    color: Color(Appcolor.lightmain),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                ),),
                              icon: Icon(Icons.watch_later_sharp,

                                color: Color(Appcolor.lightmain),),
                            ),
                            Container(
                              width: 78,
                              height: 78,
                              child: Image.network("https://cdn.icon-icons.com/icons2/3277/PNG/512/salad_bowl_food_vegetables_vegan_healthy_food_icon_208011.png",

                                fit: BoxFit.cover,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Based on your favorite foods",

                        style:TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w500
                        )

                    ),
                    Text("See all",

                        style:TextStyle(
                            color:Color(Appcolor.lightmain),
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                        )

                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 310,
                  child: FavoriteFoodTemplate(),
                )

              ],
            ),
          ],

        ),

      ),
    );
  }
}
