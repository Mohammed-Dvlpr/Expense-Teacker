import 'package:flutter/material.dart';

class Percentage {
  final String categories;
  final int percent, price;

  Percentage({
    required this.categories,
    required this.percent,
    required this.price,
  });

  static final percentageList = [
    Percentage(categories: 'Restaurants', percent: 52, price: 1585),
    Percentage(categories: 'Transport', percent: 20, price: 6540),
    Percentage(categories: 'Entertainment', percent: 18, price: 3540),
    Percentage(categories: 'Taxi', percent: 8, price: 3663),
  ];
}
