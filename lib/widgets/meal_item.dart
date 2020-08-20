import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/Models/meals.dart';
import 'package:meals/Screen/mealdetails.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({@required this.id,
    @required this.affordability,
    @required this.complexity,
    @required this.title,
    @required this.duration,
    @required this.imageUrl});

  String get complexitytext {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'unknown';
    }
  }

  String get affordabilitytext {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'unknown';
    }
  }

  void selectitem(BuildContext context) {
    Navigator.of(context).pushNamed(MealsDetails.rountname, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => selectitem(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
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
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('$duration mins')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text('$complexitytext')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.account_balance),
                      SizedBox(width: 6),
                      Text('$affordabilitytext')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
