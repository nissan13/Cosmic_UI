import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3)),
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
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      textField("Email"),
                      const SizedBox(
                        height: 20,
                      ),
                      textField("Password"),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFF11dce8),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          height: 44,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF00E5E5),
                                Color(0xFF72A5F2),
                                Color(0xFFE961FF),
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // ),
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
                                color: Color(0xFF8D8E99),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          Divider(
                            color: Color(0xFF8D8E99),
                            height: 16.8,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialLink("twitter"),
                            const SizedBox(
                              width: 10,
                            ),
                            socialLink("fb"),
                            const SizedBox(
                              width: 10,
                            ),
                            socialLink("google"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            text: "Don't have an account? ",
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialLink(String filename) {
    return Container(
      height: 48,
      width: 48,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: const Color(0xFF091522),
        shape: BoxShape.circle,
        backgroundBlendMode: BlendMode.color,
      ),
      child: Image.asset(
        "assets/$filename.png",
        // 'google.png',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget textField(String name) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          // borderSide: const BorderSide(color: Colors.yellow),
          borderRadius: BorderRadius.circular(50),
        ),
        hintText: name,
        hintStyle: const TextStyle(color: Color(0xFF8D8E99)),
      ),
    );
  }
}
