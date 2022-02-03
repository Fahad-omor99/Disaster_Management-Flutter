import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/const/AppColors.dart';
import 'package:flutter_disastermanagement/ui/help.dart';
import 'package:flutter_disastermanagement/ui/help_people.dart';
import 'package:flutter_disastermanagement/ui/notify.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text('Request'),
        centerTitle: true,
      ),
      body: SizedBox.expand(
          child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: <Widget>[Notify(), Help(), HelpPeople()],
      )),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.library_books),
              title: Text('Feeds'),
              activeColor: Colors.black,
              inactiveColor: green),
          BottomNavyBarItem(
              icon: Icon(Icons.event_available),
              title: Text('Helps'),
              activeColor: Colors.black,
              inactiveColor: green),
          BottomNavyBarItem(
              icon: Icon(Icons.launch),
              title: Text('Requests'),
              activeColor: Colors.black,
              inactiveColor: green),
        ],
      ),
    );
  }
}
