import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

/// Root of the Profile Screen app.
class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen',
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// Displays avatar, name, email, and location.
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Screen padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Sida Kiran',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              SizedBox(height: 10),
              Text(
                'sidrakiran1117@gmail.com',
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 10),
              Text(
                'Rawalpindi, Pakistan',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
