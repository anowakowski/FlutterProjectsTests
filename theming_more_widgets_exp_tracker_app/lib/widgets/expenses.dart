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
    showModalBottomSheet(isScrollControlled: true, context: context, builder: (ctx) => NewExpense(onAddExpense: _addExpense));
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpensess.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpensess.indexOf(expense);
    setState(() {
      _registeredExpensess.remove(expense);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense deleted'),
        action: SnackBarAction (
          label: 'Undo', 
          onPressed: () {
            setState(() {
              _registeredExpensess.insert(expenseIndex, expense);
            });
          },)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(child: Text("No Expenses found, adding some!"));

    if (_registeredExpensess.isNotEmpty) {
      mainContent = ExpensesList(expenses: _registeredExpensess, onRemoveExpense: _removeExpense);
    }

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
          Expanded(child: mainContent)
        ],
      ),
    );
  }
}