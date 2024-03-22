
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../model/Category.dart';
import '../../res/appcolor.dart';



class ScrollCategoryHome extends StatefulWidget {

  ScrollCategoryHome({Key? key}) : super(key: key);

  @override
  State<ScrollCategoryHome> createState() => _ScrollCategoryHomeState();
}

class _ScrollCategoryHomeState extends State<ScrollCategoryHome> {
  List<LabelCategory> labelcategory = [
   LabelCategory(label: "All",icon: 'asset/icon/cutlery.png'),
    LabelCategory(label: "Breakfast",icon: 'asset/icon/diet.png'),
    LabelCategory(label: "Lunch",icon: 'asset/icon/fast-food.png'),
    LabelCategory(label: "Dinner",icon: 'asset/icon/roasted-chicken.png'),
    LabelCategory(label: "Other",icon: 'asset/icon/salad.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(labelcategory.length, (index) {
        return      Container(
          margin: EdgeInsets.only(right: 15),
          width: 100,

          decoration: BoxDecoration(
              color:
              index != 0 ?
              Colors.white:
              Color(Appcolor.lightmain),
              borderRadius: BorderRadius.circular(10)
          ),
          height: double.maxFinite,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(labelcategory[index].icon,
                fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              Text(labelcategory[index].label,style: TextStyle(
                  color:
                  index != 0 ?
                      Color(Appcolor.lightmain) :
                  Colors.white,
                  fontSize: 16,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),
        );
      })
    );
  }
}
