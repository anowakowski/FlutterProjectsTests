import 'package:flutter/material.dart';

class Expensess extends StatefulWidget {
  const Expensess({super.key});

  @override
  State<Expensess> createState() {
    return _ExpensessState();
  }
}

class _ExpensessState extends State<Expensess> {
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