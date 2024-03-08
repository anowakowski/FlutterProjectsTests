import 'package:flutter/material.dart';
import 'package:theming_more_widgets_exp_tracker_app/models/expense.dart';

class Expensess extends StatefulWidget {
  const Expensess({super.key});

  @override
  State<Expensess> createState() {
    return _ExpensessState();
  }
}

class _ExpensessState extends State<Expensess> {
  final List<Expense> _registeredExpensess = [
    Expense(title: 'Flutter Course', amanount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amanount: 15.69, date: DateTime.now(), category: Category.leisuer)
  ];


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Text('Expenses list')
        ],
      ),
    );
  }
}