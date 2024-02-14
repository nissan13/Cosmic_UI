import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,/
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 5000,
              lineWidth: 10,
              percent: 1,
              progressColor: Colors.white,
              radius: 200,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.white38,
              center: Image.asset('assets/logo.png'),
            ),
            Image.asset('assets/flutter_logo.png'),
          ],
        ),
      ),
    );
    // Scaffold(
    //   body: Container(
    //     width: MediaQuery.of(context).size.width,
    //     height: MediaQuery.of(context).size.height,
    //     decoration: const BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage('assets/bg.png'),
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         CircleAvatar(
    //           backgroundColor: Colors.transparent,
    //           radius: 5,
    //           child: Image.asset('assets/logo.png'),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         // Image.asset('assets/flutter_logo.png'),
    //       ],
    //     ),
    //   ),
    // );
  }
}
