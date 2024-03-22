

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food3/model/Foods.dart';
import 'package:food3/provider/RecipesProvider.dart';
import 'package:provider/provider.dart';


import '../res/appcolor.dart';
import 'AddIngredient.dart';


class CreateTask extends StatefulWidget {


  CreateTask ({Key? key,}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  var items = [
      '5 min',
      '10 min',
      '15 min',
      '20 min',
      '30 min',
    '45 min',
    '50 min',
    '60 min',

  ];
  var foodtitle =TextEditingController();
  var authorname =TextEditingController();
  var desc =TextEditingController();
  var cal =TextEditingController();
  var imgurl =TextEditingController();


  var levelitem =["Easy","Medium","Hard"];
  var level = "Easy";
  var categoryitem ="breakfast";
  var cateitems =[
    "breakfast",
    "lunch",
    "dinner",
    "other",
  ];
List<Ingredient> listofIngredient = [];
  // var items = [
  //   '5 min',
  //   '10 min',
  //   '15 min',
  //   '20 min',
  //   '30 min'
  //
  // ];
  String dropdownvalue =      '5 min';

  var _showdelete ;
     @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  void setSuccessloader(BuildContext context,fav) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content:


          Text("Post Successfully")    ,


          backgroundColor: Color(Appcolor.lightmain),))
    ;
  }
  Widget build(BuildContext context) {
  var funct = Provider.of<RecipeProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color:Color(Appcolor.maincolor)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,

      body: LayoutBuilder(
        builder: (context, constraints) {
          return Consumer<RecipeProvider>(
            builder: (context, value, child) {
              return  Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(

                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Share your Foods",style: Theme.of(context).textTheme.titleLarge,),
                            //TODO On Create Task
                            SizedBox(height: 10,),

                            Container(


                              margin: EdgeInsets.only(top: 20),
                              child: TextFormField(




                                onTap: () {
                                  setState(() {
                                    _showdelete = true;
                                  });


                                },
                                maxLines: 1,
                                controller: foodtitle,
                                onSaved: (newValue) {
                                  setState(() {
                                    foodtitle.text = newValue.toString();
                                  });
                                },
                                keyboardType: TextInputType.name,

                                cursorColor: Color(Appcolor.maincolor),





                                decoration: InputDecoration(
                                    filled: true,


                                    counterStyle: TextStyle(color: Colors.black),
                                    fillColor: Color(Appcolor.lastcolor),
                                    enabledBorder: OutlineInputBorder(


                                        borderRadius: BorderRadius.circular(10),


                                        borderSide:BorderSide.none
                                    ),
                                    focusedBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(Appcolor.secondaryc)
                                        )
                                    ),
                                    // prefixIcon: Icon(Icons.no_food,color: Color(Appcolor.maincolor),),

                                    contentPadding: EdgeInsets.all(14),
                                    label: Text("What is your recipes?",style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    ),),

                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14
                                    ),

                                    suffixIcon:
                                    _showdelete == true ?
                                    InkWell(
                                        onTap: () {
                                          setState(() {

                                          });
                                        },
                                        child: Icon(Icons.highlight_remove_sharp,color: Colors.grey,)) : null

                                ),
                                style: TextStyle(

                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ),

                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [


                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(


                                    children: [
                                      Text("Cooking Time"),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: double.maxFinite,
                                        padding: EdgeInsets.only(left: 10,right: 10),
                                        decoration: BoxDecoration(
                                            color: Color(Appcolor.secondaryc),
                                            borderRadius: BorderRadius.circular(10),

                                            shape: BoxShape.rectangle
                                        ),
                                        child: DropdownButton(



                                          // Initial Value
                                          value: dropdownvalue,
                                          isExpanded:true,
                                          elevation: 0,
                                          underline: SizedBox(),

                                          dropdownColor: Color(Appcolor.secondaryc),


                                          // Down Arrow Icon
                                          icon:  Icon(Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: items.map((String items) {

                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(items,style: TextStyle(
                                                  fontSize: 13
                                              ),),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(


                                    children: [
                                      Text("Category"),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: double.maxFinite,
                                        padding: EdgeInsets.only(left: 10,right: 10),
                                        decoration: BoxDecoration(
                                            color: Color(Appcolor.secondaryc),
                                            borderRadius: BorderRadius.circular(10),

                                            shape: BoxShape.rectangle
                                        ),
                                        child: DropdownButton(



                                          // Initial Value
                                          value: categoryitem,
                                          isExpanded:true,
                                          elevation: 0,
                                          underline: SizedBox(),

                                          dropdownColor: Color(Appcolor.secondaryc),


                                          // Down Arrow Icon
                                          icon:  Icon(Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: cateitems.map((String items) {

                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(items,style: TextStyle(
                                                  fontSize: 13
                                              ),),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              categoryitem = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(


                                    children: [
                                      Text("Difficulties"),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: double.maxFinite,
                                        padding: EdgeInsets.only(left: 10,right: 10),
                                        decoration: BoxDecoration(
                                            color: Color(Appcolor.secondaryc),
                                            borderRadius: BorderRadius.circular(10),

                                            shape: BoxShape.rectangle
                                        ),
                                        child: DropdownButton(



                                          // Initial Value
                                          value: level,
                                          isExpanded:true,
                                          elevation: 0,
                                          underline: SizedBox(),

                                          dropdownColor: Color(Appcolor.secondaryc),


                                          // Down Arrow Icon
                                          icon:  Icon(Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items:levelitem.map((String items) {

                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(items,style: TextStyle(
                                                  fontSize: 13
                                              ),),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              level= newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  ),
                                ),

                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                margin: EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  controller: cal,
                                  onSaved: (newValue) {
                                    setState(() {
                                      cal.text = newValue.toString();
                                    });
                                  },




                                  onTap: () {
                                    setState(() {
                                      _showdelete = true;
                                    });


                                  },
                                  maxLines: 1,
                                  keyboardType: TextInputType.number,

                                  cursorColor: Color(Appcolor.maincolor),






                                  decoration: InputDecoration(
                                      filled: true,


                                      counterStyle: TextStyle(color: Colors.black),
                                      fillColor: Color(Appcolor.lastcolor),
                                      enabledBorder: OutlineInputBorder(


                                          borderRadius: BorderRadius.circular(10),


                                          borderSide:BorderSide.none
                                      ),
                                      focusedBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Color(Appcolor.secondaryc)
                                          )
                                      ),
                                      // prefixIcon: Icon(Icons.no_food,color: Color(Appcolor.maincolor),),

                                      contentPadding: EdgeInsets.all(14),
                                      label: Text("Enter Amount of calories",style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey
                                      ),),

                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14
                                      ),

                                      suffixIcon:
                                      _showdelete == true ?
                                      InkWell(
                                          onTap: () {
                                            setState(() {

                                            });
                                          },
                                          child: Icon(Icons.highlight_remove_sharp,color: Colors.grey,)) : null

                                  ),
                                  style: TextStyle(

                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                margin: EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: imgurl,




                                  onTap: () {
                                    setState(() {
                                      _showdelete = true;
                                    });


                                  },
                                  onSaved: (newValue) {
                                    setState(() {
                                      imgurl.text = newValue.toString();
                                    });
                                  },
                                  maxLines: 1,
                                  keyboardType: TextInputType.number,

                                  cursorColor: Color(Appcolor.maincolor),






                                  decoration: InputDecoration(
                                      filled: true,


                                      counterStyle: TextStyle(color: Colors.black),
                                      fillColor: Color(Appcolor.lastcolor),
                                      enabledBorder: OutlineInputBorder(


                                          borderRadius: BorderRadius.circular(10),


                                          borderSide:BorderSide.none
                                      ),
                                      focusedBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Color(Appcolor.secondaryc)
                                          )
                                      ),
                                      // prefixIcon: Icon(Icons.no_food,color: Color(Appcolor.maincolor),),

                                      contentPadding: EdgeInsets.all(14),
                                      label: Text("Enter image url",style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey
                                      ),),

                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14
                                      ),

                                      suffixIcon:
                                      _showdelete == true ?
                                      InkWell(
                                          onTap: () {
                                            setState(() {

                                            });
                                          },
                                          child: Icon(Icons.highlight_remove_sharp,color: Colors.grey,)) : null

                                  ),
                                  style: TextStyle(

                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  controller: authorname,


                                  onSaved: (newValue) {
                                    setState(() {
                                      authorname.text = newValue.toString();
                                    });
                                  },

                                  onTap: () {
                                    setState(() {
                                      _showdelete = true;
                                    });


                                  },
                                  maxLines: 1,
                                  keyboardType: TextInputType.name,

                                  cursorColor: Color(Appcolor.maincolor),





                                  decoration: InputDecoration(
                                      filled: true,


                                      counterStyle: TextStyle(color: Colors.black),
                                      fillColor: Color(Appcolor.lastcolor),
                                      enabledBorder: OutlineInputBorder(


                                          borderRadius: BorderRadius.circular(10),


                                          borderSide:BorderSide.none
                                      ),
                                      focusedBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Color(Appcolor.secondaryc)
                                          )
                                      ),
                                      // prefixIcon: Icon(Icons.no_food,color: Color(Appcolor.maincolor),),

                                      contentPadding: EdgeInsets.all(14),
                                      label: Text("Enter your name",style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey
                                      ),),

                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14
                                      ),

                                      suffixIcon:
                                      _showdelete == true ?
                                      InkWell(
                                          onTap: () {
                                            setState(() {

                                            });
                                          },
                                          child: Icon(Icons.highlight_remove_sharp,color: Colors.grey,)) : null

                                  ),
                                  style: TextStyle(

                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  controller: desc,



                                  onSaved: (newValue) {
                                    setState(() {
                                      desc.text = newValue.toString();
                                    });
                                  },


                                  onTap: () {
                                    setState(() {
                                      _showdelete = true;
                                    });


                                  },
                                  maxLines: null,
                                  minLines: 3,


                                  textInputAction: TextInputAction.newline,

                                  keyboardType: TextInputType.name,


                                  cursorColor: Color(Appcolor.maincolor),






                                  decoration: InputDecoration(


                                      filled: true,


                                      counterStyle: TextStyle(color: Colors.black),
                                      fillColor: Color(Appcolor.lastcolor),
                                      enabledBorder: OutlineInputBorder(


                                          borderRadius: BorderRadius.circular(10),


                                          borderSide:BorderSide.none
                                      ),
                                      focusedBorder:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Color(Appcolor.secondaryc)
                                          )
                                      ),
                                      // prefixIcon: Icon(Icons.no_food,color: Color(Appcolor.maincolor),),

                                      contentPadding: EdgeInsets.all(14),
                                      label: Text("Enter description",style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey
                                      ),),

                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14
                                      ),

                                      suffixIcon:
                                      _showdelete == true ?
                                      InkWell(
                                          onTap: () {
                                            setState(() {

                                            });
                                          },
                                          child: Icon(Icons.highlight_remove_sharp,color: Colors.grey,)) : null

                                  ),
                                  style: TextStyle(

                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Your Ingredient",style: TextStyle(
                                          fontWeight: FontWeight.w500
                                      ),),
                                    ),
                                    if(  listofIngredient!.length >= 1)
                                      ElevatedButton.icon(
                                        style: ButtonStyle(
                                            elevation: MaterialStatePropertyAll(0),
                                            backgroundColor: MaterialStatePropertyAll(
                                                Color(Appcolor.secondaryc)
                                            )
                                        ),


                                        onPressed: () async {
                                          Ingredient ingredient= await Navigator.push(context, MaterialPageRoute(builder: (_) =>CreateIngredient()));


                                          listofIngredient.add(ingredient);
                                          print(listofIngredient);

                                          setState(()  {


                                          });






                                        },
                                        icon: Icon(Icons.edit,size: 17,       color: Color(Appcolor.lightmain)),
                                        label: Text("Add More",style: TextStyle(
                                            fontSize: 12,
                                            color: Color(Appcolor.lightmain)
                                        ),),



                                      )

                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                if(listofIngredient.length <=0)
                                  ElevatedButton.icon(
                                    style: ButtonStyle(
                                        elevation: MaterialStatePropertyAll(0),
                                        backgroundColor: MaterialStatePropertyAll(
                                            Color(Appcolor.secondaryc)
                                        )
                                    ),


                                    onPressed: () async {
                                      Ingredient ingredient= await Navigator.push(context, MaterialPageRoute(builder: (_) =>CreateIngredient()));


                                      listofIngredient.add(ingredient);
                                      print(listofIngredient);

                                      setState(()  {


                                      });






                                    },
                                    icon: Icon(Icons.edit,size: 17,       color: Color(Appcolor.lightmain)),
                                    label: Text("Add My Ingredient",style: TextStyle(
                                        fontSize: 12,
                                        color: Color(Appcolor.lightmain)
                                    ),),



                                  ) ,

                                Container(
                                  height: 400,
                                  child: ListView.builder(
                                    itemCount: listofIngredient?.length ?? 0,
                                    itemBuilder: (context, index) {
                                      return



                                        Card(
                                          elevation: 0,
                                          color: Color(Appcolor.lastcolor),
                                          child:


                                          ListTile(
                                            trailing: Text("${listofIngredient[index].qty } ${listofIngredient[index].unit }",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12
                                              ),
                                            ),
                                            title: Text(listofIngredient[index].name,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400
                                              ),
                                            ),
                                          ),
                                        );
                                    },),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              );
            },

          );
        },

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        extendedPadding: EdgeInsets.all(MediaQuery.of(context).size.width*1),
        label:Text("Save",style: TextStyle(
          fontSize: 14
        ),) ,

        onPressed: () async {
         // var ingredient = await  Navigator.push(context, MaterialPageRoute(builder: (context) {
         //      return CreateIngredient();
         //  },));
         // listofIngredient.add(ingredient);
          Foods f = new Foods(DateTime.now().toString(),
              foodtitle.text,
              imgurl.text,
              cal.text,
              level.toString(),
              desc.text,
              dropdownvalue,
              false,
            listofIngredient,
             authorname.text);
          print(f);
          print("""
            ${foodtitle.text}
                  ${foodtitle.text},
                  ${imgurl.text},
                  ${cal.text},
    ${level.toString()},
    ${desc.text},
    ${dropdownvalue},
    ${authorname.text}
          
          """);
          funct.addRecipe(f);
          Navigator.pop(context);



        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0)
        ),
        backgroundColor: Color(Appcolor.lightmain),

      ),
    );
  }
}
