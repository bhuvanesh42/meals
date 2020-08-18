import 'package:flutter/material.dart';
import 'package:meals/Screen/fliterscreen.dart';

class DrawerMain extends StatelessWidget {
  Widget buildlisttile(
      String title, IconData icon, BuildContext context, Function taphandler) {
    return ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: Theme.of(context).textTheme.subtitle,
        ),
        onTap: taphandler);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Cooking up',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildlisttile('Meals', Icons.restaurant, context, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildlisttile('Filters', Icons.settings, context, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routname);
          }),
        ],
      ),
    );
  }
}
