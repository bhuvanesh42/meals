import 'package:flutter/material.dart';
import 'package:meals/Models/meals.dart';
import 'package:meals/Screen/fliterscreen.dart';
import 'package:meals/Screen/mealdetails.dart';
import 'package:meals/dummy_vales.dart';

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
  List<Meals> availablemeal = DUMMY_MEALS;
  List<Meals> favoritesmeal =[];
void setfilter(Map<String, bool> filterdata)  {
  setState(() {
    filter = filterdata;

    availablemeal= DUMMY_MEALS.where((meal) {
      if(filter['gluten'] && meal.isGlutenFree){
        return false ;
      }
      if(filter['lactose'] && meal.isLactoseFree){
        return false ;
      }
      if(filter['vegan'] && meal.isVegan){
        return false ;
      }
      if(filter['vegetarian'] && meal.isVegetarian){
        return false ;
      }
      return true;

    }).toList();
  });

}

void togglefavorite(String mealid){
  final existingindex = favoritesmeal.indexWhere((meal) => meal.id == mealid);
  if(existingindex >= 0){
    setState(() {
      favoritesmeal.removeAt(existingindex);
    });
  }else {
    setState(() {
      favoritesmeal.add(DUMMY_MEALS.firstWhere((meal) => mealid == meal.id));
    });
  }
}
bool isfavoritemeal(String id){
  return favoritesmeal.any((meal) => meal.id == id);
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
        '/': (ctx) => TapScreen(favoritesmeal),
        Recipe.rountname: (ctx) => Recipe(availablemeal),
        MealsDetails.rountname: (ctx) => MealsDetails(togglefavorite,isfavoritemeal),
        FilterScreen.routname: (ctx) => FilterScreen(filter,setfilter)
      },
    );
  }
}
