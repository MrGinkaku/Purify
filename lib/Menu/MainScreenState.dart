import 'package:flutter/material.dart';
import '/Profile/profile_screen.dart';
import '/Chat/chat_screen.dart';
import '/Article/article_screen.dart';
import '/Home/home_screen.dart'; // Import HomeScreen

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Start with the "Home" tab selected

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(), // Use HomeScreen here
    const ArticleScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  // static List<String> _appBarTitles = [
  //   'Home',
  //   'Article',
  //   'Messages',
  //   'Profile',
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(_appBarTitles[_selectedIndex]),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Article',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 255),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
