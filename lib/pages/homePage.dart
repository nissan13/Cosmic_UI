import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 5,
              child: Image.asset('assets/logo.png'),
            ),
            // Container(
            //   child: Image.asset('assets/flutter_logo.png'),
            // )
          ),
        ],
      ),
    );
  }
}
