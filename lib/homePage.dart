import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  static String id = 'homePage';
  List headerCategory = ["All", "Physics", "Chemistry", "Maths"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 55,
          title: Text("Lab n Box"),
          leading: Icon(Icons.menu),
          centerTitle: true,
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: Color(0xFF410056))),
        ),
        body: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90.0),
            child: AppBar(
              flexibleSpace: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            CupertinoIcons.arrow_left,
                            size: 25,
                            color: Color(0xFF6A3F86),
                          ),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Text(
                          'Experiments List',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.filter_list,
                                  color: Color(0xff9A9A9A),
                                ),
                                Text(
                                  'Filter',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              color: Colors.black,
                              child: const VerticalDivider(
                                width: 2,
                                thickness: 2,
                                indent: 5,
                                endIndent: 29,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff410056),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Trending',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 25,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: headerCategory.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        width: 60,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff410056)),
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            (headerCategory[index]),
                                            style: const TextStyle(
                                                color: Color(0xFF6A3F86),
                                                fontFamily: "poppins",
                                                fontWeight: FontWeight.w900,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Padding(
                              padding:
                                  EdgeInsets.only(top: 8, bottom: 8, right: 3),
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 17,
                              ),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/BG.png"),
                    opacity: 0.8,
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  ContentHomePage(
                    name: 'Elephant \nToothpaste',
                    imgPath: 'assets/elephants.png',
                  ),
                  ContentHomePage(
                    name: 'Chemical \nChameleon',
                    imgPath: 'assets/chemical.png',
                  ),
                  ContentHomePage(
                    name: 'Lemon \nBattery',
                    imgPath: 'assets/lemon.png',
                  ),
                  ContentHomePage(
                    name: 'Elephant \nToothpaste',
                    imgPath: 'assets/elephants.png',
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Container bottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF410056),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.grey[500],
        fixedColor: Colors.white,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/Layer2.png"),
            ),
            label: 'Experiment',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/Layer1.png"),
            ),
            label: 'Learn it',
          ),
        ],
      ),
    );
  }
}

class ContentHomePage extends StatelessWidget {
  String name, imgPath;
  ContentHomePage({required this.name, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 380,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 230,
                width: 270,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
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
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 100, top: 10, right: 10, bottom: 10),
                  child: Container(
                    color: Color(0xffFFFFFF),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 60,
                          color: Color(0xffFFFFFF),
                          child: Text(
                            '$name',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'poppins'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Container(
                            width: 148,
                            height: 37,
                            child: const Text(
                              'Fill your house with gaint toothpaste!',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'poppins',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xffD2D2D2),
                            ),
                            height: 19,
                            width: 63,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xffD2D2D2),
                              ),
                              child: const Center(
                                child: Text(
                                  ('Chemistry'),
                                  style: TextStyle(
                                      color: Color(0xFF1B0024),
                                      fontFamily: "Segoe UI",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 9),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4.0),
                          child: Container(
                            height: 20,
                            width: double.infinity,
                            child: Row(
                              children: [
                                const Text(
                                  'Difficulty:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 10,
                                    fontFamily: 'poppins',
                                  ),
                                ),
                                RatingBar.builder(
                                    onRatingUpdate: (value) {
                                      print(value);
                                    },
                                    unratedColor: Color(0xffCEBFBF),
                                    initialRating: 3,
                                    itemCount: 5,
                                    itemSize: 10,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    direction: Axis.horizontal,
                                    itemBuilder: (context, _) {
                                      return CircleAvatar(
                                        radius: 6,
                                        backgroundColor: Color(0xff5C0079),
                                      );
                                    }),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff410056),
                              ),
                              height: 30,
                              width: 80,
                              child: Container(
                                height: 17,
                                width: 45,
                                child: const Center(
                                  child: Text(
                                    'Make It',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'poppins',
                                    ),
                                  ),
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
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            width: 180,
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        '$imgPath',
                      ),
                      fit: BoxFit.fill)),
            ),
          )
        ],
      ),
    );
  }
}
