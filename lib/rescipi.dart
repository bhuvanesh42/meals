import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipes',
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Center(
          child: Text(
        'Recipes',
      )),
    );
  }
}
