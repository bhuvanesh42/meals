import 'package:flutter/material.dart';
import 'package:meals/dummy_vales.dart';
import 'file:///D:/Flutter/meals/lib/widgets/meal_item.dart';

class Recipe extends StatelessWidget {
  static const rountname = '/category_meals';


  @override
  Widget build(BuildContext context) {
    final routarea =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categorytitle = routarea['title'];
    final categoryid = routarea['id'];
    final categorymeals = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(categoryid);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            categorytitle,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: categorymeals[index].id,
              title: categorymeals[index].title,
              imageUrl: categorymeals[index].imageUrl,
              complexity: categorymeals[index].complexity,
              affordability: categorymeals[index].affordability,
              duration: categorymeals[index].duration,
            );
          },
          itemCount: categorymeals.length,
        ));
  }
}
