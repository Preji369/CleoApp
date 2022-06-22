import 'dart:ffi';

import 'package:cleo/login_page.dart';
import 'package:cleo/sign_up_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 20, 2, 57),
      child: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 3,
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "CLEOKART",
              style: TextStyle(
                  color: Color.fromARGB(255, 20, 2, 57),
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )),
      ),
    ));
  }
}
