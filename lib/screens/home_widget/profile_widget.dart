import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  late final String imagePath;
  late final String level;

  ProfileWidget({required this.imagePath, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 73,
                    backgroundColor: Colors.grey[300],
                    child: CircleAvatar(
                      radius: 73,
                      backgroundImage: AssetImage(imagePath),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'LEVEL: $level',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Column(
          //       children: [
          //         Text(
          //           'Points',
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         Text('0'),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           'Rank',
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         Text('0'),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

