import 'package:flutter/material.dart';
import 'package:meals/Screen/fliterscreen.dart';
import 'package:meals/Screen/mealdetails.dart';

import 'file:///D:/Flutter/meals/lib/Screen/rescipi.dart';

import './Screen/tap_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filter = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false
  };
void setfilter(Map<String, bool> filterdata)  {

}

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
            title: TextStyle(
                fontSize: 20, fontFamily: 'katibeh', color: Colors.white),
            subtitle: TextStyle(
                fontSize: 20,
                fontFamily: 'Katibeh',
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      /*home: CategoriesScreen(),*/
      initialRoute: '/',
      routes: {
        '/': (ctx) => TapScreen(),
        Recipe.rountname: (ctx) => Recipe(),
        MealsDetails.rountname: (ctx) => MealsDetails(),
        FilterScreen.routname: (ctx) => FilterScreen()
      },
    );
  }
}
