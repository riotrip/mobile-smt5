import 'package:flutter/material.dart';
import 'dart:async';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation Dialog Screen - Rio')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: [
            TextButton(
              child: const Text('Cyan'),
              onPressed: () {
                setState(() {
                  color = Colors.cyan.shade700;
                  Navigator.pop(context, color);
                });
              },
            ),
            TextButton(
              child: const Text('Magenta'),
              onPressed: () {
                setState(() {
                  color = Colors.pink.shade700;
                  Navigator.pop(context, color);
                });
              },
            ),
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                setState(() {
                  color = Colors.yellow.shade700;
                  Navigator.pop(context, color);
                });
              },
            ),
          ],
        );
      },
    );
    setState(() {});
  }
}
