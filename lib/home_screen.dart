import 'package:doctor/widgets/category.dart';
import 'package:doctor/widgets/custome_appbar.dart';
import 'package:doctor/widgets/custome_offer.dart';
import 'package:doctor/widgets/doctor_card.dart';
import 'package:doctor/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this code used to hide the status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            //appbar code
            const CustomAppBar(),
            const SizedBox(height: 32),
            //offer card
            const CustomeOffer(),
            const SizedBox(height: 32),
            // Search
            const SearchFeild(),
            const SizedBox(height: 24),

            ///categories
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Category(),
                  Category(),
                  Category(),
                  Category(),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Doctor List",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "see all",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 18),

            ///doctor list

            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
