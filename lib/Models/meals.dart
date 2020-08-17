import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Hard }

enum Affordability { Affordable, Pricey, Luxurious }

class Meals {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Affordability affordability;

 const Meals({
      @required this.id,
      @required this.affordability,
      @required this.complexity,
      @required  this.title,
      @required this.categories,
      @required this.duration,
      @required  this.imageUrl,
      @required  this.ingredients,
      @required  this.isGlutenFree,
      @required  this.isLactoseFree,
      @required  this.isVegan,
      @required  this.isVegetarian,
      @required  this.steps});
}
