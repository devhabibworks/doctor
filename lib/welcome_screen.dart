import 'package:doctor/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    // this code used to hide the status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //image part
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset(
                        "image/wave.png",
                      )),
                  Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: const BoxDecoration(
                          color: Color(0xfff6f6fb),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8))),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset(
                        "image/image1.png",
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            //text part
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "All spacialists in one app",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Find your doctor and make an \napointment with on tap",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //button
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  color: null,
                  child: InkWell(
                    splashColor: pinkColor,
                    onTap: () {
                      Navigator.pushNamed(context, "home");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        "Get Statred",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
