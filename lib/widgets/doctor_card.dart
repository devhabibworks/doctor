import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: purpleColor.withOpacity(.2),
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
                child: Row(children: const [Icon(Icons.stars), Text("data")]),
              )
            ],
          ),
          const Text("data"),
          const Text("data")
        ],
      ),
    );
  }
}
