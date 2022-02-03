import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/const/AppColors.dart';

class AmbulanceSerivice extends StatelessWidget {
  const AmbulanceSerivice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double dh = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Ambulance Service"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Post Your Request here",
              style: TextStyle(color: green, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter the data of the person who need help",
              style: TextStyle(color: green, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: dh * 0.6,
                  width: 300,
                  child: SingleChildScrollView(
                    child: Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'enter your full name',
                            ),
                          ),
                        ),
                        Text(
                          "Contact Number",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'ex: +8801234567890',
                            ),
                          ),
                        ),
                        Text(
                          "Age",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'ex: 30',
                            ),
                          ),
                        ),
                        Text(
                          "Location",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              labelText: 'format: area,dist',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton.icon(
                            color: green,
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                            label: Text(
                              'DONE',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    )),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
