// import 'package:flutter/material.dart';
// import 'package:foodbooking/homepage.dart';
// import 'package:lottie/lottie.dart'; // Import the lottie package

// class OrderPage extends StatefulWidget {
//   final String selectedItem;
//   final int quantity;
//   final String userName;
//   final String date;
//   final String time;
//   final String address;
//   final double price; // Add a new field for price

//   const OrderPage({
//     Key? key,
//     required this.selectedItem,
//     required this.quantity,
//     required this.userName,
//     required this.date,
//     required this.time,
//     required this.address,
//     required this.price, required List<OrderItem> orders, required DateTime dateTime, // Include price in the constructor
//   }) : super(key: key);

//   @override
//   State<OrderPage> createState() => _OrderPageState();
// }

// class _OrderPageState extends State<OrderPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Details'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'User Name:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   widget.userName,
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Selected Item:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   widget.selectedItem,
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 20),
//                 // Display the price
//                 Text(
//                   'Price:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   '${widget.price.toStringAsFixed(2)}', // Format price to two decimal places
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Quantity:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   '${widget.quantity}',
//                   style: TextStyle(fontSize: 18),
//                 ),

//                 SizedBox(height: 20),
//                 Text(
//                   'Date:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   widget.date,
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Time:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   widget.time,
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 20),
//                 const Text(
//                   'Address:',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   widget.address,
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Lottie.asset(
//               'assets/ordersuccessful.json', // Replace 'assets/animation.json' with your animation file path
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:foodbooking/homepage.dart';

// class OrderPage extends StatelessWidget {
//   final List<OrderItem> orders;
//   final String address;
//   final DateTime dateTime;

//   const OrderPage({
//     Key? key,
//     required this.orders,
//     required this.address,
//     required this.dateTime,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Details'),
//       ),
//       body: ListView.builder(
//         itemCount: orders.length,
//         itemBuilder: (context, index) {
//           final order = orders[index];
//           return Card(
//             margin: EdgeInsets.all(8.0),
//             child: Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     order.selectedItem,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Price: ${order.price}',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.green,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Date: ${dateTime.day}/${dateTime.month}/${dateTime.year}',
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                   Text(
//                     'Time: ${dateTime.hour}:${dateTime.minute}',
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                   Text(
//                     'Address: $address',
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   const Text(
//                     'Your order will be delivered in 40-50 minutes.',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/homepage.dart';

// import 'dart:math'; // Import the 'dart:math' library to generate random numbers

// class OrderPage extends StatelessWidget {
//   final List<OrderItem> orders;
//   final String address;
//   final DateTime dateTime;

//   const OrderPage({
//     Key? key,
//     required this.orders,
//     required this.address,
//     required this.dateTime,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Details'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: orders.length,
//               itemBuilder: (context, index) {
//                 final order = orders[index];
//                 // Generate a random order ID
//                 int orderId = Random().nextInt(100000);
//                 return Card(
//                   margin: EdgeInsets.all(8.0),
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Display the order ID at the top left
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             'Order ID: $orderId',
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           order.selectedItem,
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           'Price: ${order.price}',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.green,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                         Text(
//                           'Date: ${dateTime.day}/${dateTime.month}/${dateTime.year}',
//                           style: TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text(
//                           'Time: ${dateTime.hour}:${dateTime.minute}',
//                           style: TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text(
//                           'Address: $address',
//                           style: TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                         SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(60),
//             child: Text(
//               'Your order will be delivered in 40-50 minutes.',
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//                 color:Color.fromARGB(255, 240, 150, 149)
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:foodbooking/homepage.dart';
import 'dart:math'; // Import the 'dart:math' library to generate random numbers

class OrderPage extends StatelessWidget {
  final List<OrderItem> orders;
  final String address;
  final DateTime dateTime;

  const OrderPage({
    Key? key,
    required this.orders,
    required this.address,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'Order Details',
    style: TextStyle(color: Colors.white), // Set text color to white
  ),
  backgroundColor: Colors.red, // Set app bar background color
),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                // Generate a random order ID
                int orderId = Random().nextInt(100000);
                return Card(
                  elevation: 4, // Add elevation to the card for a better look
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Display the order ID with a different background color
                        Container(
                          color: Colors.red.withOpacity(0.3),
                          padding: EdgeInsets.all(3),
                          child: Text(
                            'Order ID: $orderId',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          order.selectedItem,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Price: ${order.price}',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Date: ${dateTime.day}/${dateTime.month}/${dateTime.year}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Time: ${dateTime.hour}:${dateTime.minute}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Address: $address',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Your order will be delivered in 40-50 minutes.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
