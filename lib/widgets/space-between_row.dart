import 'package:flutter/material.dart';

class SpaceBetweenRow extends StatelessWidget {
  String text1;
  String text2;
  SpaceBetweenRow({required this.text1, required this.text2, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0XFF4838D1),
            ),
          ),
        ],
      ),
    );
  }
}
