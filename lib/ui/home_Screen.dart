import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/const/AppColors.dart';
import 'package:flutter_disastermanagement/ui/Ambulance_Screen.dart';
import 'package:flutter_disastermanagement/ui/NavBar.dart';
import 'package:flutter_disastermanagement/ui/bottom_navigation_controller.dart';
import 'package:flutter_disastermanagement/ui/donation_Screen.dart';
import 'package:flutter_disastermanagement/ui/guidance_Screen.dart';
import 'package:flutter_disastermanagement/ui/request.dart';
import 'package:flutter_disastermanagement/ui/request_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text('Welfare'),
        centerTitle: true,
      ),
      drawer: NavBar(),
      // bottomNavigationBar: BottomNavController(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RequestScreen()),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        "asset/req.png",
                        height: 120,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Request',
                      style: TextStyle(
                          color: green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AmbulanceSerivice()),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        "asset/amb.png",
                        height: 120,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ambulance',
                      style: TextStyle(
                          color: green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DonationScreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            "asset/donate.png",
                            height: 120,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Donation',
                          style: TextStyle(
                              color: green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GuidanceScreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            "asset/guide.png",
                            height: 120,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Guidance',
                          style: TextStyle(
                              color: green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
