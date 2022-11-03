import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';

class CustomeOffer extends StatelessWidget {
  const CustomeOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8).copyWith(bottom: 0, left: 24, right: 24),
      height: 170,
      decoration: BoxDecoration(
          color: pinkColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('image/image1.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "How do you feel?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text("fill out your medical\n card right now"),
              const SizedBox(
                height: 8,
              ),
              MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                color: purpleColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                child: Text(
                  "Get Started",
                  style: TextStyle(color: whiteColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
