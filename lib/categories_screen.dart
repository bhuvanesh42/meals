import 'package:flutter/material.dart';

import 'category_item.dart';
import 'dummy_vales.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: Dummy_values.map((data) => CatrgoryItem(data.title, data.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
