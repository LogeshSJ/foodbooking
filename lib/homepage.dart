// // //new
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
            const SizedBox(height: 10),
            Text(
              widget.textContent,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '\u20B9${widget.price.toStringAsFixed(2)}', // Format price with 2 decimal places
              style: const TextStyle(
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

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:foodbooking/Bookings.dart';
// import 'package:foodbooking/NavBar.dart';
// import 'package:foodbooking/presentation/providers/provider.dart';

// final selectedItemsProvider = StateProvider<List<OrderItem>>((ref) => []);
// final bookingsNotifierProvider = StateNotifierProvider((ref) => BookingsNotifier());


// class Homepage extends ConsumerWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context,WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'FOODIE APP',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.red,
//       ),
//       drawer: NavBar(),
//       body: ListView(
//         children: [
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/pizza.jpg',
//             firstTextContent: 'Pizza',
//             firstPrice: 110.45,
//             secondImagePath: 'assets/burger.jpg',
//             secondTextContent: 'Burger',
//             secondPrice: 100.09,
//           ),
//           _buildRowWithTwoCards(
//             firstImagePath: 'assets/burrito.jpg',
//             firstTextContent: 'Burrito',
//             firstPrice: 75.00,
//             secondImagePath: 'assets/pasta.jpg',
//             secondTextContent: 'Pasta',
//             secondPrice: 70.07,
//           ),

//           // Add more rows as needed
//         ],
//       ),
//       floatingActionButton: Consumer(
//         builder: (context, watch, _) {
//           final selectedItems = ref.watch(selectedItemsProvider);
//           return FloatingActionButton(
//             onPressed: () {
//               if (selectedItems.isNotEmpty) {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => BookingsPage(
//                       orders: selectedItems,
//                     ),
//                   ),
//                 );
//               }
//             },
//             child: Icon(Icons.shopping_cart_sharp),
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.red,
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildRowWithTwoCards({
//     required String firstImagePath,
//     required String firstTextContent,
//     required double firstPrice,
//     required String secondImagePath,
//     required String secondTextContent,
//     required double secondPrice,
//   }) {
//     return Row(
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CardWidget(
//               imagePath: firstImagePath,
//               textContent: firstTextContent,
//               price: firstPrice,
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CardWidget(
//               imagePath: secondImagePath,
//               textContent: secondTextContent,
//               price: secondPrice,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CardWidget extends ConsumerWidget {
//   final String imagePath;
//   final String textContent;
//   final double price;

//   const CardWidget({
//     Key? key,
//     required this.imagePath,
//     required this.textContent,
//     required this.price,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context,WidgetRef ref) {
//     return Card(
//       elevation: 6,
//       margin: EdgeInsets.all(8),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Container(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 imagePath,
//                 height: 150,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               textContent,
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 5),
//             Text(
//               '\u20B9${price.toStringAsFixed(2)}',
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green,
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 final selectedItem = OrderItem(
//                   selectedItem: textContent,
//                   itemImagePath: imagePath,
//                   price: price,
//                   quantity: 1,
//                 );
//                 ref.watch(projectsNotifierProvider.notifier).addToCart(selectedItem);
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   Colors.red,
//                 ),
//                 foregroundColor: MaterialStateProperty.all<Color>(
//                   Colors.white,
//                 ),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               child: const Text(
//                 'Add to Cart',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OrderItem {
//   final String selectedItem;
//   final String itemImagePath;
//   final double price;
//   final int quantity;

//   OrderItem({
//     required this.selectedItem,
//     required this.itemImagePath,
//     required this.price,
//     required this.quantity,
//   });
// }

// void main() {
//   runApp(
//     ProviderScope(
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Homepage(),
//       ),
//     ),
//   );
// }
