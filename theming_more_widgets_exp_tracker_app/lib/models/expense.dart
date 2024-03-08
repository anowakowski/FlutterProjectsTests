import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.traver: Icons.flight_takeoff,
  Category.leisuer: Icons.movie,
  Category.work: Icons.work
};

class Expense {
  Expense({required this.title, required this.amanount, required this.date, required this.category}): id = uuid.v4();

  final String id;
  final String title;
  final double amanount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}

enum Category {
  food,
  traver,
  leisuer,
  work
}