import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

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
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    "image/image1.png",
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
                    child: Row(children: const [
                      Icon(
                        Icons.star_border_outlined,
                        size: 20,
                        color: Colors.orangeAccent,
                      ),
                      Text("4.9")
                    ])),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "DR. Arlene McCoy",
            style: TextStyle(
                color: blackColor, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Text(
            "Therabist , 7 y.e",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
