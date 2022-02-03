import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/const/AppColors.dart';

class CycloneScreen extends StatelessWidget {
  const CycloneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text('Guidance'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  color: green,
                  height: 60,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    'Cyclone',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "Safety Measures During Cyclones \n\n• Keep your emergency kits ready and handy.\n\n •Make sure you have kept your phones and other necessary electronic devices charged.\n\n• Keep candles ready in case the electrical power is cut off.\n\n• Repair your roof shed or tiles. Try not to keep any loose debris lying about.\n\nFollowing these safety measures during cyclones is a must for all.",
                style: TextStyle(fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
