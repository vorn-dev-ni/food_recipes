

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/RecipesProvider.dart';
import '../res/appcolor.dart';

class FoodDetail extends StatefulWidget {
  var foodid;
   FoodDetail({Key? key,this.foodid}) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.foodid);
  }
  Future<void >custompopupreview(BuildContext context,f,id) {
    var isstar =[false,false,false,false,false];
    var ratingpoint = 0;

    return showDialog(context: context, builder: (context) {
      return StatefulBuilder(builder:  (context, setState) {
        return AlertDialog(
          elevation: 1,
          contentPadding: EdgeInsets.all(0),
          title: Center(
            child: Text("Do you like this recipe?",style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),),
          ),
          content: Container(
            height:150,
            child: Column(

              children: [


                Container(
                  width: 100,
                  height: 100,
                  child: Image.network("https://clipart-library.com/new_gallery/94-942114_healthy-food-food-icon-png-download-transparent-background.png",

                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index){
                      return        InkWell(
                          onTap: () {


                            setState(() {
                              if(index == 0 ){
                                isstar[index] =!isstar[index];
                                ratingpoint+=1;
                              }
                              if(index > 0){
                                // var nextindex = isstar.indexOf(isstar[index]);



                                if(isstar[index-1] == true){
                                  isstar[index] =!isstar[index];
                                  ratingpoint+=1;
                                }
                              }


                              print(ratingpoint);



                            });








                          },
                          child:
                          isstar[index] == false ?
                          Icon(Icons.star_outline_outlined,size: 30,)  :
                          Icon(Icons.star,size: 30,)



                      );
                    }),
                  ),
                )
              ],
            ),
          ),


          actions: [
            Container(
                width: double.maxFinite,

                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(    Color(Appcolor.maincolor))
                    ),
                    onPressed: () {
                          f.updateReviewStar(ratingpoint,id);
                          setSuccessloaderrating(context);
                          Navigator.pop(context);
                    },

                    child: Text("Rate Us",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),)

                ))
          ],
        );
      },);
    },);
  }
  Widget build(BuildContext context) {
    print('update favorite');
    var f = Provider.of<RecipeProvider>(context);
    var food = f.getfooddetail(widget.foodid);
 return Scaffold(
   backgroundColor: Colors.white,

   body: Consumer <RecipeProvider> (
     builder: (context, foods, child) {

       return LayoutBuilder(
         builder: (context, constraints) {
           return  CustomScrollView(

             slivers: [
               SliverAppBar(
                 // iconTheme: IconThemeData(color: Colors.white,fill: 1,),
                 leading: IconButton(
                   icon: CircleAvatar(
                     backgroundColor: Colors.white,

                       child: Icon(Icons.arrow_back_sharp, color: Colors.black)),
                   onPressed: () => Navigator.of(context).pop(),
                 ),

                 actions: [
                   InkWell(
                     onTap: () {
                 f.updateFavorite(true,widget.foodid,food);
                 setSuccessloader(context,  food.isfavorite);

                     },
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: CircleAvatar(
                         backgroundColor: Colors.white,
                         child:
                             food.isfavorite == false ?
                         Icon(Icons.favorite_border_outlined) :

                             Icon(Icons.favorite)
                         ,

                       ),
                     ),
                   )
                 ],
                 elevation: 0,

                 floating: true,
                 snap: true,
                 pinned: true,
                 expandedHeight: 300,


                 flexibleSpace: FlexibleSpaceBar(


                   // title: Text("Foods"),
                   background: Image.network("${food.imgurl}",

                     fit: BoxFit.cover,
                   ),

                   expandedTitleScale: 400,
                 ),
                 // title: Text("Cookies",style: Theme.of(context).textTheme.titleLarge,),
                 backgroundColor:Colors.white12,

               ),
               SliverToBoxAdapter(



                 child: Container(
                   height:800,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 15),

                     child: Column(

                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Container(
                             height: 340,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 SizedBox(height: 10,),
                                 //TODO TITLE HEADER
                                 Container(

                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text("${food.title}",
                                             style: Theme.of(context).textTheme.labelLarge,
                                           ),
                                           Row(
                                             children: [
                                               Icon(Icons.alarm,
                                                 color: Colors.black,),
                                               SizedBox(width: 5,),
                                               Text("${food.duration}",
                                                 style: TextStyle(
                                                     color: Colors.black
                                                 ),
                                               ),
                                             ],
                                           )
                                         ],
                                       ),
                                       SizedBox(height: 11,),
                                       Text("By ${food.author}",
                                         style: TextStyle(
                                             color: Colors.grey
                                         ),
                                       ),
                                       SizedBox(height: 11,),



                                     ],
                                   ),
                                 ),

                                 //TODO TITLE HEADER
                                 Container(child: Row(

                                   children: [
                                     Expanded(
                                       child: Container(

                                         decoration: BoxDecoration(

                                             color: Color(Appcolor.lastcolor),
                                             borderRadius: BorderRadius.circular(10)
                                         ),
                                         child: Padding(
                                           padding: const EdgeInsets.all(10.0),
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [




                                               Row(
                                                 children: [
                                                   Icon(Icons.local_fire_department_outlined,size: 25,

                                                     color: Colors.black,),
                                      Text(double.parse(food.calories.toString()) > 1000 ? (double.parse(food.calories.toString())/ 1000 ).toString() : food.calories.toString() ,

                                                     style: TextStyle(

                                                         fontSize: 25,
                                                         fontWeight: FontWeight.w600
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               SizedBox(height: 6,),
                                               Text(
                                                 double.parse(food.calories.toString())< 1000 ?
                                                 "calories per serving" :   "kcal per serving",
                                                 style: TextStyle(
                                                     color: Colors.grey


                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),
                                       ),
                                     ),
                                     SizedBox(width: 15,),

                                     Expanded(
                                       child: Container(

                                         decoration: BoxDecoration(

                                             color: Color(Appcolor.secondaryc),
                                             borderRadius: BorderRadius.circular(10)
                                         ),
                                         child: Padding(
                                           padding: const EdgeInsets.all(10.0),
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [




                                               Row(
                                                 children: [
                                                   Icon(Icons.star,size: 25,

                                                     color: Colors.orange,),
                                                   Text("${food.ratingstar}",

                                                     style: TextStyle(

                                                         fontSize: 25,
                                                         fontWeight: FontWeight.w600
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               SizedBox(height: 6,),
                                               Text("rating for this recipe",
                                                 style: TextStyle(
                                                     color: Colors.grey


                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                                 //TODO TITLE DESC

                                 Container(
                                   margin: EdgeInsets.only(top: 14),
                                   child:
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Description",
                                         style: Theme.of(context).textTheme.labelLarge,
                                       ),
                                       SizedBox(height: 15,),
                                       Text("${food.description}",
                                         style: Theme.of(context).textTheme.bodySmall,


                                       ),
                                     ],
                                   ),
                                 ),


                               ],
                             )),
                         Expanded(

                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Container(

                                   child:
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Ingredients",
                                         style: Theme.of(context).textTheme.labelLarge,
                                       ),






                                     ],
                                   ),
                                 ),

                                 Expanded(
                                   flex: 1,

                                   child: ListView.builder(
                                     padding: EdgeInsets.all(0),
                                     itemCount:food.ingredient!.length,
                                     itemBuilder: (context, index) {
                                       var ing = food.ingredient![index];
                                       return Card(

                                         margin: EdgeInsets.only(top: 10),

                                         color: Colors.white,



                                         elevation: 1,
                                         child: Padding(
                                           padding: const EdgeInsets.all(10.0),
                                           child: ListTile(
                                             contentPadding: EdgeInsets.all(0),

                                             leading: Image.network(

                                               "https://cdn-icons-png.flaticon.com/512/1656/1656397.png",
                                               fit: BoxFit.contain,

                                             ),

                                             title: Text("${ing.name}",style:
                                             Theme.of(context).textTheme

                                                 .bodyMedium,),
                                             trailing: Text("${ing.qty} ${ing.unit}",style: TextStyle(
                                                 fontWeight: FontWeight.w500,
                                                 color: Color(Appcolor.lightmain)
                                             ),),
                                           ),
                                         ),
                                       );
                                     },),
                                 ),
                               ],
                             )
                         ),




                         //TODO Ingredient here


                       ],
                     ),
                   ),
                 ) ,


               )
             ],
           );
         },

       );
     },

   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


   floatingActionButton: FloatingActionButton.extended(
     elevation: 0,


     shape:  RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(10)
     ),
     backgroundColor: Color(Appcolor.maincolor),
     icon: Icon(Icons.star),
     label: Text("Rate My Recipe",



       style: TextStyle(
         color: Colors.white,
         fontSize: 15
       )),
     onPressed: () =>  custompopupreview(context,f,food.id),

   ),
 );
  }

  void setSuccessloaderrating(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          content:

        Text("Thanks for your review"),


          backgroundColor: Color(Appcolor.lightmain),))
    ;
  }
  void setSuccessloader(BuildContext context,fav) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
        content:

          fav == true ?
        Text("Added to Favorite") :      Text("Removed from Favorite"),


        backgroundColor: Color(Appcolor.lightmain),))
    ;
  }
}





