import 'package:flutter/material.dart';

class ShoppingFiltersModel{
  final String name;
  final IconData icon;
  
  const ShoppingFiltersModel({required this.name, required this.icon});

}

List<ShoppingFiltersModel> shoppingFilters= [
  const ShoppingFiltersModel(name: 'Appliances', icon: Icons.home),
  const ShoppingFiltersModel(name: 'Shoes', icon: Icons.work),
  const ShoppingFiltersModel(name: 'Bags', icon: Icons.shopping_bag),
  const ShoppingFiltersModel(name: 'Electronics', icon: Icons.tv),
  const ShoppingFiltersModel(name: 'Watch', icon: Icons.watch),
  const ShoppingFiltersModel(name: 'Mobile', icon: Icons.android),
  const ShoppingFiltersModel(name: 'Kitchen', icon: Icons.kitchen),
  const ShoppingFiltersModel(name: 'Toys', icon: Icons.toys),
];