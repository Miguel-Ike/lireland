import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7, // Ajusta la altura aquí, por ejemplo, el 70% de la altura de la pantalla
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Books'),
              onTap: () {
                Navigator.pop(context);
                // Aquí puedes agregar la navegación a la pantalla de Books
              },
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text('Games'),
              onTap: () {
                Navigator.pop(context);
                // Aquí puedes agregar la navegación a la pantalla de Games
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                // Aquí puedes agregar la navegación a la pantalla de Home
              },
            ),
            ListTile(
              leading: Icon(Icons.leaderboard),
              title: Text('Ranking'),
              onTap: () {
                Navigator.pop(context);
                // Aquí puedes agregar la navegación a la pantalla de Ranking
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Rewards'),
              onTap: () {
                Navigator.pop(context);
                // Aquí puedes agregar la navegación a la pantalla de Rewards
              },
            ),
          ],
        ),
      ),
    );
  }
}
