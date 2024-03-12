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

class ExpenseBucket {
  const ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category): expenses = allExpenses.where((e) => e.category == category).toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;

    for(final expense in expenses) {
      sum += expense.amanount;
    }

    return sum;
  }
}