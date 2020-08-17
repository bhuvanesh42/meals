import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/Flutter/meals/lib/Screen/rescipi.dart';

class CatrgoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CatrgoryItem(this.id, this.title, this.color);
  void selectoritem(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      Recipe.rountname, arguments: {
        'id' : id, 'title' : title
    }
    );


  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectoritem(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title , style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft
        ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
