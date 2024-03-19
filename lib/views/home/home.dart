import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:retraite/views/home/navigation/index.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottomNavIndex = 0;
  List<IconData> iconList = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person
  ];
  List<Widget> screens = [
    const IndexScreen(),
    Container(color: Colors.green),
    Container(color: Colors.red),
    Container(color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context);
        },
        backgroundColor: const Color.fromARGB(255, 218, 216, 216),
        elevation: 8,
        shape: const CircleBorder(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                "assets/images/pray.png",
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        backgroundColor: const Color.fromARGB(255, 58, 25, 64),
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            iconList[index],
            size: 24,
            color: isActive ? Colors.white : Colors.grey,
          );
        },
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 35,
        rightCornerRadius: 35,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: SizedBox(
            height: 200.0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //
                            },
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/morning.png'),
                                ),
                                Text(
                                  "Morning",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          GestureDetector(
                            onTap: () {
                              //
                            },
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/afternoon.png'),
                                ),
                                Text(
                                  "Afternoon",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          GestureDetector(
                            onTap: () {
                              //
                            },
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/sunset-.png'),
                                ),
                                Text(
                                  "Evening",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          GestureDetector(
                            onTap: () {},
                            child: const Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/sky.png'),
                                ),
                                Text(
                                  "Night",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
