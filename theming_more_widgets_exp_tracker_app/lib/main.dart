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
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer
            )
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: ThemeData().textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold, 
              color: kColorScheme.onSecondaryContainer,
              fontSize: 14
            )
          )
      ),
      home: const Expenses(),
    ),
  );
}