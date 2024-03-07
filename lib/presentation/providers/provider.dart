
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodbooking/homepage.dart';

final projectsNotifierProvider =
    StateNotifierProvider<BookingsNotifier, List<OrderItem>>(
  (ref) => BookingsNotifier(),
);

class BookingsNotifier extends StateNotifier<List<OrderItem>> {
  BookingsNotifier() : super([]);

  void addToCart(OrderItem orderItem) {
    state = [...state, orderItem];
  }
}
