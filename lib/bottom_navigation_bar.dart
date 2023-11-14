import 'package:flutter/material.dart';

final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
  currentIndex: 0,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Orders'),
    BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ],
);
