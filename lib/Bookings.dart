import 'package:flutter/material.dart';
import 'package:foodbooking/OrderPage.dart';
import 'package:foodbooking/cancellation%20message.dart';
import 'package:foodbooking/homepage.dart';
import 'package:lottie/lottie.dart';

class BookingsPage extends StatefulWidget {
  final List<OrderItem> orders;

  const BookingsPage({
    Key? key,
    required this.orders,
  }) : super(key: key);

  @override
  _BookingsPageState createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  late DateTime _dateTime;
  String address = 'Kaathan Street, Chengalpattu';
  bool _isOrderConfirmed = false;

  @override
  void initState() {
    super.initState();
    _dateTime = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Booking Details',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        backgroundColor: Colors.red, // Set app bar background color
      ),
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView for scrolling
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: widget.orders.map((order) {
                  return SizedBox(
                    height: 200,
                    child: Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(order.itemImagePath),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        order.selectedItem,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '\u20B9${order.price}',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Date: ${_dateTime.day}/${_dateTime.month}/${_dateTime.year}\nOrder Timing: ${_dateTime.hour}:${_dateTime.minute}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Address: $address',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                // Implement delete functionality here
                                // For example, you can show a confirmation dialog
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title:
                                          Text("Delete ${order.selectedItem}?"),
                                      content: const Text(
                                          "Are you sure you want to delete this booking?"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            // Implement delete logic here
                                            // For example, you can remove the item from the list
                                            setState(() {
                                              widget.orders.remove(order);
                                            });
                                            Navigator.pop(context);
                                          },
                                          child: Text("Yes"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("No"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isOrderConfirmed = true;
                        });
                        // Navigate to OrderPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderPage(
                              orders: widget.orders,
                              address: address,
                              dateTime: _dateTime,
                            ),
                          ),
                        );

                        // You can add your logic for confirming orders here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                      ),
                      child: const Text('Confirm Order',
                          style: TextStyle(fontSize: 20)),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderCancelledPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                      ),
                      child: const Text('Cancel Order',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              if (_isOrderConfirmed)
                Lottie.asset(
                  'assets/deliveryconfirm.json',
                  width: 200,
                  height: 100,
                  fit: BoxFit.cover,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showDateTimePicker() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _dateTime) {
      setState(() {
        _dateTime = picked;
      });
    }
  }
}