// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:foodbooking/homepage.dart';

// final projectsNotifierProvider =
//     StateNotifierProvider<BookingsNotifier, List<OrderItem>>(
//   (ref) => BookingsNotifier(),
// );

// class BookingsNotifier extends StateNotifier<List<OrderItem>> {
//   BookingsNotifier() : super([]);

//   void add(OrderItem orderItem) {
//     print(state);
//     // print(orderItem.selectedItem);
//     state = [...state, orderItem];
//     // print(state);
//   }
//     void removeFromCart(OrderItem orderItem) {
//     state = state.where((item) => item != orderItem).toList();
//   }
// }
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodbooking/homepage.dart';

final selectedItemsProvider = StateProvider<List<OrderItem>>((ref) => []);
final bookingsNotifierProvider =
    StateNotifierProvider<BookingsNotifier, List<OrderItem>>(
  (ref) => BookingsNotifier(),
);

class BookingsNotifier extends StateNotifier<List<OrderItem>> {
  BookingsNotifier() : super([]);

  void addToCart(OrderItem orderItem) {
    print("hi");
    state = [...state, orderItem];
  }

  void removeFromCart(OrderItem orderId) {
    state = state.where((item) => item != orderId).toList();
    
  }
}
