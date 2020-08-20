import 'package:flutter/material.dart';
import 'package:meals/Models/meals.dart';
import 'package:meals/widgets/meal_item.dart';

class Favorites extends StatelessWidget {
  final List<Meals> favorites;

  Favorites(this.favorites);

  @override
  Widget build(BuildContext context) {
    if(favorites.isEmpty){
      return
         Center(
          child: Text(
              'you have no favorites yet - start adding some!',
              style: TextStyle(fontFamily: 'Katibeh'),

          ),

      );
    }else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favorites[index].id,
            title: favorites[index].title,
            imageUrl: favorites[index].imageUrl,
            complexity: favorites[index].complexity,
            affordability: favorites[index].affordability,
            duration: favorites[index].duration,
          );
        },
        itemCount: favorites.length,
      );
    }

  }
}
