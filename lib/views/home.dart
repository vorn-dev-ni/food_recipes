
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../res/appcolor.dart';
import 'AllFoods.dart';
import 'Bookmarkscreen.dart';
import 'MyHomePage.dart';
import 'createrecipes.dart';
import 'searchdetail.dart';
import 'widget/customizedrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var listoficon = [
    Icon(Icons.home_filled),

    Icon(Icons.no_food),
    Icon(Icons.bookmark),
    Icon(Icons.search),
  ];
  var _currentindex = 0;

  var label = [
    ""
  ];

  var screenlist = [
    MyHomePageMain(),
    AllFoods(),
    BookMarkTools(),

    SearchDialog()
  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      _currentindex != 0 ?
          null :
      null,
      // AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   iconTheme:  IconThemeData(
      //     color: Color(Appcolor.maincolor)
      //   ),
      //   backgroundColor:Colors.white.withOpacity(0.1),
      //   elevation: 0,
      //
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //
      //   actions: [
      //     Container(
      //       margin: EdgeInsets.only(right: 10),
      //
      //         child: Icon(Icons.add_alert_sharp,color: Color(Appcolor.maincolor),))
      //   ],
      //
      // ),
        drawer:
            _currentindex != 0 ?
                null :
        CustomDrawer(),
      body: screenlist[_currentindex],
bottomNavigationBar: BottomNavigationBar(
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
  }), ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

floatingActionButton: FloatingActionButton(

    elevation: 0,

    backgroundColor: Color(Appcolor.lightmain),
    child: Icon(Icons.add),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CreateTask();
      },));

}),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}