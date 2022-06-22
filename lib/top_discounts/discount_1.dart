import 'package:flutter/material.dart';

class Discount1 extends StatelessWidget {
  const Discount1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 100,
            decoration:
                BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
