import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/getX/controller/appController.dart';
import 'package:movieapp/modules/favourite/favourite.dart';
import 'package:movieapp/modules/search/search.dart';
import 'package:movieapp/modules/setting/setting.dart';
import 'package:movieapp/widgets/list_movie_widget.dart';
import 'package:movieapp/widgets/stateLess/list_movie_overview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final controller = Get.put(AppController());
  static const List<Widget> _widgetOptions = <Widget>[
    ListMovies(),
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
          FloatingActionButton(
              onPressed: () {
                controller.changeThemeConfig(
                    controller.themeConfig.value == Brightness.dark
                        ? Brightness.light
                        : Brightness.dark);
              },
              child: Icon(controller.themeConfig.value == Brightness.dark
                  ? Icons.sunny
                  : Icons.dark_mode))
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
