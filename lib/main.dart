import 'package:flutter/material.dart';
import 'package:food3/provider/RecipesProvider.dart';
import 'package:food3/res/appcolor.dart';
import 'package:food3/views/home.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [


        ChangeNotifierProvider<RecipeProvider>(
          create: (_) => RecipeProvider() ,
        ),

      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',

          theme: ThemeData(
            fontFamily: 'Roboto',
            primaryColor: Color(Appcolor.maincolor),
            iconTheme: IconThemeData(color: Colors.red),

            primarySwatch: Colors.teal,

            textTheme: TextTheme(

                displayLarge: TextStyle(fontSize: 42, fontWeight: FontWeight.bold,color: Colors.black),
                titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,
                    color: Color(Appcolor.maincolor)),
                bodyMedium: TextStyle(fontSize: 14,color: Colors.black),
                titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,
                    color: Color(Appcolor.maincolor)),
                titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(Appcolor.maincolor)),
                displaySmall: TextStyle(fontSize: 10,color: Colors.black),
                labelMedium: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                ),
                bodySmall: TextStyle(
                    fontSize: 14,color: Colors.grey
                ),
                labelLarge: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                )



            ),

            scaffoldBackgroundColor:Colors.white.withOpacity(0.95),



          ),
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(title: 'Home'),
        );
      },

    );
  }
}

