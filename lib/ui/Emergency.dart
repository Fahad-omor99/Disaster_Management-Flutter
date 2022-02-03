import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/const/AppColors.dart';
import 'package:flutter_disastermanagement/ui/Emergency_Screen.dart';
import 'package:flutter_disastermanagement/ui/NavBar.dart';
import 'package:flutter_disastermanagement/ui/bottom_navigation_controller.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text('Emergency'),
        centerTitle: true,
      ),
      drawer: NavBar(),
      // bottomNavigationBar: BottomNavController(),
      body: AlarmScreen(),
    );
  }
}
