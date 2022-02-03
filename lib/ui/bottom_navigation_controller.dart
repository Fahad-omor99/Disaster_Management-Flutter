import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/const/AppColors.dart';
import 'package:flutter_disastermanagement/ui/Emergency.dart';
import 'package:flutter_disastermanagement/ui/home_Screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<Widget> pages = [HomeScreen(), EmergencyScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex!],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        //type: BottomNavigationBarType.fixed,
        selectedItemColor: green,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex!,
        selectedLabelStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: value == 0 ? Colors.white : green,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: value == 1 ? Colors.green : green,
            ),
            label: "Emergency",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  int? value;
  int _currentIndex = 0;
}
