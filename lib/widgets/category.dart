import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: purpleColor.withOpacity(0.2)),
      child: Row(
        children: [
          Icon(
            Icons.mouse,
            color: purpleColor,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text("Detist")
        ],
      ),
    );
  }
}
