import 'package:flutter/material.dart';

class Discount2 extends StatelessWidget {
  const Discount2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle, color: Colors.grey[400]),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
