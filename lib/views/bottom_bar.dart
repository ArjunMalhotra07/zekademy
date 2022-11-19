import 'package:flutter/material.dart';
import 'package:zekademy/views/pages/create.dart';
import 'package:zekademy/views/pages/activity.dart';
import 'package:zekademy/views/pages/home.dart';
import 'package:zekademy/views/pages/people.dart';
import 'package:zekademy/views/pages/profile.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  static const pages = [
    HomeBarPage(),
    PeopleBarPage(),
    CreateBarPage(),
    CreativityBarPage(),
    ProfileBarPage()
  ];

  @override
  Widget build(BuildContext context) {
    void changePageFunction(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: SizedBox(
            height: 110.0,
            width: 110.0, // fixed width and height
            child: Image.asset('assets/Logo.png')),
        actions: const [
          Image(image: AssetImage('assets/Notification.jpg')),
          Image(image: AssetImage('assets/Search.png'))
        ],
      ),
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Home.png'),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/users.png')), label: "People"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Plus.png')), label: "Create"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Heart.png')),
              label: "Activities"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Profile.png')),
              label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: changePageFunction,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
