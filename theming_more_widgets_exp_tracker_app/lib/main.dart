import 'package:flutter/material.dart';
import 'package:theming_more_widgets_exp_tracker_app/widgets/expenses.dart';

void main() {
  runApp (
    const MaterialApp (
      //theme: ThemeData(useMaterial3: true),
      home: Expenses(),
    ),
  );
}