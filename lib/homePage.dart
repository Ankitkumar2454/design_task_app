import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          backgroundColor: Color(0xff410056),
          leading: Icon(
            CupertinoIcons.bars,
            size: 40,
          ),
          title: Center(
            child: Text(
              'LAB N BOX',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderHome(),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ContentHomePage(
                      name: 'Elephant \nToothpaste',
                      imgPath: 'assets/elephants.png',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ContentHomePage(
                      name: 'Chemical \nChameleon',
                      imgPath: 'assets/chemical.png',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ContentHomePage(
                      name: 'Lemon \nBattery',
                      imgPath: 'assets/lemon.png',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ContentHomePage(
                      name: 'Elephant \nToothpaste',
                      imgPath: 'assets/elephants.png',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: Color(0xff410056),
            unselectedItemColor: Colors.grey,
            fixedColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 25,
                ),
                label: 'Dashboard',
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/Layer2.png"),
                  color: Colors.white,
                ),
                label: 'Experiment',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/Layer1.png"),
                  color: Colors.grey,
                ),
                label: 'Learn it',
                backgroundColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContentHomePage extends StatelessWidget {
  String name, imgPath;
  ContentHomePage({required this.name, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 260,
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
              alignment: Alignment.topRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 80,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 60,
                    child: Text(
                      'Fill your house with gaint toothpaste!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffD2D2D2),
                    ),
                    height: 30,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(
                        child: Text(
                          'Chemistry',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(
                        child: Row(
                          children: const [
                            Text(
                              'Difficulty: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Color(0xff5C0079),
                            ),
                            SizedBox(width: 2),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Color(0xff5C0079),
                            ),
                            SizedBox(width: 2),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Color(0xff5C0079),
                            ),
                            SizedBox(width: 2),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(width: 2),
                            CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(width: 2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff410056),
                      ),
                      height: 55,
                      width: 120,
                      child: Center(
                        child: Text(
                          'Make It',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Card(
              child: Image.asset(
                imgPath,
                width: 160,
                height: 160,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  size: 25,
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Text(
                'Experiment List',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 100,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.filter_list,
                        size: 18,
                      ),
                      Text(
                        'Filter',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '|',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff410056),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Trending',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                HeaderContainer(name: 'All', colour: Colors.white),
                SizedBox(
                  width: 5,
                ),
                HeaderContainer(name: 'Physics', colour: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  String name;
  Color colour;
  HeaderContainer({required this.name, required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff410056)),
        color: colour,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff410056),
          ),
        ),
      ),
    );
  }
}
