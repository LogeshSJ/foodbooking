import 'package:flutter/material.dart';

class Intropage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 234, 140, 140),
      child: Center(
        child: Text(
          'Are You Ready! Get Started',
          style: TextStyle(
            fontSize: 24, // Adjust the font size
            // fontWeight: FontWeight.bold, // Make the text bold
            color: Colors.black87, // Change the text color
            letterSpacing: 2.0, // Add letter spacing
            shadows: [
              Shadow(
                blurRadius: 5.0,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(2.0, 2.0),
              ),
            ], // Add shadow
          ),
        ),
      ),
    );
  }
}
