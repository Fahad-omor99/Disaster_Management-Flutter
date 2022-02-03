import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/const/AppColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text('Donation'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Government Inititated',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                "asset/pm2.jpg",
                                height: 180,
                              ),
                              Text("PM Cares Fund")
                            ],
                          ),
                          height: 200,
                          width: 190,
                          color: grey,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                "asset/mape.svg",
                                height: 180,
                              ),
                              Text("Disaster Relief Fund")
                            ],
                          ),
                          height: 200,
                          width: 190,
                          color: grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Trusted NGO's",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                "asset/odhi.jpg",
                                height: 180,
                              ),
                              Text("Odhipon")
                            ],
                          ),
                          height: 200,
                          width: 190,
                          color: grey,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                "asset/stc.jpg",
                                height: 180,
                              ),
                              Text("Save The Children")
                            ],
                          ),
                          height: 200,
                          width: 190,
                          color: grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Row(
            //   children: [
            //     Container(
            //       padding: EdgeInsets.all(16),
            //       child: Text(
            //         "Private Organization",
            //         style: TextStyle(fontSize: 16),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Container(
            //       color: green,
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Container(
            //       color: green,
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
