import 'package:flutter/material.dart';
import 'package:meals/widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routname = '/fliterscreen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenfree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactosefree = false;

  Widget buildSwitchtitle(String title, String description, bool currentvalue,
      Function updatevalue) {
    return SwitchListTile(
      title: Text(title),
      value: currentvalue,
      subtitle: Text(description),
      onChanged: updatevalue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your filters'),
      ),
      drawer: DrawerMain(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meals',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              buildSwitchtitle(
                'Gluten-free',
                'only gluten-free meals',
                _glutenfree,
                (newvalue) {
                  setState(
                    () {
                      _glutenfree = newvalue;
                    },
                  );
                },
              ),
              buildSwitchtitle(
                'vegetarian-free',
                'only vegetarian-free meals',
                _vegetarian,
                    (newvalue) {
                  setState(
                        () {
                      _vegetarian = newvalue;
                    },
                  );
                },
              ), buildSwitchtitle(
                'vegan-free',
                'only vegan-free meals',
                _vegan,
                    (newvalue) {
                  setState(
                        () {
                      _vegan = newvalue;
                    },
                  );
                },
              ), buildSwitchtitle(
                'lactose-free',
                'only lactose-free meals',
                _lactosefree,
                    (newvalue) {
                  setState(
                        () {
                      _lactosefree = newvalue;
                    },
                  );
                },
              ),
            ],
          )),
        ],
      ),
    );
  }
}
