import 'package:design_app/homePage.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  static String id = 'otpPage';
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
                  height: 80,
                ),
                Text(
                  'LAB N BOX',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Card(
                                color: Color(0xffF9F9F9),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 20,
                                  ),
                                  child: Center(
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
                                    horizontal: 30,
                                    vertical: 20,
                                  ),
                                  child: Center(
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
                          height: 30,
                        ),
                        Text(
                          "Enter the OTP Recieved ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff410056),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Otp_box(),
                            SizedBox(
                              width: 10,
                            ),
                            Otp_box(),
                            SizedBox(
                              width: 10,
                            ),
                            Otp_box(),
                            SizedBox(
                              width: 10,
                            ),
                            Otp_box(),
                            SizedBox(
                              width: 10,
                            ),
                            Otp_box(),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Didn't Recieved ?  ",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff686868),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Resend OTP',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff21CDD9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff410056),
                          ),
                          height: 55,
                          width: 150,
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/science.png',
                    height: 40,
                    scale: 0.8,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, HomePage.id),
          child: Icon(
            Icons.arrow_forward,
          ),
        ),
      ),
    );
  }
}

class Otp_box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0Xff4D3057)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '',
        ),
      ),
    );
  }
}
