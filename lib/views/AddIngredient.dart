
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food3/model/Foods.dart';


import '../res/appcolor.dart';

class CreateIngredient extends StatefulWidget {
  const CreateIngredient({Key? key}) : super(key: key);

  @override
  State<CreateIngredient> createState() => _CreateIngredientState();
}

class _CreateIngredientState extends State<CreateIngredient> {
  var _showdelete ;
  var title =TextEditingController();
  var qty = TextEditingController();
  var unit = TextEditingController();

  String dropdownvalue =      'table spoon';
  var items = [
    'tea spoon',
    'table spoon',
    'liter',
    'cal',
    'g',
    'kg',
    'whole',
    'cut'



  ];
  var txtingredient = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    qty.text = "0";
  }
  void setSuccessloader(BuildContext context,fav) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content:


          Text("Ingredient has been added")    ,


          backgroundColor: Color(Appcolor.lightmain),))
    ;
  }
  Widget build(BuildContext context) {
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
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [


                  Text("Add Ingredients",style: Theme.of(context).textTheme.titleLarge,),

                  Container(


                    margin: EdgeInsets.only(top: 30),
                    child: TextFormField(
                      controller: txtingredient,




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
                          fillColor: Color(Appcolor.secondaryc),

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
                          label: Text("Ingredient",style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(Appcolor.lightmain)
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
                      onSaved: (newValue) {
                        setState(() {
                          txtingredient.text = newValue.toString();
                        });
                      },
                      style: TextStyle(

                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      SizedBox(width: 10,),
                      Expanded(
                        flex: 2,
                        child: Column(


                          children: [
                            Text("Amount"),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.all(0),


                              child: TextFormField(
                                controller: qty,
                                onSaved: (newValue) {
                                  setState(() {
                                  qty.text = newValue.toString();
                                  });
                                },



                                onTap: () {
                                  setState(() {
                                    _showdelete = true;
                                  });


                                },
                                maxLines: 1,
                                keyboardType: TextInputType.numberWithOptions(),

                                cursorColor: Color(Appcolor.maincolor),





                                decoration: InputDecoration(
                                    filled: true,


                                    counterStyle: TextStyle(color: Colors.black),
                                    fillColor: Color(Appcolor.secondaryc),
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
                                    // label: Text("Enter Amount",style: TextStyle(
                                    //     fontSize: 13,
                                    //     fontWeight: FontWeight.w500,
                                    //     color: Colors.grey
                                    // ),),

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
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(


                          children: [
                            Text("Unit"),
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
                                alignment: Alignment.centerRight,


                                // Down Arrow Icon
                                icon:  Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map((String items) {

                                  return DropdownMenuItem(

                                    value: items,
                                    child: Text(items,style: TextStyle(
                                        fontSize: 13,
                                        color: Color(Appcolor.lightmain)
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

                    ],
                  ),
                ],
              ),
            ),
          );
        },

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(

        extendedPadding: EdgeInsets.all(MediaQuery.of(context).size.width*1),
        label:Text("Save",style: TextStyle(
            fontSize: 14
        ),) ,

        onPressed: () {
       print(txtingredient.text);
       print(qty.text);
       print(dropdownvalue.toString());
       Navigator.pop(context,Ingredient(DateTime.now().toString(),
          txtingredient.text, int.parse(qty.text),    dropdownvalue));
       setSuccessloader(context, false  );

        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0)
        ),
        backgroundColor: Color(Appcolor.lightmain),

      ),
    );
  }
}
