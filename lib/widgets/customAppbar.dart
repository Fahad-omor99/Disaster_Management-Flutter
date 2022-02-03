import 'package:flutter/material.dart';
import 'package:flutter_disastermanagement/ui/NavBar.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
  }) : super(
            backgroundColor: Colors.purpleAccent,
            elevation: 5.0,
            leading: IconButton(
              onPressed: () {
                NavBar();
              },
              icon: Icon(Icons.menu),
              color: Colors.black,
            ));
}
