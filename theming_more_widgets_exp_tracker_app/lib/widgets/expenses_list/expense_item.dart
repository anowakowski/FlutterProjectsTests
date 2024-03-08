import 'package:flutter/material.dart';
import 'package:theming_more_widgets_exp_tracker_app/models/expense.dart';


class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('Amount \$: ${expense.amanount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(height: 8),
                    Text(expense.formattedDate)
                  ],
                ),
              ],
            )
          ])
      )
    );
  }
  
}