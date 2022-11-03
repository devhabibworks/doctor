import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  DoctorCard(
      {Key? key,
      required this.department,
      required this.imagePath,
      required this.name,
      required this.rate})
      : super(key: key);
  String imagePath;
  String name;
  double rate;
  String department;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: purpleColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    imagePath,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 25,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(children: [
                      const Icon(
                        Icons.star_border_outlined,
                        size: 20,
                        color: Colors.orangeAccent,
                      ),
                      Text("$rate")
                    ])),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(
                color: blackColor, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            department,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
