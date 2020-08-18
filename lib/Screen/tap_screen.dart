import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorites.dart';
import '../widgets/drawer.dart';

class TapScreen extends StatefulWidget {
  @override
  _TapScreenState createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': Favorites(), 'title': 'Your Favorites'}
  ];
  int _selectedpageindex = 0;

  void _Selectpage(int index) {
    setState(() {
      _selectedpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedpageindex]['title']),
        /*bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: 'Category',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favorites',
            )
          ]),*/
      ),
      drawer: DrawerMain(),
      body: _pages[_selectedpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _Selectpage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedpageindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('Category')),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text('Favorites')),
        ],
      ),

      /*TabBarView(children: <Widget>[
          CategoriesScreen(),
          Favorites()

        ]),*/
    );
  }
}
