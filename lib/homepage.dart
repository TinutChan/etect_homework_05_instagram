import 'package:etect_homework_05_instagram/screens/favourite.dart';
import 'package:etect_homework_05_instagram/screens/home.dart';
import 'package:etect_homework_05_instagram/screens/instagram.dart';
import 'package:etect_homework_05_instagram/screens/profile.dart';
import 'package:etect_homework_05_instagram/screens/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  final List<Widget> _screens = [
    const Home(),
    const Search(),
    const Instagram(),
    const Favourite(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _navigationBottomBar,
          currentIndex: _selectedItem,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          selectedFontSize: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '',
                activeIcon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
                activeIcon: Icon(Icons.search_rounded)),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: '',
                activeIcon: Icon(Icons.add_box)),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: '',
                activeIcon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
                activeIcon: Icon(Icons.person)),
          ],
        ));
  }
}
