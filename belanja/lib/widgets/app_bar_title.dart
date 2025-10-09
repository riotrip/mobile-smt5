import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  final IconData icon;

  const AppBarTitle({Key? key, required this.title, required this.icon})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black, size: 24),
        SizedBox(width: 12),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
