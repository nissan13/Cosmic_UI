import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFF091522),
          image: DecorationImage(
            image: AssetImage('assets/cosmic.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 128,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/back.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: const Color.fromARGB(255, 19, 19, 19),
                  width: 2,
                ),
                color: const Color(0xFF091522),
                backgroundBlendMode: BlendMode.color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: const Color(0xFF091522),
                      shape: BoxShape.circle,
                      backgroundBlendMode: BlendMode.color,
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Milky Way",
                        style: TextStyle(
                          color: Color(0xFF8D8E99),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Solar System",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: const Color(0xFF091522),
                      shape: BoxShape.circle,
                      backgroundBlendMode: BlendMode.color,
                    ),
                    child: const Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    planetRow("planet", "Mercury"),
                    const SizedBox(
                      width: 12,
                    ),
                    planetRow("planet1", "Venus"),
                    const SizedBox(
                      width: 12,
                    ),
                    planetRow("planet", "Earth"),
                    const SizedBox(
                      width: 12,
                    ),
                    planetRow("planet1", "Mars"),
                    const SizedBox(
                      width: 12,
                    ),
                    planetRow("planet", "Jupiter"),
                    const SizedBox(
                      width: 12,
                    ),
                    planetRow("planet1", "Saturn"),
                    const SizedBox(
                      width: 12,
                    ),
                    planetRow("planet", "Uranus"),
                    const SizedBox(
                      width: 12,
                    ),
                    planetRow("planet1", "Neptune"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(28)),
                      image: DecorationImage(
                        image: AssetImage('assets/back.png'),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xFF091522),
                      backgroundBlendMode: BlendMode.color,
                    ),
                    // height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Planet of the day",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/planet.png"),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mars",
                                    style: TextStyle(
                                      color: Color(0xFF11DCE8),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Mars is the fourth planet from the Sun",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Details",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.lightBlueAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(28)),
                      image: DecorationImage(
                        image: AssetImage('assets/back.png'),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xFF091522),
                      backgroundBlendMode: BlendMode.color,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Solar System", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),),
                        SizedBox(height: 10,),
                        Text("The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the system's mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget planetRow(String imageName, String planetName) {
    return Container(
      height: 48,
      // width: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 7),
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/back.png"),
            fit: BoxFit.fill,
          ),
          color: const Color(0xFF091522),
          backgroundBlendMode: BlendMode.color,
          borderRadius: BorderRadius.circular(32)),
      child: Row(
        children: [
          Image.asset("assets/$imageName.png"),
          Text(
            planetName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
