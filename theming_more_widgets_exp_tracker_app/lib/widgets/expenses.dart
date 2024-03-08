import 'package:flutter/material.dart';
import 'package:theming_more_widgets_exp_tracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:theming_more_widgets_exp_tracker_app/models/expense.dart';
import 'package:theming_more_widgets_exp_tracker_app/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpensess = [
    Expense(title: 'Flutter Course', amanount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amanount: 15.69, date: DateTime.now(), category: Category.leisuer)
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: (ctx) => const NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [          
          const Text('The Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpensess))
        ],
      ),
    );
  }
}