import 'package:flutter/material.dart';

class CategoiresScreen extends StatelessWidget {
  const CategoiresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        children: const [
          Text('1', style: TextStyle(color: Colors.white)),
          Text('2', style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }

}