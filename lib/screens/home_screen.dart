import 'package:flutter/material.dart';
import 'home_widget/profile_widget.dart';
import 'home_widget/list_widget.dart';
import 'home_widget/statistics_card_widget.dart';
import '../widgets/navigation_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.menu), // Icono de hamburguesa
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Abrir el Drawer al presionar el botón
          },
        ),
      ),

      body: Column(
        children: [
          ProfileWidget(imagePath: 'assets/images/profile/user_mike.jpg', level: 'GOD',),
          // Mostrar el widget de perfil
          StatisticsCardWidget(),
          // Mostrar el widget de estadísticas
          ListWidget(),
          // Mostrar el widget de lista
        ],
      ), // Mostrar el widget de lista
      drawer: NavigationDrawerWidget(),
      // Agregar el Drawer
    );
  }
}
