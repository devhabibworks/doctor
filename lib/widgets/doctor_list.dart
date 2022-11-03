import 'package:doctor/widgets/doctor_card.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          DoctorCard(
            name: "DR. Arlene McCoy",
            department: "Therabist , 7 y.e",
            rate: 4.9,
            imagePath: "image/doctor1.jpeg",
          ),
          DoctorCard(
            name: "DR. Albert florence",
            department: "Therabist , 7 y.e",
            rate: 4.7,
            imagePath: "image/doctor2.png",
          ),
          DoctorCard(
            name: "DR. Arlene McCoy",
            department: "Therabist , 7 y.e",
            rate: 4.9,
            imagePath: "image/doctor1.jpeg",
          ),
          DoctorCard(
            name: "DR. Albert florence",
            department: "Therabist , 7 y.e",
            rate: 4.7,
            imagePath: "image/doctor2.png",
          ),
        ],
      ),
    );
  }
}
