import 'package:design_app/otpPage.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  static String id = 'registerPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xff410056),
            image: DecorationImage(
                image: AssetImage("assets/BG.png"), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  'LAB N BOX',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * 0.03,
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                color: Color(0xffFEFEFE),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width * 0.1,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.023,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                color: Color(0xffD8D8D8),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width * 0.1,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.023,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Column(
                          children: [
                            BoxName(name: 'Your Name'),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.052,
                            ),
                            BoxName(name: 'enter your email'),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.052,
                            ),
                            BoxName(name: 'Your Phone number'),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.04,
                            ),
                            BoxName(name: 'Password'),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.045,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff410056),
                          ),
                          height: 50,
                          width: 150,
                          child: Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          '(or)',
                          style: TextStyle(
                            color: Colors.grey[350],
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff410056),
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/google.webp',
                                  height: 40,
                                ),
                                Text(
                                  'Continue with google',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff410056),
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/face.png',
                                  height: 40,
                                ),
                                Text(
                                  'Continue with Facebook',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'assets/science.png',
                  height: 40,
                  scale: 0.8,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, OtpPage.id),
          child: Icon(
            Icons.arrow_forward,
          ),
        ),
      ),
    );
  }
}

class BoxName extends StatelessWidget {
  String name;
  BoxName({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
