import 'package:flutter/material.dart';
import '../Screen/rescipi.dart';


class MealsDetails extends StatelessWidget {
  static const rountname='/meals_details';
  @override
  Widget build(BuildContext context) {
    final mealid= ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealid'),
      ),
      body: Center(
        child: Text('$mealid'),
      ),
    );
  }
}
