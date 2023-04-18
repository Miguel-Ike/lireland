import 'package:flutter/material.dart';
import 'item_widget.dart';

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'PUNTOS CONSEGUIDOS HOY',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        //completar el widget de lista, 3 items, 1 es paginas leidas, 2 es tiempo de lectura, 3 libros leidos
        ItemWidget(
          icon: Icons.copy,
          title: 'Páginas leídas',
          subtitle: 'Sep 20, 10:00 am',
          label: 'Páginas',
          counter: 0,
        ),
        ItemWidget(
          icon: Icons.timer,
          title: 'Tiempo de lectura',
          subtitle: 'Sep 20, 10:00 am',
          label: 'Minutos',
          counter: 0,
        ),
        ItemWidget(
          icon: Icons.book,
          title: 'Libros leídos',
          subtitle: 'Sep 20, 10:00 am',
          label: 'Libros',
          counter: 0,
        ),
      ],
    );
  }
}
