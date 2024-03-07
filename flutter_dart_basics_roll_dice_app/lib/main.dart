import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold (
        body: GradientContainer(),
      )
    )
  );
}

class GradientContainer extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromRGBO(255, 26, 2, 80), Color.fromRGBO(255, 45, 7, 98)],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter
        )
      ),
      child: const Center(
        child: Text('Hello Word', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28
                  ),
        )
      ),
    );
  }

}