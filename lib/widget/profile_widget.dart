import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget(
      {required this.imageUrl,
      required this.name,
      required this.email,
      Key? key})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisSize: MainAxisSize.max,
      children: [ CircleAvatar( 
    radius: 40.0,
    backgroundImage: AssetImage(imageUrl),
),
      const SizedBox(height: 30,),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          email,
          style: const TextStyle( fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
