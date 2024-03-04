import 'dart:math'; // Import dart:math for random number generation
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intropage1 extends StatelessWidget {
  // Define a list of random captions
  final List<String> captions = [
    'Book your lunch now!',
    // Add more captions as needed
  ];

  @override
  Widget build(BuildContext context) {
    // Generate a random index to pick a caption from the list
    final int randomIndex = Random().nextInt(captions.length);

    return Container(
      // color: Color.fromARGB(255, 237, 187, 140),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            captions[randomIndex], // Use the randomly selected caption
            style: const TextStyle(
              fontSize: 20,
              fontStyle:FontStyle.italic,
              // fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 69, 69, 68),
              letterSpacing: 2.0,
            ),
          ),
          LottieBuilder.asset('assets/page1.json'),
          SizedBox(height: 100), // Adding some space between image and text
        ],
      ),
    );
  }
}