import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstFlutterApp());
}

/// Root of the Splash Screen app.
class MyFirstFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// Displays a centered logo with a tagline.
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900], // Navy blue background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Padding around the screen
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.fastfood,
                  size: 100,
                  color: Colors.white,
                ),
                SizedBox(height: 24), // Space between icon and text
                Text(
                  'Simple. Fast. Flutter.',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}