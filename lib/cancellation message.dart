// import 'package:flutter/material.dart';

// class OrderCancelledPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Booking Details'),
//         backgroundColor: Colors.red,
//         foregroundColor: Colors.white, // Set app bar background color
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.cancel,
//               color: Colors.red,
//               size: 100,
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Your order has been cancelled successfully.',
//               style: TextStyle(fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'homepage.dart'; // Assuming homepage.dart contains the definition of your homepage

class OrderCancelledPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false, // Remove back arrow
        title: Text('Booking Details'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white, // Set app bar background color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cancel,
              color: Colors.red,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              'Your order has been cancelled successfully.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()), // Replace HomePage with your actual homepage class
                );
              },
                style: ElevatedButton.styleFrom(
                primary: Colors.green, // Background color
                onPrimary: Colors.white, // Text color
              ),
              child: Text('Go to Homepage'),
            ),
          ],
        ),
      ),
    );
  }
}
