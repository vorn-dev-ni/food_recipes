import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../res/appcolor.dart';
import '../searchdetail.dart';

class HomeHeaderCustom extends StatelessWidget {

  const HomeHeaderCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Text("Delicious",style: TextStyle(
          color: Colors.black.withOpacity(0.85),
          fontWeight: FontWeight.w400
      ),),
      SizedBox(height: 5,),
      Text("Find Your Food Recipe Easily",
        style: Theme.of(context).textTheme.titleLarge,
      ),

      //TODO search option
      SizedBox(height: 25,),
      InkWell(
        onTap:  () {

         Navigator.push(context, MaterialPageRoute(builder: (context) {
           return SearchDialog();
         },));
        },
        child: Container(
          child: TextField(

            keyboardType: TextInputType.name,



            style: Theme.of(context).textTheme.labelLarge,
            decoration: InputDecoration(
                label: Text("Search your perfect recipe",style: TextStyle(
                  fontSize: 15
                ),),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                  borderSide: BorderSide(
                      color: Color(Appcolor.secondaryc)
                  ),


                ),
                enabled: false,
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
                filled: true  ,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Color(Appcolor.maincolor)
                    )

                )
            ),

          ),


        ),
      )
    ],));
  }
}
