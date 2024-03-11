import 'package:flutter/material.dart';
import 'package:theming_more_widgets_exp_tracker_app/models/expense.dart';
import 'package:theming_more_widgets_exp_tracker_app/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.onRemoveExpense});

  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder (
      itemCount: expenses.length,

      itemBuilder: (ctx, index) {
        return Dismissible(
          key: ValueKey(expenses[index]),
          onDismissed: (direction) {
            onRemoveExpense(expenses[index]);
          },
          child: ExpenseItem(expense: expenses[index]));
      });
  
  }
}