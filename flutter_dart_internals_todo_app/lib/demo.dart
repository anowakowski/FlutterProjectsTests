import 'package:flutter/material.dart';

class DemoBtns extends StatefulWidget {
  const DemoBtns({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DemoBtnsState();
  }

}

class _DemoBtnsState extends State<DemoBtns> {

  var _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = true;
                });
              },
              child: const Text('Yes'),
            ),
            
          ],
        ),
        if (_isUnderstood) const Text('Awesome!'),
      ],
    );
  }

}