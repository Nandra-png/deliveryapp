import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          // Image Header
          Container(
            width: 600 ,
            height: 80,  // adjust height as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),     
        ],
      ),
    );
  }
}