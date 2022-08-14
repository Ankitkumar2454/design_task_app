import 'package:design_app/registerPage.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  static String id = 'signInPage';
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
                              color: Color(0xffD8D8D8),
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
                              color: Color(0xffF9F9F9),
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
                      Column(
                        children: [
                          Box(name: 'Registered Email ID/ Phone Number'),
                          SizedBox(
                            height: 15,
                          ),
                          Box(name: 'Enter your password'),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff410056),
                        ),
                        height: 65,
                        width: 150,
                        child: Center(
                          child: Text(
                            'Sign In',
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
                height: 80,
              ),
              Image.asset(
                'assets/science.png',
                height: 40,
                scale: 0.8,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, Register.id),
          child: Icon(
            Icons.arrow_forward,
          ),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  String name;
  Box({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 320,
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
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
