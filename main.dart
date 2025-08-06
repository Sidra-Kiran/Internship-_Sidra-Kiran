import 'package:flutter/material.dart';

void main() {
  runApp(InterestsApp());
}

/// Root of the Interests screen app.
class InterestsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Interests',
      home: InterestsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// Displays a scrollable list of interests with icons.
class InterestsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> hobbies = [
    {'icon': Icons.menu_book, 'title': 'Reading'},
    {'icon': Icons.sports_esports, 'title': 'Gaming'},
    {'icon': Icons.kitchen, 'title': 'Cooking'},
    {'icon': Icons.self_improvement, 'title': 'Yoga'},
    {'icon': Icons.brush, 'title': 'Drawing'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text("My Interests"),
        backgroundColor: Colors.blue[800],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: hobbies.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(hobbies[index]['icon'], color: Colors.white),
              title: Text(
                hobbies[index]['title'],
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
