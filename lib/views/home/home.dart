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
  List<IconData> iconList = [Icons.home, Icons.search, Icons.favorite, Icons.person]; 
    List<Widget> screens = [
   
    IndexScreen(),
    Container(color: Colors.green), 
    Container(color: Colors.red), 
    Container(color: Colors.yellow), 
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
       
      ),
      backgroundColor: Colors.white,
      body: screens[_bottomNavIndex], 
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 
        },
         backgroundColor:  const  Color.fromARGB(255, 218, 216, 216),
          elevation: 8,
         shape: const CircleBorder(),
        child: Image.asset("assets/images/pray.png", fit: BoxFit.contain, width: 45, height: 45,)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        backgroundColor: const Color.fromARGB(255, 58, 25, 64),
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return Icon(
            iconList[index],
            size: 24,
            color: isActive
                ? Colors.white
                : Colors.grey, 
          );
        },
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 35,
        rightCornerRadius: 35,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        // Ajoutez d'autres paramètres si nécessaire
      ),
    );
  }
}
