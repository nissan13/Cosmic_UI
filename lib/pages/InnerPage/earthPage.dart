import 'package:flutter/material.dart';

class earthPage extends StatelessWidget {
  const earthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            // color: Color(0xFF091522),
            image: DecorationImage(
              image: AssetImage('assets/innerPage.png'),
              fit: BoxFit.fill,
            ),

            gradient: LinearGradient(
              colors: [
                Color(0xFF00E5E5),
                Color(0xFF72A5F2),
                Color(0xFFE961FF),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(25, 75, 25, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/back.png"),
                      fit: BoxFit.contain,
                    ),
                    color: Color(0xFF091522),
                    backgroundBlendMode: BlendMode.color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.0),
                      topRight: Radius.circular(28.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text("Earth"),
                      Row(
                        children: [
                          earthDetails("flutter_logo", "Mass", "1024kg", "5.97"),
                          earthDetails("gravity", "Gravity", "m/s2", "9.8"),
                          earthDetails("day", "Day", "hours", "24"),
                        ],
                      ),
                      const Row(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }

  Widget earthDetails(
      String filename, String title, String subTitle, String value) {
    return Container(
      child: Column(
        children: [
          // AssetImage("assets/innerPage/$filename.png"),
          Image.asset("assets/$filename.png"),
          Text(title),
          Text(subTitle),
          Text(value),
        ],
      ),
    );
  }
}
