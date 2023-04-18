import 'package:flutter/material.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/book_count_widget.dart';

class BooksScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
        leading: IconButton(
          icon: Icon(Icons.menu), // Icono de hamburguesa
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Abrir el Drawer al presionar el botón
          },
        ),
      ),
      drawer: NavigationDrawerWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.only(top: 16),
        child: SearchBarWidget(
          controller: _searchController,
          onSubmitted: (query) {
            // Lógica de búsqueda aquí
          },
        ),
      ),
    );
  }
}
