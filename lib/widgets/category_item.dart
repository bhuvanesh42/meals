import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/Flutter/meals/lib/Screen/rescipi.dart';

class CatrgoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;

  CatrgoryItem(this.id, this.title, this.color, this.imageUrl);
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
        child:Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                width: 300,
                decoration: BoxDecoration(color: Colors.black54
                  /*gradient: LinearGradient(colors: [
                    Colors.white38.withOpacity(0.3),
                    Colors.black54,
                  ]),*/
                ),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Katibeh',
                        fontSize: 20,
                        color: Theme
                            .of(context)
                            .textTheme
                            .title
                            .color,
                        fontWeight: FontWeight.bold),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
           /* gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft
        ),*/
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
