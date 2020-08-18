import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals/dummy_vales.dart';

class MealsDetails extends StatelessWidget {
  static const rountname = '/meals_details';

  Widget buildcontainer(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle,
      ),
    );
  }

  Widget buildcontainerbody(Widget child) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            /* border: Border.all(color: Colors.grey),*/
            borderRadius: BorderRadius.circular(15)),
        height: 200,
        width: 350,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context).settings.arguments as String;
    final selectedid =
        DUMMY_MEALS.firstWhere((element) => element.id == mealid);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedid.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Card(
                  elevation: 6,
                  child: Container(
                    height: 250,
                    width: 350,
                    child: Image.network(
                      selectedid.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              buildcontainer(context, 'Ingredients'),
              buildcontainerbody(
                ListView.builder(
                  itemBuilder: (ctx, index) => Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            '# ${(index + 1)}',
                            style: TextStyle(fontFamily: 'Katibeh'),
                          ),
                        ),
                        title: Text(
                          selectedid.ingredients[index],
                          style: TextStyle(fontFamily: 'Katibeh'),
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                  itemCount: selectedid.ingredients.length,
                ),
              ),
              buildcontainer(context, 'Steps'),
              buildcontainerbody(ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '# ${(index + 1)}',
                          style: TextStyle(fontFamily: 'Katibeh'),
                        ),
                      ),
                      title: Text(
                        selectedid.steps[index],
                        style: TextStyle(fontFamily: 'Katibeh'),
                      ),
                    ),
                    Divider()
                  ],
                ),
                itemCount: selectedid.steps.length,
              )),
            ],
          ),
        ));
  }
}
