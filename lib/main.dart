import 'package:flutter/material.dart';

import 'screens/books_screen.dart';
import 'screens/games_screen.dart';
import 'screens/home_screen.dart';
import 'screens/ranking_screen.dart';
import 'screens/rewards_screen.dart';
import 'widgets/bottom_navigation_bar.dart';
import 'widgets/navigation_drawer_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    BooksScreen(),
    GamesScreen(),
    HomeScreen(),
    RankingScreen(),
    RewardsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        body: _children[_currentIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


