import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,",
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            Text(
              "Jerme Bell",
              style: TextStyle(
                  color: blackColor, fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("image/image1.png"),
        ),
      ],
    );
  }
}
