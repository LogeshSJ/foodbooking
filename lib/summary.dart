// // import 'package:flutter/material.dart';

// // class SummaryPage extends StatelessWidget {
// //   final double totalPrice;
// //   final List<OrderItem> orders;
// //   final String address;

// //   const SummaryPage({
// //     Key? key,
// //     required this.totalPrice,
// //     required this.orders,
// //     required this.address,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'Summary',
// //           style: TextStyle(color: Colors.white),
// //         ),
// //         backgroundColor: Colors.red,
// //       ),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Summary Box
// //             Card(
// //               elevation: 4,
// //               margin: const EdgeInsets.symmetric(vertical: 10),
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(15.0),
// //               ),
// //               child: Container(
// //                 padding: const EdgeInsets.all(16.0),
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(15.0),
// //                   color: Colors.white,
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.grey.withOpacity(0.5),
// //                       spreadRadius: 2,
// //                       blurRadius: 5,
// //                       offset: const Offset(0, 3),
// //                     ),
// //                   ],
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       'Order Summary',
// //                       style: TextStyle(
// //                         fontSize: 20,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                       ),
// //                     ),
// //                     Divider(
// //                       color: Colors.grey,
// //                     ),
// //                     SizedBox(height: 10),
// //                     Text(
// //                       'Total Price: \u20B9$totalPrice',
// //                       style: TextStyle(
// //                         fontSize: 16,
// //                         color: Colors.black,
// //                       ),
// //                     ),
// //                     SizedBox(height: 10),
// //                     Text(
// //                       'Order Items:',
// //                       style: TextStyle(
// //                         fontSize: 16,
// //                         color: Colors.black,
// //                       ),
// //                     ),
// //                     SizedBox(height: 5),
// //                     Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: orders.map((order) {
// //                         return Text(
// //                           '${order.quantity} x ${order.selectedItem}',
// //                           style: TextStyle(
// //                             fontSize: 14,
// //                             color: Colors.black87,
// //                           ),
// //                         );
// //                       }).toList(),
// //                     ),
// //                     SizedBox(height: 10),
// //                     Text(
// //                       'Address: $address',
// //                       style: TextStyle(
// //                         fontSize: 16,
// //                         color: Colors.black,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),

// //             SizedBox(height: 20),

// //             // Confirm Order Button
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Add logic to confirm order
// //               },
// //               style: ElevatedButton.styleFrom(
// //                 primary: Colors.green,
// //                 onPrimary: Colors.white,
// //                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
// //               ),
// //               child: Text(
// //                 'Confirm Order',
// //                 style: TextStyle(fontSize: 18),
// //               ),
// //             ),

// //             SizedBox(height: 10),

// //             // Cancel Order Button
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Add logic to cancel order
// //               },
// //               style: ElevatedButton.styleFrom(
// //                 primary: Colors.red,
// //                 onPrimary: Colors.white,
// //                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
// //               ),
// //               child: Text(
// //                 'Cancel Order',
// //                 style: TextStyle(fontSize: 18),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class OrderItem {
// //   final String selectedItem;
// //   final int quantity;

// //   OrderItem({
// //     required this.selectedItem,
// //     required this.quantity,
// //   });
// // }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/OrderPage.dart';
// import 'package:foodbooking/cancellation%20message.dart';

// class SummaryPage extends StatefulWidget {
//   final double totalPrice;
//   final List<OrderItem> orders;
//   final String address;
  

//   const SummaryPage({
//     Key? key,
//     required this.totalPrice,
//     required this.orders,
//     required this.address,
//   }) : super(key: key);

//   @override
//   _SummaryPageState createState() => _SummaryPageState();
// }

// class _SummaryPageState extends State<SummaryPage> {
//   bool _isOrderConfirmed = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Summary',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.red,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Summary Box
//             Card(
//               elevation: 4,
//               margin: const EdgeInsets.symmetric(vertical: 10),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//               ),
//               child: Container(
//                 padding: const EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15.0),
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Order Summary',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Divider(
//                       color: Colors.grey,
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Total Price: \u20B9${widget.totalPrice}',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Order Items:',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: widget.orders.map((order) {
//                         return Text(
//                           '${order.quantity} x ${order.selectedItem}',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.black87,
//                           ),
//                         );
//                       }).toList(),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       'Address: ${widget.address}',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             SizedBox(height: 20),

//             // Confirm Order Button
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _isOrderConfirmed = true;
//                 });
//                 // Navigate to OrderPage
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(
//                 //     builder: (context) => OrderPage(
//                 //       orders: widget.orders,
//                 //       address: widget.address,
//                 //       dateTime: _dateTime,
//                 //     ),
//                 //   ),
//                 // );

//                 // You can add your logic for confirming orders here
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.green,
//                 onPrimary: Colors.white,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               ),
//               child:
//                   const Text('Confirm Order', style: TextStyle(fontSize: 18)),
//             ),

//             SizedBox(height: 10),

//             // Cancel Order Button
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => OrderCancelledPage()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.red,
//                 onPrimary: Colors.white,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               ),
//               child: const Text('Cancel Order', style: TextStyle(fontSize: 18)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OrderItem {
//   final String selectedItem;
//   final int quantity;

//   OrderItem({
//     required this.selectedItem,
//     required this.quantity,
//   });
// }
