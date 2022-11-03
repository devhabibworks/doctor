import 'package:flutter/material.dart';
import 'package:doctor/constant.dart';
import 'package:flutter/cupertino.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: purpleColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                CupertinoIcons.search,
                size: 30,
                color: Colors.grey,
              ),
              hintText: "How can we help you?",
              hintStyle: TextStyle(
                color: Colors.grey,
              )),
        ));
  }
}
