// // import 'package:flutter/material.dart';

// // class Homepage extends StatelessWidget {
// //   const Homepage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Home'),
// //       ),
// //       body: Center(
// //         child: Text('Home Page Content'),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.book),
// //             label: 'Booking',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.menu),
// //             label: 'Menu',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.shopping_cart),
// //             label: 'Order',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.info),
// //             label: 'Information',
// //           ),
// //         ],
// //         // selectedItemColor: null, // Set to null to customize each icon's color individually
// //         selectedIconTheme: const IconThemeData(
// //           color: Colors.blue, // Customize the color of the selected icon
// //         ),
// //         unselectedIconTheme: const IconThemeData(
// //           color: Colors.blue, // Customize the color of the unselected icons
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(),
//           _buildRowWithTwoCards(),
//           _buildRowWithTwoCards(),
//           _buildRowWithTwoCards(),
//           _buildRowWithTwoCards(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Booking',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Order',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info),
//             label: 'Information',
//           ),
//         ],
//         selectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//         unselectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//       ),
//     );
//   }

//   Widget _buildRowWithTwoCards() {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCard() {
//   return Card(
//     elevation: 4,
//     margin: EdgeInsets.all(8),
//     child: Container(
//       height: 200,
//       padding: EdgeInsets.all(16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Image
//           Image.asset(
//             'assets/pizza.jpg', // Replace 'your_image.png' with your image asset path
//             height: 100, // Adjust height as needed
//             width: 300, // Adjust width as needed
//           ),
//           const SizedBox(height: 10), // Space between image and text
//           // Text
//           const Text(
//             'Biriyani', // Text content
//             style: TextStyle(
//               fontSize: 20, // Adjust font size as needed
//               fontWeight: FontWeight.bold, // Adjust font weight as needed
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/Bookings.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pizza.jpg',
//             firstTextContent: 'Pizza',
//             secondImagePath: 'assets/burger.jpg',
//             secondTextContent: 'Burger',
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/burrito.jpg',
//             firstTextContent: 'Burrito',
//             secondImagePath: 'assets/pasta.jpg',
//             secondTextContent: 'Pasta',
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pancakes.jpg',
//             firstTextContent: 'Pancakes',
//             secondImagePath: 'assets/salmon.jpg',
//             secondTextContent: 'Salmon',
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/steak.jpg',
//             firstTextContent: 'Steak',
//             secondImagePath: 'assets/ramen.jpg',
//             secondTextContent: 'Ramen',
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/biriyani.jpg',
//             firstTextContent: 'Biriyani',
//             secondImagePath: 'assets/firedrice.jpg',
//             secondTextContent: 'Fried Rice',
//           ),
//           // Add more rows as needed
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Booking',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Order',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info),
//             label: 'Information',
//           ),
//         ],
//         selectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//         unselectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//       ),
//     );
//   }

//   Widget _buildRowWithTwoCards({
//     required String firstImagePath,
//     required String firstTextContent,
//     required String secondImagePath,
//     required String secondTextContent,
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: firstImagePath,
//               textContent: firstTextContent,
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: secondImagePath,
//               textContent: secondTextContent,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCard({required String imagePath, required String textContent}) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(8),
//       child: Container(
//         height: 200,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image
//             Image.asset(
//               imagePath,
//               height: 90,
//               width: 300,
//             ),
//             // const SizedBox(height: 20), // Space between image and text
//             // Text
//             Text(
//               textContent,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 0), // Space below the text
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => BookingsPage(selectedItem: textContent)),
//                 );// Add to cart logic here
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                     Color.fromARGB(255, 123, 239, 247)),
//               ),
//               child: Text('Tap to Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/Bookings.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pizza.jpg',
//             firstTextContent: 'Pizza',
//             secondImagePath: 'assets/burger.jpg',
//             secondTextContent: 'Burger',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/burrito.jpg',
//             firstTextContent: 'Burrito',
//             secondImagePath: 'assets/pasta.jpg',
//             secondTextContent: 'Pasta',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pancakes.jpg',
//             firstTextContent: 'Pancakes',
//             secondImagePath: 'assets/salmon.jpg',
//             secondTextContent: 'Salmon',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/steak.jpg',
//             firstTextContent: 'Steak',
//             secondImagePath: 'assets/ramen.jpg',
//             secondTextContent: 'Ramen',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/biriyani.jpg',
//             firstTextContent: 'Biriyani',
//             secondImagePath: 'assets/firedrice.jpg',
//             secondTextContent: 'Fried Rice',
//             context: context, // Pass the BuildContext
//           ),
//           // Add more rows as needed
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Booking',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Order',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info),
//             label: 'Information',
//           ),
//         ],
//         selectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//         unselectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//       ),
//     );
//   }

//   Widget _buildRowWithTwoCards({
//     required String firstImagePath,
//     required String firstTextContent,
//     required String secondImagePath,
//     required String secondTextContent,
//     required BuildContext context, // Pass the BuildContext
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: firstImagePath,
//               textContent: firstTextContent,
//               context: context, // Pass the BuildContext
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: secondImagePath,
//               textContent: secondTextContent,
//               context: context, // Pass the BuildContext
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCard({
//     required String imagePath,
//     required String textContent,
//     required BuildContext context, // Pass the BuildContext
//   }) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(8),
//       child: Container(
//         height: 200,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image
//             Image.asset(
//               imagePath,
//               height: 90,
//               width: 300,
//             ),
//             // const SizedBox(height: 20), // Space between image and text
//             // Text
//             Text(
//               textContent,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 0), // Space below the text
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => BookingsPage(selectedItem: textContent)),
//                 );
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   Color.fromARGB(255, 123, 239, 247),
//                 ),
//               ),
//               child: Text('Tap to Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/Bookings.dart';
// import 'package:foodbooking/NavBar.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Implement search functionality
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {
//               // Implement notification functionality
//             },
//           ),
//         ],
//       ),
//       drawer: NavBar(),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pizza.jpg',
//             firstTextContent: 'Pizza',
//             secondImagePath: 'assets/burger.jpg',
//             secondTextContent: 'Burger',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/burrito.jpg',
//             firstTextContent: 'Burrito',
//             secondImagePath: 'assets/pasta.jpg',
//             secondTextContent: 'Pasta',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pancakes.jpg',
//             firstTextContent: 'Pancakes',
//             secondImagePath: 'assets/salmon.jpg',
//             secondTextContent: 'Salmon',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/steak.jpg',
//             firstTextContent: 'Steak',
//             secondImagePath: 'assets/ramen.jpg',
//             secondTextContent: 'Ramen',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/biriyani.jpg',
//             firstTextContent: 'Biriyani',
//             secondImagePath: 'assets/firedrice.jpg',
//             secondTextContent: 'Fried Rice',
//             context: context, // Pass the BuildContext
//           ),
//           // Add more rows as needed
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Booking',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Order',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info),
//             label: 'Information',
//           ),
//         ],
//         selectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//         unselectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//       ),
//     );
//   }

//   Widget _buildRowWithTwoCards({
//     required String firstImagePath,
//     required String firstTextContent,
//     required String secondImagePath,
//     required String secondTextContent,
//     required BuildContext context, // Pass the BuildContext
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: firstImagePath,
//               textContent: firstTextContent,
//               context: context, // Pass the BuildContext
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: secondImagePath,
//               textContent: secondTextContent,
//               context: context, // Pass the BuildContext
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCard({
//     required String imagePath,
//     required String textContent,
//     required BuildContext context, // Pass the BuildContext
//   }) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(8),
//       child: Container(
//         height: 200,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image
//             Image.asset(
//               imagePath,
//               height: 90,
//               width: 300,
//             ),
//             // const SizedBox(height: 20), // Space between image and text
//             // Text
//             Text(
//               textContent,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 0), // Space below the text
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           BookingsPage(selectedItem: textContent)),
//                 );
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   Color.fromARGB(255, 123, 239, 247),
//                 ),
//               ),
//               child: Text('Tap to Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/Bookings.dart';
// import 'package:foodbooking/NavBar.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         // actions: [
//         //   // IconButton(
//         //   //   icon: Icon(Icons.search),
//         //   //   onPressed: () {
//         //   //     // Implement search functionality
//         //   //   },
//         //   // ),
//         //   IconButton(
//         //     icon: Icon(Icons.notifications),
//         //     onPressed: () {
//         //       // Implement notification functionality
//         //     },
//         //   ),
//         // ],
//       ),
//       drawer: NavBar(),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pizza.jpg',
//             firstTextContent: 'Pizza',
//             secondImagePath: 'assets/burger.jpg',
//             secondTextContent: 'Burger',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/burrito.jpg',
//             firstTextContent: 'Burrito',
//             secondImagePath: 'assets/pasta.jpg',
//             secondTextContent: 'Pasta',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pancakes.jpg',
//             firstTextContent: 'Pancakes',
//             secondImagePath: 'assets/salmon.jpg',
//             secondTextContent: 'Salmon',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/steak.jpg',
//             firstTextContent: 'Steak',
//             secondImagePath: 'assets/ramen.jpg',
//             secondTextContent: 'Ramen',
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/biriyani.jpg',
//             firstTextContent: 'Biriyani',
//             secondImagePath: 'assets/firedrice.jpg',
//             secondTextContent: 'Fried Rice',
//             context: context, // Pass the BuildContext
//           ),
//           // Add more rows as needed
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Booking',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Order',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info),
//             label: 'Information',
//           ),
//         ],
//         selectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//         unselectedIconTheme: const IconThemeData(
//           color: Colors.blue,
//         ),
//       ),
//     );
//   }

//   Widget _buildRowWithTwoCards({
//     required String firstImagePath,
//     required String firstTextContent,
//     required String secondImagePath,
//     required String secondTextContent,
//     required BuildContext context, // Pass the BuildContext
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: firstImagePath,
//               textContent: firstTextContent,
//               context: context, // Pass the BuildContext
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: secondImagePath,
//               textContent: secondTextContent,
//               context: context, // Pass the BuildContext
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCard({
//     required String imagePath,
//     required String textContent,
//     required BuildContext context, // Pass the BuildContext
//   }) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(8),
//       child: Container(
//         height: 200,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image
//             Image.asset(
//               imagePath,
//               height: 90,
//               width: 300,
//             ),
//             // const SizedBox(height: 20), // Space between image and text
//             // Text
//             Text(
//               textContent,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 0), // Space below the text
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           BookingsPage(selectedItem: textContent, itemImagePath: imagePath,)), // Pass image path
//                 );
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   Color.fromARGB(255, 123, 239, 247),
//                 ),
//               ),
//               child: Text('Tap to Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/Bookings.dart';
// import 'package:foodbooking/NavBar.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       drawer: NavBar(),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pizza.jpg',
//             firstTextContent: 'Pizza',
//             firstPrice: 110.45, // Example price
//             secondImagePath: 'assets/burger.jpg',
//             secondTextContent: 'Burger',
//             secondPrice: 100.09, // Example price
//             context: context, // Pass the BuildContext
//           ),
//            _buildRowWithTwoCards(
//             firstImagePath: 'assets/burrito.jpg',
//             firstTextContent: 'Burrito',
//             firstPrice: 75.00,
//             secondImagePath: 'assets/pasta.jpg',
//             secondTextContent: 'Pasta',
//             secondPrice: 70.07,
//             context: context,   // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pancakes.jpg',
//             firstTextContent: 'Pancakes',
//             firstPrice: 55.09,
//             secondImagePath: 'assets/salmon.jpg',
//             secondTextContent: 'Salmon',
//             secondPrice: 77.90,
//             context: context,   // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/steak.jpg',
//             firstTextContent: 'Steak',
//             firstPrice: 52.78,
//             secondImagePath: 'assets/ramen.jpg',
//             secondTextContent: 'Ramen',
//             secondPrice: 77.99,
//             context: context,  // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/biriyani.jpg',
//             firstTextContent: 'Biriyani',
//             firstPrice: 130.67,
//             secondImagePath: 'assets/firedrice.jpg',
//             secondTextContent: 'Fried Rice',
//             secondPrice: 100.67,
//             context: context,   // Pass the BuildContext
//           ),

//           // Add more rows as needed
//         ],
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: const <BottomNavigationBarItem>[
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.home),
//       //       label: 'Home',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.book),
//       //       label: 'Booking',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.menu),
//       //       label: 'Menu',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.shopping_cart),
//       //       label: 'Order',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.info),
//       //       label: 'Information',
//       //     ),
//       //   ],
//       //   selectedIconTheme: const IconThemeData(
//       //     color: Colors.blue,
//       //   ),
//       //   unselectedIconTheme: const IconThemeData(
//       //     color: Colors.blue,
//       //   ),

//       // ),
//     );
//   }

//   Widget _buildRowWithTwoCards({
//     required String firstImagePath,
//     required String firstTextContent,
//     required double firstPrice, // Add price parameter
//     required String secondImagePath,
//     required String secondTextContent,
//     required double secondPrice, // Add price parameter
//     required BuildContext context,
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: firstImagePath,
//               textContent: firstTextContent,
//               price: firstPrice, // Pass price
//               context: context,
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: secondImagePath,
//               textContent: secondTextContent,
//               price: secondPrice, // Pass price
//               context: context,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCard({
//     required String imagePath,
//     required String textContent,
//     required double price, // Add price parameter
//     required BuildContext context,
//   }) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(8),
//       child: Container(
//         height: 250, // Increased height to accommodate the price display
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             // Image
//             Image.asset(
//               imagePath,
//               height: 90,
//               width: 300,
//             ),
//             // Text
//             Text(
//               textContent,
//               style:const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             // Price display
//             Text(
//               '\u20B9$price',
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => BookingsPage(
//                       selectedItem: textContent,
//                       itemImagePath: imagePath, price: price,

//                     ),
//                   ),
//                 );
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   const Color.fromARGB(255, 123, 239, 247),
//                 ),
//               ),
//               child: const Text('Tap to Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:foodbooking/Bookings.dart';
// import 'package:foodbooking/NavBar.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       drawer: NavBar(),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pizza.jpg',
//             firstTextContent: 'Pizza',
//             firstPrice: 110.45, // Example price
//             secondImagePath: 'assets/burger.jpg',
//             secondTextContent: 'Burger',
//             secondPrice: 100.09, // Example price
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/burrito.jpg',
//             firstTextContent: 'Burrito',
//             firstPrice: 75.00,
//             secondImagePath: 'assets/pasta.jpg',
//             secondTextContent: 'Pasta',
//             secondPrice: 70.07,
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pancakes.jpg',
//             firstTextContent: 'Pancakes',
//             firstPrice: 55.09,
//             secondImagePath: 'assets/salmon.jpg',
//             secondTextContent: 'Salmon',
//             secondPrice: 77.90,
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/steak.jpg',
//             firstTextContent: 'Steak',
//             firstPrice: 52.78,
//             secondImagePath: 'assets/ramen.jpg',
//             secondTextContent: 'Ramen',
//             secondPrice: 77.99,
//             context: context, // Pass the BuildContext
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/biriyani.jpg',
//             firstTextContent: 'Biriyani',
//             firstPrice: 130.67,
//             secondImagePath: 'assets/firedrice.jpg',
//             secondTextContent: 'Fried Rice',
//             secondPrice: 100.67,
//             context: context, // Pass the BuildContext
//           ),
//           // Add more rows as needed
//         ],
//       ),
//     );
//   }

//   Widget _buildRowWithTwoCards({
//     required String firstImagePath,
//     required String firstTextContent,
//     required double firstPrice, // Add price parameter
//     required String secondImagePath,
//     required String secondTextContent,
//     required double secondPrice, // Add price parameter
//     required BuildContext context,
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: firstImagePath,
//               textContent: firstTextContent,
//               price: firstPrice, // Pass price
//               context: context,
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: _buildCard(
//               imagePath: secondImagePath,
//               textContent: secondTextContent,
//               price: secondPrice, // Pass price
//               context: context,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildCard({
//     required String imagePath,
//     required String textContent,
//     required double price, // Add price parameter
//     required BuildContext context,
//   }) {
//     return CardWidget(
//       imagePath: imagePath,
//       textContent: textContent,
//       price: price,
//       context: context,
//     );
//   }
// }

// class CardWidget extends StatefulWidget {
//   final String imagePath;
//   final String textContent;
//   final double price;
//   final BuildContext context;

//   const CardWidget({
//     Key? key,
//     required this.imagePath,
//     required this.textContent,
//     required this.price,
//     required this.context,
//   }) : super(key: key);

//   @override
//   _CardWidgetState createState() => _CardWidgetState();
// }

// class _CardWidgetState extends State<CardWidget> {
//   int quantity = 0;
//   double total = 0;

//   @override
//   void initState() {
//     super.initState();
//     total = widget.price; // Initialize total price with the current price
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(8),
//       child: Container(
//         height: 300,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Image.asset(
//               widget.imagePath,
//               height: 90,
//               width: 300,
//             ),
//             Text(
//               widget.textContent,
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               '\u20B9$total',
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       if (quantity > 0) quantity--;
//                       total = widget.price * quantity; // Update total price
//                     });
//                   },
//                    style: ElevatedButton.styleFrom(
//                     primary: const Color.fromARGB(255, 178, 228, 233),
//                     onPrimary: Colors.black87,
//                   ),
//                   icon: Icon(Icons.remove),
//                 ),
//                 Text(
//                   '$quantity',
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     setState(() {
//                       quantity++;
//                       total = widget.price * quantity; // Update total price
//                     });
//                   },
//                    style: ElevatedButton.styleFrom(
//                     primary: Color.fromARGB(255, 178, 228, 233),
//                     onPrimary: Colors.black87,
//                   ),
//                   icon: Icon(Icons.add),
//                 ),
//               ],
//             ),

//             ElevatedButton(
//               onPressed: () {
//                 if (quantity > 0) { // Only navigate if quantity > 0
//                   Navigator.push(
//                     widget.context,
//                     MaterialPageRoute(
//                       builder: (context) => BookingsPage(
//                         selectedItem: widget.textContent,
//                         itemImagePath: widget.imagePath,
//                         price: total,
//                       ),
//                     ),
//                   );
//                 }
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   const Color.fromARGB(255, 123, 239, 247),
//                 ),
//               ),
//               child: Text('Tap to Order'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//new

import 'package:flutter/material.dart';
import 'package:foodbooking/Bookings.dart';
import 'package:foodbooking/NavBar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<OrderItem> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FOODIE APP',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        backgroundColor: Colors.red, // Set app bar background color
      ),
      drawer: NavBar(),
      body: ListView(
        children: [
          _buildRowWithTwoCards(
            firstImagePath: 'assets/pizza.jpg',
            firstTextContent: 'Pizza',
            firstPrice: 110.45, // Example price
            secondImagePath: 'assets/burger.jpg',
            secondTextContent: 'Burger',
            secondPrice: 100.09, // Example price
          ),
          _buildRowWithTwoCards(
            firstImagePath: 'assets/burrito.jpg',
            firstTextContent: 'Burrito',
            firstPrice: 75.00,
            secondImagePath: 'assets/pasta.jpg',
            secondTextContent: 'Pasta',
            secondPrice: 70.07,
          ),
          _buildRowWithTwoCards(
            firstImagePath: 'assets/pancakes.jpg',
            firstTextContent: 'Pancakes',
            firstPrice: 55.09,
            secondImagePath: 'assets/salmon.jpg',
            secondTextContent: 'Salmon',
            secondPrice: 77.90,
          ),
          _buildRowWithTwoCards(
            firstImagePath: 'assets/steak.jpg',
            firstTextContent: 'Steak',
            firstPrice: 52.78,
            secondImagePath: 'assets/ramen.jpg',
            secondTextContent: 'Ramen',
            secondPrice: 77.99,
          ),
          _buildRowWithTwoCards(
            firstImagePath: 'assets/biriyani.jpg',
            firstTextContent: 'Biriyani',
            firstPrice: 130.67,
            secondImagePath: 'assets/firedrice.jpg',
            secondTextContent: 'Fried Rice',
            secondPrice: 100.67,
          ),
           _buildRowWithTwoCards(
            firstImagePath: 'assets/wings.png',
            firstTextContent: 'Wings',
            firstPrice: 130.67,
            secondImagePath: 'assets/parotta.png',
            secondTextContent: 'Naan',
            secondPrice: 100.67,
          ),
          // Add more rows as needed
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedItems.isNotEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookingsPage(
                  orders: selectedItems,
                ),
              ),
            );
          }
        },
        child: Icon(Icons.shopping_cart_sharp),
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
      ),
    );
  }

  Widget _buildRowWithTwoCards({
    required String firstImagePath,
    required String firstTextContent,
    required double firstPrice, // Add price parameter
    required String secondImagePath,
    required String secondTextContent,
    required double secondPrice, // Add price parameter
  }) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildCard(
              imagePath: firstImagePath,
              textContent: firstTextContent,
              price: firstPrice, // Pass price
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildCard(
              imagePath: secondImagePath,
              textContent: secondTextContent,
              price: secondPrice, // Pass price
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard({
    required String imagePath,
    required String textContent,
    required double price, // Add price parameter
  }) {
    return CardWidget(
      imagePath: imagePath,
      textContent: textContent,
      price: price,
      onSelect: (selectedItem) {
        setState(() {
          selectedItems.add(selectedItem);
        });
      },
      onDeselect: (selectedItem) {
        setState(() {
          selectedItems.remove(selectedItem);
        });
      },
    );
  }
}

class CardWidget extends StatefulWidget {
  final String imagePath;
  final String textContent;
  final double price;
  final Function(OrderItem) onSelect;
  final Function(OrderItem) onDeselect;

  const CardWidget({
    Key? key,
    required this.imagePath,
    required this.textContent,
    required this.price,
    required this.onSelect,
    required this.onDeselect,
  }) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int quantity = 0;
  double total = 0;

  @override
  void initState() {
    super.initState();
    total = widget.price; // Initialize total price with the current price
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6, // Increased elevation for a more pronounced shadow
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Rounded corners
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(10), // Rounded corners for image
              child: Image.asset(
                widget.imagePath,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.textContent,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '\u20B9${widget.price.toStringAsFixed(2)}', // Format price with 2 decimal places
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (quantity > 0) quantity--;
                      total = widget.price * quantity; // Update total price
                    });
                  },
                  icon: const Icon(Icons.remove),
                  color: Colors.red, // Set icon color to white
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      quantity++;
                      total = widget.price * quantity; // Update total price
                    });
                  },
                  icon: Icon(Icons.add),
                  color: Colors.red, // Set icon color to white
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (quantity > 0) {
                  final selectedItem = OrderItem(
                    selectedItem: widget.textContent,
                    itemImagePath: widget.imagePath,
                    price: total,
                    quantity: quantity,
                  );
                  widget.onSelect(selectedItem);
                } else {
                  final selectedItem = OrderItem(
                    selectedItem: widget.textContent,
                    itemImagePath: widget.imagePath,
                    price: total,
                    quantity: quantity,
                  );
                  widget.onDeselect(selectedItem);
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.red, // Red button color
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white, // White text color
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItem {
  final String selectedItem;
  final String itemImagePath;
  final double price;

  OrderItem({
    required this.selectedItem,
    required this.itemImagePath,
    required this.price,
    required int quantity,
  });

  get address => null;

  get time => null;

  get date => null;
}

//cartoption
// class BookingsPage extends StatefulWidget {
//   final List<OrderItem> orders;

//   const BookingsPage({Key? key, required this.orders}) : super(key: key);

//   @override
//   _BookingsPageState createState() => _BookingsPageState();
// }

// class _BookingsPageState extends State<BookingsPage> {
//   late DateTime _dateTime;
//   String address = 'Kaathan Street, Chengalpattu';
//   bool _isOrderConfirmed = false;

//   @override
//   void initState() {
//     super.initState();
//     _dateTime = DateTime.now();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: const Text('Booking Details'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               children: widget.orders.map((order) {
//                 return SizedBox(
//                   height: 200,
//                   child: Card(
//                     elevation: 4,
//                     margin: const EdgeInsets.symmetric(vertical: 10),
//                     child: Stack(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 flex: 2,
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                       image: AssetImage(order.itemImagePath),
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 flex: 3,
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       order.selectedItem,
//                                       style: const TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       '\u20B9${order.price}',
//                                       style: const TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.green,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       'Date: ${_dateTime.day}/${_dateTime.month}/${_dateTime.year}\nOrder Timing: ${_dateTime.hour}:${_dateTime.minute}',
//                                       style: const TextStyle(
//                                         fontSize: 14,
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       'Address: $address',
//                                       style: const TextStyle(
//                                         fontSize: 14,
//                                         color: Colors.black87,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Positioned(
//                           top: 0,
//                           right: 0,
//                           child: IconButton(
//                             icon: Icon(Icons.delete),
//                             onPressed: () {
//                               // Implement delete functionality here
//                               // For example, you can show a confirmation dialog
//                               showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return AlertDialog(
//                                     title:
//                                         Text("Delete ${order.selectedItem}?"),
//                                     content: const Text(
//                                         "Are you sure you want to delete this booking?"),
//                                     actions: [
//                                       TextButton(
//                                         onPressed: () {
//                                           // Implement delete logic here
//                                           // For example, you can remove the item from the list
//                                           setState(() {
//                                             widget.orders.remove(order);
//                                           });
//                                           Navigator.pop(context);
//                                         },
//                                         child: Text("Yes"),
//                                       ),
//                                       TextButton(
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                         child: Text("No"),
//                                       ),
//                                     ],
//                                   );
//                                 },
//                               );
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//             const SizedBox(height: 20),
//             Center(
//               child: Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         _isOrderConfirmed = true;
//                       });
//                       // You can add your logic for confirming orders here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.green,
//                       onPrimary: Colors.white,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 30, vertical: 10),
//                     ),
//                     child: const Text('Confirm Order',
//                         style: TextStyle(fontSize: 20)),
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Show toast message when Cancel Order button is pressed
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.orange,
//                       onPrimary: Colors.white,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 30, vertical: 10),
//                     ),
//                     child: const Text('Cancel Order',
//                         style: TextStyle(fontSize: 20)),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             // if (_isOrderConfirmed)
//             //   Lottie.asset(
//             //     'assets/deliveryconfirm.json',
//             //     width: 200,
//             //     height: 100,
//             //     fit: BoxFit.cover,
//             //   ),
//           ],
//         ),
//       ),
//     );
//   }
// }
