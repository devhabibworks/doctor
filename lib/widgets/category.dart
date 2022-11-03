import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({Key? key, required this.imagePath, required this.name})
      : super(key: key);
  String imagePath;
  String name;

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
          Image.asset(
            imagePath,
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(name)
        ],
      ),
    );
  }
}
