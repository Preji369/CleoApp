import 'dart:html';

import 'package:cleo/top_discounts/discount_1.dart';
import 'package:cleo/top_discounts/discount_2.dart';
import 'package:cleo/top_discounts/discount_3.dart';
import 'package:cleo/top_discounts/discount_4.dart';
import 'package:cleo/top_discounts/discount_5.dart';

import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  final List discounts = [
    'Fruits',
    'Veggies',
    'Stationeries',
    'Clothes',
    'Beauty Products',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 2, 57),
          elevation: 0,
          title: Text(
            "Shop with Smile!!",
            style:
                TextStyle(color: Color.fromARGB(255, 20, 2, 57), fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 0)),
            Container(
                color: Color.fromARGB(255, 20, 2, 57),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: discounts.length,
                    itemBuilder: (context, index) {
                      return Discount1();
                      Discount2;
                      Discount3;
                      Discount4;
                      Discount5;
                    },
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Shop by Categories",
                          style:
                              TextStyle(color: Color.fromARGB(255, 20, 2, 57)),
                        )
                      ],
                    ),
                    Container(
                      child: GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.deepPurple[100],
                                height: 100,
                                width: 200,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
