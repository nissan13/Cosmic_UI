import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cosmic.png'),
            // image: AssetImage('assests/innerPage.png'),
            fit: BoxFit.fill,
          ),
          // borderRadius: BorderRadius.all(
          //   Radius.circular(28),
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png"),
              Container(
                decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3)
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage("assets/back.png"),
                    fit: BoxFit.fill,
                  ),
                  color: const Color(0x00091522),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(28.0),
                    topRight: Radius.circular(28.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 50, 50, 80),
                  // symmetric(horizontal: 50, vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.white70,
                        ),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Email",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white70),
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Password",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          // color: Color(0x0011dce8),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Divider(
                            color: Color(0xFF8D8E99),
                            thickness: 82,
                            height: 50,
                          ),
                          Text(
                            "or sign in using",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Divider(
                            color: Color(0xFF8D8E99),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('apple.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset('google.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset('fb.png'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // const Center(
                      //   child: Text(
                      //     "Doesn't have an account? Sign up",
                      //     style: TextStyle(color: Colors.white),
                      //   ),
                      // ),
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            text: "Doesn't have an account? ",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFF8D8E99),
                            ),
                            children: [
                              TextSpan(
                                text: " Sign up",
                                style: TextStyle(
                                  color: Color(0xFF11DCE8),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
