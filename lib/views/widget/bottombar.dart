import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../res/appcolor.dart';
import '../AllFoods.dart';
import '../home.dart';

class CustomizeBottom extends StatefulWidget {
   CustomizeBottom({Key? key}) : super(key: key);

  @override
  State<CustomizeBottom> createState() => _CustomizeBottomState();
}

class _CustomizeBottomState extends State<CustomizeBottom> {
  var listoficon = [
    Icon(Icons.home_filled),
    Icon(Icons.search),
    Icon(Icons.no_food),
    Icon(Icons.supervised_user_circle_rounded)
  ];
  var _currentindex = 0;

  var label = [
    ""
  ];

  var screenlist = [
    MyHomePage(title: '',),
    MyHomePage(title: '',),
    AllFoods(),
    MyHomePage(title: '',)
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value){
      setState(() {
        _currentindex = value;
     
      });
      },
      unselectedItemColor: Colors.grey,
      selectedItemColor: Color(Appcolor.lightmain),
      elevation: 0,
      currentIndex: _currentindex,
      showUnselectedLabels: true,



      items: List.generate(screenlist.length, (index){

        return    BottomNavigationBarItem(
            label:"",


            icon: listoficon[index]);
      }), );
  }
}
