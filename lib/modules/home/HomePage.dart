import 'package:flutter/material.dart';
import 'package:movieapp/modules/favourite/favourite.dart';
import 'package:movieapp/modules/search/search.dart';
import 'package:movieapp/modules/setting/setting.dart';
import 'package:movieapp/widgets/stateLess/list_movie_overview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MovieOverViewList(),
    SearchPage(),
    FavouritePage(),
    SettingPage()
  ];
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo.shade700,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // FloatingActionButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, "/");
          //     },
          //     child: Icon(Icons.login_sharp)),
          FloatingActionButton(
              onPressed: () {
                // Navigator.pushNamed(context, "/");
              },
              child: Icon(Icons.sunny))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tìm kiếm',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Vé của tôi',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Cài đặt',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
