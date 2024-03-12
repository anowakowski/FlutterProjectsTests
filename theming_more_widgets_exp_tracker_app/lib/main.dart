import 'package:flutter/material.dart';
import 'package:theming_more_widgets_exp_tracker_app/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));


void main() {
  runApp (
     MaterialApp (
      //theme: ThemeData(useMaterial3: true),
      theme: ThemeData().copyWith(
          //scaffoldBackgroundColor: const Color.fromARGB(255, 245, 165, 159),
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer
          )
      ),
      home: const Expenses(),
    ),
  );
}