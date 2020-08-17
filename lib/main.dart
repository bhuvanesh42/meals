import 'package:flutter/material.dart';
import 'package:meals/categories_screen.dart';

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
      home: CategoriesScreen(),
    );
  }
}
