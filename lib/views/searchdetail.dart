
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:provider/provider.dart';

import '../model/Foods.dart';
import '../provider/RecipesProvider.dart';
import '../res/appcolor.dart';
import 'foodsdetail.dart';

class SearchDialog extends StatefulWidget {
 var state;
 SearchDialog({Key? key,this.state}) : super(key: key);

  @override
  State<SearchDialog> createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  var _showdelete =false;
  var isfirst = true;

  var txtsearch  = TextEditingController();
  var food =[];
  @override

  Widget build(BuildContext context) {


   var f = Provider.of<RecipeProvider>(context);
    print("change dependencies");
    if(isfirst == true ){
      if(widget.state == "all"){
        food = f.allfood();
      }
      if(widget.state == "popular"){

        food = f.allpopular();
      }
    }
print(food.length);



    return Scaffold(

      appBar:

      AppBar(
        iconTheme:  IconThemeData(
          color: Color(Appcolor.maincolor)
        ),
        title: Container(
          width: double.maxFinite,
          height: 40,
          child: Row(
            children: [
              Expanded(
                child:
                TextFormField(
                  onChanged: (value) {
                    isfirst = false;
                    txtsearch.text= value.toString();
                   txtsearch.selection =
                        TextSelection.collapsed(offset:txtsearch.text.length);
                    if(widget.state == "all"){
                      food.clear();
                       food = f.searchRecipepopular(txtsearch.text);
                      return;
                    }
                    if(widget.state == "popular"){
                      food.clear();
                      food = f.searchRecipeall(txtsearch.text);

                      return;
                    }



                    food = f.searchRecipe(   txtsearch.text.toLowerCase());
                  },


                  onFieldSubmitted: (value) {
                    setState(() {
                      isfirst = false;
                      txtsearch.text= value.toString();
                      food = f.searchRecipe(   txtsearch.text.toLowerCase());
                    });
                  },
                  onTap: () {
                    setState(() {
                      _showdelete = true;
                    });


                  },
                  maxLines: 1,
                  keyboardType: TextInputType.name,
                  controller: txtsearch,
                  cursorColor: Color(Appcolor.maincolor),





                  decoration: InputDecoration(
                    filled: true,


                    counterStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.grey.withOpacity(0.15),
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
                   prefixIcon: Icon(Icons.search,color: Color(Appcolor.maincolor),),
                    contentPadding: EdgeInsets.all(0),
                    label: Text("Seach name",style: TextStyle(
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
                          txtsearch.clear();
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
              SizedBox(width: 10,),
             InkWell(
               onTap: () {
                 isfirst = false;

                 if(widget.state == "all"){
                   food.clear();
                   food = f.searchRecipepopular(txtsearch.text);
                   return;
                 }
                 if(widget.state == "popular"){
                   food.clear();
                   food = f.searchRecipeall(txtsearch.text);

                   return;
                 }



                 food = f.searchRecipe(   txtsearch.text.toLowerCase());
               },
               child: Text("Search",style: TextStyle(
                 fontSize: 14,
                 fontWeight: FontWeight.w500,
                 color: Color(Appcolor.maincolor)
               ),),
             )
            ],
          ),
        ),
        backgroundColor:Colors.white.withOpacity(0.1),
        elevation: 0,

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.



      ),
      backgroundColor: Colors.white,

      body:  SafeArea(
          child:Consumer<RecipeProvider>(
            builder: (context, value, child) {
              return
                food.length == 0 ?
                Center(child:

                Lottie.asset
                  ('asset/lottie/animation_llxpodfm.json',fit: BoxFit.cover)


                ):



                ListView.builder(

                itemCount: food?.length ?? 0,

                itemBuilder: (context, index) {
                  return



                    InkWell(
                    onTap: () {
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
                        food[index].isfavorite != true ?

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

          )


      ),
    );
  }
}
