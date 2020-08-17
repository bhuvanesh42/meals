import 'package:flutter/material.dart';
import 'file:///D:/Flutter/meals/lib/Screen/categories_screen.dart';
import 'file:///D:/Flutter/meals/lib/Screen/rescipi.dart';
import 'package:meals/Screen/mealdetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meals',
      theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(251, 254, 253, 1),
          fontFamily: 'Katibeh',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(24, 23, 22, 1)),
              body2: TextStyle(color: Color.fromRGBO(24, 23, 22, 1)),
              title: TextStyle(fontSize: 20,fontFamily: 'katibeh',color: Colors.white)),),
      /*home: CategoriesScreen(),*/
      initialRoute: '/',
      routes: {
        '/' : (ctx) => CategoriesScreen(),
        Recipe.rountname : (ctx) => Recipe(),
        MealsDetails.rountname : (ctx) => MealsDetails(),
      },
    );
  }
}
