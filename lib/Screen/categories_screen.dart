import 'package:flutter/material.dart';
import 'package:meals/Models/meals.dart';

import '../widgets/category_item.dart';
import '../dummy_vales.dart';

class CategoriesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(20),
        children: DUMMY_CATEGORIES.map((data) => CatrgoryItem(data.id,data.title, data.color, data.imageUrl))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      );

  }
}
