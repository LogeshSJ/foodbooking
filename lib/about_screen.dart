import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: const Text('About'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            child: SizedBox(
                height: 1.0,
                child: Container(color: Colors.white)), // White line
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Foodie App🍔🥗',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '#Delicious #Foodforservice #fa',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Discover, dine, and delight with our all-in-one food app! 🍔🥗 Order from your favorite food, explore new recipes, and share your culinary adventures with friends. #FoodieApp',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Location: 123, Anna Nagar Main Road, Chennai, Tamil Nadu, India',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 300,
                  child: Center(
                    child: Container(
                      height: 100, // Adjust height as needed
                      width: 100, // Adjust width as needed
                      child: Lottie.asset(
                          'assets/about.json'), // Replace 'your_animation.json' with your animation file path
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
