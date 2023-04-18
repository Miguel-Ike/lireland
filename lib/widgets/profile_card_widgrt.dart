import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String leadingIcon;
  final String title;
  final String subtitle;
  final String trailingIcon;

  ProfileCard(
      {required this.leadingIcon,
      required this.title,
      required this.subtitle,
      required this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(leadingIcon as IconData?),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle),
        ],
      ),
      trailing: Icon(trailingIcon as IconData?),
    );
  }
}