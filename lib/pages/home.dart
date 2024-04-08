import 'package:flutter/material.dart';
import 'package:flutter_beginner_mitch_koko/pages/about.dart';
import 'package:flutter_beginner_mitch_koko/pages/dashboard_page.dart';
import 'package:flutter_beginner_mitch_koko/pages/menu_page.dart';
import 'package:flutter_beginner_mitch_koko/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // tracks the bottom nav page
  int _selectedPageIndex = 0;

  // update bottom nav index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  // bottom nav pages
  final List _pages = [
    DashboardPage(),
    ProfilePage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.book,
                size: 48,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/home'),
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/about')
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
      // Center(
      //   child: ElevatedButton(
      //     child: Text("About"),
      //     onPressed: () => {
      //       Navigator.pushNamed(context, '/about'),
      //     },
      //   ),
      // ),
    );
  }
}
