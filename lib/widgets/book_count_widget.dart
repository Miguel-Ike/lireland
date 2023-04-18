import 'package:flutter/material.dart';

class BookCountWidget extends StatelessWidget {
  final int count;

  BookCountWidget({required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Total de libros',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
