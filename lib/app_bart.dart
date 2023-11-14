import 'package:flutter/material.dart';

final AppBar appBar = AppBar(
  leading: Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: InkWell(
      onTap: () {},
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.grey[300],
      ),
    ),
  ),
  title: const Padding(
    padding: EdgeInsets.only(top: 6, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good Morning 👋🏻',
          style: TextStyle(fontSize: 14),
        ),
        Text(
          'Andrew Ainsley',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.shopping_cart),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.favorite),
    ),
  ],
);
