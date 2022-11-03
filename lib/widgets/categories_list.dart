import 'package:doctor/widgets/category.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            name: "Dentist",
            imagePath: "image/teeth.png",
          ),
          Category(
            name: "Surgery",
            imagePath: "image/surgery.png",
          ),
          Category(
            name: "Dentist",
            imagePath: "image/teeth.png",
          ),
          Category(
            name: "Surgery",
            imagePath: "image/surgery.png",
          ),
        ],
      ),
    );
  }
}
