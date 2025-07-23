import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image(image: AssetImage('assets/images/myprofile.jpg')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
